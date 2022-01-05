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
           output wire[4:0] rt2D,
           input wire[3:0] memwriteD,
           input wire jrD,
           input wire jalD,
           input wire pceightD,
           input wire signD,
           input wire hilowriteD,
           input wire hilotoregD,
           input wire hiloaluD,
           //execute stage
           input wire memtoregE,
           input wire alusrcE,regdstE,
           input wire regwriteE,
           input wire[7:0] alucontrolE,
           output wire flushE,
           output wire stallE,
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
wire hilowriteE;
wire hilotoregE;
wire [31:0] hi_oE;
wire [31:0] lo_oE;
wire hiloaluE;
wire [63:0] hilo_outE;
wire div_stallE,zero,overflow;
//mem stage
wire [4:0] writeregM;
wire [3:0] memwriteM1;
wire hilowriteM;
wire hilotoregM;
wire [31:0] writedataBM;
wire [31:0] writedataHM;
wire [31:0] writedataM2;
wire [31:0] hi_oM;
wire [31:0] lo_oM;
wire [31:0] srcaM;
wire hiloaluM;
wire [31:0] hi_iM;
wire [31:0] lo_iM;
wire [63:0] hilo_outM;
//writeback stage
wire [4:0] writeregW;
wire [31:0] aluoutW,readdataW,resultW;
wire [31:0] readdataWB;//鍐欏洖�?�楋�????????锟藉崐�?�楋�????????锟藉瓧鑺傛嫇�??????????
wire hilotoregW;
wire [31:0] hi_oW;
wire [31:0] lo_oW;
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
           stallE,
           div_stallE,
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
                    if(srca2D<=0)
                    begin
                        pcsrcTempD <= 1'b1;
                    end
                    else
                    begin
                        pcsrcTempD <= 1'b0;
                    end
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
                    if(srca2D>=0)
                    begin
                        pcsrcTempD <= 1'b1;
                    end
                    else
                    begin
                        pcsrcTempD <= 1'b0;
                    end
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
assign rt2D = instrD[20:16];

//execute stage
flopenrc #(32) r1E(clk,rst,~stallE,flushE,srcaD,srcaE);
flopenrc #(32) r2E(clk,rst,~stallE,flushE,srcbD,srcbE);
flopenrc #(32) r3E(clk,rst,~stallE,flushE,signorunsignD,signimmE);
flopenrc #(5) r4E(clk,rst,~stallE,flushE,rsD,rsE);
flopenrc #(5) r5E(clk,rst,~stallE,flushE,rtD,rtE);
flopenrc #(5) r6E(clk,rst,~stallE,flushE,rdD,rdE);
flopenrc #(4) r7E(clk,rst,~stallE,flushE,memwriteD,memwriteE);
flopenrc #(1) r8E(clk,rst,~stallE,flushE,jalD,jalE);
flopenrc #(32) r9E(clk,rst,~stallE,flushE,pcplus4D,pcplus4E);
flopenrc #(1) r10E(clk,rst,~stallE,flushE,pceightD,pceightE);
flopenrc #(5) r11E(clk,rst,~stallE,flushE,saD,saE);
flopenrc #(1) r12E(clk,rst,~stallE,flushE,hilowriteD,hilowriteE);
flopenrc #(1) r13E(clk,rst,~stallE,flushE,hilotoregD,hilotoregE);
flopenrc #(1) r14E(clk,rst,~stallE,flushE,hiloaluD,hiloaluE);

//hiloregfile
hilo_reg hilo(clk,rst,hilowriteM,hi_iM,lo_iM,hi_oE,lo_oE);

assign pcplus8E = pcplus4E + 32'h0004;  //get pc+8

mux3 #(32) forwardaemux(srcaE,resultW,aluoutM,forwardaE,srca2E);
mux3 #(32) forwardbemux(srcbE,resultW,aluoutM,forwardbE,srcb2E);
mux2 #(32) srcbmux(srcb2E,signimmE,alusrcE,srcb3E);
alu alu(clk,rst,srca2E,srcb3E,saE,alucontrolE,flushE,aluoutE,overflow,hilo_outE,zero,div_stallE);
mux2 #(5) wrmux(rtE,rdE,regdstE,writeregE);
mux2 #(32) aluEpc8Emux(aluoutE,pcplus8E,pceightE,aluoutE2);  //jal,bal,pc+8 or aluout
mux2 #(5) jalbalmux(writeregE,5'b11111,jalE,writeregE2);  //jal,bal,31 or rt,rd

