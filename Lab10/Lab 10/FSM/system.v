/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Sequential System
---  Description: Lab 10 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module system (
	input  rst ,
	input  clk ,
	input  req,	             // Request	
	input  confirm,
	input  [3:0] din ,
	output [3:0] dout_left ,
	output [3:0] dout_right
);

	reg en_left , en_right ;
	reg [3:0] dmid;
	reg state;
	
	fsm F1(rst,req , clk , confirm , din ,en_left,en_right, dmid  );
	
	register r_left(dout_left , dmid , clk , rst , en_left);
	register r_right(dout_right , dmid , clk , rst , en_right);
	
endmodule