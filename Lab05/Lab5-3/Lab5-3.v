
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:52 11/09/2021 
// Design Name: 
// Module Name:    Lab5-3 
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


module tb_function4x1 ();

	
reg [3:0] a;
wire f;
	function4x1 A1 (f,a);


	initial 
		begin
		a <= 4'b0000; 
		# 10 ;
		a <= 4'b0001; 
		# 10 ;
		a <= 4'b0010; 
		# 10 ;
		a <= 4'b0011; 
	end

endmodule
module function4x1 (f,a
);

input [3:0] a ;
output f ;
wire [15:0] dout ;
  
	
	 decoder4x16 E1( dout , a , 1) ;
	 or F1(f , dout[2] , dout[3] ,dout[5] ,dout[7] ,dout[11] ,dout[13]);  

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

