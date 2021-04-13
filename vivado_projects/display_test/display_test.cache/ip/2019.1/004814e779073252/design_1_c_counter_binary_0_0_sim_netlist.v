// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Mar  1 09:30:52 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
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
  (* C_XDEVICEFAMILY = "artix7" *) 
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_XDEVICEFAMILY = "artix7" *) 
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
HSLvn02/o9lJSlDRrnL4nQDJCRp9XVm3ODUwTBWJrXWoMjn0HGZ3JdW1Q/jLpEV7558krakjUlvo
d+4BRJdsdD8J0rtdzZ4YOynP079c4bVpCrjq2xazWsHDmgBAQ6WgjLI6m2pmzWnPW37NkDtFWUvi
EDZbfktaOpF3ez+ulFvK2I2ZjY98vibol+vw/duhUmN352WZSRQQgEZljRqW/gpZmRubgvGZLBT7
dAYVFMmhMWIgdRPuvxqtwjDDAhCyWjPlqezIOgTMGx8gPp9HzaBldIhgHFvFlXjPXEllDdSHAVTI
II5xnZvwo4r7Z0RteH4QvzUSBrBMXNlGbz1fZQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tvOwTGDpSQdjW4Axa46orANAQ2yds5XdZqLYjS5Kv2D2ly6huctz0MkIT5Er+KtvMK19faZY5w1M
zTYMn/RhMqaMHCE+MY3YPsBM5gY7Zppfu1jM4Cj+Lh1/6/nRohMn6itO8igBI2sz42ng0YS4Orup
Ps3oe4RVVGLcM6c6tus7mMDf150i2C6bTYCzg3OpzwuBgsLb+NF9ZPL8QlLw6tSaMJwThK17+mJD
y/h1VCXCuLzrkIgYkgtZ/3HctPEBKj0zegt7yQMifXOlya/dRXX3eGetiJ4zLvZ5uxBY762RxVU3
9lmeha7U5Q8Xq5Huu2xVP+4NTtcERQ1yAYKl7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17680)
`pragma protect data_block
VQwzVaDdjwH3rimfSWrpyv0X2ROsPS8OdlI0YaYJquvYjluGjQ+KIH/8M8dAkI3nOuEurjKKEH05
IB5HdRemXnytIIEdSyDmjniLME8YYSAX39G01Cuy2CqMB0hz1Q5yptKgERgYIGPRSVAP4mV44pFk
qKWNjLhuEgRnY37BUQ6XToMQCpqyXrP4R8s5KKOMA1jhGasdhWw1oYRAfq25mm+N1BTMbequia5z
ckq+LgiohgT3gkgemEZAG0EQRRmA2I5HRZqnbiCSeblzb8VWsxJHBcFL4pBTMfGfND9CH5Q7r5IS
wZETaMxiPY6EmNKcDzclDQrJ7yM1NfZRyYGtzmuRRgzGL9AJ/Jsu2LGAvawJVoIa0SpCbU5m3d+9
646TzdESYA07v/wbCDThNhZPH4ElXDXJRzcNcsMTr3xI6oYqfJiFjY5RwNm0m+GfLtjyHV1sAN6z
q1ZfebY2wyZJZj59fVvymx5xzgwBwgxWYcE7VYEAEjx5D2qV74Op50W2H2lPJC54Q0XR+oVur9O7
MlvaQ6PPV3Igsusb5uIw9Wu3vXTiZL91XK2u+BTPGPuNIF3TvVr7L952q9tCYv56VuXSl87MMsNI
lHcbvxTOwrm5ry+Ugs+T1HEIbKPKgZ5v1MgOWdTwI7RUUCi/Lfn7an8vpPhBxMDvZwRQ6mkVR1KQ
sywq78hMAxN5+N+wDRfjfBA/Q+c5wGicukjN35cuJqlKMoozgXa9Kti/hX2P2ZEfwoPUOjFAl/Ty
EzelhbZq5eq8q9DIrXsiwMJYT0jHfo7VO1T3rPlVKRqg9gYMfxuSp2pkoFiNDILmqrGTqt8BxCpR
pA9JlJpuk5RYrUl5GGNpxtYutVGtUoMyCP11QGAwijUqsgnliU2+s0i0jJaeQnwnHlLEIoQBM+Xy
RVJEWgZzedMsG7d64pVduAqnBpDUTiJwUQZPqLc90akhY5aUrqWY8qwO8FPCj4t2zxZ25oI0uKa7
DmdTAp9gqAgNnkbiBM+CH1XXGZVRw3hNfFwHmubeY4zJAQ2AplKjOk8vZdxpN36AvQqkotVQc94m
w8Lops/Px0JVLGR9sDUTdLbSSOfmcjuwhRKVQtF2KTN7eT075Km/Rq46XZzhE1vPHJXy9kFm3T3p
B0uFug+p8lHBQfuatgHoGsgsPZDnfiqzSGApnkUGBntq7PYZ9DJ04YlOEqxf2vo+gtztJNCy28W+
8c+jj5hWL5RHdhLYaEaWgBkM9+78Md6dhcsJ5InCIxotrXzCJS+/rO7ubuYX/puLr8OwY2Br+JN0
V/lpstaQB+2V6fxYSeYbOvA0vEG/YIp68nZ8lV5601OJmsi49E+mt0nD0V2d2ZJkR2mOaS9af1j2
8K6+iomIv8jfiw9cjKbFyS3RvVBzCHPTvutK4XsC0ERckSBWIGsKSenv/m3oj7yG4xWmlbeLNYYU
IDZnoG9E8N3K2+1XbYaPIe5CKFJ0NIJUETCIgIj9Uq2rHrgs1uC5g3CMv3VSucPb9cHlN7WW4+Xt
PUazH9e2+1ZG4ATaja59I1qIyQiCWd+hfZVWw7ltfFwPhTdEjKQpnVvj48cyzRu2EFF5UaX7lkIl
FkDPmT3XIlhinmSRC57XD3ZSiXFbHpYgjItX0mf1+KGjEBk9OYE1lQNEv7lHmcDl0HggYXLkWzQ/
ObfK6dXqukDpK2lmQVRB4uMeMbamxok1v0Z9vPOu40sc2mxjFNFzQLZ2cRbjjtE8NuVnbEcJE44B
ptze9WwksQ4+rZWEPE8qQo58ZrhwEGVMTcAAl4xt7pRT6OPkZe1YsH0L/AJrsGiPtjP7Jkuz/6fc
K0XklsoYrEMyuKwKOrt8CYYeTzQsZfHqj+nrVxs05hRyJYd4MlerQYn5IjclP3S3knVQ0POPvnu1
HANaOaNIj7ED1KrGNfFCpenSZX6GnL6I//+P0Ov+PkiKM4TAc36/RKG3n5SNpKH+FTTCcg/zB31i
oYcSnT++9hHh2pIDKGdlsHcQxvp6d6kcoO+niu+3kaZUQ4CyytHJDc+sjS6oa7Amcr2Z5i4+QgbF
3Mm6xswyjqBSrLpnh4/WAKb/EX1jqLXBHFXJPqs4A29G5g7yNfI3pifn3c2Tr1Fb0gje23ZQbX7J
bsN2rPkdg4z1RTAYsX91Olz1OXMIaTAn2gStk1BXkaaEfY1IEl9Dd59fMH4Y/aL7Bnm8mNluqq1G
mfsykRziCGF0XzTbpUetDWK0coH5VPElaFWdOx3IIwXcxEnq02PNbHSPfDYH9FlyHC4rvWtLtBid
Zzw9Cjhknvg1Hf64A9BahIyyvDm8cdD+j9V9VrgDWItgLwzfQUQnDpCoDJ9LDGuKciU0g7PxCs1b
gS7qCwStA/bFm+5F0InQtBFMAwPP3lRK6On4msVDFbHNZud4mBtSf9eRUjbQFdtLLbp9nurhOcK6
gKj+411jmNuLasUpW5yadMAEg+3KqVOc2Nx4VxmWozn3ZyMBy343qqyLGc59gt7HJDrtDOUVXUx9
7ZHojGnrbfSp2DxrfAoL3C76VOi+zGAYeVbAV6CgGO9EMmMnIv9ac6xrbgeeAtqWLTLZtANa53Cy
Gp3rGA6pXABIM2uDFDjXY05EGjmCi9HVIt4Ndt6ED7y6YhBey+VU5riZr1CMcBTQ3am5TpyckQ78
7Wnd30CXGhafN0AcfVASGpfGktVOtFYy/BVNQIqapRqvTltBdWSevWtZnPoqiNtvcJ7gUJo3wg5Q
jINaOqVqO5DBqbLOqEalqxEoilcyvLHfCn7m4N92OOm+ydv1Ej9zE1jOhnEt03xWgeu4dNLD69CV
7TuNXIOKG3FJb72hDwVpFzaA+tBzCjtLx6CQ/MSFQ0tWUYKL9wsR2l6RxRPtdV82tol/uh85sJa3
kgo718WUID5q28THJ8XuyWGsPRJGpq/gtXGvUzKoajqqo6vhvOC0iFvZaAyirzpE6tAxQcF0Vfm+
gbEopvPFRlMmWm+4dVmRJ0PEXmSJ2J+0dbU55+vB78Pyvc8BbLPyWMj67Gnz65fc3gdGuEQJOuLD
f7p7nPYpBpXW1UELgtpH1A7qwy41a5JxvDu2vgI9WxDnnb7Ow/c2bAdXAiK4DEQmNiLUyU1dXrRl
KIlxQIxx1tdZasl9QKuBglcKEYENiRPMWec5M+qzTrNxa1tZlfpWTDUL7y3san8dydEDObYvMF/U
7x2BwRlJyxqz+/qEAQBly4Da4RUaicJLSHR63C0gBSBJDkJg95ytnujVtMnAt7uI3I6DraSQN2VE
2iQpyo+Qzlv4gp92mhfk3ZLdBLCIOye/AF8DikrgUnDIVCN8Aeh4tzMrg7QNYZ7W0sia43fEaKSc
+LWtKIVNEAx5m+DVlZTD4qbJCSkeBkuzuQP+UGKg5rOlMGAlIpxHAcG/PWHZbl8+n6qaNZ+hlKCW
DW/GS7DWUzmI082C8VF0sJc+9sDA6kyIltekc1es8GMjw+kV1nAnxCRgRECapo2YXFwBTHpobros
UR1fbbWJMcy8DTKofUAQxa3Hw0hph7+uoBeVf00tRO2IxWKf2IeXB6VIXjR52g+cd+RJyRVfM1ct
7Mtr6vPPGoZaan7qbvBqDnf11/rsUnh/PmGPLVGBkUj+wEqzG7REfqpKfYYGYG5HrVf9TF4Sd1bF
VRamE4t8hWfu5dzqGvJ4Eu9qH51liz5PgN/xKoM+8jrCs5b6r4BLrdRNOltvgn/oQ10WNDXJJL0d
ndCnV85iZD1/ufY9bzNU56YDpGm/gXgHpF1aBL336r9xDdMDjpTSQqcpD0JliPBkRcOx5pJcCe/m
enA4fNb4AsM3m5l/J8SjyMC4aGwqiFMpK8ARTS0EtcCOf6qJfJ5ZTWScG/pVFbiFv7C7+qqjYlxI
u65pacoUTDh3591Sc84y/G2f6vjHqLtbIkobdNYn9pxcG37ew9YRK9tmb+A54E/6BATNXiEYWlL0
uNLz0cii/CH8kJk8MKc3m32LHg+f53oRzQ69XMG1iWVg6vP6LuJsP5yulMvOiOYJlffViT5y2DVb
Ip+Lv0NB/Bfc1nYjSgK6FedSgjHcMQj0zaXCyVmqxbv6lvr9wZU3HPCsSzjoVv/khLSd2rnZ4GoT
XxyugMZoBmPh5FHrFn+8NERz/FuZLdefJcbb61ZPxvnRS6U6Nioj5bxb6l66bk+y3M1zUwiMIs20
JZGUGR5NgBja18OUI7Kf46Re7Kjn4Db9f5gTAfDunoiYK7Id242Ne/eUV6zt+gYI/FUpokHW6o4V
waLmwXAx+VjwtXIMaNUuf1VLAAVv2P54I/TMPDRTqwRTM0cPXcg8EA3Kuyv2VfEZLP0pua5ZfTjt
FeCYnYbgcav+2rtZD/LS3V1X3QukUM3wTrvm4ILu/e+JOblBrL98Occ0hyO5zoayvT9HlE1mCIX3
QW9II4GtAB/+9+LVGpeVeF/M2eO9Mcm+gfgGyN7dK/Tl1iR/hdfyDMaRo3w3T8EzHRSVcYLB75b4
SOp5f7uzwMvG8uJ17tkMkbHu8e3jj/mFpPsIZbER14Zs9alLiWr+kWhwa1PLkUt2g9o5ZnrJNmRN
MgF/LW/aWX0drepn+HX++VW4eu+zSCBaEKDENNYwir7nXCErhwCPPkJP3TwsMbNqcwimKCB1hRkh
xF1hDaWJqVzAx670/4lt1OG3nloTusUdmEPNkrWyzeMvIuEiwWaPJBHindz7Et/CdTGeIkeeftBk
T5We1XdM9yeAvdLzDHZ2yTsyquZDcHaDMOFTuegnrvkSDO2VPhnQbbeDCUGmlT0NM/Wf263dNdKW
ob2DAjc4C6XzHukzVLvmt2tlr4Xm/w8eiiMWIeKPHPeAYuHV3eQaseijOLIbmYgi4UV3EQhYFHCy
lSMPIbhJX9GNzmD94qLjEPRRMUViphOZ61DiGVSPGvPx2hxvKfbtOhKKjuUWF+kbg0NfD7cK0mTF
FEeEh7EpHwFZNw2ozMPC2ULOi07g+i1gr+EO70oiyOyQ6nKR2TGtp4f9cjM5HctHlR9GeSpCgfNL
PK0k/Pvj4hje6yIbTpTMCCP7AwWWbZCnHbFYEq9DkS6S6vQbPBgZQ58Bdtr37te6b4Z6L6wKKuL+
cr43teWKj8PvUaJE+9yVzjzKQENQXh7xiAIlN6TcNJ3jVjIUjRt6svAfGUiq4W2DpFAw2hbw4oJI
5eZTQLbGIkuASIU6t174b4oLhjImoQB5mF4wVsdVyBdNRwSDWBbjwMEL1s3Yg9uB1chip+KO3NKO
RKwVSggMNqn1fsFTJYqxZhI4e6YEtvcR9vDH3XH5UEl/pn9O5LQbD7Bp22x+USYsSsm24TZ4Ly3i
ibKe4vGxoPMT88wJQDjJTUX1jSyFloS66AmG4bA3SF70DNkFNnzJk7lpIW2KfgdX+C0NOykOfSX8
l4glIIXeu1lxrRuopRuEP4jnaaoQRnoNTQ0zOIHJThwTE/4w1HJ0IDyQu/snXJChoAMtrFnrKLF+
8N4ABGaPK4dGgw2lTkEMj2upCJJzWMT4qwZDdYFbsBYoz7kKoSoLamDYsrsLK4DWDWysDAqf9sNy
ZC4gKRgGxe2wkhErQYRjI9W3ocQAnzkQvimngTUhxMdZOMDf+laIiZxFBYDdLCFpSzLtndyuvDVE
y0KO9lkJQBp3M46ZiZoJnAPN3IcYelrF88uP4ql3cNSTQyADXkvDRg6QK1qRAELpFhDsoFB7Na5u
VHbtKkoWdj9ckGHmAntQOC9/o4/BWZ1s+Q+pxji6VmFfbQpHJG04cswjDDbJRrWdGdA9Yzd8Tj4O
N8CexkrNUwQof1Nfek8T6oeyiB0l3+pNFNSDDqBgbrPiLnv2GGkbYgaWhjoM+v91g7JscfnxAERb
I8JNlcOtgqgDae44wRaxnkagoUn3AS3nCcpAc/zya8rqOEiFf6mEguZAXtrBlg3R4qqU84g0y+qg
LbiF1MQBM/1gauPyovq9Dqzr652/CZtSjrmxHoSI5umJOnpaRl4c/x+gkgkueglY5r5ZxjAM4SiO
P+MlzR0GrX33fWgSS9Rpokeu4DHQ4ZnE9m00mLgRb0aPWtExIusd1Bmn2CSdSC8TzS5KBXkUegWh
czVZldxpALsIPkk6mDQnbQE9PaD9YNc4j84cgJPnB80vndh+FJ7fYUu+9piAb1WJnxGKRJVxe5Ii
1Z3KQmb2EyVH4Jfl9VxCbN3wwDEakm5tHZ6RKt44zPduLuO3oYLmdwJvRPu6ZRYQZixHms6nbbGl
Re1V7OPkNRhgd21nP2k84aDrPf/e1oqw8sP7LWTQ21wTEnBT7Ln1Of5RwXhXEjwLAWWd4DSs4G3G
Tn6yAa7gj29OdYG6ujwH+37tKKLWS/QyAJK+WgNEvHbyl9wRboHlB4K1tXnW12mnZ+qt4Os9G3O3
0S/3NVpS/ZAXXXxsfSxuvgT31SWQ8i12D4jQXI0WPbnDxGHOiqT0mST+fI/6zpdiv+7ahb7RQCBC
nrBUcWR+IG5WimPSk1vwe+3zRLyLz3XKFwXIRRMmBPPx1rlkKGLUWflhWRyajo2H/VNSD/7dTXox
L/gAOFDMfoDMobvAX2Bcxb6lWfOyVILgOxmlsJ8ONhvYidf3vhUuhkPSZ+Roj+Ko3VnD6/7F0LhT
o12761URQV0ZI6hzp6SDRNUB9x856rwN0x2j6m037YN/CWNpgdCGUi2a9g3yNyYjwzZDO2g0GmuK
P1t5Im/TU/h8D/TNxfAQUO8Y8XsxrmDVgGwDO6A+Tm7twPrqXW9hAg6ZQTc2hMMvQ0R5ylNiDtKa
+zA9nw0w8waHrID4bSlsIVoZUqHWtq374iid4XDLWv3zx9vevAV77IIgwLl4DN+s3bou0veHMiIb
wcBltl9Q08SjdZBWlEUb4znm0sOvtixXqvQOXHKNI/kkefDkuifNq/Mtcs+X1BVlB7Gkb58gMVxC
J3RtcvK6X/4cnl37u9PMvqimhgW3f9RZmUv8aek5vHoJfuNTEpmz8H0Ff+PQBd5HZs7m9TCYjspG
Cppr4iGMmnTzwDcuD9IsZzgl26veJ+MHGdyNAS6A1KPudbuXqLu+/N2Du2r6n0P9o1Etzph2VIhH
qp8tgtfvrfU3SjephKzYcUhfBrKPGWfu0PesJO92QGVIwmyazqvDX2PkV7yXbEdzM1o54vkN3VL5
6D5/lYg+R1k3MWpXDht7JMoR3ImgYxRMDsUXru/5EPN/S7SBLHO9lmu/72HM7ryhPlVpmI+E5FD1
fFM7pjgNyxkJMnf4l5OncIfN4mjM2fbwdBt34zJvkk2RXRNn+Z9uvk/TRYqEbi2fOQurCpGZzILK
ChGoV7YldMUFp1/4WYjqmsk444bvNTC3GFPoqL9gjoX8LMs4nLFCRIiqqlnhhmNX/hCsPevP3Nmd
RZ8wAxm7wrgd/nZjLLNzWg65bC3zuYOruOomSlk/8OJoDZu/RwZdh/LJu4xPgUIg+7g0DNxPp3Ge
uKDUe53yJpNeIKNHn3hdTuk30I27Loyb22B57JMt+XFtCOTj5v9dDaesIKj1hkeebt00mF3QMi80
6Np8sGJ4yjuN1rFFSrRxp5RBwBdEKJQdlfa7Vvnl30It8hNf1+VmRWYb6o7FB6ikQHLD+AVhBsOi
FM5mibx5n7xHtMPYlvoj+4UVsdmOTC9CAkU4hb79JqIpS+U1c9A0IVsQACHeL/wUeUPsRBX2aywN
mnnqKdnxYcOcRmXm7QS2SDq87hZO2cNd03eo2AHyJtK1UEK0XUsHWCH111QsW2suV8G+0SaFWHqE
l1rrhuMwZ0IQsbl7EA7hm9lqjshe802JG3s6p3uzPJNEjXwbty1Rk789T/aZnXm9WI8iTivBz5KZ
YySM/oS50+Zu15Va4fu8ONO87FLPe26Rjvjr4vBmzmz260PQ9pUnYqN5KSqA1pmXdm3RWeW3AoWu
DAIPAAuXntKhxbIymTuAXdCpqoHeHpJuxFXUZ0iWZnLv938TCqU1Pd8oNt6RqBLr7HujJulqDfvY
SMTAP9TxlLlTt3Fx1Tk9dXOyOXb6XZLl3nbN1qofKHxj/XocBARI1IkldZ0TfIhllc1vVhjiAV4s
8qbhYd8ipkcgs5/L8dft/TTVH8+XcXo912GDn03F7n6D21xbQyxV69VLZGLxCYqjtzF+IcyRblv3
3PZ3KZLA0LzZbvTNOArBljhzbOm/trHKrvExLxyfvCFiY5Rg8vXm8U4YsxNy/xRMT2ZU2bGj6HFH
G51xSPcdKpZC3LGYhHfrhQB13H+WQaODJEdjjtm+AW2Xueq5tUC8mDUfwTyXQYzSmCNSHL25h8md
IzxtWf+LWaDDccwc+SK1czfBdCESzhN8St5i2tmLMTwxIf1VkM1RW4SRVGrDBpxalmF/TD9dQ2A/
5bB5SxF3JdxaqexJhQUeZL4bBk9J+eO38mA0JkbLivexzy/TKdFiLypNjx2+Yb7SCFE/GKW+2830
90+ZOOh2Yh7kYNWedm25D4E+o2Pkdz3l9lBi8lTkoPAmAVUsfXg5TQvdgPylEBHMRyIZj9/ctGzg
QGqec8O4m7qJFXcNtUzN8/IjAx3vn3PzmhgvtJdQbPI1H8yjtUdZTResH5ihcVGOrr5zGCm4g+m5
wadlfTqu7V5JHVNttGV8+oqq3pnbeH5Rlsn191j0yuNRtYO2gQqT6FlzDfRi7SYIZXw7O3bE4JeX
/8QY15FM/FOJLzBQqBmEzOTkVmnxHcefmTf3GBcUbBHn8bwSrn5W+Ss/BgPZdxsVJGckwyUD9oo0
ske6lXML8GA5qraXbbnzrPp1bbr0e05Rvg8p6AiKg+lTvogKul7LsTgs3Rxco2G0LeFK2I3GJWSA
g0TqsAN0ENBe6jkVjts40mn02APNhmDLg+ix2q1VYQ5w158rogH+e70w5auVvrNAKcnEiaSxoVd3
5vWmlza25n1QJnT0Pa+9t1MSt01m9F+fNKWDEVjb5j6UAPJNbs7XK2ahLTt203O7GJzyiNK/dUKe
ZIGPF/DdteCnM0KuyYHmyUDsLaZj+S48OhhPNxZP7wkZWW5tWCOoQ0l9HYR/jQoTFJnPeFEw2z6W
rikiTqj3zEeqJPPsffAc8IkFluzKe7hS4YPHTGUlnbTHupa7hlB8oVRwxiMxM9oH81zcNlz2oane
54jw6KN4Bejw1Sg56kbK5ZcwJRMmaWFDQDnLRt2u28aT8V6pb2YvLCy7+WRQAYeaVoCt12OOLyvb
KmEUFTZRYOem6g2LugvB+4Q1unuoM9wo4z3wSNGNqrmTnMLN/VPlms61m75RnAhvEeEjQUV8GIHo
F6zxOMLPUzVJouKr7OQ6t5B436vLGwHozO7pOAQWqKZ84Aw3pFCqxHm1HQ+i3BbLEXIku5MG+fDu
BX55Jt9BxGz6tcYKGwQ7jNC5QdTIxkm2JZ+wT02+vq9YFlL5JufYdhobKszfhh0/hIpp+3awv13/
lIDFYI0zLvbHREf6sy+ICbMZEdywvwjJANhUZ0aeIkl1vZeJwviCnGN7vQfmPdMOwJHpmrWQPCMT
ORdl+OD4e11+nB3/qysERbD7AnGcuCXDfM7yVBOYDMzerTFyGfQAL/f7vz1RuJBomUr7OrwZxBw9
dbtpaLsJjDkqUdtm3YaX9bIIT2tKx5lF+AMOylShPxEv6Mm5JEqfHFiHvFeBMgIDss+PaMDMHqZL
vSrtcq/Q42Y740CUyTvqVYoFNxk900kwWyq8CHcrXxBO33J3oxLrGHX6BnxW4jaCiOTzA+2FdtKR
Ynn2JuPyprj4bN5N5NGt1EG8Q9FxH3DGrsN0m/VH1iE8xaPvKoSodSqf2IH7yFHbUnbuz2KkU4pf
SsT5Tg1f6unkiHDaSmJy4UGjkxVMCkUK6/wNoNV20PTtdiDzntVxMZrAOB5l3jJYs2CshSjjh9ih
xCDQjbGjYMyQBJXkE+cD1OZRd58LGdKv7um/id8mAbpX2I7vSzDohfQIpxQsCW2Nk5tMUJTHAiQv
/mjTayjcDfwanBUbPC01PqwyoR+pzG/AjekgIuZnqiryuvQ/3xLyrT9McKeQh0yWhqf1bwpVqtiA
x4utbjKI0AJFpe8ShCSkB6BnKHVnES1v1Y424waAInnp/3ka7loLRT9u7V02IWywfx9kowcRWDYL
hD/ecqdkyy9D2+LJbe5p0fAqZXMUFoQg5GlgazBHAGBjvhOTXas6f3wBhE9O/QZkmw7R2Ln4FMpC
bmmrm9buklfU+XPmMsK8jHxS9PgQ/HZSxGKy/iJm4hGPW4PnUgBOdgeazFNYfeKecV2Dz78YMdCZ
0F23DNjHxzNeNIA1/X6GJmi/Zz8WKNeLafv0iqqb8UAEcvjY7dfCxvyRVvb9kHlQKFV8+TcEnoc0
NfbgJCfMyov4FpBHYrpf6hkm9C5y8enNh30CfcPIJmGZUTV5Qs59PmxFRoS1NWgJHBUKQCsA2rjM
Xhr8bLoH821hbTTMCzvihqmIndX8C78V7d/dqR38Wiq+/k607V1K5M7Pdqo/ivqjMX4S/KBBhtkJ
4zYLS9Y4z7opBJ12iLN4EWRtTLy3hcAlO+nYIbNEVIc4khh+HJF7b+GOBrmVz+XtF36RY95A/0Fe
Okz+2jqq2kbPZuajXaRIM+K3NfetNDVUKZesQX3KSUdj9I/w//pj9KpoL3X/yAHi1kB2y7Cwq0gw
NFTD3IxmuUTOeuASXJBgsBYrgw9BloDlcljNWSKfrmTYGk1eTCdNbnhDLgz3yMdt0KnLY6cyaqKg
4vOix1RinIclsDNfoQwXweQKSMdhVuWL2c6dElP5aORlrjwfUt4B2y42Jp8tXh/xYLbIiKCjOl5q
T/0o6WdmmkCOJ7w4BFaFlh8PgYoYbRrtNPXh0scgZfnOpnRzJitC4S1/rzd+fYqUa1vJhpIz+0md
fqGZX3xmBLxmYr+gRMKP9E5cKN1S/lYQnzyDdOS4d/zuZs1wNIXd53WXuAtolUQrzrZfX2XH/Ayi
+ikZUGzwgjhsATg+5UBSne0ZgvrbEqMBEbh/e7ARZjJBqRZr8b46eMWa3Ed5Fb6vczpSXeQhJSxk
rPAHWpZPdiECUHxsyCm4F0Ga5oe3LDIh7GU1aMLDc5MibcDSxFNYzw/BpG07B5EheZ/87yfK/t+O
PUQi0j62Ps6rZUEGqjD6pkUH5GoEYlW0BuaxXKJ61JJqzy1rWY5JjA63aLoX4d/U2gsBZebnVGuD
P90iWthsTbQLVEUCjFigjP7G4919FjYwckAfiIg/7XxLB05j51uTwTa45uOGrztRwL+K6phygoM1
tDxODTH+pNmR6FLYHA7fi0Kbr0iNf5IGJk9uXRHFZGZWz3Yrm7/S6x95rNPS6jjzygWPkPFz24Gq
UcELAbT2RNZyVXPzk1Vy1w0nEQqqOs6xzQ+pk+0svF5XIIkr7++Ykaln49qIaTbrPdv+GBPIe9qD
XAg45UurOHrEBlZ2zoF+YMYz+ZYBjp+0YvtAv/CL1hZy+rvNJzzTB/5Hi4FPOz1SVEy1sV5ddIOf
Z7a14DXyitBwCgaeHl0d7Gmoi0YeafwUjxqoDvW8H8PNW8ViRVowhTM4sIvxUpZq+1a44wJ0tSTG
LadWtyjoiJF+0KFUwscDM2QfXvfOVxDVZGhSq+v+jy8FM5ZeW/hWqT9IQmHo85ZlLNoUaCxl8eEw
cHbzB22HP1eH7Njcm0kT0T3M00LveZEpyECU3A9O0y0GJONMscAOlDbQ6awvu8w/ER/wtZyZRw7q
KNb1kqLJs2udIlQZ7qeM0Dft2yXCRp9XA//9p/3AtMapqXA5NoGdx5nyyCQkwpzqQKrM/u3aq/DH
AQ4THhW0/S67M0A40cSvDBfDj94X8iOSiCVslQiZdT3+oCp9hw2bJlrzK9NUq9XQ3eC9JsFVKJMP
1trz7qMFk4rcbA13HJW4IM0844C8a83b0X81Y+5Uru9qnNSffT7kKwhOMJc8WRuirAlXNI7YXMSB
qt/nm4+y3pFptVMppbzXP4pO3+b28rlUdJeilglptiVXESnJrmLj/fEvPiCBRkN+gIYUa2eLPTfK
A5NuCxlqm5QIVVIz9/aVzVIFZjQDDoYp7Toj93Avk/PKSl0V3nM26fyH+QFX55/36+pyT6LiT+PR
1FJjUJbrhOUydRGIm9rBYb5B/2GxQqjemDn8b/oJ6LlXLqlKZaYDwikLDOFaxETmk+qZuzNMyvge
/+6Re9Mg3b1jkyrR2sjQhDSEexO6D7nAyrNvMCsJjIZ4swq2RviLmaZM109wqLc00gb9hzkhLq7a
KrrlmyF0ilbYIZKCdBjIWR4FIRa2F+nVvHl7gWaFbVJ1lJh92snE8B4Ey0aJP2xaeOIaDO/0On5W
ATnarkf6chlUGqg0NRYSyhMFyI6guJPswsJotFTegThDiWpgRoYwbk1BlHXNwih6Ez4tweprCcsF
mp/Xu45+HWynqsZJTBfF834TvYcLKb1Nr+FLusIU/PNTu/xbnCutwmTO8/UA9bwnLxj4h2IsYdLk
DoC10nvla5FONOREkU9fbd1u4C7bv57jQxicvEVyVV2DbWfrXidQsR1RRDUHvizuvuOPG3izYaoO
dQ83hqPIfTSVjAUdYBLLw17FWIkL7m1h7y8ZMtqJCcbLM3GutCFf3DKxl5LTGOl0klcXykbcZ+Dz
72WvApKgSxjwjoR4Qk7L6k+pFv2L600Y59w+tS5+7RMEcqi0DlP89kHhc9YcroJ2glhfoWyqzM/x
eyuLlqdON1ZcWRK5ULfDWhiecSAbcMNlbcI5X7SAgBWNo3X1VvvLX9dqtKZcenSP+cXO+q0K55mU
qq96t8hNtcp/XmvzRmcJmh5BxjOecHaJBrEXgjZDings2np/TtQQ134e9j+zysQQQ3EpduHhBjEc
2q7lxUf8xGAnObTh86BZ6XH6T58H3p/DPLWj0RbEbjXuAw5Fo9QMZAL0/JTA2M/8r4LAoVXpQBHz
xpiKqIqIYodDvaxA3UpQidror0jXs1DyHcS7NDO05ZRzj4BV/qYn5WNUjuQTMeuSI04LwgTJD8an
M3YTwwZ6z0UHcNr1+wIO26GMP9X371tiZo6es6WFIyo6kmKFU95xFXRcw0mg6DpknxcqNqwbi8Yk
8eYSILY3BuZyRjHXO1dXN0qz8gy6zw4MoDiEUuvffjpGzlkNjIsg4EpZuqNnc5hb4iikSS20iYSV
FSRqcl9npG0ZAeUOJ5UWNcfBx/DvX6fpJo+js7m7ylFv/J8pxf0wM/gviMpAtxtcrh/LoXoIbUwM
KyXGxmjcH2EHmIDwdpEdZJhlKIKUg9pCpU0M4yTKn9LKRTdlAjZ73V5wZATrwO0eh2p3X2RZxrbM
ZnWcP8mPTNY2YIWi8eo1+WUoyYPyw/HvNPBvyOMBUX9iv9pyVPNQcPSfzciTslQt099pVe/TBNcf
oYF1hrIoRv2bGMe7r8Au1xEUeAITgrDTp1Mj6QF7+4NWCR0DijYxRezYs5Gxma5VPjcbHWc+kKoT
Kzd3XVDIoR9wvM20l/kRD6k8nEgh+SSjZT49ToK8sG01Q3bsMSBMON7EeG1zyJuS2ghMqQ9fEJdv
4er7r6AMONkVDB3gUS0ulFohlr811kHjNddHsUdJJw3SWmyZRkYDH2T3KJFD3Y2/N6alEy/+hmXp
UbYj4LJ9GwrOK6msMzYQGOgNcmC7xnBhQ5MTinpXtZVKFq/x4JYpq+T7NAF8Bu3AUo/cieAmCTlh
sUSY89fstUQrYwVQtkiSOrCSZvDCrWAyy+A56vk0RHGXWC5Z0tIooISTKktoBA6U7GvHZlFwbJ3k
MW9HQfdcWLsy4r24FtkdEb02qxRGxXWLZkm8i2lgLdhm2VTgX/aEypQjZEwm/0VbVz4tedBf1XC7
XLhmZUz+rTQJrSTu+ACWLPFo/h1uTivcpETqjmWn1f8EZDnBw53fMMjyTR9Pt7f/LF1Ii71fHSuD
Qsnpd6c/V/Zng5zxwF7ehRTVCkKfz/mIbOCK/p8NoDKpkuYoQv9iYCOT+tbAgXV8cdl/ZvdfQVn0
6LnWvEBx5iGanSqQRl33g3wjb0bcygxfRytG0wLSjSuYP4OuD4CpugkRqg7jl+YlMllMipqNDrpn
nYsr0vzdKDcmpaQSIHjoU6XSP2KDeYQF1XCsZrp8uSKAX+knBXyMs2NYoXe28jGx3f255723N/dC
q9XzniB30sEEVLAtgmaAcAq1+IG75uO70GaZED3CcqyGsSYZf49ViCChbMYDHXzmIE8DcKJd95OH
iXVo7/hKY/RDI07d7a1jPAH8D9s6Hoh806NWKhfmnyZ53+lvRF975FG0UcYDn51GukKHbru83JkT
I+2W034d/WoGLW541x3Znp7MDS78SZYzsNejVnzRR8Tmm1RKyiey99ZeIYBoqxqzVCv8SqkgMh+P
XDyHcCm5buzUIz0LjcW2KR4srzf98uYf28qV4bvvp9IK9heOI57buIpqpQST876BwEq6Di6vtH2s
hmBS6ZlKAhk8F/A4sxFX+gmFOxOMVsg/KDz2mwFhKL6F0jae3P/3WYiHv0GE47qu7C/RiTa/znrC
1ncEIttDg+gkZmt7UZ+Mh7q+Wgdt5lvxrjiJeW9MG7Qjys7t+/Z9YCYHTdsLe5A6I5i7+J7+n+V6
vlXhd5e7c0m9kI5Rwfpc0KIUdYyBGzeO0wqvhqpQwA+VPKp9FFSW9my6pEgVzZve3UoE7Sc+yQh7
WcqWp61cRSjeYukaUZzhP8Iq4HmZutCOcL/oojjXzrwEtWFkLwS7wn18lAoDJCdnS1X/3bZlA085
5OJMW39UyCdi8sTRmHI929RgfL1ttFB+lDiqkBjH54e2C06nt3VkPwuQAt/aux8lQsJU5/c3314G
ysAwW2UPjqbjK5Pi7/4Kx1dfg5+j1XxJsovAUAtkm9tc1QiY3f/3qJzVza9iekwhe8XMy40idFD5
K2zlbZCCdp58H+pezDgQMtynuyk2VIYacgXfdqBJeCOiPspRNFftSnW3ncRy+3Zg/LTXRk9s/Inf
ZfkBKGPirSy645ODJafwVBOHPxnijOw1t3Gpdu2uOQFyEX7yjwNSe5Uux1VJTP8D3ySWyl8G/k6Y
VMCSu1U32d5FA94l2K9XbD7VxeD3brlPBnvccFg0cfDbsiuzY1IX4jBwPx3l3/qC8P372Oks1vFT
EPIXpphM4scP7oTJ9LXIRWfq1wbP7NZqHaO42rixJJdbkScVGcgfyyencAVTeKb15BwvuXuEZRuc
OWMmAIujtvEiSkMqxBmYQsVEHXWkJ2m2uFbijkkoiD+fYDCCvDoSdKxlxrQyjpuIX+2hh35+ERY1
tryd5llKXUe/GSMYYzBgSooFJqUY/3CgzQj4CQInqu4EK5rv9tWEeou4eQSQASE/yRCPz49ky1FW
Cb6qiJOlsP6qp0QZjZCXH4AVkySb6x2Aqicnos2jL5YVxpNP0+UfqS5XR2PMN/pIIvIBP0pJ8kG2
i8/ubazBiIwHxpGyEIO3acUKgOQEiew3YpvfcJSdLUDnEQPCd9Dsg+NRQwbXk33ZOs+asKpaNmUX
7pVyT6s9tS2Twk2M8baB/u0cSryEwGLHGn2O4oIEvVytu3iun1EVg4QqIeCu39RBJ7Vm+u2PTDAw
svrQfIbLhOoxvBCGgf97WwEVmx+miagsQKs56dp5n4GU4I9sR9TNY+HcprvdQyFcVsMOLg9lPtOY
bphDwOOrFP3sZO0pXp2VSUA+rnUqAs8bhpsgA17vG1FJo1llH1PR6YCR8fholWlbYsCe/ZekX5q+
Co57a6SW8EiqxeBNM1HtumYhjmW4rPjOPkUBaYvSr1yHIH5VrovizDIJ5tS6N0+/rBPNZeawGl8q
NVO5gU7jPjFme80VNy7mlsWFqGvI1RSAFgezY75oaQsQmjk81AXy5yxiZfQiUTsuRnZ2scSpk/kw
XmhmP/1XKEnZeDiAdCIUaouDI2I53TsZzFECecDabe0rBbUeR9U3jmerJcjfr5WLW9Y6AoZWLONb
9QZxLsd1Tjasj+2MUQ4NEZ3T5cVuXFd5Ib+c02GT9e/NAxSJdnZokijGPaIbjrHgGWJG3UDnAb2c
/yUMXH58+oznQpUo6JQkjM1osiuNgM6351fHRsxm+4BeBRcZlwyqdk3wzkp5nuezqrZUFYTlXaL4
1GvOp5S/ZlovFiReDNZZPebRptjwj+1JMC4b6WTjjmCT5UTBLx1+dGdaXd3rRYJRBLQpGEKMhmU9
HSi3Sv6zLdvOkmh6Nlc8mcxlKelAjN9W8aqFmeqxeCzdBo4+jt/lbKoWCDvOR8kLVpdNu/NzpwAY
jK9aMesoevz3up/GJclfBSOVi1jBVpC2DLMeiNvQoWw4413jskdDQqOeHfwrKHqwc26lIKBzY3oY
FcYBYcm3lp8QJIAtHGlkGQX2WX/WEb0BUq67MNN3E8d3v2rqz/j+MzF9y7vlp4sXVroDfP57bS0n
D6CYwTt5qNAfxoyf8MfUgk3MdQmLZj3wCYyLZUfxc5vvxDO7+ha3VmtzvCbHGEp/pr3GygdVxEbc
mkfx2TEwBS6wRINM0DAvTKSaXK5D6AUyYehAnmUZz4BG4piVnxigDi5OCF0fFgDgpK0s5Jn9OhYc
Z9ZMuavPpwX3R0gPSor4y2D4cxvw5jOEALOByzlDodu2knD3itd6NCqdWBfaBqscvXcnaLM67/8O
lzSrI8Rddte+g2UrQ9QAjsE+g180LLxeo2z23hZRr77aqdmZac2ZcSNNBFTnviTOW0Sj8adV+ywq
+AdV9GkWFp7S8i1UJSsUfFjQtDdZLk5pAzuBvpM0WMRQze5Un48qhijVO12YRlDbHwFOXlHxKmjV
2twgIhsc66vVPTBnRF5IK4QDW6NjaRFEnpYXsXI0EoNI7FxJQ7KFd0NdBKWvRhI36Ulq6IjNraIy
nAbzO3uEERurHrerIjuUIU/qAoMKR2RBA/ub4R3VS6svbndYmL6+h58qyPBMXChsrHsafoBbA0Ps
WS2dJhXMgO0B6LQctMgbvDKoDmxhfuRtSUkZ0juuScyxMnw0d/C4uMYFYHFqEaKqRfLtM/AQnElD
XWM0Zo9JeT/R0PXjSmocUCDFVgTdJUFYpioK10CG8M+F2Gk1zLfGyeSyPZdXqEnn7z4tywh83/0f
CbYajljehS7ZvbTozjxS+wtDoZ1Hw589zabN3Jbt2ojUAVvrMHLwLUgRFNk4oePCJX3T20ITg95Z
yYGkUHaovGv9NkdZJBUR5eWY7nRbQOoIZ0wKAUXETd/hc0JVcGepOafNpJK/kHcO/qonhtmiwxeq
8oYZYQZWlqoyZxaSMwURgTZmPopIfC06zAAJaVoFjmrYMg/vch28BeOPh8OQ23M8cDBQeVnO/DDV
W98bE87W6I6nNpO2QXw0HpjPBPYgXV8WtXDuqV1z54++HEqmyU9XJGeHHrgklGuaN+xXiT40fsP/
oyQkVx54SrulqjMF6fKXfiAw9N76wrdmkTZFQkF6gwDtQ6WlKz5zJ3jT7vmXCvWhrJWVQZV7j+Ew
ubJc+Ry+anlwWNuA7LvpUps/xC+OfCwQcBFcW1U3KPe7Lx9cx7iE1aaQKQlE3nVzpoX3qpmUT0VN
M8tQ/mzQhSL9RVXAddJODWUKA4HC09pJwJ06G+2qcR8wkxjnO118/5plrtt3LdT6uRjtwTEqpo9A
eyKL95x9xRG7b0iUwnaq4ygvBt4/K32M5LaPt/oqnA4haq40ecaObs1P/903GW2A90fq3eMA3JL0
JdNhkkjykobMjjYazvGd+J7f4ya3BEz++EAYRINLAXo524v8hyo3uxq63eoC2SCmw/gdcONNVmRi
HCLByHx8SubMYVkTpQIuRKFKCEW9nIqESI9stdd1RmmD0jk/Ux9eEAX6xRv27wnelGBHqdX3dmOe
ocZZnrZpxF4BEiGgW+/E8VQp8EarBWgulpCB5/yqTccdBbeB5/I5JfC9k8olp3gaS3qADeo+zKMb
TBd3lC+mnI5ZR24e+Ynfh8nPldgWJBAc1hNAyzXFxRsvx8SRvRx9CSwbVN94bDt3m+Rc28cwknBf
MMpKX1p0/90s8TTx3mR3mRKWiHlGBG1QGP0z33UPv37JEg/0aC4xBU6Jkt3oG03cQYfB/RFeiy45
slRiHRPLq/IdAxcFbjSoooPn7CDYOIdX0Kgvv623nZwVlThiCmDRwJWmde04EZD8p8fzSk6Ae57L
LJyEI1dLx3Zy3aGuwqPANj7U9zSuIPhnkyFrUfJ3y4oCbq9xKYqhfeWjtgxRnv90CERI4hXme0QG
8rYIUdV1uHZ9k5IqVUaWr4AH83RGHjNsAWY5fkRscyXWv/8Zoup1RBjtStrjkgygwMXQfB+MZzP4
WUC3dAM7ZoPvHW2a5j7MCLUIpTBx3FIX/Qu6/i6hOpbRPkuozJo0gwYxfRggIY56CWBgoHYSd5n2
OABZ1IZu7TNrH8xaDs90kiC2JtvFbHSzCJ90skbmulCRmtwbEbcSI44zyt7tb6KP5DKY1P/cbBAz
M66rV0TrqTYrdJ9wOxmU+z3ml4zMonmRAwaWfOtZNktiXp1GmwD4raWbrzms/+xjDLH7vpzhvjwN
bdVRxzPhFCyyMZLeVyIfs82JI3HKGLA3wFjm1o2K4PFomp3PstxgHEHfSn63rYcUA+37XQmcjKLz
42Mv1DNUgpEhHlFuSLagm0fsCI25U0r9OO7/CvQo9rctxikZ3oG6iyyMkKBbLaoK2AmzNcR8+QIt
c9vKyHp7HviJTv5Od2ll0HMJH5Yru6iH1trLMkEZl2rU8wQ1DSgORc31n/8CLRRdZVIG9JToD1q9
MHmLzlE5p9pst4YT5uR/maaNxTSxKe1YXo9F/7Ltl/Xb/ok2VNoQ8w2PQCe6rmFB8loxtCYQK/7T
kyK1jXxe7Iq224vCrNq9TX19oahaqzPdEHumK7178l07slasY6jvhOyj273TLYo4UHHNGe36OcdJ
gdZgVKfa2kjISS85i0K7s36xiKKx+3wg/vFqQjMhDopHwgSjI+oMLSQq2HHaQYz4WdPTaXVI53fv
T+tB6o03ZMJXyJU8fxwIsWowP0oCEaue8yGFkYifPBE8j4JcDIsTPJGBWz5fZUO81GDnpF2jXSP7
mbD5PiUrfqNVfy6nlKiSQC+CuVPLg2vFvXgUePmJolW3liM5c2NHXjH04Z5t2Ub+il4ADZSAgIGE
IgWj6IS6S2CnPhyEosN2hZhM5uWdMnGvOkoCZhf264BduzrPN12zUnqL8mgCkBe2VnDJik4sGhKH
cRq1wNjnKsezKLn+H9dU8OzlynV3m9FL2eYhuqddqJK5SSHyG7yryhJTEcgp9Vdw2U2zavt95lQV
b3rfwWinaVMh8QhSOkNohiW/pHMY3gpZWUaWyidO3YY/MSER7jiBnAYKbvds4zaDT8LbFi6BhgL8
+cK9PF4laKjqL6AgWxbO/UoAptUGJX4NKmXRsEEiwum11RjLT7+WBnhiZGSAEb97rtFk9j/w3LYM
pz/Wqb0XvyOQQGgV039g2OGjCrijzxNXtDVkZQzoqq7ir3ICDm7gGlFIkqVEFzckmpwfPoJL7tcD
N3IGLACYTvJd8dmeueizhi3f4SmjrNKfhoP+QTHtgoLObAIfPtyjbf9IVbtjwXn+BYdHsqOHERi5
Vk2thc5Bx521iOS+qd06jxghSnmugPWXw0jRJMt2euT5Ep6LPE58bGP+TTTS+diIGQZrzTF3GX0Q
CeJ1C9Z3wQbT7FAgFtBYG4h8iKX1LFFheDv8zjbaMnLTDYr27x01u+ari04kwKdn8AplXiEnrozB
vZO7RTJE/vQjqqZl48aysmKrISQOv6B+aucOukH8PZjbj8vZRToYNuZuzX5CzCkqwMMWW2cdxJwS
ZAr+78rnywHhw01rF734sXyfzcUcJUwnscgDxpaVCKCbGiwB/TEhJPrzg3ij9J/OOM/R5mXHYJde
uokLfJzSzoNdTFw/+APuZl3o8tiqx3791FK19+59ArtpAgbBGpfiZ5wxvfkvNYRP6myWcQ1iy78r
5vq8aROB2sBsYOusFZt1SquD1kYBpj1MpHob1T9M4PVnmz/9Q/qfMEJA05C6zRPl44dlpq8jH0jW
Tq6rneWEtfHo6Qy2Z5MMwM3z46TF4UvhrZuWkkQ/3kt20icdcjzGJEngUFWWVtS4YEXOJAYLFDBf
njLgfXlIJwhni5+rRMtvWAZ0ZPY3X6Boadd6IiJMrLogOvz2TRmcgBF5tm1dqhqGqydbJbx87Xl8
VtafkIFNmVh92UWxte5Lr36NPt5skbdODHRSXCLcG87eQil3u7wVEvFzZ8ns6U6jyav43v1i2+Wy
NSuCeWKykx15U66oxhgIh7TvF2BcpBooXTs3JmDDUQqEZgBFS+ACxWMr0nVkXh0GBo06cZunuPYq
LLVfWt16I7a350iwG83gMfrWhVdNbzYzO9Ug6pBI4piZ9Gt3pUY27PVOR7NqjNPISHo8MJLR/TIG
FvCA2ao/YhUB8am5Y5mIQhpypUhXKEN3VaZLGMpdzMtkvPZjlgsfjt/d8b7lwqWAGFHMEZrsiKDd
RHAcEHeTweIuhS82+JTBY9LR1auVS22bs0k7PlIQ+0VIx8sIZmXBYSlOQnARbG22yTsysZzAK1wJ
ZeprzRQnRVwOZHwoIsV8PYNMpsid11For4ixvjRwYd2aHJU0HFso2pXP2FynkJQ4qa3iXTWJ7miT
zyM9nKiKKrwThwqyWUELcoMi70Xngg+fO0ZyKH2NLMiuIQ+XJxrLBgHBSONmN9+i6VTz8Ajw/D+u
LSzpM7SWvT6cxivXeQqlau/GxIzzdomJMwEMlk6UbkEwqY6rWygDX5eIf4jpXOYIVJ4NZY/A3rCh
hKQqKKeY+2dzeDNF40VzjcmPNN+pggh1+niglVDv133syZvlhHGL3ICICYPArilYb/iWbJrHt1HQ
ped35RNfzjI1maRsXl0nT4MDGk/ybscnsRjWdpwPGxdSjMRoTOtluuTLlOEbxnKseecT9Uu7CyqK
z0fMIGSquZ/ZRP/7zaErkAjJvAcsuwmDw4JWNhCsrSBh2oXuOhOVlV7B2QepI2SQX1lURnkGbN6L
TUeBLbe5XKrJn/puC1ZQnr/EoMOpPxWkpepJXFdMmvXqvTs4oWhKKyWLaxYbFYibFglqXzrmzNnm
6WYSXXxqZW7U15GEWHE7SjzoGv9ILvVISycN2MDJ/UXt1DtaaLwy5THVUaFIiJfcNHZ9G0bocDjy
3L4Jk+PMdcfJlaVXzTEzCDnpv446UuXs1gqccZvmFMYyw9ELXjBhWeRnuzmx0IF4+eDGR0zZfLYW
tp32IztjRYeRKPpXM4vlUJPoYYUWC2j5Ed3hWhKwH9mogOzFuJGGy4njDRfcH1qN8z5NW1RJazud
Wxx8frm82t4LVm/UUXrMnRS4hqvrJJnGt/FwWHZV13CP2bJop6XcAMHvXnE75Ly1iwbOls8+ljfP
WOMNU5F+ZUgyfc2hZ/DTiKEiUMmxx0M7xjLCXGoWwsPdJdWONxdFjC78aOuhWR8cTGY/svianGqY
6Ld7HlcuQBFAg1BpCjZn6aFGGXByIXtGNH5lke/XIihyLcgiiWuIBhGvqELpbwqgx8RMcy2PDvd3
syBroetd0jF/MfFLR58BH/yErwkVZiFI3F4F3k+kpEQMkQypIvsllSwEJT5anQ19bs1RE30EP1OI
+JL2nGfiWMgTHOVerQpfNkOvErmi4qYfi6Y8mDq3PTEXt/Z8SzdeAPhHeArT3kIWP19zzJsANlDa
MMWAA2PHN8l2phq+g0UMQ9qAGBcN9Fr8YWdKxuOdnj/xnbVz+DntRQ/K537he1ci5ToL630BvSdr
3V/rxz6Ew8nAfuGdeZLRH523gpnxV5rQJ2GVnlxhqhN8SWwVT/B2Th86hT2YyVOn1G9rbyztN5hr
7VLiWcKKCrQ51t7a8AcMPUHaVPn5OTOq27dxGLJWteny3G9mzRegzYxTA9FRotxBXBMxYyf29BX7
W7XyqSkkTWjDiWxit8OsDO5/w2i/sPbaI7hLw12TYVsIC+cZ2bijmHdKRRyj0+LKckSHbuDXfLjZ
GTuivDaYo6ejVqy1zwtmj3nNlpfFoaJofkgyVWgYzw5pLq9Kf/PHgH0yY2PA7s7U2Nn/zMszKVKJ
u2NXF6oZKJjxW2meoIGCdDb4yqyEl04hVe5CtcWsbQKK3CdbUUQauWl3BRzTtcgSbAg+/VzBOA2/
OMC5TR89JilL0NE1Oa4Zbq2F5iWAACEc/ZqnRJR1DQLt/x0Pc3mQvcDG6rPWYUqoakU4axzbjybk
M/OuU8C0zuQw/SUX17WSBQY0Ri1qG32nWZXyK95cikH3e86ZqmsjNY3kUiuDWbTaARsrumhsh/zE
Jukp80UGx1sIATlQDsvE6sUidszc9F6me28go3ALCBG1dEexz9OIgp42M6SYedfU0ceZLPeJefqt
etIDjDTy7/oWOCtcQtgh8uhCBjNtX3pKdrGo1L9qRd+ls4q9vwox8eCwYa+azJ97qYDsYvhvRpzr
a5+sZ7O24Ho9jlz/MeBxjWa65axvBJtkWJS7EZKYSBxFZ8t0+A0Px37WSEIRGPgd3aLgOaVHVhf6
6nKd6K6HPNYWI8IwGmevcIBJbZ+QY3gwytM9sD4cV1MNSaNYY/KGl1O/WJrTdO2PZ1nM81NAGKp9
we3FYUpE650oLenGqh52osesU+MV0zqHHM4ksllipxVhCc9OVdXFOeehy6zrVrzCq8YehgzvB/Gl
4ZWaAhpLvLpc4iBu0h15pl8ZCZ7iQicurQvV6VKJEhsjmnLUhxzuoLVYAAQheORP7Iutx/wNWHm5
Er5yW57ao6cRnkUEaPx6yjLbSI8xDQYpxtz+Ar/sbIFUAnrDI4dfCzejYIA79qP/H/pN0H+CnBkP
sp7vShdh1oaBFklGKjCL9TpjPc178Rg9WmF+jt5v8hdRoCIHT3fiEMJUFDslvymnWPnr2GvYBmlO
bMJQD95M3JxCE7c0UPU7hSorKGUrIY8vqxnaGIt9tifP7L/kk7gzWbEJs9QOCUOB90EJYRzNTHtb
JkMhrMePQeG6LwsJPYb/HYAe4CX2Rgx1AM0p8uKp/qexnTXHJjKH0P+7a1H2MwiqNPp24w/rb3Tn
sn+vQHvE6BSzcvF24dYl/ocT1URVXgEAsNveXfYGArbqn1mcPePZlEDHvv9L4sNj7Fr/HWHq+cUZ
+BWlCn+XDpdHRClGeMSe6R+nXezjwX6KzIbs6rXrGc0lxDcN1mqWHwTZxFgmQp55BRiK0y4tsHPN
3I+BQX5AF4Pbm/AidZznYvBpqyeNHVR+1ml5bfELOsHYsa4TpTxOSs2hqfW4eF+20q2Prq7U3V7A
jySBpu/RG5QlV6pnA8pbRT8jNZ6SozTUduZZcKukEYbYASJUcD+X3mNE4Qc5Lib9sLVnDjTiqeNM
xAsJqnXlxA49LEoJIajStaRSgpE8qTixGkPi4WXdDqAjydBDP3hTd9iw1H3AcCYQn+HA0Lyg28NX
z7ka/1LuZc3rjKpbC6Jz1RWLGUOznDOMeY4OzQabcrK0VaxlNfGmkvEpyxk0V7tDSU2H2AoXc7JT
ON7jBYv7ve4ANg==
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
