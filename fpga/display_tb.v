`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:39 04/14/2018
// Design Name:   display
// Module Name:   /home/christopher/git/quokka/fpga/display_tb.v
// Project Name:  quokka
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg [7:0] led_a;
	reg [7:0] led_x;
	reg [7:0] led_y;
	reg [15:0] led_sp;
	reg [15:0] led_pc;
	reg [23:0] led_mem;
	reg [7:0] led_data;
	reg led_test;
	reg led_physical;
	reg led_soft;
	reg led_run;
	reg led_halt;
	reg led_neg;
	reg led_ovf;
	reg led_dash;
	reg led_brk;
	reg led_dec;
	reg led_irq;
	reg led_zero;
	reg led_carry;
	reg ledsValid;

	// Outputs
	wire sclk;
	wire sdata;
	wire sload;
	wire sclr_n;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.led_a(led_a), 
		.led_x(led_x), 
		.led_y(led_y), 
		.led_sp(led_sp), 
		.led_pc(led_pc), 
		.led_mem(led_mem), 
		.led_data(led_data), 
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
		.sclk(sclk), 
		.sdata(sdata), 
		.sload(sload), 
		.sclr_n(sclr_n)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		led_a = 0;
		led_x = 0;
		led_y = 0;
		led_sp = 0;
		led_pc = 0;
		led_mem = 0;
		led_data = 0;
		led_test = 0;
		led_physical = 0;
		led_soft = 0;
		led_run = 0;
		led_halt = 0;
		led_neg = 0;
		led_ovf = 0;
		led_dash = 0;
		led_brk = 0;
		led_dec = 0;
		led_irq = 0;
		led_zero = 0;
		led_carry = 0;
		ledsValid = 0;

		// Wait 100 ns for global reset to finish
		#100;
        rst_n = 1;      
	end
      
    always #20 clk = ~clk;
      
endmodule

