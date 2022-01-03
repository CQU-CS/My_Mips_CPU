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
           output wire sign
       );
reg[16:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,lshb,jr,jal,pceight,sign} = controls;
always @(*)
begin
    case (op)
        `EXE_NOP:
            controls <= 17'b11000000001000001;//R-TYRE
        `EXE_LB:
            controls <= 17'b10100000100000001;//lb
        `EXE_LBU:
            controls <= 17'b10100000100010001;//lbu
        `EXE_LH:
            controls <= 17'b10100000100100001;//lh
        `EXE_LHU:
            controls <= 17'b10100000100110001;//lhu
        `EXE_LW:
            controls <= 17'b10100000101000001;//LW
        `EXE_SB:
            controls <= 17'b00101111001010001;//sb
        `EXE_SH:
            controls <= 17'b00101111001100001;//sh
        `EXE_SW:
            controls <= 17'b00101111001110001;//SW
        `EXE_BEQ:
            controls <= 17'b00010000001000001;//BEQ
        `EXE_ADDI,`EXE_ADDIU,`EXE_SLTI,`EXE_SLTIU,`EXE_ANDI,`EXE_XORI,`EXE_LUI:
            controls <= 17'b10100000001000001;//I TYPE SIGNED
        `EXE_ORI:
            controls <= 17'b10100000001000000;//I TYPE UNSIGNED
        `EXE_J:
            controls <= 17'b00000000011000001;//J
        default:
            controls <= 17'b00000000001000001;//illegal op
    endcase
end
endmodule
