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
           input wire[4:0] rtD,
           //           output wire pcsrcD,
           output wire branchD,
           //           output wire equalD,
           output wire jumpD,
           output wire[3:0] memwriteD,
           output wire jrD,
           output wire jalD,
           output wire pceightD,
           output wire signD,
           output wire hilowriteD,
           output wire hilotoregD,
           output wire hiloaluD,
           output wire hiloreadD,

           //execute stage
           input wire flushE,
           output wire memtoregE,alusrcE,
           output wire regdstE,regwriteE,
           output wire[7:0] alucontrolE,
           input wire stallE,

           //mem stage
           output wire memtoregM,
           output wire regwriteM,
           output wire[2:0] lshbM,
           //write back stage
           output wire memtoregW,regwriteW,
           output wire[2:0] lshbW

       );

//decode stage
// wire[1:0] aluopD;
// wire memtoregD,memwriteD,alusrcD,
//      regdstD,regwriteD;
wire memtoregD,alusrcD,regdstD,regwriteD;
wire[7:0] alucontrolD;
wire[2:0] lshbD;
wire[3:0] memwriteD;

//execute stage
//wire[3:0] memwriteE;
wire[2:0] lshbE;

maindec md(
            opD,
            functD,
            rtD,
            memtoregD,memwriteD,
            branchD,alusrcD,
            regdstD,regwriteD,
            jumpD,
            lshbD,
            jrD,
            jalD,
            pceightD,
            signD,
            hilowriteD,
            hilotoregD,
            hiloaluD,
            hiloreadD
        );
aludec ad(functD,opD,alucontrolD);

//assign pcsrcD = branchD & equalD;

//pipeline registers
flopenrc #(15) regE(
           clk,
           rst,
           ~stallE,
           flushE,
           {memwriteD,alusrcD,regdstD,regwriteD,alucontrolD},
           {memwriteE,alusrcE,regdstE,regwriteE,alucontrolE}
       );
flopenrc #(3) regE2(
           clk,
           rst,
           ~stallE,
           flushE,
           lshbD,
           lshbE
       );
flopenrc #(1) regE3(
           clk,
           rst,
           ~stallE,
           flushE,
           memtoregD,
           memtoregE
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
