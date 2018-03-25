`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:01 12/23/2012 
// Design Name: 
// Module Name:    m_gen_sec 
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
module m_gen_sec(clk_sec,clk_min,sec_low,sec_high);
input wire clk_sec;
output reg clk_min;
output reg[3:0]sec_low=0,sec_high=0;
always @(posedge clk_sec) begin
     if (sec_low==9)begin
	begin sec_low=0;
	clk_min=0;
	end /* base 10 */
	if (sec_high==5) begin
	sec_high=0; /* base 6 */
	clk_min=1;
	end else
	sec_high=sec_high+1;
						
             end else
             sec_low=sec_low+1;
    end
endmodule
