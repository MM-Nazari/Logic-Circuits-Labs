`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:16 12/28/2021 
// Design Name: 
// Module Name:    t_register 
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
module t_register(
    );

	wire [3:0] qout ;
	reg [3:0] din ;
	reg clk,rst,en ;

	// Instantiate the Unit Under Test (UUT)
register R1 (qout,din,clk,rst,en);

	initial begin
		rst = 1'b1;
		en = 1'b1;
		din = 4'b1010;
		#100;
 		rst = 1'b1;
		din = 4'b1010;
		#100;
 		rst = 1'b1;
		din = 4'b1110;
		#100;
 		rst = 1'b1;
		din = 4'b1011;
		#100;
 		rst = 1'b1;
		din = 4'b1111;
		
	end
	initial
	begin
   clk = 1'b0;
   forever #10 clk = ~clk ;
	end

endmodule