//mem stage
flopr #(32) r1M(clk,rst,srcb2E,writedataM2);
flopr #(32) r2M(clk,rst,aluoutE2,aluoutM);
flopr #(5) r3M(clk,rst,writeregE2,writeregM);
flopr #(4) r4M(clk,rst,memwriteE,memwriteM1);
flopr #(1) r5M(clk,rst,hilowriteE,hilowriteM);
flopr #(1) r6M(clk,rst,hilotoregE,hilotoregM);
flopr #(32) r7M(clk,rst,hi_oE,hi_oM);
flopr #(32) r8M(clk,rst,lo_oE,lo_oM);
flopr #(32) r9M(clk,rst,srcaE,srcaM);
flopr #(1) r10M(clk,rst,hiloaluE,hiloaluM);
flopr #(64) r11M(clk,rst,hilo_outE,hilo_outM);
//hilo write from alu or rs
assign hi_iM = hiloaluM?hilo_outM[63:32]:srcaM;
assign lo_iM = hiloaluM?hilo_outM[31:0]:srcaM;

assign writedataBM = {4{writedataM2[7:0]}};
assign writedataHM = {2{writedataM2[15:0]}};
reg[31:0] writedatatempM = 32'h0;
assign writedataM = writedatatempM;

//temp memwrite
reg[3:0] memwriteTemp = 4'b0000;
assign memwriteM = memwriteTemp;
//assign memwriteM = 4'b1111;
always @(*)
begin
    case(lshbM)
        //sw
        3'b111:
        begin
            memwriteTemp <= 4'b1111;
            writedatatempM <= writedataM2;
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
            writedatatempM <= writedataHM;
        end
        //sb
        3'b101:
        begin
            //memwriteTemp <= 4'b1111;
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
            writedatatempM <= writedataBM;
        end
        default:
        begin
            memwriteTemp <= 4'b0000;
            writedatatempM <= writedataM2;
        end
    endcase
end

//assign memwriteM =memwriteM1;
//writeback stage
flopr #(32) r1W(clk,rst,aluoutM,aluoutW);
flopr #(32) r2W(clk,rst,readdataM,readdataW);
flopr #(5) r3W(clk,rst,writeregM,writeregW);
flopr #(1) r4W(clk,rst,hilotoregM,hilotoregW);
flopr #(32) r5W(clk,rst,hi_oM,hi_oW);
flopr #(32) r6W(clk,rst,lo_oM,lo_oW);
//load judge
reg[31:0] readdatatemp = 32'b0;
always @(*)
begin
    case(lshbW)
        //lb
        3'b000:
        begin
            case(aluoutW[1:0])
                2'b00:
                begin
                    readdatatemp <= {{24{readdataW[31]}},readdataW[31:24]};
                end
                2'b01:
                begin
                    readdatatemp <= {{24{readdataW[23]}},readdataW[23:16]};
                end
                2'b10:
                begin
                    readdatatemp <= {{24{readdataW[15]}},readdataW[15:8]};
                end
                2'b11:
                begin
                    readdatatemp <= {{24{readdataW[7]}},readdataW[7:0]};
                end
                default:
                begin
                    readdatatemp <= readdataW;
                end
            endcase
        end
        //lbu
        3'b001:
        begin
            case(aluoutW[1:0])
                2'b00:
                begin
                    readdatatemp <= {24'b0,readdataW[31:24]};
                end
                2'b01:
                begin
                    readdatatemp <= {24'b0,readdataW[23:16]};
                end
                2'b10:
                begin
                    readdatatemp <= {24'b0,readdataW[15:8]};
                end
                2'b11:
                begin
                    readdatatemp <= {24'b0,readdataW[7:0]};
                end
                default:
                begin
                    readdatatemp <= readdataW;
                end
            endcase
        end
        //lh
        3'b010:
        begin
            case(aluoutW[1])
                1'b0:
                begin
                    readdatatemp <= {{16{readdataW[31]}},readdataW[31:16]};
                end
                1'b1:
                begin
                    readdatatemp <= {{16{readdataW[15]}},readdataW[15:0]};
                end
                default:
                begin
                    readdatatemp <= readdataW;
                end
            endcase
        end
        //lhu
        3'b011:
        begin
            case(aluoutW[1])
                1'b0:
                begin
                    readdatatemp <= {16'b0,readdataW[31:16]};
                end
                1'b1:
                begin
                    readdatatemp <= {16'b0,readdataW[15:0]};
                end
                default:
                begin
                    readdatatemp <= readdataW;
                end
            endcase
        end
        //lw
        3'b100:
        begin
            readdatatemp<=readdataW;
        end
        default:
        begin
            readdatatemp<=readdataW;
        end
    endcase
end
assign readdataWB = readdatatemp;
//assign readdataWB = (lshbW==3'b000)?{{24{readdataW[31]}},readdataW[31:24]}:(lshbW==3'b001)?{{24{1'b0}},readdataW[31:24]}:(lshbW==3'b010)?{{16{readdataW[31]}},readdataW[31:16]}:(lshbW==3'b011)?{{16{1'b0}},readdataW[31:16]}:readdataW;
//assign readdataWB = readdataW;
mux4 #(32) resmux4(aluoutW,hi_oW,readdataWB,lo_oW,{memtoregW,hilotoregW},resultW);
//mux2 #(32) resmux(aluoutW,readdataWB,memtoregW,resultW);
endmodule
