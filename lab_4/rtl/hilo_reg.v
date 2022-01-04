`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/04 21:22:00
// Design Name: 
// Module Name: hilo_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hilo_reg(
	input wire clk,rst,we,
	input wire[31:0] hi_i,lo_i,
	output reg[31:0] hi_o,lo_o
    );
	
	always @(negedge clk) begin
		if(rst) begin
			hi_o <= 32'h0000_0000;
			lo_o <= 32'h0000_0000;
		end else if (we) begin
			hi_o <= hi_i;
			lo_o <= lo_i;
		end
	end
endmodule
