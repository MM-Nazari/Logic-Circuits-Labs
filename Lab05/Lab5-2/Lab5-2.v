
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:53 11/09/2021 
// Design Name: 
// Module Name:    Lab5-2 
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
`timescale 1 ns/1 ns


module tb_decoder4x16 ();

reg [3:0] in;
reg en;
wire [15:0] dout;

	decoder4x16 M2(dout , in , en);


	initial 
		begin
		en <= 1'b0;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 10 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 10 ;
	   in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 10 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;


		en <= 1'b1;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 10 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 10 ;
	   in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 10 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;
		
	end

endmodule

module tb_decoder2x4 ();

reg [1:0] in;
reg en;
wire [3:0] dout;

	decoder2x4 M1(dout , in , en);


	initial 
		begin
		en <= 1'b0;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;

		en <= 1'b1;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;		
	end

endmodule

module decoder2x4 (D , I , EN );
	input [1:0] I ;
	input EN ;
	output [3:0] D ;
	wire a1 , a2 ;
	
not
G1(a1 , I[0]),
G2 ( a2 , I[1]);
and
G3(D[0],a1,a2,EN),
G4(D[1] , I[0] , a2 , EN),
G5(D[2], a1 , I[1] ,EN),
G6(D[3] , I[0] , I[1] ,EN);
endmodule

module decoder4x16 ( dout , in , en);
	input [3:0] in ;
	input 		en ;
	output [15:0] dout ;
   wire  [3:0] a ;

decoder2x4 R1( a , in[3:2] , en);
decoder2x4 R2( dout[3:0] , in[1:0] , a[0]);
decoder2x4 R3(  dout[7:4], in[1:0] , a[1]);
decoder2x4 R4(  dout[11:8],in[1:0] , a[2]);
decoder2x4 R5( dout[15:12] , in[1:0], a[3]);


endmodule








