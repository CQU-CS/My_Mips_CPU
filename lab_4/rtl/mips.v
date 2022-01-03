`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/07 10:58:03
// Design Name:
// Module Name: mips
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


module mips(
           input wire clk,rst,
           output wire[31:0] pcF,
           input wire[31:0] instrF,
           output wire[3:0] memwriteM,
           output wire[31:0] aluoutM,writedataM,
           input wire[31:0] readdataM
       );

wire [5:0] opD,functD;
wire regdstE,alusrcE,pcsrcD,memtoregE,memtoregM,memtoregW,
     regwriteE,regwriteM,regwriteW;
//璁垮瓨淇″彿
wire [2:0] lshbM;
wire [2:0] lshbW;
wire [3:0] memwriteD;

wire [7:0] alucontrolE;
wire flushE,equalD;

controller c(
               clk,rst,
               //decode stage
               opD,functD,
               pcsrcD,branchD,equalD,jumpD,memwriteD,

               //execute stage
               flushE,
               memtoregE,alusrcE,
               regdstE,regwriteE,
               alucontrolE,

               //mem stage
               memtoregM,
               regwriteM,lshbM,
               //write back stage
               memtoregW,regwriteW,lshbW
           );
datapath dp(
             clk,rst,
             //fetch stage
             pcF,
             instrF,
             //decode stage
             pcsrcD,branchD,
             jumpD,
             equalD,
             opD,functD,
             memwriteD,
             //execute stage
             memtoregE,
             alusrcE,regdstE,
             regwriteE,
             alucontrolE,
             flushE,
             //mem stage
             memtoregM,
             regwriteM,
             aluoutM,writedataM,
             readdataM,lshbM,
             memwriteM,
             //writeback stage
             memtoregW,
             regwriteW,lshbW
         );

endmodule
