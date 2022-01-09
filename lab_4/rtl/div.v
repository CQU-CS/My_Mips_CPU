`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2022/01/04 23:59:34
// Design Name:
// Module Name: Divv
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


module div(
           input wire clk,
           input wire rst,
           input wire [31:0] a,    //???
           input wire [31:0] b,    //??
           input wire sign,        //????

           input wire valid,   //master??????
           input wire ready,   //master????????
           output reg div_run,   //?????????????stall
           output wire [63:0] result
       );
reg [31:0] a_save, b_save;
reg [63:0] SR;                  //????????
reg [32 :0] NEG_DIVISOR;        //divisor 2's complement
wire [31:0] REMAINER, QUOTIENT;
assign REMAINER = SR[63:32];
assign QUOTIENT = SR[31: 0];

wire [31:0] divident_abs;
wire [32:0] divisor_abs;
wire [31:0] remainer, quotient;

assign divident_abs = (sign & a[31]) ? ~a + 1'b1 : a;
//??????????
assign remainer = (sign & a_save[31]) ? ~REMAINER + 1'b1 : REMAINER;
assign quotient = sign & (a_save[31] ^ b_save[31]) ? ~QUOTIENT + 1'b1 : QUOTIENT;
assign result = {remainer,quotient};

wire CO;
wire [32:0] sub_result;
wire [32:0] mux_result;
//sub
assign {CO,sub_result} = {1'b0,REMAINER} + NEG_DIVISOR;
//mux
assign mux_result = CO ? sub_result : {1'b0,REMAINER};

//FSM
reg [5:0] cnt;
reg start_cnt;
always @(posedge clk)
begin
    if(rst)
    begin
        SR <= 0;
        a_save <= 0;
        b_save <= 0;

        cnt <= 0;
        start_cnt <= 1'b0;
    end
    else if(~start_cnt & valid & ~div_run)
    begin
        cnt <= 1;
        start_cnt <= 1'b1;
        a_save <= a;
        b_save <= b;

        //Register init
        SR[63:0] <= {31'b0,divident_abs,1'b0}; //????
        NEG_DIVISOR <= (sign & b[31]) ? {1'b1,b} : ~{1'b0,b} + 1'b1; //???
    end
    else if(start_cnt)
    begin
        if(cnt[5])
        begin    //cnt == 32
            cnt <= 0;
            start_cnt <= 1'b0;

            //Output result
            SR[63:32] <= mux_result[31:0];
            SR[0] <= CO;
        end
        else
        begin
            cnt <= cnt + 1;

            SR[63:0] <= {mux_result[30:0],SR[31:1],CO,1'b0}; //??????
        end
    end
end

wire data_go;
assign data_go = div_run & ready;
always @(posedge clk)
begin
    div_run <= rst     ? 1'b0 :
            cnt[5]  ? 1'b1 :
            data_go ? 1'b0 : div_run;
end
endmodule
