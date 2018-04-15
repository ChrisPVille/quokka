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
    
    reg[38:0] counter;
    always@(posedge CLK25MHZ) begin
        counter = counter + 1;
    end

    assign G[7:0] = counter[28:21];
    
    wire rst_n;
    
    reset por(.clk(CLK25MHZ), .rst_n(rst_n));
    
    display display1(
        .clk(CLK25MHZ), 
		.rst_n(rst_n), 
		.led_a(counter[28:21]), 
		.led_x(counter[28:21]), 
		.led_y(counter[28:21]), 
		.led_sp(counter[36:21]), 
		.led_pc(counter[36:21]), 
		.led_mem(counter[38:17]), 
		.led_data(counter[28:21]), 
		.led_test(led_test), 
		.led_physical(led_physical), 
		.led_soft(led_soft), 
		.led_run(led_run), 
		.led_halt(led_halt), 
		.led_neg(led_neg), 
		.led_ovf(led_ovf), 
		.led_dash(led_dash), 
		.led_brk(led_brk), 
		.led_dec(led_dec), 
		.led_irq(led_irq), 
		.led_zero(led_zero), 
		.led_carry(led_carry), 
		.ledsValid(ledsValid), 
		.sclk(LCD_CLK), 
		.sdata(LCD_DATA), 
		.sload(LCD_LOAD), 
		.sclr_n(LCD_CLR)
        );

endmodule
