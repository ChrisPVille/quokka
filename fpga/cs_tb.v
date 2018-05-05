`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:58 05/03/2018
// Design Name:   chip_select
// Module Name:   /home/christopher/git/quokka/fpga/cs_tb.v
// Project Name:  quokka
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: chip_select
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cs_tb;

	// Inputs
	reg PHI2;
	reg RW;
	reg [15:0] A;
	reg [15:0] mask;
	reg [15:0] bitPattern;

	// Outputs
	wire ceN;

	// Instantiate the Unit Under Test (UUT)
	chip_select uut (
		.PHI2(PHI2), 
		.RW(RW), 
		.A(A), 
		.mask(mask), 
		.bitPattern(bitPattern), 
		.ceN(ceN)
	);

	initial begin
		// Initialize Inputs
		PHI2 = 1;
		RW = 0;
		A = 0;
		mask = 0;
		bitPattern = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

        mask = 16'h8000;
        bitPattern = 16'h8000;
	end
    
    always #20 A = A+1;
      
endmodule

