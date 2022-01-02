// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 16:19:47 2022
// Host        : Y7000P-2019 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_mem_sim_netlist.v
// Design      : data_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_mem,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21504)
`pragma protect data_block
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
felZXymNPNLvKhUKCPim
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
