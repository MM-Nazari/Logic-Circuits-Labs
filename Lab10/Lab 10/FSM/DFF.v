`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:47 12/21/2021 
// Design Name: 
// Module Name:    DFF 
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

module DFF(Q,D,clk,res,enable);
	input D;
	input clk,res,enable;
	output reg Q;
	always @(posedge clk or negedge res)
		begin
			if(res == 1'b0)
				Q <= 1'b0;
			else if(enable == 1'b1)
				Q <= D;
		end
endmodule

module register(O,D,clk,clear,enable);
	output reg [3:0] O ;
	input [3:0] D ;
	input clk,clear,enable ;
	DFF D1(O[0],D[0],clk,clear,enable);
	DFF D2(O[1],D[1],clk,clear,enable);
	DFF D3(O[2],D[2],clk,clear,enable);
	DFF D4(O[3],D[3],clk,clear,enable);
endmodule
