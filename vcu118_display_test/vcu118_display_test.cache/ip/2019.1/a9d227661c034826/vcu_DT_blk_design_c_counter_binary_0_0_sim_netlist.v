// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Mar 24 11:57:45 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcu_DT_blk_design_c_counter_binary_0_0_sim_netlist.v
// Design      : vcu_DT_blk_design_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13_viv i_synth
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
