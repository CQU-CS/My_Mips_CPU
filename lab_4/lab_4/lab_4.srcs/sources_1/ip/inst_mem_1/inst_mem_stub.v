// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 16:21:22 2022
// Host        : Y7000P-2019 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/VIVADO/My_Mips_CPU/lab_4/lab_4/lab_4.srcs/sources_1/ip/inst_mem_1/inst_mem_stub.v
// Design      : inst_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *)
module inst_mem(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[31:0],douta[31:0]" */;
  input clka;
  input [31:0]addra;
  output [31:0]douta;
endmodule
