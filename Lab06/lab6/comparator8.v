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
---  Module Name: 8 Bits Comparator
---  Description: Lab 06 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator8 (
	input [7:0] A ,
	input [7:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	wire [1:0]ll;
	wire [1:0]gg;
	wire [1:0]ee;
	
	comparator3 c1(A[2:0],B[2:0],1'b0,1'b1,1'b0,ll[0],ee[0],gg[0]);
	comparator3 c2(A[5:3],B[5:3],ll[0],ee[0],gg[0],ll[1],ee[1],gg[1]);
	comparator3 c3({1'b0 , A[7:6]},{1'b0,B[7:6]},ll[1],ee[1],gg[1],lt,et,gt);


endmodule






module tb_comparator8 ();

reg [7:0] A;
reg [7:0] B;
reg l;
reg e;
reg g;
wire lt;
wire et;
wire gt;

	comparator8 test_comparator8 (.A(A), .B(B), .l(l), .e(e), .g(g), .lt(lt), .et(et), .gt(gt));


	initial 
		begin
		
		A = 8'b01000111;
		B = 8'b01101000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10;
		
		
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10;
		
		
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10;
		
		
		
		A = 8'b01110111;
		B = 8'b01101000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10;
		
		
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10;
		
		
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10;
		
		
		
		A = 8'b01110111;
		B = 8'b01110111;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10;
		
		
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10;
		
		
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10;
		
		
		A = 8'b01110111;
		B = 8'b01110101;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		#10;
		
		
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		#10;
		
		
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		#10;
		
	end

endmodule