`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/02 15:12:22
// Design Name:
// Module Name: datapath
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


module datapath(
           input wire clk,rst,
           //fetch stage
           output wire[31:0] pcF,
           input wire[31:0] instrF,
           //decode stage
           //           input wire pcsrcD,
           input wire branchD,
           input wire jumpD,
           //           output wire equalD,
           output wire[5:0] opD,functD,
           input wire[3:0] memwriteD,
           input wire jrD,
           input wire jalD,
           input wire pceightD,
           input wire signD,
           //execute stage
           input wire memtoregE,
           input wire alusrcE,regdstE,
           input wire regwriteE,
           input wire[7:0] alucontrolE,
           output wire flushE,
           //mem stage
           input wire memtoregM,
           input wire regwriteM,
           output wire[31:0] aluoutM,writedataM,
           input wire[31:0] readdataM,
           input wire[2:0] lshbM,
           output wire[3:0] memwriteM,
           //writeback stage
           input wire memtoregW,
           input wire regwriteW,
           input wire[2:0] lshbW
       );

//fetch stage
wire stallF;
//FD
wire [31:0] pcnextFD,pcnextbrFD,pcplus4F,pcbranchD;
wire [31:0] pcnextjrFD;  //jr
//decode stage
wire [31:0] pcplus4D,instrD;
wire forwardaD,forwardbD;
wire [4:0] rsD,rtD,rdD,saD;
wire flushD,stallD;
wire [31:0] signimmD,signimmshD;
wire [31:0] srcaD,srca2D,srcbD,srcb2D;
wire equalD;
wire pcsrcD;
wire [31:0] unsignimmD;
wire [31:0] signorunsignD;
//execute stage
wire [1:0] forwardaE,forwardbE;
wire [4:0] rsE,rtE,rdE,saE;
wire [4:0] writeregE;
wire [31:0] signimmE;
wire [31:0] srcaE,srca2E,srcbE,srcb2E,srcb3E;
wire [31:0] aluoutE;
wire [3:0] memwriteE;
wire jalE;
wire pceightE;
wire [31:0] pcplus4E;
wire [31:0] pcplus8E;
wire [31:0] aluoutE2;
wire [4:0] writeregE2;
//mem stage
wire [4:0] writeregM;
wire [3:0] memwriteM1;
//writeback stage
wire [4:0] writeregW;
wire [31:0] aluoutW,readdataW,resultW;
wire [31:0] readdataWB;//鍐欏洖�?�楋�???锟藉崐�?�楋�???锟藉瓧鑺傛嫇�?????

//hazard detection
hazard h(
           //fetch stage
           stallF,
           //decode stage
           rsD,rtD,
           branchD,
           forwardaD,forwardbD,
           stallD,
           //execute stage
           rsE,rtE,
           writeregE,
           regwriteE,
           memtoregE,
           forwardaE,forwardbE,
           flushE,
           //mem stage
           writeregM,
           regwriteM,
           memtoregM,
           //write back stage
           writeregW,
           regwriteW
       );

//next PC logic (operates in fetch an decode)
mux2 #(32) pcbrmux(pcplus4F,pcbranchD,pcsrcD,pcnextbrFD);
mux2 #(32) jrmux(pcnextbrFD,srcaD,jrD,pcnextjrFD);
mux2 #(32) pcmux(pcnextjrFD,
                 {pcplus4D[31:28],instrD[25:0],2'b00},
                 jumpD,pcnextFD);
//regfile (operates in decode and writeback)
regfile rf(clk,regwriteW,rsD,rtD,writeregW,resultW,srcaD,srcbD);

//fetch stage logic
pc #(32) pcreg(clk,rst,~stallF,pcnextFD,pcF);
adder pcadd1(pcF,32'b100,pcplus4F);
//decode stage
flopenr #(32) r1D(clk,rst,~stallD,pcplus4F,pcplus4D);
flopenrc #(32) r2D(clk,rst,~stallD,flushD,instrF,instrD);

signext se(instrD[15:0],signimmD);
assign unsignimmD = {16'h0000,instrD[15:0]};
mux2 #(32) signmux(unsignimmD,signimmD,signD,signorunsignD);



sl2 immsh(signorunsignD,signimmshD);
adder pcadd2(pcplus4D,signimmshD,pcbranchD);
mux2 #(32) forwardamux(srcaD,aluoutM,forwardaD,srca2D);
mux2 #(32) forwardbmux(srcbD,aluoutM,forwardbD,srcb2D);
eqcmp comp(srca2D,srcb2D,equalD);
//assign pcsrcD = branchD & equalD;

//branch alu
reg pcsrcTempD = 1'b0;
always @(*)
begin
    case(opD)
        //beq
        6'b000100:
        begin
            if(srca2D==srcb2D)
            begin
                pcsrcTempD <= 1'b1;
            end
            else
            begin
                pcsrcTempD <= 1'b0;
            end
        end
        //bgtz
        6'b000111:
        begin
            if(srca2D>0)
            begin
                pcsrcTempD <= 1'b1;
            end
            else
            begin
                pcsrcTempD <= 1'b0;
            end
        end
        //blez
        6'b000110:
        begin
            if(srca2D<=0)
            begin
                pcsrcTempD <= 1'b1;
            end
            else
            begin
                pcsrcTempD <= 1'b0;
            end
        end
        //bne
        6'b000101:
        begin
            if(srca2D!=srcb2D)
            begin
                pcsrcTempD <= 1'b1;
            end
            else
            begin
                pcsrcTempD <= 1'b0;
            end
        end
        //bltz,bltzal,bgez,bgezal
        6'b000001:
        begin
            case(rtD)
                //bltz
                5'b00000:
                begin
                    if(srca2D<=0)
                    begin
                        pcsrcTempD <= 1'b1;
                    end
                    else
                    begin
                        pcsrcTempD <= 1'b0;
                    end
                end
                //bltzal
                5'b10000:
                begin
                end
                //bgez
                5'b00001:
                begin
                    if(srca2D>=0)
                    begin
                        pcsrcTempD <= 1'b1;
                    end
                    else
                    begin
                        pcsrcTempD <= 1'b0;
                    end
                end
                //bgezal
                5'b10001:
                begin
                end
            endcase
        end
        default:
        begin
            pcsrcTempD <= 1'b0;
        end
    endcase
end

assign pcsrcD = pcsrcTempD;

assign opD = instrD[31:26];
assign functD = instrD[5:0];
assign rsD = instrD[25:21];
assign rtD = instrD[20:16];
assign rdD = instrD[15:11];
assign saD = instrD[10:6];

//execute stage
floprc #(32) r1E(clk,rst,flushE,srcaD,srcaE);
floprc #(32) r2E(clk,rst,flushE,srcbD,srcbE);
floprc #(32) r3E(clk,rst,flushE,signorunsignD,signimmE);
floprc #(5) r4E(clk,rst,flushE,rsD,rsE);
floprc #(5) r5E(clk,rst,flushE,rtD,rtE);
floprc #(5) r6E(clk,rst,flushE,rdD,rdE);
floprc #(4) r7E(clk,rst,flushE,memwriteD,memwriteE);
floprc #(1) r8E(clk,rst,flushE,jalD,jalE);
floprc #(32) r9E(clk,rst,flushE,pcplus4D,pcplus4E);
floprc #(1) r10E(clk,rst,flushE,pceightD,pceightE);
floprc #(5) r11E(clk,rst,flushE,saD,saE);

assign pcplus8E = pcplus4E + 32'h0004;  //get pc+8

mux3 #(32) forwardaemux(srcaE,resultW,aluoutM,forwardaE,srca2E);
mux3 #(32) forwardbemux(srcbE,resultW,aluoutM,forwardbE,srcb2E);
mux2 #(32) srcbmux(srcb2E,signimmE,alusrcE,srcb3E);
alu alu(srca2E,srcb3E,saE,alucontrolE,aluoutE);
mux2 #(5) wrmux(rtE,rdE,regdstE,writeregE);
mux2 #(32) aluEpc8Emux(aluoutE,pcplus8E,pceightE,aluoutE2);  //jal,bal,pc+8 or aluout
mux2 #(5) jalbalmux(writeregE,5'b11111,jalE,writeregE2);  //jal,bal,31 or rt,rd

//mem stage
flopr #(32) r1M(clk,rst,srcb2E,writedataM);
flopr #(32) r2M(clk,rst,aluoutE2,aluoutM);
flopr #(5) r3M(clk,rst,writeregE2,writeregM);
flopr #(4) r4M(clk,rst,memwriteE,memwriteM1);
//temp memwrite
reg[3:0] memwriteTemp = 4'b0000;
assign memwriteM = memwriteTemp;
always @(*)
begin
    case(lshbM)
        //sw
        3'b111:
        begin
            memwriteTemp <= 4'b1111;
        end
        //sh
        3'b110:
        begin
            case(aluoutM[1])
                1'b0:
                    memwriteTemp <= 4'b1100;
                1'b1:
                    memwriteTemp <= 4'b0011;
                default:
                    memwriteTemp <= 4'b0000;
            endcase
        end
        //sb
        3'b101:
        begin
            case(aluoutM[1:0])
                2'b00:
                    memwriteTemp <= 4'b1000;
                2'b01:
                    memwriteTemp <= 4'b0100;
                2'b10:
                    memwriteTemp <= 4'b0010;
                2'b11:
                    memwriteTemp <= 4'b0001;
                default:
                    memwriteTemp <= 4'b0000;
            endcase
        end
        default:
        begin
            memwriteTemp <= 4'b0000;
        end
    endcase
end

assign memwriteM =memwriteM1;
//writeback stage
flopr #(32) r1W(clk,rst,aluoutM,aluoutW);
flopr #(32) r2W(clk,rst,readdataM,readdataW);
flopr #(5) r3W(clk,rst,writeregM,writeregW);
assign readdataWB = (lshbW==3'b000)?{{24{readdataW[31]}},readdataW[31:24]}:(lshbW==3'b001)?{{24{1'b0}},readdataW[31:24]}:(lshbW==3'b010)?{{16{readdataW[31]}},readdataW[31:16]}:(lshbW==3'b011)?{{16{1'b0}},readdataW[31:16]}:readdataW;
//assign readdataWB = readdataW;
mux2 #(32) resmux(aluoutW,readdataWB,memtoregW,resultW);
endmodule
