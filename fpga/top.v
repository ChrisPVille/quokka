module top(
    input RAW25MHZ,
    output[7:0] G,
    output GPIO_RW,
    
    output LCD_CLK,
    output LCD_DATA,
    output LCD_LOAD,
    output LCD_CLR,
    
    output[4:0] KBD_row,
    input[5:0] KBD_col,
    
    input PHI1,
    input PHI2,
    input RW,
    input SYNC,
    input senseRES,
    
    output RAM_csN,
    output OPT1_csN,
    output OPT2_csN,
    output PHI0,
    output IRQ,
    output RDY,
    output NMIn,
    output phys6502_RESn,
    output RES,
    output SO,
    
    input[15:0] A,
    output[19:16] Ahigh,
    
    inout[7:0] D,
    
    output Drive6502BusN,
    output EnableXceversN,
    output phys6502_BusEnableN,
    output DataDir
    );

    assign GPIO_RW = 0;
    assign EnableXceversN = 0;
    
    assign Drive6502BusN = 1; //For the love of everything, don't change this
    assign phys6502_BusEnableN = ~Drive6502BusN; //Or this
    
    assign RAM_csN = 1;
    assign OPT1_csN = 1;
    assign OPT2_csN = 1;
        
    assign IRQ = 0;
    assign RDY = 0;
    assign NMIn = 1;
    assign SO = 1;
    assign DataDir = 1; //Data Input always (for now)
    
    assign Ahigh = 4'h0;
    
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
    
    wire CLK25MHZ, CLK10MHZ;

    clkman clk1(.CLKIN_IN(RAW25MHZ), 
    .RST_IN(1'b0), 
    .CLKDV_OUT(CLK10MHZ),
    .CLK0_OUT(CLK25MHZ)
    );

    wire rst_n;

    reset por(.clk(CLK25MHZ), .rst_n(rst_n));

    reg CLK1MHZ;
    reg[3:0] clkDivCtr;
    always@(posedge CLK10MHZ or negedge rst_n) begin
        if(~rst_n) begin
            clkDivCtr <= 0;
            CLK1MHZ <= 0;
        end else begin
            if(clkDivCtr == 3'h4) begin
                CLK1MHZ <= ~CLK1MHZ;
                clkDivCtr <= 0;
            end else begin
                clkDivCtr <= clkDivCtr + 1;
            end
        end
    end
    
    assign PHI0 = CLK1MHZ;
    
    reg[7:0] counter;
    always@(posedge CLK25MHZ) begin
        if(b_0) counter <= counter + 1;
    end

    assign G[7:0] = counter;
        
    assign phys6502_RESn = rst_n;
    assign RES = rst_n;
        
    
    cpu_control pcpu(
        .clk(CLK25MHZ),
        .rst_n(rst_n),
        .A(A[15:0]),
        .D(D)
        );
    
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
