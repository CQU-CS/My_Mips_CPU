// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 16:21:22 2022
// Host        : Y7000P-2019 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VIVADO/My_Mips_CPU/lab_4/lab_4/lab_4.srcs/sources_1/ip/inst_mem_1/inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module inst_mem
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_mem.mem" *) 
  (* C_INIT_FILE_NAME = "inst_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  inst_mem_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[8:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20880)
`pragma protect data_block
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
wIOBL658BNyxmDJvXy1ipGy/
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
