`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:12 12/14/2021 
// Design Name: 
// Module Name:    tb_circuit 
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
module tb_circuit(  );
reg A,B,clk,res ;
wire Y,Z,S,R;
circuit G1 (Y,Z,S,R,A,B,clk,res);
initial
begin
clk = 1'b0;
repeat(18)
#40 clk = ~clk ;
end
initial
 begin
res = 1'b1;
A = 1'b0;
B = 1'b0;
#80;
res = 1'b1;
A = 1'b0;
B = 1'b1;
#40;
res = 1'b1;
A = 1'b1;
B = 1'b1;
#80;
res = 1'b1;
A = 1'b0;
B = 1'b1;
#80;
res = 1'b1;
A = 1'b0;
B = 1'b0;
#40;
res = 1'b1;
A = 1'b1;
B = 1'b0;
#120;
res = 1'b1;
A = 1'b1;
B = 1'b1;
#40;
res = 1'b1;
A = 1'b0;
B = 1'b0;
#120;
res = 1'b1;
A = 1'b0;
B = 1'b1;
#40;
res = 1'b1;
A = 1'b1;
B = 1'b1;
#80;
end
endmodule
