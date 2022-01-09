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
           input wire[5:0] funct,
           input wire[4:0] rt,
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
           output wire hiloalu,
           output wire hiloread
       );
reg[20:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,lshb,jr,jal,pceight,sign,hilowrite,hilotoreg,hiloalu,hiloread} = controls;
always @(*)
begin
    case (op)
        6'b111111:
            controls <= 21'b1100_0000_0010_0000_1000_0;//R-TYRE
        `EXE_SPECIAL_INST:
        begin
            case (funct)
                `EXE_MFHI:
                    controls <= 21'b1100_0000_0010_0000_0010_1;
                `EXE_MFLO:
                    controls <= 21'b1100_0000_1010_0000_0010_1;
                `EXE_MTHI:
                    controls <= 21'b0000_0000_0010_0000_0100_0;
                `EXE_MTLO:
                    controls <= 21'b0000_0000_0010_0000_0100_0;
                `EXE_JR:
                    controls <= 21'b0000_0000_0010_0100_1000_0;
                `EXE_JALR:
                    controls <= 21'b1000_0000_0010_0111_1000_0;
                `EXE_MULT,`EXE_MULTU,`EXE_DIV,`EXE_DIVU:
                    controls <= 21'b1100_0000_0010_0000_1101_0;
                default:
                    controls <= 21'b1100_0000_0010_0000_1000_0;//R-TYRE
            endcase
        end
        `EXE_LB:
            controls <= 21'b1010_0000_1000_0000_1000_0;//lb
        `EXE_LBU:
            controls <= 21'b1010_0000_1000_1000_1000_0;//lbu
        `EXE_LH:
            controls <= 21'b1010_0000_1001_0000_1000_0;//lh
        `EXE_LHU:
            controls <= 21'b1010_0000_1001_1000_1000_0;//lhu
        `EXE_LW:
            controls <= 21'b1010_0000_1010_0000_1000_0;//LW
        `EXE_SB:
            controls <= 21'b0010_1111_0010_1000_1000_0;//sb
        `EXE_SH:
            controls <= 21'b0010_1111_0011_0000_1000_0;//sh
        `EXE_SW:
            controls <= 21'b0010_1111_0011_1000_1000_0;//SW
        `EXE_BEQ,`EXE_BNE,`EXE_BGTZ,`EXE_BLEZ:
            controls <= 21'b0001_0000_0010_0000_1000_0;//BEQ
        `EXE_ADDI,`EXE_ADDIU,`EXE_SLTI,`EXE_SLTIU:
            controls <= 21'b1010_0000_0010_0000_1000_0;//I TYPE SIGNED
        `EXE_ORI,`EXE_ANDI,`EXE_XORI,`EXE_LUI:
            controls <= 21'b1010_0000_0010_0000_0000_0;//I TYPE UNSIGNED
        `EXE_J:
            controls <= 21'b0000_0000_0110_0000_1000_0;//J
        `EXE_JAL:
            controls <= 21'b1000_0000_0110_0011_1000_0;//Jal
        `EXE_REGIMM_INST:
        begin
            case (rt)
                `EXE_BLTZ:
                    controls <= 21'b0001_0000_0010_0000_1000_0;
                `EXE_BLTZAL:
                    controls <= 21'b1001_0000_0010_0011_1000_0;
                `EXE_BGEZ:
                    controls <= 21'b0001_0000_0010_0000_1000_0;
                `EXE_BGEZAL:
                    controls <= 21'b1001_0000_0010_0011_1000_0;
            endcase
        end
        default:
            controls <= 21'b0000_0000_0010_0000_1000_0;//illegal op
    endcase
end
endmodule
