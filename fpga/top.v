module top(
    input CLK25MHZ,
    inout[7:0] G,
    output GPIO_RW,
    
    output LCD_CLK,
    output LCD_DATA,
    output LCD_LOAD,
    output LCD_CLR,
    
    output[4:0] KBD_row,
    input[5:0] KBD_col
    );

    assign GPIO_RW = 0;
    
    wire b_0;
    wire b_1;
    wire b_2;
    wire b_3;
    wire b_4;
    wire b_5;
    wire b_6;
    wire b_7;
    wire b_8;
    wire b_9;
    wire b_a;
    wire b_b;
    wire b_c;
    wire b_d;
    wire b_e;
    wire b_f;
    wire b_runhalt;
    wire b_reset;
    wire b_step;
    wire b_storeinc;
    wire b_irq;
    wire b_dec;
    wire b_load;
    wire b_toA;
    wire b_toSP;
    wire b_toX;
    wire b_toY;
    wire b_toPC;
    
    reg[7:0] counter;
    always@(posedge CLK25MHZ) begin
        if(b_0) counter <= counter + 1;
    end

    assign G[7:0] = counter;
    
    wire rst_n;
    
    reset por(.clk(CLK25MHZ), .rst_n(rst_n));
    
    keyboard keyboard1(
        .clk(CLK25MHZ),
        .rst_n(rst_n),
        .KBD_row(KBD_row), .KBD_col(KBD_col),
        .b_0(b_0), .b_1(b_1), .b_2(b_2), .b_3(b_3), .b_4(b_4), .b_5(b_5),
        .b_6(b_6), .b_7(b_7), .b_8(b_8), .b_9(b_9), .b_a(b_a), .b_b(b_b),
        .b_c(b_c), .b_d(b_d), .b_e(b_e), .b_f(b_f),
        .b_runhalt(runhalt), .b_reset(b_reset), .b_step(b_step),
        .b_storeinc(b_storeinc), .b_irq(b_irq), .b_dec(b_dec), .b_load(b_load),
        .b_toA(b_toA), .b_toSP(b_toSP), .b_toX(b_toX), .b_toY(b_toY), 
        .b_toPC(b_toPC)
        );
        
    display display1(
        .clk(CLK25MHZ), 
		.rst_n(rst_n), 
		.led_a(counter), 
		.led_x(counter), 
		.led_y(counter), 
		.led_sp({counter,counter}), 
		.led_pc({counter,counter}), 
		.led_mem({counter,counter,counter}), 
		.led_data(counter), 
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
