module top(
    input CLK25MHZ,
    inout[7:0] G,
    output GPIO_RW,
    
    output LCD_CLK,
    output LCD_DATA,
    output LCD_LOAD,
    output LCD_CLR
    );

    assign GPIO_RW = 0;
    
    reg[28:0] counter;
    always@(posedge CLK25MHZ) begin
        counter = counter + 1;
    end

    assign G[7:0] = counter[28:21];
    
    display display1(.clk(CLK25MHZ), .rst_n(1), .display_bits(72'b0),
                     .sclk(LCD_CLK), .sdata(LCD_DATA), .sload(LCD_LOAD),
                     .sclr_n(LCD_CLR));

endmodule
