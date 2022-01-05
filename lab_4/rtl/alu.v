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
           input wire[4:0] sa,
           input wire[7:0] op,
           input wire flush_endE,
           //    input wire stallM,
           output wire[31:0] ans,
           output reg overflow,
           output reg[63:0]hilo_out,
           output wire zero,
           output wire div_stallE
       );

wire[31:0] addr,subr,nb;
reg[31:0] y;
wire[63:0] tem1,tem2;
reg[63:0] hilo_out_mul;
wire[63:0] hilo_out_div;
reg [63:0] hilo_out_move;
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
        `EXE_LUI_OP:
            y <= {b[15:0],16'h0000};
        `EXE_SLL_OP:
            y <= (b << sa);
        `EXE_SRL_OP:
            y <= (b >> sa);
        `EXE_SRA_OP:
            y <= ({32{b[31]}} << (6'd32-{1'b0,sa})) | b >> sa;
        `EXE_SLLV_OP:
            y <= (b << a);
        `EXE_SRLV_OP:
            y <= (b >> a);
        `EXE_SRAV_OP:
            y <= ({32{b[31]}} << (6'd32-{1'b0,a})) | b >> a;
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
assign ans = overflow ? 0 : y;
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

// hilo
// always@(*)
// begin
//     if(op == `EXE_MTHI_OP)
//     begin
//         hilo_out_move <= {a,lo};
//     end
//     else if(op == `EXE_MTLO_OP)
//     begin
//         hilo_out_move <= {hi,a};
//     end
//     else
//         hilo_out_move <= {hi,lo};
// end

wire mul_sign;
assign mul_sign = (op == `EXE_MULT_OP);
wire mul_valid;  // to judge mul?
assign mul_valid = (op == `EXE_MULT_OP || op == `EXE_MULTU_OP);
mult_gen_0 mul1(a,b,tem1);//mult
mult_gen_1 mul2(a,b,tem2);//multu
always @(*)
begin
    if(mul_sign)
        hilo_out_mul<=tem1;
    else
        hilo_out_mul<=tem2;
end
wire div_sign;
wire div_valid;
assign div_sign  = (op == `EXE_DIV_OP);
assign div_valid = (op == `EXE_DIV_OP || op == `EXE_DIVU_OP);
wire div_res_valid;//slaveè®¡ç®—ç»“æžœå‡†å¤‡ï¿??
wire div_res_ready;//masterå�¯ä»¥æŽ¥æ”¶è®¡ç®—ç»“æžœ
assign div_res_ready = div_valid;// & ~stallM;  // E-Må¯„å­˜å™¨æ²¡æœ‰å�œï¿???
assign div_stallE = div_valid & ~div_res_valid;
div div(clk,(rst | flush_endE),a,b,div_sign,div_valid,div_res_ready,div_res_valid,hilo_out_div);

always@(hilo_out_div,hilo_out_mul,hilo_out_move,div_res_valid)
begin
    hilo_out = (div_res_valid == 1)? hilo_out_div :
             (mul_valid == 1)   ? hilo_out_mul :
             hilo_out_move;
end

endmodule
