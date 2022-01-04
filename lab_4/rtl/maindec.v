`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/10/23 15:21:30
// Design Name:
// Module Name: maindec
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
module maindec(
           input wire[5:0] op,
           output wire memtoreg,
           output wire[3:0] memwrite,
           output wire branch,alusrc,
           output wire regdst,regwrite,
           output wire jump,
           output wire[2:0] lshb,
           output wire jr,
           output wire jal,
           output wire pceight,
           output wire sign,
           output wire hilowrite,
           output wire hilotoreg
       );
reg[18:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,lshb,jr,jal,pceight,sign,hilowrite,hilotoreg} = controls;
always @(*)
begin
    case (op)
        `EXE_NOP:
            controls <= 19'b1100000000100000100;//R-TYRE
        `EXE_LB:
            controls <= 19'b1010000010000000100;//lb
        `EXE_LBU:
            controls <= 19'b1010000010001000100;//lbu
        `EXE_LH:
            controls <= 19'b1010000010010000100;//lh
        `EXE_LHU:
            controls <= 19'b1010000010011000100;//lhu
        `EXE_LW:
            controls <= 19'b1010000010100000100;//LW
        `EXE_SB:
            controls <= 19'b0010111100101000100;//sb
        `EXE_SH:
            controls <= 19'b0010111100110000100;//sh
        `EXE_SW:
            controls <= 19'b0010111100111000100;//SW
        `EXE_BEQ,`EXE_BNE,`EXE_BGTZ,`EXE_BLEZ,`EXE_BLTZ,`EXE_BGEZ:
            controls <= 19'b0001000000100000100;//BEQ
        `EXE_ADDI,`EXE_ADDIU,`EXE_SLTI,`EXE_SLTIU:
            controls <= 19'b1010000000100000100;//I TYPE SIGNED
        `EXE_ORI,`EXE_ANDI,`EXE_XORI,`EXE_LUI:
            controls <= 19'b1010000000100000000;//I TYPE UNSIGNED
        `EXE_J:
            controls <= 19'b0000000001100000100;//J
        default:
            controls <= 19'b0000000000100000100;//illegal op
    endcase
end
endmodule
