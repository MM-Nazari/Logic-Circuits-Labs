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
---  Module Name: Paritiy Generator Testbench
---  Description: Lab 04 Part 3 and Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module paritiy3_gen (
	input a,
	input b,
	input c,
	output f	
);
	/* write your code here */
	xnor F(f,a,b,c);
	/* write your code here */

endmodule

module paritiy3_gen_sop (
	input a,
	input b,
	input c,
	output f	
);
	/* write your code here */
	assign f=(~a & ~b & ~c) | ( ~a & b & c) | ( a & ~b & c ) | (a & b & ~c) ;
	/* write your code here */

endmodule

module tb_paritiy3 ();

reg a;
reg b;
reg c;
wire f_parity_gen;
wire f_parity_gen_sop;
	
	paritiy3_gen t_paritiy3_gen (
		.a(a),
		.b(b),
		.c(c),
		.f(f_parity_gen));

	paritiy3_gen_sop t_paritiy3_gen_sop (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f_parity_gen_sop));


	initial 
		begin
		a <= 1'b0;
		b <= 1'b0;
		c <= 1'b0;
		# 10;
		 a <= 1'b0;
		 b <= 1'b0;
		 c <= 1'b1;
		 # 10;
		  a <= 1'b0;
		 b <= 1'b1;
		 c <= 1'b0;
		 # 10;
		  a <= 1'b0;
		 b <= 1'b1;
		 c <= 1'b1;
		 # 10;
		  a <= 1'b1;
		 b <= 1'b0;
		 c <= 1'b0;
		 # 10;
		  a <= 1'b1;
		 b <= 1'b0;
		 c <= 1'b1;
		 # 10;
		  a <= 1'b1;
		 b <= 1'b1;
		 c <= 1'b0;
		 # 10;
		  a <= 1'b1;
		 b <= 1'b1;
		 c <= 1'b1;
		 # 10;
		 
		
	end

endmodule
