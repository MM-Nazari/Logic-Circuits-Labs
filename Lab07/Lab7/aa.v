`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:04 11/23/2021 
// Design Name: 
// Module Name:    aa 
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
module adder_1bit_delay1(s,co,ci,a,b );
input a,b,ci ;
output s,co;
wire w1,w2,w3,w4 ;

xor  #(10)F1(w1,b,ci);
xor  #(10)F2(w3,a,w1);
xor  #(10)F3(s,w3,ci);
and  #(5)F4(w2,w1,a);
and  #(5)F5(w4,w3,ci);
or   #(5)F6(co,w4,w2);

endmodule

