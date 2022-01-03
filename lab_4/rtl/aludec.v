`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:27:24
// Design Name: 
// Module Name: aludec
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

`include "defines.vh"
module aludec(
	input wire[5:0] funct,
	input wire[1:0] aluop,
	output reg[7:0] alucontrol
    );
	always @(*) begin
		case (aluop)
			// 2'b00: alucontrol <= 8'b00000010;//add (for lw/sw/addi)
			// 2'b01: alucontrol <= 8'b00000110;//sub (for beq)
			// default : case (funct)
			// 	`EXE_ADD:alucontrol <= 8'b00000010; //add
			// 	`EXE_SUB:alucontrol <= 8'b00000110; //sub
			// 	`EXE_AND:alucontrol <= 8'b00000000; //and
			// 	`EXE_OR:alucontrol <= 8'b00000001; //or
			// 	`EXE_SLT:alucontrol <= 8'b00000111; //slt
			// 	default:  alucontrol <= 8'b00000000;
			// endcase
			2'b00: alucontrol <= `EXE_ADD_OP;//add (for lw/sw/addi)
			2'b01: alucontrol <= `EXE_SUB_OP;//sub (for beq)
			default : case (funct)
				`EXE_ADD:alucontrol <= `EXE_ADD_OP; //add
				`EXE_SUB:alucontrol <= `EXE_SUB_OP; //sub
				`EXE_AND:alucontrol <= `EXE_AND_OP; //and
				`EXE_OR:alucontrol <= `EXE_OR_OP; //or
				`EXE_SLT:alucontrol <= `EXE_SLT_OP; //slt
				default:  alucontrol <= `EXE_NOP_OP;
			endcase
		endcase
	end
endmodule
