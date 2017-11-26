`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:44 11/26/2017 
// Design Name: 
// Module Name:    comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module comparator(
		input [7:0] in1,
		input [7:0] in2,
		output [7:0] outgt,
		output gt
    );

begin
	assign outgt = (in1 > in2)? in1 : in2;
	assign gt = (in1 > in2)? 1'b1 : 1'b0;
end


endmodule
