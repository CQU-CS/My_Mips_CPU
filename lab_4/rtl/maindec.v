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
           output wire[2:0] lshb
       );
reg[12:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,lshb} = controls;
always @(*)
begin
    case (op)
        `EXE_NOP:
            controls <= 13'b1100000000100;//R-TYRE
        `EXE_LB:
            controls <= 13'b1010000010000;//lb
        `EXE_LBU:
            controls <= 13'b1010000010001;//lbu
        `EXE_LH:
            controls <= 13'b1010000010010;//lh
        `EXE_LHU:
            controls <= 13'b1010000010011;//lhu
        `EXE_LW:
            controls <= 13'b1010000010100;//LW
        `EXE_SB:
            controls <= 13'b0010111100101;//sb
        `EXE_SH:
            controls <= 13'b0010111100110;//sh
        `EXE_SW:
            controls <= 13'b0010111100111;//SW
        `EXE_BEQ:
            controls <= 13'b0001000000100;//BEQ
        `EXE_ADDI,`EXE_ADDIU,`EXE_SLTI,`EXE_SLTIU,`EXE_ANDI,`EXE_XORI,`EXE_LUI,`EXE_ORI:
            controls <= 13'b1010000000100;//I TYPE
        `EXE_J:
            controls <= 13'b0000000001100;//J
        default:
            controls <= 13'b0000000000100;//illegal op
    endcase
end
endmodule
