`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:34:36 04/09/2018
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
	reg [71:0] display_bits;

	// Outputs
	wire sclk;
	wire sdata;
	wire sload;
	wire sclr_n;

	// Instantiate the Unit Under Test (UUT)
	display uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.display_bits(display_bits), 
		.sclk(sclk), 
		.sdata(sdata), 
		.sload(sload), 
		.sclr_n(sclr_n)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		display_bits = 0;

		// Wait 100 ns for global reset to finish
		#100;
        display_bits = 72'h55555555555555555555;
        rst_n = 1;
                
	end
      
    always #20 clk = ~clk;

endmodule

