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


module aludec(
	input wire[5:0] funct,
	input wire[1:0] aluop,
	output reg[4:0] alucontrol
    );
	always @(*) begin
		case (aluop)
			2'b00: alucontrol <= 3'b010;//add (for lw/sw/addi)
			2'b01: alucontrol <= 3'b110;//sub (for beq)
			default : case (funct)
				// 6'b100000:alucontrol <= 3'b010; //add
				// 6'b100010:alucontrol <= 3'b110; //sub
				// 6'b100100:alucontrol <= 3'b000; //and
				// 6'b100101:alucontrol <= 3'b001; //or
				// 6'b101010:alucontrol <= 3'b111; //slt
				// default:  alucontrol <= 3'b000;
				6'b100000:alucontrol <= 5'b00010; //add
				6'b100010:alucontrol <= 5'b00110; //sub
				6'b100100:alucontrol <= 5'b00000; //and
				6'b100101:alucontrol <= 5'b00001; //or
				6'b101010:alucontrol <= 5'b00111; //slt
				6'b000000:alucontrol <= 5'b00010;//sll
				6'b000010:alucontrol <= 5'b00011;//srl
				6'b000100:alucontrol <= 5'b00100;//sra
				6'b000101:alucontrol <= 5'b00101;//sllv
				6'b000110:alucontrol <= 5'b01000;//srlv
				6'b000111:alucontrol <= 5'b01001;//srav
				6'b100110:alucontrol <= 5'b01010;//xor
				6'b100111:alucontrol <= 5'b01011;//nor
				6'b010000:alucontrol <= 5'b01100;//mfhi
				6'b010010:alucontrol <= 5'b01101;//mflo
				6'b010001:alucontrol <= 5'b01110;//mthi
				6'b010011:alucontrol <= 5'b01111;//mtlo
				6'b100001:alucontrol <= 5'b10000;//addu
				6'b100011:alucontrol <= 5'b10001;//subu
				6'b101011:alucontrol <= 5'b10010;//sltu
				6'b011000:alucontrol <= 5'b10011;//mult
				6'b011001:alucontrol <= 5'b10100;//multu
				6'b011010:alucontrol <= 5'b10101;//div
				6'b011011:alucontrol <= 5'b10110;//divu
				6'b001000:alucontrol <= 5'b10111;//jr
				6'b001001:alucontrol <= 5'b11000;//jalr
				6'b001101:alucontrol <= 5'b11001;//break
				6'b001100:alucontrol <= 5'b11010;//sycall
				default:  alucontrol <= 5'b00000;
			endcase
		endcase
	end
endmodule
