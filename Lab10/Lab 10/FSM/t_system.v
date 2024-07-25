`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:28 12/27/2021 
// Design Name: 
// Module Name:    t_system 
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
module t_system();

	reg  rst ;
	reg  clk ;
	reg  req;	             // Request	
	reg  confirm;
	reg  [3:0] din ;
	wire [3:0] dout_left ;
	wire [3:0] dout_right;
	
	system S1 (rst,clk,req,confirm,din,dout_left,dout_right);
	
	initial
	begin
   clk = 1'b0;
   forever #10 clk = ~clk ;
	end
	initial
	begin
	#10;
	rst = 1'b1;
   req = 1'b1;
   #20;
	din = 4'b111 ;
	req = 1'b1;
   confirm = 1'b1;
   #20;
	din = 4'b1010;
	req = 1'b1;
   confirm = 1'b1;
	end
endmodule
