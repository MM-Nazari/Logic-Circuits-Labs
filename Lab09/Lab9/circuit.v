`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:29 12/14/2021 
// Design Name: 
// Module Name:    circuit 
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
module circuit(Y,Z,S,R,A,B,clk,res );
output Y,Z,S,R ;
input A,B,clk,res;
wire w1,w2,w3,w4,w5;
and #(10)F1(S,B,w4);
or #(10)F2(w1,S,A);
DFF #(5)F3(Y,w2,w1,clk,res);
nor #(10)F4(w3,w1,w2);
DFF #(5)F5(w5,w4,w3,clk,res);
and #(10)F6(R,w4,B);
or #(10)F7(Z,w2,R);
endmodule
