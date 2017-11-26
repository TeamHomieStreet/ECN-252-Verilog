`timescale 1ns / 1ps
module main_test;

	// Inputs
	reg [71:0] inp;
	reg clk;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.inp(inp), 
		.clk(clk),
		.out(out)
	);

	initial begin
		// Initialize Inputs
		inp = 72'b110010011110000111010101110000011011001101100001110101001010101011110000;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		#1000 inp = 72'b010011110101001101111111110110101000001101101101011100001111111000100000;
		
		#1000 inp = 72'b011001010010110110110001111010000101001010010011010011011101111011101101;
		
		#1000 inp = 72'b010000001000000101100001010111110110110111100100111101110001010001011101;
		
	end
	
	always
		#10 clk = ~clk;
endmodule

