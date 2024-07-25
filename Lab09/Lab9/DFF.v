`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:06 12/14/2021 
// Design Name: 
// Module Name:    DFF 
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
module DFF(Q,QP,D,clk,res );
input D,clk,res ;
output reg Q ;
output QP ; 
assign QP = ~ Q ;
always @(negedge clk or negedge res ) 
begin
if( res == 1'b0 )
Q <= 1'b0 ;
else
Q <= D ;
end
endmodule
 