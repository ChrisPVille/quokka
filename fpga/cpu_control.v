module cpu_control(
    input clk,
    input rst_n,
    input[15:0] A,
    input cs,
    input write,
    input b_runhalt,
    input b_step,
    input[7:0] Din,
    output reg[7:0] Dout,
    output reg[7:0] acc,
    output reg[7:0] x,
    output reg[7:0] y,
    output reg[7:0] sp,
    output reg[15:0] pc,
    output reg[7:0] sr
    );

    reg[7:0] controlRAM[255:0];
    
    reg[7:0] dispData;
    reg[7:0] dispAddr;

    initial
        $readmemh("../software/monitor.hex", controlRAM);

    wire rwRange;
    assign rwRange = (A[7:0] < 8'hFA) & (A[7:0] >= 8'hF0);
    
    //Keep the structure as close as possible to the synthesizer's example for
    //block ram to ensure it gets inferred properly.
    always @(posedge clk) begin
        if (cs) begin
            if (write & rwRange)
                controlRAM[A[7:0]] <= Din;
            Dout <= controlRAM[A[7:0]];
        end
        if (1)
            dispData <= controlRAM[dispAddr];
    end
    
    reg[2:0] readoutState;
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            readoutState <= 0;
            dispAddr <= 0;
            acc <= 0;
            x <= 0;
            y <= 0;
            sp <= 0;
            pc <= 0;
            sr <= 0;
        end else begin
            if(readoutState == 6) readoutState <= 0;
            else readoutState <= readoutState + 1;
            case(readoutState)
            //Right after reset, PCh and SR will be wrong for a 7 clock cycles.
            //This probably won't be perceptible
            0: begin
                dispAddr <= 8'hf0;
                pc[15:8] <= dispData;
            end
            1: begin
                dispAddr <= 8'hf1;
                sr <= dispData;
            end
            2: begin
                dispAddr <= 8'hf2;
                acc <= dispData;
            end
            3: begin
                dispAddr <= 8'hf3;
                x <= dispData;
            end
            4: begin
                dispAddr <= 8'hf4;
                y <= dispData;
            end
            5: begin
                dispAddr <= 8'hf5;
                sp <= dispData;
            end
            6: begin
                dispAddr <= 8'hf6;
                pc[7:0] <= dispData;
            end
            endcase
        end
    end
    
    //STATES: 
    //Normal (operation from RAM, freerunning)
    //Armed (interrupt has gone out and the CPU will be processing it soon)
    //Overlay (we take over the upper address space on access of the interrupt vector)
    
    reg[1:0] state;
    localparam NORMAL = 2'h0;
    localparam ARMED = 2'h1;
    localparam OVERLAY = 2'h2;

endmodule
