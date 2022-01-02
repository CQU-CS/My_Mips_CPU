`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/10/23 15:21:30
// Design Name:
// Module Name: controller
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


module controller(
           input wire clk,rst,
           //decode stage
           input wire[5:0] opD,functD,
           output wire pcsrcD,branchD,equalD,jumpD,

           //execute stage
           input wire flushE,
           output wire memtoregE,alusrcE,
           output wire regdstE,regwriteE,
           output wire[4:0] alucontrolE,

           //mem stage
           output wire memtoregM,memwriteM,
           regwriteM,
           output wire[2:0] lshbM,
           //write back stage
           output wire memtoregW,regwriteW,
           output wire[2:0] lshbW

       );

//decode stage
wire[1:0] aluopD;
wire memtoregD,memwriteD,alusrcD,
     regdstD,regwriteD;
wire[4:0] alucontrolD;

//execute stage
wire memwriteE;

maindec md(
            opD,
            memtoregD,memwriteD,
            branchD,alusrcD,
            regdstD,regwriteD,
            jumpD,
            aluopD,
            lshbD
        );
aludec ad(functD,aluopD,alucontrolD);

assign pcsrcD = branchD & equalD;

//pipeline registers
floprc #(10) regE(
           clk,
           rst,
           flushE,
           {memtoregD,memwriteD,alusrcD,regdstD,regwriteD,alucontrolD},
           {memtoregE,memwriteE,alusrcE,regdstE,regwriteE,alucontrolE}
       );
floprc #(3) regE2(
           clk,
           rst,
           flushE,
           lshbD,
           lshbE
       );
flopr #(8) regM(
          clk,rst,
          {memtoregE,memwriteE,regwriteE},
          {memtoregM,memwriteM,regwriteM}
      );
flopr #(3) regM2(
          clk,rst,
          lshbE,
          lshbM
      );
flopr #(8) regW(
          clk,rst,
          {memtoregM,regwriteM},
          {memtoregW,regwriteW}
      );
flopr #(3) regW2(
          clk,rst,
          lshbM,
          lshbW
      );
endmodule
