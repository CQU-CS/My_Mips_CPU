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


module maindec(
           input wire[5:0] op,

           output wire memtoreg,memwrite,
           output wire branch,alusrc,
           output wire regdst,regwrite,
           output wire jump,
           output wire[1:0] aluop,
           output wire[2:0] lshb
       );
reg[11:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,aluop,lshb} = controls;
always @(*)
begin
    case (op)
        6'b000000:
            controls <= 12'b110000010100;//R-TYRE
        6'b100000:
            controls <= 12'b101001000000;//lb取字节有符号拓展
        6'b100100:
            controls <= 12'b101001000001;//lbu取字节无符号拓展
        6'b100001:
            controls <= 12'b101001000010;//lh取半字有符号拓展
        6'b100101:
            controls <= 12'b101001000011;//lhu取半字无符号拓展
        6'b100011:
            controls <= 12'b101001000100;//LW
        6'b101000:
            controls <= 12'b001010000000;//sb存字节
        6'b101001:
            controls <= 12'b001010000000;//sh存半字
        6'b101011:
            controls <= 12'b001010000100;//SW
        6'b000100:
            controls <= 12'b000100001100;//BEQ
        6'b001000:
            controls <= 12'b101000000100;//ADDI
        6'b000010:
            controls <= 12'b000000100100;//J
        default:
            controls <= 12'b000000000100;//illegal op
    endcase
end
endmodule
