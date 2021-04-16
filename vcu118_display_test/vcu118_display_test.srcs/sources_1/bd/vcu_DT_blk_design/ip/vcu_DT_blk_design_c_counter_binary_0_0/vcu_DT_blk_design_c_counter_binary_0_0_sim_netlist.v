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
1cG313Bn/lZKfo2k0yCeEN0zi0eGnCQ=
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
