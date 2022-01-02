// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 16:21:22 2022
// Host        : Y7000P-2019 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20944)
`pragma protect data_block
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
p6Yz4vjlWDsPPhr8VkM4pW6qHJzGnRzL8A==
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
