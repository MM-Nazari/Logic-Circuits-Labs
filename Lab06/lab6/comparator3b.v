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
---  Module Name: 3 Bits Comparator Gate Level
---  Description: Lab 06 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	
	wire [2:0]notA;
	wire [2:0]notB;
	wire [2:0]c;
	wire [10:0]w;
	
	not
	gn0(notA[0] , A[0]),
	gn1(notA[1] , A[1]),
	gn2(notA[2] , A[2]),
	gn3(notB[0] , B[0]),
	gn4(notB[1] , B[1]),
	gn5(notB[2] , B[2]);
	
	xnor
	gxn0(c[0],A[0],B[0]),
	gxn1(c[1],A[1],B[1]),
	gxn2(c[2],A[2],B[2]);
	
	
	and
	ga0(w[0],c[0],c[1],c[2]),
	ga1(w[1],A[0],notB[0],c[1],c[2]),
	ga2(w[2],A[1],notB[1],c[2]),
	ga3(w[3],A[2],notB[2]),
	ga4(w[4],notA[0],B[0],c[1],c[2]),
	ga5(w[5],notA[1],B[1],c[2]),
	ga6(w[6],notA[2],B[2]),
	ga7(w[9],w[0],g),
	ga8(w[10],w[0],l);
	
	
	or 
	go1(w[7],w[1],w[2],w[3]),
	go2(w[8],w[4],w[5],w[6]);
	
	and ga9(et,e,w[0]);
	or go3(gt,w[7],w[9]);
	or go4(lt,w[8],w[10]);
	
endmodule




module tb_comparator3 ();

reg [2:0] A;
reg [2:0] B;
reg l;
reg e;
reg g;
wire lt;
wire et;
wire gt;

	comparator3 test_comparator3 (.A(A), .B(B), .l(l), .e(e), .g(g), .lt(lt), .et(et), .gt(gt));


	initial 
		begin
		
		//////////////////
		A = 3'b001;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20 ;
		//////////////////
		A = 3'b010;
		B = 3'b001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		//////////////////
		A = 3'b001;
		B = 3'b010;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		$finish;
		//////////////////
	end

endmodule