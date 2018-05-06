module cpu_control(
    input clk,
    input rst_n,
    input[7:0] A,
    input write,
    input b_step,
    input b_reset,
    input b_runhalt,
    input[7:0] Din,
    output[7:0] Dout,
    output reg[7:0] acc,
    output reg[7:0] x,
    output reg[7:0] y,
    output reg[7:0] sp,
    output reg[15:0] pc,
    output reg[7:0] sr,
    output nmiN,
    output irq,
    output stopped,
    input sync,
    input[15:0] userInput,
    input inputValid,
    input b_storeinc,
    input b_irq,
    input b_dec,
    input b_load,
    input b_toA,
    input b_toSP,
    input b_toX,
    input b_toY,
    input b_toPC,
    output reg[7:0] userData,
    output reg[15:0] userAddr,
    output[7:0] test
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
    assign rwRange = ((A < 8'hE9) && (A >= 8'hE0)) || (A == 8'hEA) || (A == 8'hEB) || (A == 8'hF0) || (A == 8'hF1);
    
    assign Dout = rwRange ? RAMout : ROMout;
    
    wire syncRising;
    edge_detect phi2rising(.clk(clk), .rst_n(rst_n), .in(sync), .out(syncRising));

    reg doNmi, doIrq;
    wire irqN;
    interrupt_counter nmiCounter(.clk(clk), .rst_n(rst_n), .start(doNmi), .intN(nmiN));
    interrupt_counter irqCounter(.clk(clk), .rst_n(rst_n), .start(doIrq), .intN(irqN));
    assign irq = ~irqN;

    reg readyToStep, doStore, doLoad, decrementing, incrementing;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            acc <= 0;
            x <= 0;
            y <= 0;
            sp <= 0;
            pc <= 0;
            sr <= 0;    
            userData <= 0;
            userAddr <= 0;
            readyToStep <= 0;
            doStore <= 0;
            doLoad <= 0;
            doIrq <= 0;
            RAMout <= 0;
            decrementing <= 0;
            incrementing <= 0;
        end else begin
            if(b_load & inputValid) begin
                userAddr <= userInput;
                if(stopped) doLoad <= 1;
            end else if(b_dec & stopped) begin
                doLoad <= 1;
                decrementing <= 1;
            end else if(b_irq) begin
                doIrq <= 1; //TODO Should we provide some additional support other than just firing the interrupt?
            end else if(b_storeinc & stopped) begin
                doStore <= 1;
                incrementing <= 1;
                if(inputValid & ~incrementing)
                    userData <= userInput[7:0];
            end else if(b_toA & inputValid) begin
                acc <= userInput[7:0];
            end else if(b_toSP & inputValid) begin
                //sp <= userInput[7:0]; //TODO need a clean way to implement without blowing up NMI return
            end else if(b_toX & inputValid) begin
                x <= userInput[7:0];
            end else if(b_toY & inputValid) begin
                y <= userInput[7:0];
            end else if(b_toPC & inputValid) begin
                pc <= userInput;
            end else if(decrementing) begin
                if(~doLoad) begin
                    userAddr <= userAddr - 1;
                    decrementing <= 0;
                end
            end else if(incrementing) begin
                if(~doStore) begin
                    userAddr <= userAddr + 1;
                    incrementing <= 0;
                end
            end
            
            if(rwRange) begin
                readyToStep <= 0;
                case(A[4:0])
                    5'h0: begin
                        RAMout <= acc;
                        if(write) acc <= Din;
                    end
                    5'h1: begin
                        RAMout <= x;
                        if(write) x <= Din;
                    end
                    5'h2: begin
                        RAMout <= y;
                        if(write) y <= Din;
                    end
                    5'h3: begin
                        RAMout <= sp;
                        if(write) sp <= Din;
                    end
                    5'h4: begin
                        RAMout <= pc[7:0];
                        if(write) pc[7:0] <= Din;
                    end
                    5'h5: begin
                        RAMout <= pc[15:8];
                        if(write) pc[15:8] <= Din;
                    end
                    5'h6: begin
                        RAMout <= sr;
                        if(write) sr <= Din;
                    end
                    5'h7: begin
                        RAMout <= {doStore, doLoad, stopped, 5'h00};
                        if(write) begin
                            if(Din[7]) doStore <= 0;
                            else if(Din[6]) doLoad <= 0;
                            else if(Din[5]) readyToStep <= 1;
                        end
                    end
                    5'h8: begin
                        RAMout <= userData;
                        if(write) userData <= Din;
                    end
                    
                    5'hA, 5'h10: begin
                        RAMout <= userAddr[7:0];
                    end
                    5'hB, 5'h11: begin
                        RAMout <= userAddr[15:8];
                    end
                endcase
            end
        end
    end
    
    reg[1:0] syncCount;
    
    localparam CPUSTATE_RUN = 3'h0;
    localparam CPUSTATE_STOP = 3'h1;
    localparam CPUSTATE_STEPARMED = 3'h2;
    localparam CPUSTATE_STEPWAIT = 3'h3;
    localparam CPUSTATE_RESETSTEP = 3'h4;
    reg[2:0] cpuState;
    assign test = {cpuState, doStore, doLoad, readyToStep, 1'b0};
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
                    if(b_reset) begin
                        syncCount <= 0;
                        cpuState <= CPUSTATE_RESETSTEP;
                    end else if(b_runhalt) begin
                        cpuState <= CPUSTATE_RUN;
                    end else if(b_step) begin
                        cpuState <= CPUSTATE_STEPARMED;
                    end
                end
                CPUSTATE_STEPARMED: begin
                    if(b_reset) cpuState <= CPUSTATE_RUN;
                    else if(readyToStep) begin
                        syncCount <= 0;
                        cpuState <= CPUSTATE_STEPWAIT;
                    end
                end
                CPUSTATE_STEPWAIT: begin
                    if(b_reset) cpuState <= CPUSTATE_RUN;
                    else if(syncRising) begin
                        syncCount <= syncCount + 1;
                        if(syncCount == 2'h2) begin
                            doNmi <= 1;
                            cpuState <= CPUSTATE_STOP;
                        end
                    end
                end
                CPUSTATE_RESETSTEP: begin
                    if(b_reset) cpuState <= CPUSTATE_RUN;
                    else if(syncRising) begin
                        syncCount <= syncCount + 1;
                        if(syncCount == 2'h0) begin
                            doNmi <= 1;
                            cpuState <= CPUSTATE_STOP;
                        end
                    end
                end
            endcase
        end
    end
    
    assign stopped = (cpuState == CPUSTATE_STOP);    

endmodule
