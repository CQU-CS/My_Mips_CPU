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

           output wire memtoreg,
           output wire[3:0] memwrite,
           output wire branch,alusrc,
           output wire regdst,regwrite,
           output wire jump,
           output wire[1:0] aluop,
           output wire[2:0] lshb
       );
reg[14:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,aluop,lshb} = controls;
always @(*)
begin
    case (op)
        6'b000000:
            controls <= 15'b110000000010100;//R-TYRE
        6'b100000:
            controls <= 15'b101000001000000;//lb
        6'b100100:
            controls <= 15'b101000001000001;//lbu
        6'b100001:
            controls <= 15'b101000001000010;//lh
        6'b100101:
            controls <= 15'b101000001000011;//lhu
        6'b100011:
            controls <= 15'b101000001000100;//LW
        6'b101000:
            controls <= 15'b001011110000101;//sb
        6'b101001:
            controls <= 15'b001011110000110;//sh
        6'b101011:
            controls <= 15'b001011110000111;//SW
        6'b000100:
            controls <= 15'b000100000001100;//BEQ
        6'b001000:
            controls <= 15'b101000000000100;//ADDI
        6'b000010:
            controls <= 15'b000000000100100;//J
        default:
            controls <= 15'b000000000000100;//illegal op
    endcase
end
endmodule
