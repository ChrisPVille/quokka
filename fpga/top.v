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
    
    wire rst_n;
    
    reset por(.clk(CLK25MHZ), .rst_n(rst_n));
    
    display display1(.clk(CLK25MHZ), .rst_n(rst_n), .display_bits({72{G[4]}}),
                     .sclk(LCD_CLK), .sdata(LCD_DATA), .sload(LCD_LOAD),
                     .sclr_n(LCD_CLR));

endmodule
