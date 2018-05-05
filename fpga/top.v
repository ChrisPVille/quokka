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
    
    assign OPT1_csN = 1;
    assign OPT2_csN = 1;
        
    assign IRQ = 0;
    assign RDY = 0;
    assign SO = 1;
    
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
    
    wire CLK25MHZ, CLK10MHZ, CLK1MHZ;
    
    clkman clk1(.CLKIN_IN(RAW25MHZ), 
    .RST_IN(1'b0), 
    .CLKDV_OUT(CLK10MHZ),
    .CLK0_OUT(CLK25MHZ)
    );

    wire rst_n;

    reset por(.clk(CLK25MHZ), .rst_n(rst_n));

    cpu_clockgen cpuclk1(.CLK10MHZ(CLK10MHZ), .rst_n(rst_n), .CLK1MHZ(CLK1MHZ));
    assign PHI0 = CLK1MHZ;
    
    reg[7:0] counter;
    always@(posedge CLK25MHZ) begin
        if(b_0) counter <= counter + 1;
    end

    assign G[7:0] = counter;
        
    assign phys6502_RESn = counter[0];
    assign RES = rst_n;
    
    //We treat PHI1 and PHI2 as asynchronous signals. Although they are derived from
    //our PHI0 clock, they have an unknown phase offset that we cannot predict
    
    wire PHI2sync, RWsync;
    wire[15:0] Async;
    wire[7:0] Dsync;
    ff_sync sync_phi2(.clk(CLK25MHZ), .rst_p(~rst_n), .in_async(PHI2), .out(PHI2sync));
    ff_sync sync_rw(.clk(CLK25MHZ), .rst_p(~rst_n), .in_async(RW), .out(RWsync));
    ff_sync #(.WIDTH(16)) sync_a(.clk(CLK25MHZ), .rst_p(~rst_n), .in_async(A[15:0]), .out(Async));
    ff_sync #(.WIDTH(8)) sync_d(.clk(CLK25MHZ), .rst_p(~rst_n), .in_async(D), .out(Dsync));
    
    //TODO we will eventually only take over the RAM when a user action has 
    //been requested, or possibly we will allow writes into the FPGA acting
    //as RAM but override the vectors on a UI interrupt
    wire candidateRAM_csN, FPGA_csN;
    
    //RAM - 0x8000-0xFEFF
    //FPGA- 0xFF00-0xFFFF
    chip_select ramsel(.PHI2(PHI2sync), .RW(RWsync), .A(A), .mask(16'h8000), .bitPattern(16'h8000), .ceN(candidateRAM_csN));
    chip_select fpgasel(.PHI2(PHI2sync), .RW(RWsync), .A(A), .mask(16'hFF00), .bitPattern(16'hFF00), .ceN(FPGA_csN));
    assign RAM_csN = candidateRAM_csN | ~FPGA_csN;
    
    wire[7:0] Dout;
    assign DataDir = ~(RW&~FPGA_csN);
    assign D = ~DataDir ? Dout : 8'hzz;
    
    wire FPGA_csNsync;
    ff_sync sync_fpgaCSn(.clk(CLK25MHZ), .rst_p(~rst_n), .in_async(FPGA_csN), .out(FPGA_csNsync));

    reg[6:0] nmiCounter; //Ensures a minimum pulse width on the NMI line
    reg nmiCounterEn;
    always@(posedge CLK25MHZ or negedge rst_n) begin
        if(~rst_n) begin
            nmiCounter <= 0;
            nmiCounterEn <= 0;
        end else begin
            if(b_step) nmiCounterEn <= 1;
            else if(nmiCounterEn) begin
                nmiCounter <= nmiCounter + 1;
                if(nmiCounter == 7'h7f) nmiCounterEn <= 0;
            end
        end
    end
    
    assign NMIn = ~nmiCounterEn;

    reg[1:0] phi2track;
    always@(posedge CLK25MHZ or negedge rst_n) begin
        if(~rst_n) phi2track <= 0;
        else phi2track <= {phi2track[0], PHI2sync};
    end
    
    //Write on the rising edge of phi2 when RW is low (write) when we are chip selected
    assign writeNow = (phi2track==2'b01) & ~RWsync;
    
    wire[7:0] acc;
    wire[7:0] x;
    wire[7:0] y;
    wire[7:0] sp;
    wire[7:0] sr;
    wire[15:0] pc;
    
    cpu_control pcpu(
        .clk(CLK25MHZ),
        .rst_n(rst_n),
        .A(Async),
        .cs(FPGA_csNsync),
        .write(writeNow),
        .Din(Dsync),
        .Dout(Dout),
        .acc(acc),
        .x(x),
        .y(y),
        .pc(pc),
        .sp(sp),
        .sr(sr)
        );
    
    assign led_neg = sr[7];
    assign led_ovf = sr[6];
    assign led_dash = sr[5];
    assign led_brk = sr[4];
    assign led_dec = sr[3];
    assign led_irq = sr[2];
    assign led_zero = sr[1];
    assign led_carry = sr[0];
    
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
		.led_a(acc), 
		.led_x(x), 
		.led_y(y), 
		.led_sp({8'h01,sp}), 
		.led_pc(pc), 
		.led_mem({4'h0,Ahigh,Async}), 
		.led_data(Dsync), 
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
		.ledsValid(1'b1), 
		.sclk(LCD_CLK), 
		.sdata(LCD_DATA), 
		.sload(LCD_LOAD), 
		.sclr_n(LCD_CLR)
        );

endmodule
