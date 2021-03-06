`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/22 10:23:13
// Design Name:
// Module Name: hazard
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


module hazard(
           //fetch stage
           output wire stallF,
           output wire flushF,
           //decode stage
           input wire[4:0] rsD,rtD,
           input wire branchD,
           output reg[1:0] forwardaD,
           output wire forwardbD,
           output wire stallD,
           input wire jrD,
           input wire hilowriteD,
           input wire[4:0] rdD,
           output reg[1:0] forwardcD,
           output reg[1:0] forwarddD,
           //execute stage
           input wire[4:0] rsE,rtE,
           input wire[4:0] writeregE,
           input wire regwriteE,
           input wire memtoregE,
           output reg[1:0] forwardaE,forwardbE,
           output wire flushE,
           output wire stallE,
           input wire div_stallE,
           input wire[4:0] rdE,
           input wire hilotoregE,
           //mem stage
           input wire[4:0] writeregM,
           input wire regwriteM,
           input wire memtoregM,
           input wire hilotoregM,
           input wire hiloreadM,
           //write back stage
           input wire[4:0] writeregW,
           input wire regwriteW,
           input wire hiloreadW
       );

wire lwstallD,branchstallD;
wire divstall,multistall,jrstall,hilostall;

//forwarding sources to D stage (branch equality)
// assign forwardaD = (rsD != 0 & rsD == writeregM & regwriteM);
assign forwardbD = (rtD != 0 & rtD == writeregM & regwriteM);
always @(*)
begin
    forwardaD = 2'b00;
    if(rsD != 0)
    begin
        /* code */
        if(rsD == writeregE & regwriteE)
        begin
            /* code */
            forwardaD = 2'b10;
        end
        else if(rsD == writeregM & regwriteM)
        begin
            /* code */
            forwardaD = 2'b01;
        end
    end
end

always @(*)
begin
    forwarddD = 2'b00;
    if(rsD != 0)
    begin
        /* code */
        if((rsD == writeregM & regwriteM & hiloreadM)|(rsD == writeregW & regwriteW & hiloreadW))
        begin
            if(({memtoregE,hilotoregE}==2'b01)||({memtoregM,hilotoregM}==2'b01))
                /* code */
                forwarddD = 2'b01;
            else if(({memtoregE,hilotoregE}==2'b11)||({memtoregM,hilotoregM}==2'b11))
                /* code */
                forwarddD = 2'b10;
            else
                forwarddD = 2'b00;
        end
    end
end

always @(*)
begin
    forwardcD = 2'b00;
    if(rtD != 0)
    begin
        /* code */
        if((rtD == writeregE & regwriteE)|(rtD == writeregM & regwriteM))
        begin
            if(({memtoregE,hilotoregE}==2'b01)||({memtoregM,hilotoregM}==2'b01))
                /* code */
                forwardcD = 2'b01;
            else if(({memtoregE,hilotoregE}==2'b11)||({memtoregM,hilotoregM}==2'b11))
                /* code */
                forwardcD = 2'b10;
            else
                forwardcD = 2'b00;
        end
    end
end
// assign forwardcD = (rdD != 0 & rdD == writeregE & regwriteE);



//forwarding sources to E stage (ALU)

always @(*)
begin
    forwardaE = 2'b00;
    forwardbE = 2'b00;
    if(rsE != 0)
    begin
        /* code */
        if(rsE == writeregM & regwriteM)
        begin
            /* code */
            forwardaE = 2'b10;
        end
        else if(rsE == writeregW & regwriteW)
        begin
            /* code */
            forwardaE = 2'b01;
        end
    end
    if(rtE != 0)
    begin
        /* code */
        if(rtE == writeregM & regwriteM)
        begin
            /* code */
            forwardbE = 2'b10;
        end
        else if(rtE == writeregW & regwriteW)
        begin
            /* code */
            forwardbE = 2'b01;
        end
    end
end

//stalls
assign #1 lwstallD = memtoregE & (rtE == rsD | rtE == rtD);
assign #1 branchstallD = branchD &
       (regwriteE &
        (writeregE == rsD | writeregE == rtD) |
        memtoregM &
        (writeregM == rsD | writeregM == rtD));
assign #1 divstall = div_stallE;
assign #1 jrstall = jrD & (((writeregE == rsD) & regwriteE) | (writeregM & (writeregM == rsD)));
// assign #1 hilostall = hilowriteD & ((rsD == writeregE) & regwriteE);
assign #1 hilostall = hilowriteD & ((rsD == writeregM) & regwriteM);

assign #1 stallE = divstall;
assign #1 stallD = lwstallD | branchstallD | jrstall | stallE | hilostall;
assign #1 stallF = stallD;
//stalling D stalls all previous stages
assign #1 flushE = lwstallD | branchstallD|hilostall;
assign #1 flushF = 1'b0;//jrstall
//stalling D flushes next stage
// Note: not necessary to stall D stage on store
//       if source comes from load;
//       instead, another bypass network could
//       be added from W to M
endmodule
