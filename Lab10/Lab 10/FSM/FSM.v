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
---  Module Name: FSM
---  Description: Lab 10 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fsm (
   input   rst ,
	input        rqt ,
	input        clk ,
	input        confirm ,
	input  [3:0] pass_data ,
	output reg      en_left ,
	output  reg     en_right ,
	output reg [3:0] dout
);
   reg [2:0]state ;
	assign state = 3'b000;
   assign en_right = 1'b0;
   assign en_left = 1'b0;
	
	always @(posedge clk or negedge rst )
		
		
			if(~rqt)
				state = 3'b000;
			
			else 
				case(state)
					3'b000: 
						if(rqt) 
							state = 3'b001;
					3'b001: 
						if(confirm)
							if(pass_data == 4'b1111)
								state = 3'b101;
							else
								state = 3'b111;
					
					3'b101:  
						if(confirm)
						   state = 3'b110;
						
			
					3'b110: begin
							if(pass_data[0])
								en_left = 1'b1;
							else
								en_right = 1'b1;
							assign dout = pass_data ;
								end
							
			endcase
	
endmodule

