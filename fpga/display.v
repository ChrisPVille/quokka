module display(
    input clk,
    input rst_n,
    input[7:0] led_a,
    input[7:0] led_x,
    input[7:0] led_y,
    input[15:0] led_sp,
    input[15:0] led_pc,
    input[23:0] led_mem,
    input[7:0] led_data,
    input led_test,
    input led_physical,
    input led_soft,
    input led_run,
    input led_halt,
    input led_neg,
    input led_ovf,
    input led_dash,
    input led_brk,
    input led_dec,
    input led_irq,
    input led_zero,
    input led_carry,
    input ledsValid,
    output sclk,
    output sdata,
    output reg sload,
    output reg sclr_n
    );

reg[16:0] counter;
always@(posedge clk or negedge rst_n) begin
    if(~rst_n) counter <= 0;
    else counter <= counter + 1;
end

`define SHIFTDIG 2'b00
`define LOADPULSE 2'b01
`define WAIT 2'b10

reg output_enable;
reg[1:0] state;

always@(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        state <= `SHIFTDIG;
        sclr_n <= 0;
        sload <= 0;
        output_enable <= 0;
    end else begin
        sclr_n <= 1;
        
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
            if(&counter[16:0]) state <= `SHIFTDIG;
        end
                
        endcase
    end
end

assign sclk = counter[4] & output_enable;
assign sdata = display_bits[counter[11:5]] & output_enable;

endmodule
