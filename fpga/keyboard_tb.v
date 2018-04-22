`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:56 04/22/2018
// Design Name:   keyboard
// Module Name:   /home/christopher/git/quokka/fpga/keyboard_tb.v
// Project Name:  quokka
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: keyboard
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module keyboard_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg [5:0] KBD_col;

	// Outputs
	wire [4:0] KBD_row;
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

	// Instantiate the Unit Under Test (UUT)
	keyboard uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.KBD_row(KBD_row), 
		.KBD_col(KBD_col), 
		.b_0(b_0), 
		.b_1(b_1), 
		.b_2(b_2), 
		.b_3(b_3), 
		.b_4(b_4), 
		.b_5(b_5), 
		.b_6(b_6), 
		.b_7(b_7), 
		.b_8(b_8), 
		.b_9(b_9), 
		.b_a(b_a), 
		.b_b(b_b), 
		.b_c(b_c), 
		.b_d(b_d), 
		.b_e(b_e), 
		.b_f(b_f), 
		.b_runhalt(b_runhalt), 
		.b_reset(b_reset), 
		.b_step(b_step), 
		.b_storeinc(b_storeinc), 
		.b_irq(b_irq), 
		.b_dec(b_dec), 
		.b_load(b_load), 
		.b_toA(b_toA), 
		.b_toSP(b_toSP), 
		.b_toX(b_toX), 
		.b_toY(b_toY), 
		.b_toPC(b_toPC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		KBD_col = 6'b111111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        rst_n = 1;
        
	end
    always #12.5 clk = ~clk;
endmodule

