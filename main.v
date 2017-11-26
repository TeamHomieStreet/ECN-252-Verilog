`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:17 11/26/2017 
// Design Name: 
// Module Name:    main 
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
module main(
	input [71:0] inp,
	input clk,
	output reg [7:0] out
   );
	
reg [71:0] in;
reg [7:0] max_val;
reg [3:0] counter;
reg [2:0] count;
reg clk_big;
integer i, k;

always @(inp)
begin
	in = inp;
	i = 0;
	out = 8'bz;
	k = 0;
   max_val = 8'b00000000;
	counter = 0;
	clk_big = 0;
	count = 0;
end

initial begin
	in = inp;
	i = 0;
	k = 0;
   max_val = 8'b00000000;
	counter = 0;
	clk_big = 0;
	count = 0;
end

always @(counter)
begin
	if(counter == 9 && count < 5)
	begin
		clk_big = ~clk_big;
		counter = 0;
	end
end

always @(clk_big)
begin
	i = 0;
	in[k+: 8] = 8'b00000000;
	count = count + 1;
	if(count == 5)
		out = max_val;
	max_val = 8'b00000000;
end

always @(posedge clk)
begin
	if(count < 5)
	begin
		max_val = (in[i+:8] >= max_val) ? in[i+:8] : max_val;
		k = (in[i+:8] >= max_val) ? i : k;
		i = i + 8;
		counter = counter + 1;
	end
end

endmodule
