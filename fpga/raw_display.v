module raw_display(
    input clk,
    input rst_n,
    input[71:0] display_bits,
    output timerOverflow,
    output sclk,
    output sdata,
    output reg sload,
    output sclr_n
    );

reg[13:0] counter;
always@(posedge clk or negedge rst_n) begin
    if(~rst_n) counter <= 0;
    else counter <= counter + 1;
end

assign timerOverflow = &counter;
//Because our FETs take a while to switch off, here is a configurable reset
//that will turn them off early. Based on experimentation, just resetting them
//during the configuration period is plenty of time to prevent ghosting.
assign sclr_n = ~timerOverflow;

`define SHIFTDIG 2'b00
`define LOADPULSE 2'b01
`define WAIT 2'b10

reg output_enable;
reg[1:0] state;

always@(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        state <= `SHIFTDIG;
        sload <= 0;
        output_enable <= 0;
    end else begin
        case(state)
        
        `SHIFTDIG: begin
            output_enable <= 1;
            sload <= 0;
            if(counter[11:5] == 72) state <= `LOADPULSE;
        end
        
        `LOADPULSE: begin
            output_enable <= 0;
            sload <= 1;
            if(&counter[12:0]) state <= `WAIT;
        end
        
        `WAIT: begin
            sload <= 0;
            if(&counter[13:0]) state <= `SHIFTDIG;
        end
                
        endcase
    end
end

assign sclk = counter[4] & output_enable;
assign sdata = display_bits[counter[11:5]] & output_enable;

endmodule
