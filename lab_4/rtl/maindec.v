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
           output wire[2:0] lshb,
           output wire jr,
           output wire jal,
           output wire pceight
       );
reg[17:0] controls;
assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,aluop,lshb,jr,jal,pceight} = controls;
always @(*)
begin
    case (op)
        6'b000000:
            controls <= 15'b11000000001010000;//R-TYRE
        6'b100000:
            controls <= 15'b10100000100000000;//lb
        6'b100100:
            controls <= 15'b10100000100000100;//lbu
        6'b100001:
            controls <= 15'b10100000100001000;//lh
        6'b100101:
            controls <= 15'b10100000100001100;//lhu
        6'b100011:
            controls <= 15'b10100000100010000;//LW
        6'b101000:
            controls <= 15'b00101111000010100;//sb
        6'b101001:
            controls <= 15'b00101111000011000;//sh
        6'b101011:
            controls <= 15'b00101111000011100;//SW
        6'b000100:
            controls <= 15'b00010000000110000;//BEQ
        6'b001000:
            controls <= 15'b10100000000010000;//ADDI
        6'b000010:
            controls <= 15'b00000000010010000;//J
        default:
            controls <= 15'b00000000000010000;//illegal op
    endcase
end
endmodule
