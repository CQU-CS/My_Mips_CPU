`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/02 14:52:16
// Design Name:
// Module Name: alu
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
module alu(
           input wire[31:0] a,b,
           input wire[7:0] op,
           output reg[31:0] y,
           output reg overflow,
           output wire zero
       );

wire[31:0] addr,subr,nb;
assign nb = ~b;
assign subr = a + nb + 1;
assign addr =a + b;
always @(*)
begin
    case (op)
        `EXE_ADD_OP:
            y <= addr;
        `EXE_ADDU_OP:
            y <= addr;
        `EXE_SUB_OP:
            y <= subr;
        `EXE_SUBU_OP:
            y <= subr;
        `EXE_AND_OP:
            y <= a & b;
        `EXE_OR_OP:
            y <= a | b;
        `EXE_XOR_OP:
            y <= a ^ b;
        `EXE_NOR_OP:
            y <= ~(a | b);
        `EXE_SLT_OP:
            y <= ((a[31] && !b[31])||(subr[31] && !(!a[31] && b[31])));
        `EXE_SLTU_OP:
            y <= (a<b);
        default:
            y <= 32'b0;
    endcase
end


// assign nb = op[2] ? ~b : b;
// assign s = a + nb + op[2];
// always @(*)
// begin
//     case (op[1:0])
//         2'b00:
//             y <= a & nb;
//         2'b01:
//             y <= a | nb;
//         2'b10:
//             y <= s;
//         2'b11:
//             y <= s[31];
//         default :
//             y <= 32'b0;
//     endcase
// end

assign zero = (y == 32'b0);

always @(*)
begin
    case (op)
        `EXE_ADD_OP:
            overflow <= a[31] & b[31] & ~addr[31] | ~a[31] & ~b[31] & addr[31];
        `EXE_SUB_OP:
            overflow <= ~a[31] & b[31] & subr[31] | a[31] & ~b[31] & ~subr[31];
        default :
            overflow <= 1'b0;
    endcase
end
// always @(*)
// begin
//     case (op[2:1])
//         2'b01:
//             overflow <= a[31] & b[31] & ~s[31] |
//             ~a[31] & ~b[31] & s[31];
//         2'b11:
//             overflow <= ~a[31] & b[31] & s[31] |
//             a[31] & ~b[31] & ~s[31];
//         default :
//             overflow <= 1'b0;
//     endcase
// end
endmodule
