`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:10 11/23/2021 
// Design Name: 
// Module Name:    Lab7 
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
module adder_1bit(s,co,ci,a,b );
input a,b,ci ;
output s,co;
wire w1,w2,w3,w4 ;

xor F1(w1,b,ci);
xor F2(w3,a,w1);
xor F3(s,w3,ci);
and F4(w2,w1,a);
and F5(w4,w3,ci);
or F6(co,w4,w2);

endmodule
module adder_1bit_delay(s,co,ci,a,b );
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

module adder_4bit(s,co,ci,a,b );
input [3:0] a,b;
input ci;
output [3:0] s;
output co ;
wire [6:0] w ;

xor G1(w[0],ci,b[0]);
xor G2(w[1],ci,b[1]);
xor G3(w[2],ci,b[2]);
xor G4(w[3],ci,b[3]);
adder_1bit G5(s[0],w[4],ci,a[0],b[0]);
adder_1bit G6(s[1],w[5],w[4],a[1],b[1]);
adder_1bit G7(s[2],w[6],w[5],a[2],b[2]);
adder_1bit G8(s[3],co,w[6],a[3],b[3]);
endmodule

module adder_4bit_delay(s,co,ci,a,b );
input [3:0] a,b;
input ci;
output [3:0] s;
output co ;
wire [6:0] w ;

xor #(10)G1(w[0],ci,b[0]);
xor #(10)G2(w[1],ci,b[1]);
xor #(10)G3(w[2],ci,b[2]);
xor #(10)G4(w[3],ci,b[3]);
adder_1bit_delay G5(s[0],w[4],ci,a[0],b[0]);
adder_1bit_delay G6(s[1],w[5],w[4],a[1],b[1]);
adder_1bit_delay G7(s[2],w[6],w[5],a[2],b[2]);
adder_1bit_delay G8(s[3],co,w[6],a[3],b[3]);
endmodule


module tb_adder_4bit();
reg [3:0] a;
reg [3:0] b;
reg ci;

wire [3:0] s;
wire [3:0] s_delay;
wire co;
wire co_delay;

adder_4bit T1(s,co,ci,a,b);
adder_4bit_delay T2(s_delay,co_delay,ci,a,b);

initial
 begin
 
 a=4'b0001;
 b=4'b0001;
 ci=1'b0;
 #10;
  a=4'b0100;
 b=4'b0000;
 ci=1'b0;
 #10;
  a=4'b1110;
 b=4'b0011;
 ci=1'b0;
 #10;
 ////
  a=4'b0001;
 b=4'b0000;
 ci=1'b1;
 #10;
  a=4'b1010;
 b=4'b0011;
 ci=1'b1;
 #10;
  a=4'b0010;
 b=4'b1000;
 ci=1'b1;
 #10;
 end
 endmodule
 
