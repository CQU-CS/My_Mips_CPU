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
           input wire[5:0] op,
           output reg[7:0] alucontrol
       );
always @(*)
begin
    case (op)
        `EXE_NOP:
        case (funct)
            `EXE_ADD:
                alucontrol <= `EXE_ADD_OP; //add
            `EXE_ADDU:
                alucontrol <= `EXE_ADDU_OP; //addu
            `EXE_SUB:
                alucontrol <= `EXE_SUB_OP; //sub
            `EXE_SUBU:
                alucontrol <= `EXE_SUBU_OP; //subu
            `EXE_AND:
                alucontrol <= `EXE_AND_OP; //and
            `EXE_OR:
                alucontrol <= `EXE_OR_OP; //or
            `EXE_XOR:
                alucontrol <= `EXE_XOR_OP; //xor
            `EXE_NOR:
                alucontrol <= `EXE_NOR_OP; //nor
            `EXE_SLT:
                alucontrol <= `EXE_SLT_OP; //slt
            `EXE_SLTU:
                alucontrol <= `EXE_SLTU_OP; //sltu
            `EXE_SLL:
                alucontrol <= `EXE_SLL_OP; //sll
            `EXE_SRL:
                alucontrol <= `EXE_SRL_OP; //srl
            `EXE_SRA:
                alucontrol <= `EXE_SRA_OP; //sra
            `EXE_SLLV:
                alucontrol <= `EXE_SLLV_OP; //sllv
            `EXE_SRLV:
                alucontrol <= `EXE_SRLV_OP; //srlv
            `EXE_SRAV:
                alucontrol <= `EXE_SRAV_OP; //srav
            `EXE_MULT:
                alucontrol <= `EXE_MULT_OP; //mult
            `EXE_MULTU:
                alucontrol <= `EXE_MULTU_OP; //multu
            `EXE_DIV:
                alucontrol <= `EXE_DIV_OP; //div
            `EXE_DIVU:
                alucontrol <= `EXE_DIVU_OP; //divu
            default:
                alucontrol <= `EXE_NOP_OP;
        endcase
        6'b111111:
            alucontrol <= 8'b11111111;
        `EXE_BEQ:
            alucontrol <= `EXE_SUB_OP;//sub (for beq)
        `EXE_ADDI:
            alucontrol <= `EXE_ADD_OP;//add (for lw/sw/addi)
        `EXE_ADDIU:
            alucontrol <= `EXE_ADDU_OP;//addu (for addiu)
        `EXE_SLTI:
            alucontrol <= `EXE_SLT_OP;//addu (for slti)
        `EXE_SLTIU:
            alucontrol <= `EXE_SLTU_OP;//addu (for sltiu)
        `EXE_ANDI:
            alucontrol <= `EXE_AND_OP;//add (for andi)
        `EXE_XORI:
            alucontrol <= `EXE_XOR_OP;//addu (for xori)
        `EXE_LUI:
            alucontrol <= `EXE_LUI_OP;//addu (for lui)
        `EXE_ORI:
            alucontrol <= `EXE_OR_OP;//addu (for ori)
        default:
            alucontrol <= `EXE_ADD_OP;//add (for lw/sw/addi)
    endcase
end
endmodule
