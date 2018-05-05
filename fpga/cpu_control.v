module cpu_control(
    input clk,
    input rst_n,
    input[7:0] A,
    input csP,
    input write,
    input b_step,
    input b_runhalt,
    input[7:0] Din,
    output[7:0] Dout,
    output reg[7:0] acc,
    output reg[7:0] x,
    output reg[7:0] y,
    output reg[7:0] sp,
    output reg[15:0] pc,
    output reg[7:0] sr,
    output nmi,
    output stopped,
    input sync
    );

    reg[7:0] controlROM[255:0];
    reg[7:0] ROMout;
    reg[7:0] RAMout;
    always @(posedge clk) begin
        ROMout <= controlROM[A];
    end
    
    initial
        $readmemh("../software/monitor.hex", controlROM);
    
    wire rwRange;
    assign rwRange = (A < 8'hFA) && (A >= 8'hF0);
    
    assign Dout = rwRange ? RAMout : ROMout;
    
    wire syncRising;
    edge_detect phi2rising(.clk(clk), .rst_n(rst_n), .in(sync), .out(syncRising));

    reg doNmi;
    reg[6:0] nmiCounter; //Ensures a minimum pulse width on the NMI line
    reg nmiCounterEn;
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            nmiCounter <= 0;
            nmiCounterEn <= 0;
        end else begin
            if(doNmi) nmiCounterEn <= 1;
            else if(nmiCounterEn) begin
                nmiCounter <= nmiCounter + 1;
                if(nmiCounter == 7'h7f) nmiCounterEn <= 0;
            end
        end
    end
    
    assign nmi = ~nmiCounterEn;    

    reg readyToStep;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            acc <= 0;
            x <= 0;
            y <= 0;
            sp <= 0;
            pc <= 0;
            sr <= 0;       
            readyToStep <= 0;
        end else if(rwRange) begin
            readyToStep <= 0;
            case(A[3:0])
                4'h0: begin
                    RAMout <= acc;
                    if(write) acc <= Din;
                end
                4'h1: begin
                    RAMout <= x;
                    if(write) x <= Din;
                end
                4'h2: begin
                    RAMout <= y;
                    if(write) y <= Din;
                end
                4'h3: begin
                    RAMout <= sp;
                    if(write) sp <= Din;
                end
                4'h4: begin
                    RAMout <= pc[7:0];
                    if(write) pc[7:0] <= Din;
                end
                4'h5: begin
                    RAMout <= pc[15:8];
                    if(write) pc[15:8] <= Din;
                end
                4'h6: begin
                    RAMout <= sr;
                    if(write) sr <= Din;
                end
                4'h7: begin
                    RAMout <= {stopped, 7'h00};
                    if(write) readyToStep <= 1;
                end
            endcase
        end
    end
    
    reg[1:0] syncCount;
    
    localparam CPUSTATE_RUN = 2'h0;
    localparam CPUSTATE_STOP = 2'h1;
    localparam CPUSTATE_STEPARMED = 2'h2;
    localparam CPUSTATE_STEPWAIT = 2'h3;
    reg[1:0] cpuState;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            doNmi <= 0;
            syncCount <= 0;
            cpuState <= CPUSTATE_RUN;
        end else begin
            doNmi <= 0;
            case (cpuState)
                CPUSTATE_RUN: begin
                    if(b_step | b_runhalt) begin
                        doNmi <= 1;
                        cpuState <= CPUSTATE_STOP;
                    end
                end
                CPUSTATE_STOP: begin
                    if(b_runhalt) begin
                        cpuState <= CPUSTATE_RUN;
                    end else if(b_step) begin
                        cpuState <= CPUSTATE_STEPARMED;
                    end
                end
                CPUSTATE_STEPARMED: begin
                    if(readyToStep) begin
                        syncCount <= 0;
                        cpuState <= CPUSTATE_STEPWAIT;
                    end
                end
                CPUSTATE_STEPWAIT: begin
                    if(syncRising) begin
                        syncCount <= syncCount + 1;
                        if(syncCount == 2'h2) begin
                            doNmi <= 1;
                            cpuState <= CPUSTATE_STOP;
                        end
                    end
                end
            endcase
        end
    end
    
    assign stopped = (cpuState == CPUSTATE_STOP);
    
    //STATES: 
    //Normal (operation from RAM, freerunning)
    //Armed (interrupt has gone out and the CPU will be processing it soon)
    //Overlay (we take over the upper address space on access of the interrupt vector)
    
    reg[1:0] state;
    localparam NORMAL = 2'h0;
    localparam ARMED = 2'h1;
    localparam OVERLAY = 2'h2;

endmodule
