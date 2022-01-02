// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 16:19:47 2022
// Host        : Y7000P-2019 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VIVADO/My_Mips_CPU/lab_4/lab_4/lab_4.srcs/sources_1/ip/data_mem_1/data_mem_sim_netlist.v
// Design      : data_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module data_mem
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_INIT_FILE = "data_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  data_mem_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[8:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21440)
`pragma protect data_block
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
KN5Xv1cmAFA=
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
