// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Mar 27 13:44:43 2021
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 108000000, PHASE 0.0, CLK_DOMAIN vcu_DT_blk_design_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input CLK;
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
ptbohchtx16xLeR8fk52WYjTIXfJU5hRUpiJ+ocoHZWswtA30UihxFySQqOqTNJ5saEF+h0oVbNR
wAicwEM2O+y/XfbZ8p1cW8wtov2aP4re55KaA/795n1ViASWJNDrkWiCLjdxDIJeDI18XW0fmA3M
zOnwJjHz+SdQclzN+BjgH55ulfFSte+UmSog+5Y17JHCfv+nzHsjpH1rl3yM1VL5BSAUT+ZdEwE0
4vDBByounIAoOY8UOjOTjBLCeQmVb+LrNo/8phoirQQgWBZ4Ss1sk8yTzlKhz8aOgLNpbt9uwP8T
B73g/VU+WLI56MhcRLZnYJby8qNshFSnSJSurg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t1OZl1aen5s+NjDOu+KPj0MdrlFu5EWuWjvk+ZnoLI+Sc76lRIjNIYbR4ZshSqgK9ZOf+XolKLGv
i7S4gZCoVP0fBv5guuDbk4qbJbnenKMu6eOIfE/9fpkeHt2p4j0EabhJF4asTuxTVFi2LqV1fogH
mv36F2ywD++wXT7f25fjVGvmSvSYLVfVEIRURkUPYbYPZWC/VMuP6kk9aDrB+OdcZ/aZS8i4oVZX
CEKttZsK+R/5wY0/zV/d3bnBJ4W1iqi7C6V1Bu3AeN+3kpHmpVxYs2KDFq2/SZhgg+E+l1H/sPY+
7zUvNloFr2Yh84/x9glN+LH5wP8DjhpUQZagbg==

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
