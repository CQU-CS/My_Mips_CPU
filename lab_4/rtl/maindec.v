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
           output wire hilotoreg,
           output wire hiloalu
       );
reg[19:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,lshb,jr,jal,pceight,sign,hilowrite,hilotoreg,hiloalu} = controls;
always @(*)
begin
    case (op)
        `EXE_NOP:
            controls <= 19'b1100_0000_0010_0000_1000;//R-TYRE
        `EXE_LB:
            controls <= 19'b1010_0000_1000_0000_1000;//lb
        `EXE_LBU:
            controls <= 19'b1010_0000_1000_1000_1000;//lbu
        `EXE_LH:
            controls <= 19'b1010_0000_1001_0000_1000;//lh
        `EXE_LHU:
            controls <= 19'b1010_0000_1001_1000_1000;//lhu
        `EXE_LW:
            controls <= 19'b1010_0000_1010_0000_1000;//LW
        `EXE_SB:
            controls <= 19'b0010_1111_0010_1000_1000;//sb
        `EXE_SH:
            controls <= 19'b0010_1111_0011_0000_1000;//sh
        `EXE_SW:
            controls <= 19'b0010_1111_0011_1000_1000;//SW
        `EXE_BEQ,`EXE_BNE,`EXE_BGTZ,`EXE_BLEZ,`EXE_BLTZ,`EXE_BGEZ:
            controls <= 19'b0001_0000_0010_0000_1000;//BEQ
        `EXE_ADDI,`EXE_ADDIU,`EXE_SLTI,`EXE_SLTIU:
            controls <= 19'b1010_0000_0010_0000_1000;//I TYPE SIGNED
        `EXE_ORI,`EXE_ANDI,`EXE_XORI,`EXE_LUI:
            controls <= 19'b1010_0000_0010_0000_0000;//I TYPE UNSIGNED
        `EXE_J:
            controls <= 19'b0000_0000_0110_0000_1000;//J
        default:
            controls <= 19'b0000_0000_0010_0000_1000;//illegal op
    endcase
end
endmodule
