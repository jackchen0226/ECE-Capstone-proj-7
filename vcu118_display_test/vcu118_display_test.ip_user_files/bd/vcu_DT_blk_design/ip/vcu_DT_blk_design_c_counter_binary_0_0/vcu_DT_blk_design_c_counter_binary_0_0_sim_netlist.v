// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Mar 24 11:57:45 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top vcu_DT_blk_design_c_counter_binary_0_0 -prefix
//               vcu_DT_blk_design_c_counter_binary_0_0_ vcu_DT_blk_design_c_counter_binary_0_0_sim_netlist.v
// Design      : vcu_DT_blk_design_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module vcu_DT_blk_design_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN vcu_DT_blk_design_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "11" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  vcu_DT_blk_design_c_counter_binary_0_0_c_counter_binary_v12_0_13 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "11" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module vcu_DT_blk_design_c_counter_binary_0_0_c_counter_binary_v12_0_13
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "11" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  vcu_DT_blk_design_c_counter_binary_0_0_c_counter_binary_v12_0_13_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSom2S56DLRN2xyN98fSuJTKTg7WBYxuGOqJG4DlXjzMbVdybIJOQhUPDxjJ8WN5yk+JAsQklxRO
4E1IYRhWCNFz2BaRgX/VU7IalYU+QbqKRYEaKkiGnxq6CE6pCYHxOcj5F84rQs7j3zFnr27T5A5U
+Cdll+EF3ajWAMHfuBY09EZjXoir4yIzBOkIrq4PVCMgEDi9U7p87Pv8BS4ZwXfRU9Jmff9tvQ47
Evv+E+sGT32P7cn/OLHWhatdmks2PrvOFcqNKMhiS8Qqj0eiYwlShv46ci5TPQrJ4pGyK5MtsLcE
HCivncRrBPIv63lhWPP5cqA8fJmOQcM3N36Q+w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xw5jmMN3FUOYoeV+ddXZ3RdfXBh03U2e86aQJjNaeCVQtR/0p/qFSzVsIr/gCqdOL0Pxe91Q0Fcd
b/AGNrvEtCbDSn7TeicV4nB5RsFCoRDpI42kXHj03hgIpdotwpjGuCkQW1cVYzS3GgIbn2i6Cjap
4qzMVlQAiHDXfCiAgOIMPVG26WtWFiw/ui/y9zL950GpGx8Rx6NiwejG0YoMlye4vUPhK8WfcXRI
RI4MWTRSgXC8/acmnBYaH+pxDcSequedULXwExce+WLPZ81vCY54H8rHqjRA8D1eu9eL88FtWqkY
ppKFFZRjWUzHeRImT0sj14W5pizXsts9BbEWSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16528)
`pragma protect data_block
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
3QFUl3aX2nahX+dTq+dRash1gCpSxTw=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
