// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Mar 27 16:38:57 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/rwegter/xil_logs/vcu118_display_test/vcu118_display_test.sim/sim_1/synth/func/xsim/top_func_synth.v
// Design      : vcu_DT_blk_design_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "vcu_DT_blk_design.hwdef" *) 
module vcu_DT_blk_design
   (blue,
    clk,
    green,
    red,
    reset,
    user_si570_clock_clk_n,
    user_si570_clock_clk_p,
    vga_active,
    vga_hsync,
    vga_vsync);
  output [3:0]blue;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN vcu_DT_blk_design_clk_wiz_0_2_clk_out1, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.0" *) output clk;
  output [3:0]green;
  output [3:0]red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_si570_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME user_si570_clock, CAN_DEBUG false, FREQ_HZ 100000000" *) input user_si570_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 user_si570_clock CLK_P" *) input user_si570_clock_clk_p;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue;
  wire [31:0]c_counter_binary_0_Q;
  wire clk;
  wire [3:0]green;
  wire [3:0]red;
  wire reset;
  wire user_si570_clock_clk_n;
  wire user_si570_clock_clk_p;
  wire vga_active;
  wire [23:0]vga_core_0_vga_pixel_rgb;
  wire vga_hsync;
  wire vga_vsync;
  wire xlslice_0_Dout;
  wire zero_dout;
  wire NLW_clk_wiz_0_locked_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
  vcu_DT_blk_design_xlslice_2_0 blue_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(blue));
  (* X_CORE_INFO = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
  vcu_DT_blk_design_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk),
        .Q(c_counter_binary_0_Q));
  vcu_DT_blk_design_clk_wiz_0_2 clk_wiz_0
       (.clk_in1_n(user_si570_clock_clk_n),
        .clk_in1_p(user_si570_clock_clk_p),
        .clk_out1(clk),
        .locked(NLW_clk_wiz_0_locked_UNCONNECTED),
        .reset(reset));
  (* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
  vcu_DT_blk_design_xlslice_1_0 green_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(green));
  (* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
  vcu_DT_blk_design_xlslice_0_0 mode
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
  vcu_DT_blk_design_xlslice_0_1 red_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(red));
  (* X_CORE_INFO = "vga_core,Vivado 2019.1" *) 
  vcu_DT_blk_design_vga_core_0_0 vga_core_0
       (.clk_dot(clk),
        .color_3b(zero_dout),
        .mode_bit(xlslice_0_Dout),
        .random_num(c_counter_binary_0_Q),
        .reset(reset),
        .vga_active(vga_active),
        .vga_hsync(vga_hsync),
        .vga_pixel_rgb(vga_core_0_vga_pixel_rgb),
        .vga_vsync(vga_vsync));
  (* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlconstant_0_0,xlconstant_v1_1_6_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_6_xlconstant,Vivado 2019.1" *) 
  vcu_DT_blk_design_xlconstant_0_0 zero
       (.dout(zero_dout));
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
module vcu_DT_blk_design_c_counter_binary_0_0
   (CLK,
    Q);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN vcu_DT_blk_design_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* c_count_by = "11" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  vcu_DT_blk_design_c_counter_binary_0_0__c_counter_binary_v12_0_13 U0
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

module vcu_DT_blk_design_clk_wiz_0_2
   (clk_out1,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out1;
  wire locked;
  wire reset;

  vcu_DT_blk_design_clk_wiz_0_2_vcu_DT_blk_design_clk_wiz_0_2_clk_wiz inst
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "vcu_DT_blk_design_clk_wiz_0_2_clk_wiz" *) 
module vcu_DT_blk_design_clk_wiz_0_2_vcu_DT_blk_design_clk_wiz_0_2_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_in1_vcu_DT_blk_design_clk_wiz_0_2;
  wire clk_out1;
  wire clk_out1_vcu_DT_blk_design_clk_wiz_0_2;
  wire locked;
  wire reset;
  wire NLW_mmcme4_adv_inst_CDDCDONE_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBIN_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBOUT_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcme4_adv_inst_DO_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* XILINX_REPORT_XFORM = "IBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufds
       (.I(clk_in1_p),
        .IB(clk_in1_n),
        .O(clk_in1_vcu_DT_blk_design_clk_wiz_0_2));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clkout1_buf
       (.CE(1'b1),
        .I(clk_out1_vcu_DT_blk_design_clk_wiz_0_2),
        .O(clk_out1));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME4_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(8.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(6.400000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(31.250000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKFBIN_INVERTED(1'b0),
    .IS_CLKIN1_INVERTED(1'b0),
    .IS_CLKIN2_INVERTED(1'b0),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcme4_adv_inst
       (.CDDCDONE(NLW_mmcme4_adv_inst_CDDCDONE_UNCONNECTED),
        .CDDCREQ(1'b0),
        .CLKFBIN(NLW_mmcme4_adv_inst_CLKFBIN_UNCONNECTED),
        .CLKFBOUT(NLW_mmcme4_adv_inst_CLKFBOUT_UNCONNECTED),
        .CLKFBOUTB(NLW_mmcme4_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcme4_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_vcu_DT_blk_design_clk_wiz_0_2),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcme4_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_vcu_DT_blk_design_clk_wiz_0_2),
        .CLKOUT0B(NLW_mmcme4_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcme4_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcme4_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcme4_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcme4_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcme4_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcme4_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcme4_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcme4_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcme4_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcme4_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcme4_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcme4_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_vga_core_0_0,vga_core,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vga_core,Vivado 2019.1" *) 
module vcu_DT_blk_design_vga_core_0_0
   (reset,
    color_3b,
    mode_bit,
    clk_dot,
    random_num,
    vga_pixel_rgb,
    vga_active,
    vga_hsync,
    vga_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input color_3b;
  input mode_bit;
  input clk_dot;
  input [31:0]random_num;
  output [23:0]vga_pixel_rgb;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire clk_dot;
  wire color_3b;
  wire mode_bit;
  wire [31:0]random_num;
  wire reset;
  wire vga_active;
  wire vga_hsync;
  wire [23:0]vga_pixel_rgb;
  wire vga_vsync;

  vcu_DT_blk_design_vga_core_0_0_vga_core inst
       (.clk_dot(clk_dot),
        .color_3b(color_3b),
        .mode_bit(mode_bit),
        .random_num(random_num[23:0]),
        .reset(reset),
        .vga_active(vga_active),
        .vga_hsync(vga_hsync),
        .vga_pixel_rgb(vga_pixel_rgb),
        .vga_vsync(vga_vsync));
endmodule

(* ORIG_REF_NAME = "vga_core" *) 
module vcu_DT_blk_design_vga_core_0_0_vga_core
   (vga_active,
    vga_hsync,
    vga_vsync,
    vga_pixel_rgb,
    mode_bit,
    clk_dot,
    reset,
    random_num,
    color_3b);
  output vga_active;
  output vga_hsync;
  output vga_vsync;
  output [23:0]vga_pixel_rgb;
  input mode_bit;
  input clk_dot;
  input reset;
  input [23:0]random_num;
  input color_3b;

  wire [22:0]ball_rgb__0;
  wire ball_x_dir1;
  wire \ball_x_dir[0]_i_1_n_0 ;
  wire \ball_x_dir[11]_i_2_n_0 ;
  wire \ball_x_dir[11]_i_3_n_0 ;
  wire \ball_x_dir[11]_i_4_n_0 ;
  wire \ball_x_dir[11]_i_6_n_0 ;
  wire \ball_x_dir[11]_i_7_n_0 ;
  wire \ball_x_dir[11]_i_8_n_0 ;
  wire \ball_x_dir[11]_i_9_n_0 ;
  wire \ball_x_dir[1]_i_1_n_0 ;
  wire \ball_x_dir[2]_i_1_n_0 ;
  wire \ball_x_dir[3]_i_1_n_0 ;
  wire \ball_x_dir[4]_i_1_n_0 ;
  wire \ball_x_dir[5]_i_1_n_0 ;
  wire \ball_x_dir[6]_i_1_n_0 ;
  wire \ball_x_dir[7]_i_1_n_0 ;
  wire \ball_x_dir[8]_i_1_n_0 ;
  wire \ball_x_dir[9]_i_1_n_0 ;
  wire [11:0]ball_x_dir__0;
  wire \ball_x_pos[0]_i_2_n_0 ;
  wire \ball_x_pos[0]_i_3_n_0 ;
  wire \ball_x_pos[0]_i_4_n_0 ;
  wire \ball_x_pos[0]_i_5_n_0 ;
  wire \ball_x_pos[0]_i_6_n_0 ;
  wire \ball_x_pos[0]_i_7_n_0 ;
  wire \ball_x_pos[0]_i_8_n_0 ;
  wire \ball_x_pos[0]_i_9_n_0 ;
  wire \ball_x_pos[16]_i_2_n_0 ;
  wire \ball_x_pos[16]_i_3_n_0 ;
  wire \ball_x_pos[16]_i_4_n_0 ;
  wire \ball_x_pos[16]_i_5_n_0 ;
  wire \ball_x_pos[16]_i_6_n_0 ;
  wire \ball_x_pos[16]_i_7_n_0 ;
  wire \ball_x_pos[16]_i_8_n_0 ;
  wire \ball_x_pos[16]_i_9_n_0 ;
  wire \ball_x_pos[8]_i_2_n_0 ;
  wire \ball_x_pos[8]_i_3_n_0 ;
  wire \ball_x_pos[8]_i_4_n_0 ;
  wire \ball_x_pos[8]_i_5_n_0 ;
  wire \ball_x_pos[8]_i_6_n_0 ;
  wire \ball_x_pos[8]_i_7_n_0 ;
  wire \ball_x_pos[8]_i_8_n_0 ;
  wire \ball_x_pos[8]_i_9_n_0 ;
  wire \ball_x_pos_reg[0]_i_1_n_0 ;
  wire \ball_x_pos_reg[0]_i_1_n_1 ;
  wire \ball_x_pos_reg[0]_i_1_n_10 ;
  wire \ball_x_pos_reg[0]_i_1_n_11 ;
  wire \ball_x_pos_reg[0]_i_1_n_12 ;
  wire \ball_x_pos_reg[0]_i_1_n_13 ;
  wire \ball_x_pos_reg[0]_i_1_n_14 ;
  wire \ball_x_pos_reg[0]_i_1_n_15 ;
  wire \ball_x_pos_reg[0]_i_1_n_2 ;
  wire \ball_x_pos_reg[0]_i_1_n_3 ;
  wire \ball_x_pos_reg[0]_i_1_n_4 ;
  wire \ball_x_pos_reg[0]_i_1_n_5 ;
  wire \ball_x_pos_reg[0]_i_1_n_6 ;
  wire \ball_x_pos_reg[0]_i_1_n_7 ;
  wire \ball_x_pos_reg[0]_i_1_n_8 ;
  wire \ball_x_pos_reg[0]_i_1_n_9 ;
  wire \ball_x_pos_reg[16]_i_1_n_1 ;
  wire \ball_x_pos_reg[16]_i_1_n_10 ;
  wire \ball_x_pos_reg[16]_i_1_n_11 ;
  wire \ball_x_pos_reg[16]_i_1_n_12 ;
  wire \ball_x_pos_reg[16]_i_1_n_13 ;
  wire \ball_x_pos_reg[16]_i_1_n_14 ;
  wire \ball_x_pos_reg[16]_i_1_n_15 ;
  wire \ball_x_pos_reg[16]_i_1_n_2 ;
  wire \ball_x_pos_reg[16]_i_1_n_3 ;
  wire \ball_x_pos_reg[16]_i_1_n_4 ;
  wire \ball_x_pos_reg[16]_i_1_n_5 ;
  wire \ball_x_pos_reg[16]_i_1_n_6 ;
  wire \ball_x_pos_reg[16]_i_1_n_7 ;
  wire \ball_x_pos_reg[16]_i_1_n_8 ;
  wire \ball_x_pos_reg[16]_i_1_n_9 ;
  wire \ball_x_pos_reg[8]_i_1_n_0 ;
  wire \ball_x_pos_reg[8]_i_1_n_1 ;
  wire \ball_x_pos_reg[8]_i_1_n_10 ;
  wire \ball_x_pos_reg[8]_i_1_n_11 ;
  wire \ball_x_pos_reg[8]_i_1_n_12 ;
  wire \ball_x_pos_reg[8]_i_1_n_13 ;
  wire \ball_x_pos_reg[8]_i_1_n_14 ;
  wire \ball_x_pos_reg[8]_i_1_n_15 ;
  wire \ball_x_pos_reg[8]_i_1_n_2 ;
  wire \ball_x_pos_reg[8]_i_1_n_3 ;
  wire \ball_x_pos_reg[8]_i_1_n_4 ;
  wire \ball_x_pos_reg[8]_i_1_n_5 ;
  wire \ball_x_pos_reg[8]_i_1_n_6 ;
  wire \ball_x_pos_reg[8]_i_1_n_7 ;
  wire \ball_x_pos_reg[8]_i_1_n_8 ;
  wire \ball_x_pos_reg[8]_i_1_n_9 ;
  wire \ball_x_pos_reg_n_0_[0] ;
  wire \ball_x_pos_reg_n_0_[1] ;
  wire \ball_x_pos_reg_n_0_[2] ;
  wire \ball_x_pos_reg_n_0_[3] ;
  wire \ball_x_pos_reg_n_0_[4] ;
  wire \ball_x_pos_reg_n_0_[5] ;
  wire \ball_x_pos_reg_n_0_[6] ;
  wire \ball_x_pos_reg_n_0_[7] ;
  wire ball_y_dir1;
  wire \ball_y_dir[0]_i_1_n_0 ;
  wire \ball_y_dir[11]_i_10_n_0 ;
  wire \ball_y_dir[11]_i_2_n_0 ;
  wire \ball_y_dir[11]_i_3_n_0 ;
  wire \ball_y_dir[11]_i_5_n_0 ;
  wire \ball_y_dir[11]_i_7_n_0 ;
  wire \ball_y_dir[11]_i_8_n_0 ;
  wire \ball_y_dir[11]_i_9_n_0 ;
  wire \ball_y_dir[1]_i_1_n_0 ;
  wire \ball_y_dir[2]_i_1_n_0 ;
  wire \ball_y_dir[3]_i_1_n_0 ;
  wire \ball_y_dir[4]_i_1_n_0 ;
  wire \ball_y_dir[5]_i_1_n_0 ;
  wire \ball_y_dir[6]_i_1_n_0 ;
  wire \ball_y_dir[7]_i_1_n_0 ;
  wire \ball_y_dir[8]_i_1_n_0 ;
  wire \ball_y_dir[9]_i_1_n_0 ;
  wire [11:0]ball_y_dir__0;
  wire \ball_y_pos[0]_i_10_n_0 ;
  wire \ball_y_pos[0]_i_3_n_0 ;
  wire \ball_y_pos[0]_i_4_n_0 ;
  wire \ball_y_pos[0]_i_5_n_0 ;
  wire \ball_y_pos[0]_i_6_n_0 ;
  wire \ball_y_pos[0]_i_7_n_0 ;
  wire \ball_y_pos[0]_i_8_n_0 ;
  wire \ball_y_pos[0]_i_9_n_0 ;
  wire \ball_y_pos[16]_i_2_n_0 ;
  wire \ball_y_pos[16]_i_3_n_0 ;
  wire \ball_y_pos[16]_i_4_n_0 ;
  wire \ball_y_pos[16]_i_5_n_0 ;
  wire \ball_y_pos[16]_i_6_n_0 ;
  wire \ball_y_pos[16]_i_7_n_0 ;
  wire \ball_y_pos[16]_i_8_n_0 ;
  wire \ball_y_pos[16]_i_9_n_0 ;
  wire \ball_y_pos[8]_i_2_n_0 ;
  wire \ball_y_pos[8]_i_3_n_0 ;
  wire \ball_y_pos[8]_i_4_n_0 ;
  wire \ball_y_pos[8]_i_5_n_0 ;
  wire \ball_y_pos[8]_i_6_n_0 ;
  wire \ball_y_pos[8]_i_7_n_0 ;
  wire \ball_y_pos[8]_i_8_n_0 ;
  wire \ball_y_pos[8]_i_9_n_0 ;
  wire [23:8]ball_y_pos_reg;
  wire \ball_y_pos_reg[0]_i_2_n_0 ;
  wire \ball_y_pos_reg[0]_i_2_n_1 ;
  wire \ball_y_pos_reg[0]_i_2_n_10 ;
  wire \ball_y_pos_reg[0]_i_2_n_11 ;
  wire \ball_y_pos_reg[0]_i_2_n_12 ;
  wire \ball_y_pos_reg[0]_i_2_n_13 ;
  wire \ball_y_pos_reg[0]_i_2_n_14 ;
  wire \ball_y_pos_reg[0]_i_2_n_15 ;
  wire \ball_y_pos_reg[0]_i_2_n_2 ;
  wire \ball_y_pos_reg[0]_i_2_n_3 ;
  wire \ball_y_pos_reg[0]_i_2_n_4 ;
  wire \ball_y_pos_reg[0]_i_2_n_5 ;
  wire \ball_y_pos_reg[0]_i_2_n_6 ;
  wire \ball_y_pos_reg[0]_i_2_n_7 ;
  wire \ball_y_pos_reg[0]_i_2_n_8 ;
  wire \ball_y_pos_reg[0]_i_2_n_9 ;
  wire \ball_y_pos_reg[16]_i_1_n_1 ;
  wire \ball_y_pos_reg[16]_i_1_n_10 ;
  wire \ball_y_pos_reg[16]_i_1_n_11 ;
  wire \ball_y_pos_reg[16]_i_1_n_12 ;
  wire \ball_y_pos_reg[16]_i_1_n_13 ;
  wire \ball_y_pos_reg[16]_i_1_n_14 ;
  wire \ball_y_pos_reg[16]_i_1_n_15 ;
  wire \ball_y_pos_reg[16]_i_1_n_2 ;
  wire \ball_y_pos_reg[16]_i_1_n_3 ;
  wire \ball_y_pos_reg[16]_i_1_n_4 ;
  wire \ball_y_pos_reg[16]_i_1_n_5 ;
  wire \ball_y_pos_reg[16]_i_1_n_6 ;
  wire \ball_y_pos_reg[16]_i_1_n_7 ;
  wire \ball_y_pos_reg[16]_i_1_n_8 ;
  wire \ball_y_pos_reg[16]_i_1_n_9 ;
  wire \ball_y_pos_reg[8]_i_1_n_0 ;
  wire \ball_y_pos_reg[8]_i_1_n_1 ;
  wire \ball_y_pos_reg[8]_i_1_n_10 ;
  wire \ball_y_pos_reg[8]_i_1_n_11 ;
  wire \ball_y_pos_reg[8]_i_1_n_12 ;
  wire \ball_y_pos_reg[8]_i_1_n_13 ;
  wire \ball_y_pos_reg[8]_i_1_n_14 ;
  wire \ball_y_pos_reg[8]_i_1_n_15 ;
  wire \ball_y_pos_reg[8]_i_1_n_2 ;
  wire \ball_y_pos_reg[8]_i_1_n_3 ;
  wire \ball_y_pos_reg[8]_i_1_n_4 ;
  wire \ball_y_pos_reg[8]_i_1_n_5 ;
  wire \ball_y_pos_reg[8]_i_1_n_6 ;
  wire \ball_y_pos_reg[8]_i_1_n_7 ;
  wire \ball_y_pos_reg[8]_i_1_n_8 ;
  wire \ball_y_pos_reg[8]_i_1_n_9 ;
  wire \ball_y_pos_reg_n_0_[0] ;
  wire \ball_y_pos_reg_n_0_[1] ;
  wire \ball_y_pos_reg_n_0_[2] ;
  wire \ball_y_pos_reg_n_0_[3] ;
  wire \ball_y_pos_reg_n_0_[4] ;
  wire \ball_y_pos_reg_n_0_[5] ;
  wire \ball_y_pos_reg_n_0_[6] ;
  wire \ball_y_pos_reg_n_0_[7] ;
  wire clear;
  wire clk_dot;
  wire color_3b;
  wire [15:9]data3;
  wire \demo_mode[0]_i_1_n_0 ;
  wire \demo_mode_reg_n_0_[0] ;
  wire dir_chg_sr__0;
  wire \dir_chg_sr_reg_n_0_[0] ;
  wire \dir_chg_sr_reg_n_0_[1] ;
  wire \dir_chg_sr_reg_n_0_[2] ;
  wire \dir_chg_sr_reg_n_0_[3] ;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire line_rgb;
  wire \line_rgb[22]_i_2_n_0 ;
  wire \line_rgb[22]_i_3_n_0 ;
  wire \line_rgb[22]_i_5_n_0 ;
  wire \line_rgb[22]_i_6_n_0 ;
  wire \line_rgb[22]_i_7_n_0 ;
  wire \line_rgb[22]_i_8_n_0 ;
  wire \line_rgb[22]_i_9_n_0 ;
  wire \line_rgb_reg_n_0_[0] ;
  wire \line_rgb_reg_n_0_[10] ;
  wire \line_rgb_reg_n_0_[11] ;
  wire \line_rgb_reg_n_0_[12] ;
  wire \line_rgb_reg_n_0_[13] ;
  wire \line_rgb_reg_n_0_[14] ;
  wire \line_rgb_reg_n_0_[15] ;
  wire \line_rgb_reg_n_0_[16] ;
  wire \line_rgb_reg_n_0_[17] ;
  wire \line_rgb_reg_n_0_[18] ;
  wire \line_rgb_reg_n_0_[19] ;
  wire \line_rgb_reg_n_0_[1] ;
  wire \line_rgb_reg_n_0_[20] ;
  wire \line_rgb_reg_n_0_[21] ;
  wire \line_rgb_reg_n_0_[22] ;
  wire \line_rgb_reg_n_0_[2] ;
  wire \line_rgb_reg_n_0_[3] ;
  wire \line_rgb_reg_n_0_[4] ;
  wire \line_rgb_reg_n_0_[5] ;
  wire \line_rgb_reg_n_0_[6] ;
  wire \line_rgb_reg_n_0_[7] ;
  wire \line_rgb_reg_n_0_[8] ;
  wire \line_rgb_reg_n_0_[9] ;
  wire [15:1]line_x_pos0;
  wire line_x_pos0_carry__0_i_1_n_0;
  wire line_x_pos0_carry__0_i_2_n_0;
  wire line_x_pos0_carry__0_i_3_n_0;
  wire line_x_pos0_carry__0_i_4_n_0;
  wire line_x_pos0_carry__0_i_5_n_0;
  wire line_x_pos0_carry__0_i_6_n_0;
  wire line_x_pos0_carry__0_i_7_n_0;
  wire line_x_pos0_carry__0_n_2;
  wire line_x_pos0_carry__0_n_3;
  wire line_x_pos0_carry__0_n_4;
  wire line_x_pos0_carry__0_n_5;
  wire line_x_pos0_carry__0_n_6;
  wire line_x_pos0_carry__0_n_7;
  wire line_x_pos0_carry_i_1_n_0;
  wire line_x_pos0_carry_i_2_n_0;
  wire line_x_pos0_carry_i_3_n_0;
  wire line_x_pos0_carry_i_4_n_0;
  wire line_x_pos0_carry_i_6_n_0;
  wire line_x_pos0_carry_i_7_n_0;
  wire line_x_pos0_carry_i_8_n_0;
  wire line_x_pos0_carry_n_0;
  wire line_x_pos0_carry_n_1;
  wire line_x_pos0_carry_n_2;
  wire line_x_pos0_carry_n_3;
  wire line_x_pos0_carry_n_4;
  wire line_x_pos0_carry_n_5;
  wire line_x_pos0_carry_n_6;
  wire line_x_pos0_carry_n_7;
  wire \line_x_pos[0]_i_1_n_0 ;
  wire [15:0]line_x_pos_reg;
  wire [15:1]line_y_pos0;
  wire line_y_pos0_carry__0_i_1_n_0;
  wire line_y_pos0_carry__0_i_2_n_0;
  wire line_y_pos0_carry__0_i_3_n_0;
  wire line_y_pos0_carry__0_i_4_n_0;
  wire line_y_pos0_carry__0_i_5_n_0;
  wire line_y_pos0_carry__0_i_6_n_0;
  wire line_y_pos0_carry__0_i_7_n_0;
  wire line_y_pos0_carry__0_n_2;
  wire line_y_pos0_carry__0_n_3;
  wire line_y_pos0_carry__0_n_4;
  wire line_y_pos0_carry__0_n_5;
  wire line_y_pos0_carry__0_n_6;
  wire line_y_pos0_carry__0_n_7;
  wire line_y_pos0_carry_i_1_n_0;
  wire line_y_pos0_carry_i_2_n_0;
  wire line_y_pos0_carry_i_3_n_0;
  wire line_y_pos0_carry_i_4_n_0;
  wire line_y_pos0_carry_i_5_n_0;
  wire line_y_pos0_carry_i_6_n_0;
  wire line_y_pos0_carry_i_7_n_0;
  wire line_y_pos0_carry_i_8_n_0;
  wire line_y_pos0_carry_n_0;
  wire line_y_pos0_carry_n_1;
  wire line_y_pos0_carry_n_2;
  wire line_y_pos0_carry_n_3;
  wire line_y_pos0_carry_n_4;
  wire line_y_pos0_carry_n_5;
  wire line_y_pos0_carry_n_6;
  wire line_y_pos0_carry_n_7;
  wire \line_y_pos[0]_i_1_n_0 ;
  wire [15:0]line_y_pos_reg;
  wire mode_bit;
  wire mode_bit_p1;
  wire [15:0]p_0_in;
  wire [23:1]p_0_out;
  wire p_1_in;
  wire p_1_out_carry__0_i_10_n_0;
  wire p_1_out_carry__0_i_11_n_0;
  wire p_1_out_carry__0_i_12_n_0;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry__0_i_5_n_0;
  wire p_1_out_carry__0_i_6_n_0;
  wire p_1_out_carry__0_i_7_n_0;
  wire p_1_out_carry__0_i_8_n_0;
  wire p_1_out_carry__0_i_9_n_0;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__0_n_4;
  wire p_1_out_carry__0_n_5;
  wire p_1_out_carry__0_n_6;
  wire p_1_out_carry__0_n_7;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_i_5_n_0;
  wire p_1_out_carry_i_6_n_0;
  wire p_1_out_carry_i_7_n_0;
  wire p_1_out_carry_i_8_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_1_out_carry_n_4;
  wire p_1_out_carry_n_5;
  wire p_1_out_carry_n_6;
  wire p_1_out_carry_n_7;
  wire \p_1_out_inferred__0/i__carry__0_n_0 ;
  wire \p_1_out_inferred__0/i__carry__0_n_1 ;
  wire \p_1_out_inferred__0/i__carry__0_n_2 ;
  wire \p_1_out_inferred__0/i__carry__0_n_3 ;
  wire \p_1_out_inferred__0/i__carry__0_n_4 ;
  wire \p_1_out_inferred__0/i__carry__0_n_5 ;
  wire \p_1_out_inferred__0/i__carry__0_n_6 ;
  wire \p_1_out_inferred__0/i__carry__0_n_7 ;
  wire \p_1_out_inferred__0/i__carry_n_0 ;
  wire \p_1_out_inferred__0/i__carry_n_1 ;
  wire \p_1_out_inferred__0/i__carry_n_2 ;
  wire \p_1_out_inferred__0/i__carry_n_3 ;
  wire \p_1_out_inferred__0/i__carry_n_4 ;
  wire \p_1_out_inferred__0/i__carry_n_5 ;
  wire \p_1_out_inferred__0/i__carry_n_6 ;
  wire \p_1_out_inferred__0/i__carry_n_7 ;
  wire [23:0]random_num;
  wire reset;
  wire [2:0]sel0;
  wire [15:0]u0_pel_x;
  wire \u0_pel_x[10]_i_2_n_0 ;
  wire \u0_pel_x[14]_i_2_n_0 ;
  wire \u0_pel_x[15]_i_2_n_0 ;
  wire \u0_pel_x[15]_i_3_n_0 ;
  wire \u0_pel_x[15]_i_4_n_0 ;
  wire \u0_pel_x[15]_i_5_n_0 ;
  wire \u0_pel_x[5]_i_2_n_0 ;
  wire \u0_pel_x[9]_i_2_n_0 ;
  wire \u0_pel_x_reg_n_0_[10] ;
  wire \u0_pel_x_reg_n_0_[11] ;
  wire \u0_pel_x_reg_n_0_[12] ;
  wire \u0_pel_x_reg_n_0_[13] ;
  wire \u0_pel_x_reg_n_0_[14] ;
  wire \u0_pel_x_reg_n_0_[15] ;
  wire [15:0]u0_pel_y;
  wire \u0_pel_y[10]_i_2_n_0 ;
  wire \u0_pel_y[14]_i_2_n_0 ;
  wire \u0_pel_y[15]_i_2_n_0 ;
  wire \u0_pel_y[15]_i_3_n_0 ;
  wire \u0_pel_y[15]_i_4_n_0 ;
  wire \u0_pel_y[15]_i_5_n_0 ;
  wire \u0_pel_y[5]_i_2_n_0 ;
  wire \u0_pel_y[9]_i_2_n_0 ;
  wire \u0_pel_y_reg_n_0_[0] ;
  wire \u0_pel_y_reg_n_0_[10] ;
  wire \u0_pel_y_reg_n_0_[11] ;
  wire \u0_pel_y_reg_n_0_[12] ;
  wire \u0_pel_y_reg_n_0_[13] ;
  wire \u0_pel_y_reg_n_0_[14] ;
  wire \u0_pel_y_reg_n_0_[15] ;
  wire \u0_pel_y_reg_n_0_[1] ;
  wire \u0_pel_y_reg_n_0_[2] ;
  wire \u0_pel_y_reg_n_0_[3] ;
  wire \u0_pel_y_reg_n_0_[4] ;
  wire \u0_pel_y_reg_n_0_[5] ;
  wire \u0_pel_y_reg_n_0_[6] ;
  wire \u0_pel_y_reg_n_0_[7] ;
  wire \u0_pel_y_reg_n_0_[8] ;
  wire \u0_pel_y_reg_n_0_[9] ;
  wire u0_vga_timing_n_0;
  wire u0_vga_timing_n_2;
  wire u0_vga_timing_n_3;
  wire u0_vga_timing_n_4;
  wire u0_vga_timing_n_5;
  wire u0_vga_timing_n_6;
  wire u0_vga_timing_n_7;
  wire u0_vid_new_frame;
  wire u0_vid_new_line;
  wire vga_active;
  wire vga_hsync;
  wire [23:0]vga_pixel_rgb;
  wire vga_rgb1;
  wire \vga_rgb[0]_i_1_n_0 ;
  wire \vga_rgb[10]_i_1_n_0 ;
  wire \vga_rgb[11]_i_1_n_0 ;
  wire \vga_rgb[12]_i_1_n_0 ;
  wire \vga_rgb[13]_i_1_n_0 ;
  wire \vga_rgb[14]_i_1_n_0 ;
  wire \vga_rgb[14]_i_2_n_0 ;
  wire \vga_rgb[15]_i_1_n_0 ;
  wire \vga_rgb[16]_i_1_n_0 ;
  wire \vga_rgb[17]_i_1_n_0 ;
  wire \vga_rgb[18]_i_1_n_0 ;
  wire \vga_rgb[19]_i_1_n_0 ;
  wire \vga_rgb[1]_i_1_n_0 ;
  wire \vga_rgb[20]_i_1_n_0 ;
  wire \vga_rgb[21]_i_1_n_0 ;
  wire \vga_rgb[22]_i_1_n_0 ;
  wire \vga_rgb[22]_i_2_n_0 ;
  wire \vga_rgb[23]_i_1_n_0 ;
  wire \vga_rgb[2]_i_1_n_0 ;
  wire \vga_rgb[3]_i_1_n_0 ;
  wire \vga_rgb[4]_i_1_n_0 ;
  wire \vga_rgb[5]_i_1_n_0 ;
  wire \vga_rgb[6]_i_1_n_0 ;
  wire \vga_rgb[6]_i_2_n_0 ;
  wire \vga_rgb[7]_i_1_n_0 ;
  wire \vga_rgb[8]_i_1_n_0 ;
  wire \vga_rgb[9]_i_1_n_0 ;
  wire [23:0]vga_rgb_ball;
  wire vga_rgb_ball1;
  wire vga_rgb_ball3;
  wire vga_rgb_ball3_carry_i_10_n_0;
  wire vga_rgb_ball3_carry_i_11_n_0;
  wire vga_rgb_ball3_carry_i_12_n_0;
  wire vga_rgb_ball3_carry_i_13_n_0;
  wire vga_rgb_ball3_carry_i_14_n_0;
  wire vga_rgb_ball3_carry_i_15_n_0;
  wire vga_rgb_ball3_carry_i_16_n_0;
  wire vga_rgb_ball3_carry_i_17_n_0;
  wire vga_rgb_ball3_carry_i_18_n_0;
  wire vga_rgb_ball3_carry_i_19_n_0;
  wire vga_rgb_ball3_carry_i_1_n_0;
  wire vga_rgb_ball3_carry_i_20_n_0;
  wire vga_rgb_ball3_carry_i_21_n_0;
  wire vga_rgb_ball3_carry_i_22_n_0;
  wire vga_rgb_ball3_carry_i_2_n_0;
  wire vga_rgb_ball3_carry_i_3_n_0;
  wire vga_rgb_ball3_carry_i_4_n_0;
  wire vga_rgb_ball3_carry_i_5_n_0;
  wire vga_rgb_ball3_carry_i_6_n_0;
  wire vga_rgb_ball3_carry_i_7_n_0;
  wire vga_rgb_ball3_carry_i_8_n_0;
  wire vga_rgb_ball3_carry_i_9_n_0;
  wire vga_rgb_ball3_carry_n_1;
  wire vga_rgb_ball3_carry_n_2;
  wire vga_rgb_ball3_carry_n_3;
  wire vga_rgb_ball3_carry_n_4;
  wire vga_rgb_ball3_carry_n_5;
  wire vga_rgb_ball3_carry_n_6;
  wire vga_rgb_ball3_carry_n_7;
  wire vga_rgb_ball40_in;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_1 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_2 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_3 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_4 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_5 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_6 ;
  wire \vga_rgb_ball4_inferred__0/i__carry_n_7 ;
  wire \vga_rgb_ball[22]_i_1_n_0 ;
  wire vga_rgb_line1;
  wire [15:15]vga_rgb_line4__29;
  wire [4:4]vga_rgb_line5;
  wire [15:15]vga_rgb_line52_in;
  wire \vga_rgb_line[22]_i_1_n_0 ;
  wire \vga_rgb_line[23]_i_10_n_0 ;
  wire \vga_rgb_line[23]_i_12_n_0 ;
  wire \vga_rgb_line[23]_i_13_n_0 ;
  wire \vga_rgb_line[23]_i_14_n_0 ;
  wire \vga_rgb_line[23]_i_15_n_0 ;
  wire \vga_rgb_line[23]_i_16_n_0 ;
  wire \vga_rgb_line[23]_i_17_n_0 ;
  wire \vga_rgb_line[23]_i_18_n_0 ;
  wire \vga_rgb_line[23]_i_19_n_0 ;
  wire \vga_rgb_line[23]_i_20_n_0 ;
  wire \vga_rgb_line[23]_i_21_n_0 ;
  wire \vga_rgb_line[23]_i_23_n_0 ;
  wire \vga_rgb_line[23]_i_24_n_0 ;
  wire \vga_rgb_line[23]_i_25_n_0 ;
  wire \vga_rgb_line[23]_i_26_n_0 ;
  wire \vga_rgb_line[23]_i_27_n_0 ;
  wire \vga_rgb_line[23]_i_28_n_0 ;
  wire \vga_rgb_line[23]_i_29_n_0 ;
  wire \vga_rgb_line[23]_i_2_n_0 ;
  wire \vga_rgb_line[23]_i_30_n_0 ;
  wire \vga_rgb_line[23]_i_31_n_0 ;
  wire \vga_rgb_line[23]_i_32_n_0 ;
  wire \vga_rgb_line[23]_i_33_n_0 ;
  wire \vga_rgb_line[23]_i_34_n_0 ;
  wire \vga_rgb_line[23]_i_35_n_0 ;
  wire \vga_rgb_line[23]_i_36_n_0 ;
  wire \vga_rgb_line[23]_i_37_n_0 ;
  wire \vga_rgb_line[23]_i_38_n_0 ;
  wire \vga_rgb_line[23]_i_39_n_0 ;
  wire \vga_rgb_line[23]_i_3_n_0 ;
  wire \vga_rgb_line[23]_i_40_n_0 ;
  wire \vga_rgb_line[23]_i_41_n_0 ;
  wire \vga_rgb_line[23]_i_42_n_0 ;
  wire \vga_rgb_line[23]_i_43_n_0 ;
  wire \vga_rgb_line[23]_i_44_n_0 ;
  wire \vga_rgb_line[23]_i_45_n_0 ;
  wire \vga_rgb_line[23]_i_46_n_0 ;
  wire \vga_rgb_line[23]_i_47_n_0 ;
  wire \vga_rgb_line[23]_i_48_n_0 ;
  wire \vga_rgb_line[23]_i_49_n_0 ;
  wire \vga_rgb_line[23]_i_4_n_0 ;
  wire \vga_rgb_line[23]_i_50_n_0 ;
  wire \vga_rgb_line[23]_i_51_n_0 ;
  wire \vga_rgb_line[23]_i_52_n_0 ;
  wire \vga_rgb_line[23]_i_53_n_0 ;
  wire \vga_rgb_line[23]_i_54_n_0 ;
  wire \vga_rgb_line[23]_i_55_n_0 ;
  wire \vga_rgb_line[23]_i_56_n_0 ;
  wire \vga_rgb_line[23]_i_57_n_0 ;
  wire \vga_rgb_line[23]_i_58_n_0 ;
  wire \vga_rgb_line[23]_i_59_n_0 ;
  wire \vga_rgb_line[23]_i_5_n_0 ;
  wire \vga_rgb_line[23]_i_60_n_0 ;
  wire \vga_rgb_line[23]_i_61_n_0 ;
  wire \vga_rgb_line[23]_i_62_n_0 ;
  wire \vga_rgb_line[23]_i_63_n_0 ;
  wire \vga_rgb_line[23]_i_64_n_0 ;
  wire \vga_rgb_line[23]_i_65_n_0 ;
  wire \vga_rgb_line[23]_i_66_n_0 ;
  wire \vga_rgb_line[23]_i_67_n_0 ;
  wire \vga_rgb_line[23]_i_68_n_0 ;
  wire \vga_rgb_line[23]_i_69_n_0 ;
  wire \vga_rgb_line[23]_i_6_n_0 ;
  wire \vga_rgb_line[23]_i_7_n_0 ;
  wire \vga_rgb_line[23]_i_8_n_0 ;
  wire \vga_rgb_line[23]_i_9_n_0 ;
  wire \vga_rgb_line_reg_n_0_[0] ;
  wire \vga_rgb_line_reg_n_0_[10] ;
  wire \vga_rgb_line_reg_n_0_[11] ;
  wire \vga_rgb_line_reg_n_0_[12] ;
  wire \vga_rgb_line_reg_n_0_[13] ;
  wire \vga_rgb_line_reg_n_0_[14] ;
  wire \vga_rgb_line_reg_n_0_[16] ;
  wire \vga_rgb_line_reg_n_0_[17] ;
  wire \vga_rgb_line_reg_n_0_[18] ;
  wire \vga_rgb_line_reg_n_0_[19] ;
  wire \vga_rgb_line_reg_n_0_[1] ;
  wire \vga_rgb_line_reg_n_0_[20] ;
  wire \vga_rgb_line_reg_n_0_[21] ;
  wire \vga_rgb_line_reg_n_0_[22] ;
  wire \vga_rgb_line_reg_n_0_[23] ;
  wire \vga_rgb_line_reg_n_0_[2] ;
  wire \vga_rgb_line_reg_n_0_[3] ;
  wire \vga_rgb_line_reg_n_0_[4] ;
  wire \vga_rgb_line_reg_n_0_[5] ;
  wire \vga_rgb_line_reg_n_0_[6] ;
  wire \vga_rgb_line_reg_n_0_[7] ;
  wire \vga_rgb_line_reg_n_0_[8] ;
  wire \vga_rgb_line_reg_n_0_[9] ;
  wire [23:1]vga_rgb_tp;
  wire \vga_rgb_tp[15]_i_1_n_0 ;
  wire \vga_rgb_tp[23]_i_1_n_0 ;
  wire \vga_rgb_tp[7]_i_1_n_0 ;
  wire vga_vsync;
  wire [7:7]\NLW_ball_x_pos_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_ball_y_pos_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:6]NLW_line_x_pos0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_line_x_pos0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_line_y_pos0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_line_y_pos0_carry__0_O_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry_O_UNCONNECTED;
  wire [7:0]NLW_p_1_out_carry__0_O_UNCONNECTED;
  wire [7:0]\NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:0]\NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:0]NLW_vga_rgb_ball3_carry_O_UNCONNECTED;
  wire [7:0]\NLW_vga_rgb_ball4_inferred__0/i__carry_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[0]),
        .Q(ball_rgb__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[10] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[10]),
        .Q(ball_rgb__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[11]),
        .Q(ball_rgb__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[12] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[12]),
        .Q(ball_rgb__0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[13] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[13]),
        .Q(ball_rgb__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[14] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[14]),
        .Q(ball_rgb__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[15] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[15]),
        .Q(ball_rgb__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[16] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[16]),
        .Q(ball_rgb__0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[17] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[17]),
        .Q(ball_rgb__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[18] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[18]),
        .Q(ball_rgb__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[19] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[19]),
        .Q(ball_rgb__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[1]),
        .Q(ball_rgb__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[20] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[20]),
        .Q(ball_rgb__0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[21] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[21]),
        .Q(ball_rgb__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[22] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[22]),
        .Q(ball_rgb__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[2]),
        .Q(ball_rgb__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[3]),
        .Q(ball_rgb__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[4]),
        .Q(ball_rgb__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[5]),
        .Q(ball_rgb__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[6]),
        .Q(ball_rgb__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[7]),
        .Q(ball_rgb__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[8]),
        .Q(ball_rgb__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_rgb_reg[9] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[9]),
        .Q(ball_rgb__0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[0]_i_1 
       (.I0(ball_x_dir__0[0]),
        .I1(mode_bit),
        .I2(random_num[2]),
        .O(\ball_x_dir[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x_dir[11]_i_2 
       (.I0(mode_bit),
        .I1(ball_x_dir__0[11]),
        .O(\ball_x_dir[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000020000)) 
    \ball_x_dir[11]_i_3 
       (.I0(\ball_x_dir[11]_i_4_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .I4(dir_chg_sr__0),
        .I5(ball_x_dir1),
        .O(\ball_x_dir[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ball_x_dir[11]_i_4 
       (.I0(p_0_in[12]),
        .I1(p_0_in[13]),
        .I2(p_0_in[14]),
        .I3(p_0_in[15]),
        .I4(\ball_x_dir[11]_i_6_n_0 ),
        .O(\ball_x_dir[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ball_x_dir[11]_i_5 
       (.I0(\ball_x_dir[11]_i_7_n_0 ),
        .I1(\ball_x_dir[11]_i_8_n_0 ),
        .I2(p_0_in[11]),
        .I3(p_0_in[12]),
        .O(ball_x_dir1));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ball_x_dir[11]_i_6 
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .O(\ball_x_dir[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ball_x_dir[11]_i_7 
       (.I0(p_0_in[13]),
        .I1(p_0_in[15]),
        .I2(p_0_in[10]),
        .I3(p_0_in[14]),
        .O(\ball_x_dir[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \ball_x_dir[11]_i_8 
       (.I0(p_0_in[9]),
        .I1(p_0_in[8]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[7]),
        .I5(\ball_x_dir[11]_i_9_n_0 ),
        .O(\ball_x_dir[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ball_x_dir[11]_i_9 
       (.I0(p_0_in[5]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[6]),
        .O(\ball_x_dir[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[1]_i_1 
       (.I0(ball_x_dir__0[1]),
        .I1(mode_bit),
        .I2(random_num[3]),
        .O(\ball_x_dir[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[2]_i_1 
       (.I0(ball_x_dir__0[2]),
        .I1(mode_bit),
        .I2(random_num[4]),
        .O(\ball_x_dir[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[3]_i_1 
       (.I0(ball_x_dir__0[3]),
        .I1(mode_bit),
        .I2(random_num[5]),
        .O(\ball_x_dir[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[4]_i_1 
       (.I0(ball_x_dir__0[4]),
        .I1(mode_bit),
        .I2(random_num[6]),
        .O(\ball_x_dir[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[5]_i_1 
       (.I0(ball_x_dir__0[5]),
        .I1(mode_bit),
        .I2(random_num[7]),
        .O(\ball_x_dir[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[6]_i_1 
       (.I0(ball_x_dir__0[6]),
        .I1(mode_bit),
        .I2(random_num[8]),
        .O(\ball_x_dir[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[7]_i_1 
       (.I0(ball_x_dir__0[7]),
        .I1(mode_bit),
        .I2(random_num[9]),
        .O(\ball_x_dir[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[8]_i_1 
       (.I0(ball_x_dir__0[8]),
        .I1(mode_bit),
        .I2(random_num[10]),
        .O(\ball_x_dir[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_x_dir[9]_i_1 
       (.I0(ball_x_dir__0[9]),
        .I1(mode_bit),
        .I2(random_num[11]),
        .O(\ball_x_dir[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[0]_i_1_n_0 ),
        .Q(ball_x_dir__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_2),
        .Q(ball_x_dir__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[11]_i_2_n_0 ),
        .Q(ball_x_dir__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[1]_i_1_n_0 ),
        .Q(ball_x_dir__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[2]_i_1_n_0 ),
        .Q(ball_x_dir__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[3]_i_1_n_0 ),
        .Q(ball_x_dir__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[4]_i_1_n_0 ),
        .Q(ball_x_dir__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[5]_i_1_n_0 ),
        .Q(ball_x_dir__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[6]_i_1_n_0 ),
        .Q(ball_x_dir__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[7]_i_1_n_0 ),
        .Q(ball_x_dir__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[8]_i_1_n_0 ),
        .Q(ball_x_dir__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_dir_reg[9] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[9]_i_1_n_0 ),
        .Q(ball_x_dir__0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_2 
       (.I0(ball_x_dir__0[7]),
        .I1(\ball_x_pos_reg_n_0_[7] ),
        .O(\ball_x_pos[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_3 
       (.I0(ball_x_dir__0[6]),
        .I1(\ball_x_pos_reg_n_0_[6] ),
        .O(\ball_x_pos[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_4 
       (.I0(ball_x_dir__0[5]),
        .I1(\ball_x_pos_reg_n_0_[5] ),
        .O(\ball_x_pos[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_5 
       (.I0(ball_x_dir__0[4]),
        .I1(\ball_x_pos_reg_n_0_[4] ),
        .O(\ball_x_pos[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_6 
       (.I0(ball_x_dir__0[3]),
        .I1(\ball_x_pos_reg_n_0_[3] ),
        .O(\ball_x_pos[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_7 
       (.I0(ball_x_dir__0[2]),
        .I1(\ball_x_pos_reg_n_0_[2] ),
        .O(\ball_x_pos[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_8 
       (.I0(ball_x_dir__0[1]),
        .I1(\ball_x_pos_reg_n_0_[1] ),
        .O(\ball_x_pos[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[0]_i_9 
       (.I0(ball_x_dir__0[0]),
        .I1(\ball_x_pos_reg_n_0_[0] ),
        .O(\ball_x_pos[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_2 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[15]),
        .O(\ball_x_pos[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_3 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[14]),
        .O(\ball_x_pos[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_4 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[13]),
        .O(\ball_x_pos[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_5 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[12]),
        .O(\ball_x_pos[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_6 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[11]),
        .O(\ball_x_pos[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_7 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[10]),
        .O(\ball_x_pos[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_8 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[9]),
        .O(\ball_x_pos[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[16]_i_9 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[8]),
        .O(\ball_x_pos[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_2 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[7]),
        .O(\ball_x_pos[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_3 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[6]),
        .O(\ball_x_pos[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_4 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[5]),
        .O(\ball_x_pos[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_5 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[4]),
        .O(\ball_x_pos[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_6 
       (.I0(ball_x_dir__0[11]),
        .I1(p_0_in[3]),
        .O(\ball_x_pos[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_7 
       (.I0(ball_x_dir__0[10]),
        .I1(p_0_in[2]),
        .O(\ball_x_pos[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_8 
       (.I0(ball_x_dir__0[9]),
        .I1(p_0_in[1]),
        .O(\ball_x_pos[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_x_pos[8]_i_9 
       (.I0(ball_x_dir__0[8]),
        .I1(p_0_in[0]),
        .O(\ball_x_pos[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_15 ),
        .Q(\ball_x_pos_reg_n_0_[0] ),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_x_pos_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ball_x_pos_reg[0]_i_1_n_0 ,\ball_x_pos_reg[0]_i_1_n_1 ,\ball_x_pos_reg[0]_i_1_n_2 ,\ball_x_pos_reg[0]_i_1_n_3 ,\ball_x_pos_reg[0]_i_1_n_4 ,\ball_x_pos_reg[0]_i_1_n_5 ,\ball_x_pos_reg[0]_i_1_n_6 ,\ball_x_pos_reg[0]_i_1_n_7 }),
        .DI(ball_x_dir__0[7:0]),
        .O({\ball_x_pos_reg[0]_i_1_n_8 ,\ball_x_pos_reg[0]_i_1_n_9 ,\ball_x_pos_reg[0]_i_1_n_10 ,\ball_x_pos_reg[0]_i_1_n_11 ,\ball_x_pos_reg[0]_i_1_n_12 ,\ball_x_pos_reg[0]_i_1_n_13 ,\ball_x_pos_reg[0]_i_1_n_14 ,\ball_x_pos_reg[0]_i_1_n_15 }),
        .S({\ball_x_pos[0]_i_2_n_0 ,\ball_x_pos[0]_i_3_n_0 ,\ball_x_pos[0]_i_4_n_0 ,\ball_x_pos[0]_i_5_n_0 ,\ball_x_pos[0]_i_6_n_0 ,\ball_x_pos[0]_i_7_n_0 ,\ball_x_pos[0]_i_8_n_0 ,\ball_x_pos[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_13 ),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_12 ),
        .Q(p_0_in[3]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_x_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_11 ),
        .Q(p_0_in[4]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_10 ),
        .Q(p_0_in[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_9 ),
        .Q(p_0_in[6]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_x_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_8 ),
        .Q(p_0_in[7]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[16] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_15 ),
        .Q(p_0_in[8]),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_x_pos_reg[16]_i_1 
       (.CI(\ball_x_pos_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ball_x_pos_reg[16]_i_1_CO_UNCONNECTED [7],\ball_x_pos_reg[16]_i_1_n_1 ,\ball_x_pos_reg[16]_i_1_n_2 ,\ball_x_pos_reg[16]_i_1_n_3 ,\ball_x_pos_reg[16]_i_1_n_4 ,\ball_x_pos_reg[16]_i_1_n_5 ,\ball_x_pos_reg[16]_i_1_n_6 ,\ball_x_pos_reg[16]_i_1_n_7 }),
        .DI({1'b0,ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11]}),
        .O({\ball_x_pos_reg[16]_i_1_n_8 ,\ball_x_pos_reg[16]_i_1_n_9 ,\ball_x_pos_reg[16]_i_1_n_10 ,\ball_x_pos_reg[16]_i_1_n_11 ,\ball_x_pos_reg[16]_i_1_n_12 ,\ball_x_pos_reg[16]_i_1_n_13 ,\ball_x_pos_reg[16]_i_1_n_14 ,\ball_x_pos_reg[16]_i_1_n_15 }),
        .S({\ball_x_pos[16]_i_2_n_0 ,\ball_x_pos[16]_i_3_n_0 ,\ball_x_pos[16]_i_4_n_0 ,\ball_x_pos[16]_i_5_n_0 ,\ball_x_pos[16]_i_6_n_0 ,\ball_x_pos[16]_i_7_n_0 ,\ball_x_pos[16]_i_8_n_0 ,\ball_x_pos[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[17] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_14 ),
        .Q(p_0_in[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[18] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_13 ),
        .Q(p_0_in[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[19] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_12 ),
        .Q(p_0_in[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_14 ),
        .Q(\ball_x_pos_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[20] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_11 ),
        .Q(p_0_in[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[21] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_10 ),
        .Q(p_0_in[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[22] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_9 ),
        .Q(p_0_in[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[23] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_8 ),
        .Q(p_0_in[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_13 ),
        .Q(\ball_x_pos_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_12 ),
        .Q(\ball_x_pos_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_11 ),
        .Q(\ball_x_pos_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_10 ),
        .Q(\ball_x_pos_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_9 ),
        .Q(\ball_x_pos_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_8 ),
        .Q(\ball_x_pos_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_15 ),
        .Q(p_0_in[0]),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_x_pos_reg[8]_i_1 
       (.CI(\ball_x_pos_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ball_x_pos_reg[8]_i_1_n_0 ,\ball_x_pos_reg[8]_i_1_n_1 ,\ball_x_pos_reg[8]_i_1_n_2 ,\ball_x_pos_reg[8]_i_1_n_3 ,\ball_x_pos_reg[8]_i_1_n_4 ,\ball_x_pos_reg[8]_i_1_n_5 ,\ball_x_pos_reg[8]_i_1_n_6 ,\ball_x_pos_reg[8]_i_1_n_7 }),
        .DI({ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11:8]}),
        .O({\ball_x_pos_reg[8]_i_1_n_8 ,\ball_x_pos_reg[8]_i_1_n_9 ,\ball_x_pos_reg[8]_i_1_n_10 ,\ball_x_pos_reg[8]_i_1_n_11 ,\ball_x_pos_reg[8]_i_1_n_12 ,\ball_x_pos_reg[8]_i_1_n_13 ,\ball_x_pos_reg[8]_i_1_n_14 ,\ball_x_pos_reg[8]_i_1_n_15 }),
        .S({\ball_x_pos[8]_i_2_n_0 ,\ball_x_pos[8]_i_3_n_0 ,\ball_x_pos[8]_i_4_n_0 ,\ball_x_pos[8]_i_5_n_0 ,\ball_x_pos[8]_i_6_n_0 ,\ball_x_pos[8]_i_7_n_0 ,\ball_x_pos[8]_i_8_n_0 ,\ball_x_pos[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_14 ),
        .Q(p_0_in[1]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[0]_i_1 
       (.I0(ball_y_dir__0[0]),
        .I1(mode_bit),
        .I2(random_num[14]),
        .O(\ball_y_dir[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8000)) 
    \ball_y_dir[11]_i_10 
       (.I0(ball_y_pos_reg[13]),
        .I1(ball_y_pos_reg[10]),
        .I2(ball_y_pos_reg[9]),
        .I3(ball_y_pos_reg[8]),
        .I4(ball_y_pos_reg[11]),
        .I5(ball_y_pos_reg[12]),
        .O(\ball_y_dir[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y_dir[11]_i_2 
       (.I0(mode_bit),
        .I1(ball_y_dir__0[11]),
        .O(\ball_y_dir[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0A0E0)) 
    \ball_y_dir[11]_i_3 
       (.I0(ball_y_dir1),
        .I1(\ball_y_dir[11]_i_5_n_0 ),
        .I2(dir_chg_sr__0),
        .I3(ball_y_pos_reg[13]),
        .I4(ball_y_pos_reg[14]),
        .I5(ball_y_pos_reg[15]),
        .O(\ball_y_dir[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ball_y_dir[11]_i_4 
       (.I0(ball_y_pos_reg[22]),
        .I1(ball_y_pos_reg[18]),
        .I2(ball_y_pos_reg[23]),
        .I3(ball_y_pos_reg[21]),
        .I4(\ball_y_dir[11]_i_7_n_0 ),
        .O(ball_y_dir1));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ball_y_dir[11]_i_5 
       (.I0(ball_y_pos_reg[20]),
        .I1(ball_y_pos_reg[21]),
        .I2(ball_y_pos_reg[22]),
        .I3(ball_y_pos_reg[23]),
        .I4(\ball_y_dir[11]_i_8_n_0 ),
        .O(\ball_y_dir[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ball_y_dir[11]_i_6 
       (.I0(\dir_chg_sr_reg_n_0_[1] ),
        .I1(\dir_chg_sr_reg_n_0_[0] ),
        .I2(\dir_chg_sr_reg_n_0_[3] ),
        .I3(\dir_chg_sr_reg_n_0_[2] ),
        .O(dir_chg_sr__0));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    \ball_y_dir[11]_i_7 
       (.I0(ball_y_pos_reg[20]),
        .I1(ball_y_pos_reg[19]),
        .I2(\ball_y_dir[11]_i_9_n_0 ),
        .I3(ball_y_pos_reg[16]),
        .I4(\ball_y_dir[11]_i_10_n_0 ),
        .I5(ball_y_pos_reg[17]),
        .O(\ball_y_dir[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ball_y_dir[11]_i_8 
       (.I0(ball_y_pos_reg[19]),
        .I1(ball_y_pos_reg[18]),
        .I2(ball_y_pos_reg[17]),
        .I3(ball_y_pos_reg[16]),
        .O(\ball_y_dir[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ball_y_dir[11]_i_9 
       (.I0(ball_y_pos_reg[14]),
        .I1(ball_y_pos_reg[15]),
        .O(\ball_y_dir[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[1]_i_1 
       (.I0(ball_y_dir__0[1]),
        .I1(mode_bit),
        .I2(random_num[15]),
        .O(\ball_y_dir[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[2]_i_1 
       (.I0(ball_y_dir__0[2]),
        .I1(mode_bit),
        .I2(random_num[16]),
        .O(\ball_y_dir[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[3]_i_1 
       (.I0(ball_y_dir__0[3]),
        .I1(mode_bit),
        .I2(random_num[17]),
        .O(\ball_y_dir[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[4]_i_1 
       (.I0(ball_y_dir__0[4]),
        .I1(mode_bit),
        .I2(random_num[18]),
        .O(\ball_y_dir[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[5]_i_1 
       (.I0(ball_y_dir__0[5]),
        .I1(mode_bit),
        .I2(random_num[19]),
        .O(\ball_y_dir[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[6]_i_1 
       (.I0(ball_y_dir__0[6]),
        .I1(mode_bit),
        .I2(random_num[20]),
        .O(\ball_y_dir[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[7]_i_1 
       (.I0(ball_y_dir__0[7]),
        .I1(mode_bit),
        .I2(random_num[21]),
        .O(\ball_y_dir[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[8]_i_1 
       (.I0(ball_y_dir__0[8]),
        .I1(mode_bit),
        .I2(random_num[22]),
        .O(\ball_y_dir[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \ball_y_dir[9]_i_1 
       (.I0(ball_y_dir__0[9]),
        .I1(mode_bit),
        .I2(random_num[23]),
        .O(\ball_y_dir[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[0]_i_1_n_0 ),
        .Q(ball_y_dir__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_0),
        .Q(ball_y_dir__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[11]_i_2_n_0 ),
        .Q(ball_y_dir__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[1]_i_1_n_0 ),
        .Q(ball_y_dir__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[2]_i_1_n_0 ),
        .Q(ball_y_dir__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[3]_i_1_n_0 ),
        .Q(ball_y_dir__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[4]_i_1_n_0 ),
        .Q(ball_y_dir__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[5]_i_1_n_0 ),
        .Q(ball_y_dir__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[6]_i_1_n_0 ),
        .Q(ball_y_dir__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[7]_i_1_n_0 ),
        .Q(ball_y_dir__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[8]_i_1_n_0 ),
        .Q(ball_y_dir__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_dir_reg[9] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[9]_i_1_n_0 ),
        .Q(ball_y_dir__0[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_y_pos[0]_i_1 
       (.I0(mode_bit),
        .O(clear));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_10 
       (.I0(ball_y_dir__0[0]),
        .I1(\ball_y_pos_reg_n_0_[0] ),
        .O(\ball_y_pos[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_3 
       (.I0(ball_y_dir__0[7]),
        .I1(\ball_y_pos_reg_n_0_[7] ),
        .O(\ball_y_pos[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_4 
       (.I0(ball_y_dir__0[6]),
        .I1(\ball_y_pos_reg_n_0_[6] ),
        .O(\ball_y_pos[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_5 
       (.I0(ball_y_dir__0[5]),
        .I1(\ball_y_pos_reg_n_0_[5] ),
        .O(\ball_y_pos[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_6 
       (.I0(ball_y_dir__0[4]),
        .I1(\ball_y_pos_reg_n_0_[4] ),
        .O(\ball_y_pos[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_7 
       (.I0(ball_y_dir__0[3]),
        .I1(\ball_y_pos_reg_n_0_[3] ),
        .O(\ball_y_pos[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_8 
       (.I0(ball_y_dir__0[2]),
        .I1(\ball_y_pos_reg_n_0_[2] ),
        .O(\ball_y_pos[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[0]_i_9 
       (.I0(ball_y_dir__0[1]),
        .I1(\ball_y_pos_reg_n_0_[1] ),
        .O(\ball_y_pos[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_2 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[23]),
        .O(\ball_y_pos[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_3 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[22]),
        .O(\ball_y_pos[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_4 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[21]),
        .O(\ball_y_pos[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_5 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[20]),
        .O(\ball_y_pos[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_6 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[19]),
        .O(\ball_y_pos[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_7 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[18]),
        .O(\ball_y_pos[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_8 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[17]),
        .O(\ball_y_pos[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[16]_i_9 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[16]),
        .O(\ball_y_pos[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_2 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[15]),
        .O(\ball_y_pos[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_3 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[14]),
        .O(\ball_y_pos[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_4 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[13]),
        .O(\ball_y_pos[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_5 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[12]),
        .O(\ball_y_pos[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_6 
       (.I0(ball_y_dir__0[11]),
        .I1(ball_y_pos_reg[11]),
        .O(\ball_y_pos[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_7 
       (.I0(ball_y_dir__0[10]),
        .I1(ball_y_pos_reg[10]),
        .O(\ball_y_pos[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_8 
       (.I0(ball_y_dir__0[9]),
        .I1(ball_y_pos_reg[9]),
        .O(\ball_y_pos[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ball_y_pos[8]_i_9 
       (.I0(ball_y_dir__0[8]),
        .I1(ball_y_pos_reg[8]),
        .O(\ball_y_pos[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_15 ),
        .Q(\ball_y_pos_reg_n_0_[0] ),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_y_pos_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ball_y_pos_reg[0]_i_2_n_0 ,\ball_y_pos_reg[0]_i_2_n_1 ,\ball_y_pos_reg[0]_i_2_n_2 ,\ball_y_pos_reg[0]_i_2_n_3 ,\ball_y_pos_reg[0]_i_2_n_4 ,\ball_y_pos_reg[0]_i_2_n_5 ,\ball_y_pos_reg[0]_i_2_n_6 ,\ball_y_pos_reg[0]_i_2_n_7 }),
        .DI(ball_y_dir__0[7:0]),
        .O({\ball_y_pos_reg[0]_i_2_n_8 ,\ball_y_pos_reg[0]_i_2_n_9 ,\ball_y_pos_reg[0]_i_2_n_10 ,\ball_y_pos_reg[0]_i_2_n_11 ,\ball_y_pos_reg[0]_i_2_n_12 ,\ball_y_pos_reg[0]_i_2_n_13 ,\ball_y_pos_reg[0]_i_2_n_14 ,\ball_y_pos_reg[0]_i_2_n_15 }),
        .S({\ball_y_pos[0]_i_3_n_0 ,\ball_y_pos[0]_i_4_n_0 ,\ball_y_pos[0]_i_5_n_0 ,\ball_y_pos[0]_i_6_n_0 ,\ball_y_pos[0]_i_7_n_0 ,\ball_y_pos[0]_i_8_n_0 ,\ball_y_pos[0]_i_9_n_0 ,\ball_y_pos[0]_i_10_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \ball_y_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_13 ),
        .Q(ball_y_pos_reg[10]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_y_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_12 ),
        .Q(ball_y_pos_reg[11]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_11 ),
        .Q(ball_y_pos_reg[12]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_y_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_10 ),
        .Q(ball_y_pos_reg[13]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_9 ),
        .Q(ball_y_pos_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_8 ),
        .Q(ball_y_pos_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[16] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_15 ),
        .Q(ball_y_pos_reg[16]),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_y_pos_reg[16]_i_1 
       (.CI(\ball_y_pos_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ball_y_pos_reg[16]_i_1_CO_UNCONNECTED [7],\ball_y_pos_reg[16]_i_1_n_1 ,\ball_y_pos_reg[16]_i_1_n_2 ,\ball_y_pos_reg[16]_i_1_n_3 ,\ball_y_pos_reg[16]_i_1_n_4 ,\ball_y_pos_reg[16]_i_1_n_5 ,\ball_y_pos_reg[16]_i_1_n_6 ,\ball_y_pos_reg[16]_i_1_n_7 }),
        .DI({1'b0,ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11]}),
        .O({\ball_y_pos_reg[16]_i_1_n_8 ,\ball_y_pos_reg[16]_i_1_n_9 ,\ball_y_pos_reg[16]_i_1_n_10 ,\ball_y_pos_reg[16]_i_1_n_11 ,\ball_y_pos_reg[16]_i_1_n_12 ,\ball_y_pos_reg[16]_i_1_n_13 ,\ball_y_pos_reg[16]_i_1_n_14 ,\ball_y_pos_reg[16]_i_1_n_15 }),
        .S({\ball_y_pos[16]_i_2_n_0 ,\ball_y_pos[16]_i_3_n_0 ,\ball_y_pos[16]_i_4_n_0 ,\ball_y_pos[16]_i_5_n_0 ,\ball_y_pos[16]_i_6_n_0 ,\ball_y_pos[16]_i_7_n_0 ,\ball_y_pos[16]_i_8_n_0 ,\ball_y_pos[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[17] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_14 ),
        .Q(ball_y_pos_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[18] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_13 ),
        .Q(ball_y_pos_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[19] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_12 ),
        .Q(ball_y_pos_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_14 ),
        .Q(\ball_y_pos_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[20] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_11 ),
        .Q(ball_y_pos_reg[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[21] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_10 ),
        .Q(ball_y_pos_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[22] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_9 ),
        .Q(ball_y_pos_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[23] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_8 ),
        .Q(ball_y_pos_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_13 ),
        .Q(\ball_y_pos_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_12 ),
        .Q(\ball_y_pos_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_11 ),
        .Q(\ball_y_pos_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_10 ),
        .Q(\ball_y_pos_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_9 ),
        .Q(\ball_y_pos_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_8 ),
        .Q(\ball_y_pos_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_15 ),
        .Q(ball_y_pos_reg[8]),
        .R(clear));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \ball_y_pos_reg[8]_i_1 
       (.CI(\ball_y_pos_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ball_y_pos_reg[8]_i_1_n_0 ,\ball_y_pos_reg[8]_i_1_n_1 ,\ball_y_pos_reg[8]_i_1_n_2 ,\ball_y_pos_reg[8]_i_1_n_3 ,\ball_y_pos_reg[8]_i_1_n_4 ,\ball_y_pos_reg[8]_i_1_n_5 ,\ball_y_pos_reg[8]_i_1_n_6 ,\ball_y_pos_reg[8]_i_1_n_7 }),
        .DI({ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11:8]}),
        .O({\ball_y_pos_reg[8]_i_1_n_8 ,\ball_y_pos_reg[8]_i_1_n_9 ,\ball_y_pos_reg[8]_i_1_n_10 ,\ball_y_pos_reg[8]_i_1_n_11 ,\ball_y_pos_reg[8]_i_1_n_12 ,\ball_y_pos_reg[8]_i_1_n_13 ,\ball_y_pos_reg[8]_i_1_n_14 ,\ball_y_pos_reg[8]_i_1_n_15 }),
        .S({\ball_y_pos[8]_i_2_n_0 ,\ball_y_pos[8]_i_3_n_0 ,\ball_y_pos[8]_i_4_n_0 ,\ball_y_pos[8]_i_5_n_0 ,\ball_y_pos[8]_i_6_n_0 ,\ball_y_pos[8]_i_7_n_0 ,\ball_y_pos[8]_i_8_n_0 ,\ball_y_pos[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_14 ),
        .Q(ball_y_pos_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'hB4)) 
    \demo_mode[0]_i_1 
       (.I0(mode_bit_p1),
        .I1(mode_bit),
        .I2(\demo_mode_reg_n_0_[0] ),
        .O(\demo_mode[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \demo_mode_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\demo_mode[0]_i_1_n_0 ),
        .Q(\demo_mode_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dir_chg_sr_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_3),
        .Q(\dir_chg_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dir_chg_sr_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_4),
        .D(\dir_chg_sr_reg_n_0_[0] ),
        .Q(\dir_chg_sr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dir_chg_sr_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_4),
        .D(\dir_chg_sr_reg_n_0_[1] ),
        .Q(\dir_chg_sr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dir_chg_sr_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_4),
        .D(\dir_chg_sr_reg_n_0_[2] ),
        .Q(\dir_chg_sr_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6999)) 
    i__carry__0_i_1
       (.I0(\u0_pel_y_reg_n_0_[15] ),
        .I1(ball_y_pos_reg[23]),
        .I2(ball_y_pos_reg[22]),
        .I3(i__carry__0_i_9_n_0),
        .O(i__carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    i__carry__0_i_10
       (.I0(ball_y_pos_reg[20]),
        .I1(ball_y_pos_reg[18]),
        .I2(i__carry__0_i_11_n_0),
        .I3(ball_y_pos_reg[17]),
        .I4(ball_y_pos_reg[19]),
        .O(i__carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__carry__0_i_11
       (.I0(ball_y_pos_reg[16]),
        .I1(ball_y_pos_reg[14]),
        .I2(ball_y_pos_reg[12]),
        .I3(ball_y_pos_reg[11]),
        .I4(ball_y_pos_reg[13]),
        .I5(ball_y_pos_reg[15]),
        .O(i__carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i__carry__0_i_12
       (.I0(ball_y_pos_reg[15]),
        .I1(ball_y_pos_reg[13]),
        .I2(ball_y_pos_reg[11]),
        .I3(ball_y_pos_reg[12]),
        .I4(ball_y_pos_reg[14]),
        .O(i__carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_2
       (.I0(\u0_pel_y_reg_n_0_[14] ),
        .I1(ball_y_pos_reg[22]),
        .I2(i__carry__0_i_9_n_0),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_3
       (.I0(\u0_pel_y_reg_n_0_[13] ),
        .I1(ball_y_pos_reg[21]),
        .I2(i__carry__0_i_10_n_0),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    i__carry__0_i_4
       (.I0(\u0_pel_y_reg_n_0_[12] ),
        .I1(ball_y_pos_reg[20]),
        .I2(ball_y_pos_reg[19]),
        .I3(ball_y_pos_reg[17]),
        .I4(i__carry__0_i_11_n_0),
        .I5(ball_y_pos_reg[18]),
        .O(i__carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h69999999)) 
    i__carry__0_i_5
       (.I0(\u0_pel_y_reg_n_0_[11] ),
        .I1(ball_y_pos_reg[19]),
        .I2(ball_y_pos_reg[18]),
        .I3(i__carry__0_i_11_n_0),
        .I4(ball_y_pos_reg[17]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    i__carry__0_i_6
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(ball_y_pos_reg[18]),
        .I2(ball_y_pos_reg[17]),
        .I3(i__carry__0_i_11_n_0),
        .O(i__carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_7
       (.I0(\u0_pel_y_reg_n_0_[9] ),
        .I1(ball_y_pos_reg[17]),
        .I2(i__carry__0_i_11_n_0),
        .O(i__carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry__0_i_8
       (.I0(\u0_pel_y_reg_n_0_[8] ),
        .I1(ball_y_pos_reg[16]),
        .I2(i__carry__0_i_12_n_0),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__carry__0_i_9
       (.I0(ball_y_pos_reg[21]),
        .I1(ball_y_pos_reg[19]),
        .I2(ball_y_pos_reg[17]),
        .I3(i__carry__0_i_11_n_0),
        .I4(ball_y_pos_reg[18]),
        .I5(ball_y_pos_reg[20]),
        .O(i__carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    i__carry_i_1
       (.I0(\u0_pel_x_reg_n_0_[14] ),
        .I1(\u0_pel_x_reg_n_0_[15] ),
        .I2(p_0_in[14]),
        .I3(i__carry_i_17_n_0),
        .I4(p_0_in[15]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_10
       (.I0(\u0_pel_x_reg_n_0_[13] ),
        .I1(p_0_in[13]),
        .I2(i__carry_i_18_n_0),
        .I3(p_0_in[12]),
        .I4(\u0_pel_x_reg_n_0_[12] ),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    i__carry_i_11
       (.I0(\u0_pel_x_reg_n_0_[11] ),
        .I1(p_0_in[11]),
        .I2(p_0_in[9]),
        .I3(i__carry_i_19_n_0),
        .I4(p_0_in[10]),
        .I5(\u0_pel_x_reg_n_0_[10] ),
        .O(i__carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_12
       (.I0(sel0[2]),
        .I1(p_0_in[9]),
        .I2(i__carry_i_20_n_0),
        .I3(p_0_in[8]),
        .I4(sel0[1]),
        .O(i__carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h8282828282828228)) 
    i__carry_i_13
       (.I0(i__carry_i_22_n_0),
        .I1(data3[15]),
        .I2(p_0_in[6]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(i__carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_14
       (.I0(p_0_in[5]),
        .I1(data3[14]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(data3[13]),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_15
       (.I0(data3[12]),
        .I1(p_0_in[3]),
        .I2(data3[11]),
        .I3(p_0_in[2]),
        .O(i__carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_16
       (.I0(p_0_in[1]),
        .I1(data3[10]),
        .I2(data3[9]),
        .I3(p_0_in[0]),
        .O(i__carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_17
       (.I0(p_0_in[12]),
        .I1(p_0_in[10]),
        .I2(i__carry_i_19_n_0),
        .I3(p_0_in[9]),
        .I4(p_0_in[11]),
        .I5(p_0_in[13]),
        .O(i__carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_18
       (.I0(p_0_in[10]),
        .I1(i__carry_i_19_n_0),
        .I2(p_0_in[9]),
        .I3(p_0_in[11]),
        .O(i__carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_19
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[6]),
        .I5(p_0_in[8]),
        .O(i__carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    i__carry_i_1__0
       (.I0(\u0_pel_y_reg_n_0_[7] ),
        .I1(ball_y_pos_reg[15]),
        .I2(ball_y_pos_reg[14]),
        .I3(ball_y_pos_reg[12]),
        .I4(ball_y_pos_reg[11]),
        .I5(ball_y_pos_reg[13]),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    i__carry_i_2
       (.I0(\u0_pel_x_reg_n_0_[12] ),
        .I1(\u0_pel_x_reg_n_0_[13] ),
        .I2(p_0_in[12]),
        .I3(i__carry_i_18_n_0),
        .I4(p_0_in[13]),
        .O(i__carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_20
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[5]),
        .I4(p_0_in[7]),
        .O(i__carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_21
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(i__carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    i__carry_i_22
       (.I0(sel0[0]),
        .I1(p_0_in[7]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[6]),
        .O(i__carry_i_22_n_0));
  LUT5 #(
    .INIT(32'h69999999)) 
    i__carry_i_2__0
       (.I0(\u0_pel_y_reg_n_0_[6] ),
        .I1(ball_y_pos_reg[14]),
        .I2(ball_y_pos_reg[13]),
        .I3(ball_y_pos_reg[11]),
        .I4(ball_y_pos_reg[12]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    i__carry_i_3
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(\u0_pel_x_reg_n_0_[11] ),
        .I2(p_0_in[10]),
        .I3(i__carry_i_19_n_0),
        .I4(p_0_in[9]),
        .I5(p_0_in[11]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    i__carry_i_3__0
       (.I0(\u0_pel_y_reg_n_0_[5] ),
        .I1(ball_y_pos_reg[13]),
        .I2(ball_y_pos_reg[12]),
        .I3(ball_y_pos_reg[11]),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    i__carry_i_4
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(p_0_in[8]),
        .I3(i__carry_i_20_n_0),
        .I4(p_0_in[9]),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    i__carry_i_4__0
       (.I0(ball_y_pos_reg[11]),
        .I1(ball_y_pos_reg[12]),
        .I2(\u0_pel_y_reg_n_0_[4] ),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    i__carry_i_5
       (.I0(data3[15]),
        .I1(sel0[0]),
        .I2(p_0_in[6]),
        .I3(i__carry_i_21_n_0),
        .I4(p_0_in[5]),
        .I5(p_0_in[7]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5__0
       (.I0(\u0_pel_y_reg_n_0_[3] ),
        .I1(ball_y_pos_reg[11]),
        .O(i__carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    i__carry_i_6
       (.I0(data3[13]),
        .I1(data3[14]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .I4(p_0_in[5]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6__0
       (.I0(\u0_pel_y_reg_n_0_[2] ),
        .I1(ball_y_pos_reg[10]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    i__carry_i_7
       (.I0(data3[11]),
        .I1(p_0_in[2]),
        .I2(data3[12]),
        .I3(p_0_in[3]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7__0
       (.I0(\u0_pel_y_reg_n_0_[1] ),
        .I1(ball_y_pos_reg[9]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_8
       (.I0(data3[9]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(data3[10]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__0
       (.I0(\u0_pel_y_reg_n_0_[0] ),
        .I1(ball_y_pos_reg[8]),
        .O(i__carry_i_8__0_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_9
       (.I0(\u0_pel_x_reg_n_0_[15] ),
        .I1(p_0_in[15]),
        .I2(i__carry_i_17_n_0),
        .I3(p_0_in[14]),
        .I4(\u0_pel_x_reg_n_0_[14] ),
        .O(i__carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \line_rgb[22]_i_2 
       (.I0(line_x_pos_reg[12]),
        .I1(line_x_pos_reg[13]),
        .I2(line_x_pos_reg[14]),
        .I3(line_x_pos_reg[15]),
        .I4(\line_rgb[22]_i_5_n_0 ),
        .O(\line_rgb[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \line_rgb[22]_i_3 
       (.I0(line_x_pos_reg[2]),
        .I1(line_x_pos_reg[3]),
        .I2(line_x_pos_reg[0]),
        .I3(line_x_pos_reg[1]),
        .I4(\line_rgb[22]_i_6_n_0 ),
        .O(\line_rgb[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \line_rgb[22]_i_5 
       (.I0(line_x_pos_reg[11]),
        .I1(line_x_pos_reg[10]),
        .I2(line_x_pos_reg[9]),
        .I3(line_x_pos_reg[8]),
        .O(\line_rgb[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \line_rgb[22]_i_6 
       (.I0(line_x_pos_reg[7]),
        .I1(line_x_pos_reg[6]),
        .I2(line_x_pos_reg[5]),
        .I3(line_x_pos_reg[4]),
        .O(\line_rgb[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \line_rgb[22]_i_7 
       (.I0(line_y_pos_reg[7]),
        .I1(line_y_pos_reg[6]),
        .I2(line_y_pos_reg[5]),
        .I3(line_y_pos_reg[4]),
        .O(\line_rgb[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \line_rgb[22]_i_8 
       (.I0(line_y_pos_reg[11]),
        .I1(line_y_pos_reg[10]),
        .I2(line_y_pos_reg[9]),
        .I3(line_y_pos_reg[8]),
        .O(\line_rgb[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \line_rgb[22]_i_9 
       (.I0(line_y_pos_reg[12]),
        .I1(line_y_pos_reg[13]),
        .I2(line_y_pos_reg[14]),
        .I3(line_y_pos_reg[15]),
        .I4(line_y_pos_reg[3]),
        .I5(line_y_pos_reg[2]),
        .O(\line_rgb[22]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[0] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[0]),
        .Q(\line_rgb_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[10] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[10]),
        .Q(\line_rgb_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[11] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[11]),
        .Q(\line_rgb_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[12] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[12]),
        .Q(\line_rgb_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[13] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[13]),
        .Q(\line_rgb_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[14] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[14]),
        .Q(\line_rgb_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[15] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[15]),
        .Q(\line_rgb_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[16] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[16]),
        .Q(\line_rgb_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[17] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[17]),
        .Q(\line_rgb_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[18] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[18]),
        .Q(\line_rgb_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[19] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[19]),
        .Q(\line_rgb_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[1] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[1]),
        .Q(\line_rgb_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[20] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[20]),
        .Q(\line_rgb_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[21] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[21]),
        .Q(\line_rgb_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[22] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[22]),
        .Q(\line_rgb_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[2] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[2]),
        .Q(\line_rgb_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[3] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[3]),
        .Q(\line_rgb_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[4] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[4]),
        .Q(\line_rgb_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[5] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[5]),
        .Q(\line_rgb_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[6] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[6]),
        .Q(\line_rgb_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[7] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[7]),
        .Q(\line_rgb_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[8] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[8]),
        .Q(\line_rgb_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_rgb_reg[9] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[9]),
        .Q(\line_rgb_reg_n_0_[9] ),
        .R(1'b0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    line_x_pos0_carry
       (.CI(line_x_pos_reg[0]),
        .CI_TOP(1'b0),
        .CO({line_x_pos0_carry_n_0,line_x_pos0_carry_n_1,line_x_pos0_carry_n_2,line_x_pos0_carry_n_3,line_x_pos0_carry_n_4,line_x_pos0_carry_n_5,line_x_pos0_carry_n_6,line_x_pos0_carry_n_7}),
        .DI(line_x_pos_reg[8:1]),
        .O(line_x_pos0[8:1]),
        .S({line_x_pos0_carry_i_1_n_0,line_x_pos0_carry_i_2_n_0,line_x_pos0_carry_i_3_n_0,line_x_pos0_carry_i_4_n_0,vga_rgb_line5,line_x_pos0_carry_i_6_n_0,line_x_pos0_carry_i_7_n_0,line_x_pos0_carry_i_8_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    line_x_pos0_carry__0
       (.CI(line_x_pos0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_line_x_pos0_carry__0_CO_UNCONNECTED[7:6],line_x_pos0_carry__0_n_2,line_x_pos0_carry__0_n_3,line_x_pos0_carry__0_n_4,line_x_pos0_carry__0_n_5,line_x_pos0_carry__0_n_6,line_x_pos0_carry__0_n_7}),
        .DI({1'b0,1'b0,line_x_pos_reg[14:9]}),
        .O({NLW_line_x_pos0_carry__0_O_UNCONNECTED[7],line_x_pos0[15:9]}),
        .S({1'b0,line_x_pos0_carry__0_i_1_n_0,line_x_pos0_carry__0_i_2_n_0,line_x_pos0_carry__0_i_3_n_0,line_x_pos0_carry__0_i_4_n_0,line_x_pos0_carry__0_i_5_n_0,line_x_pos0_carry__0_i_6_n_0,line_x_pos0_carry__0_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_1
       (.I0(line_x_pos_reg[15]),
        .O(line_x_pos0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_2
       (.I0(line_x_pos_reg[14]),
        .O(line_x_pos0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_3
       (.I0(line_x_pos_reg[13]),
        .O(line_x_pos0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_4
       (.I0(line_x_pos_reg[12]),
        .O(line_x_pos0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_5
       (.I0(line_x_pos_reg[11]),
        .O(line_x_pos0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_6
       (.I0(line_x_pos_reg[10]),
        .O(line_x_pos0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry__0_i_7
       (.I0(line_x_pos_reg[9]),
        .O(line_x_pos0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_1
       (.I0(line_x_pos_reg[8]),
        .O(line_x_pos0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_2
       (.I0(line_x_pos_reg[7]),
        .O(line_x_pos0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_3
       (.I0(line_x_pos_reg[6]),
        .O(line_x_pos0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_4
       (.I0(line_x_pos_reg[5]),
        .O(line_x_pos0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_5
       (.I0(line_x_pos_reg[4]),
        .O(vga_rgb_line5));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_6
       (.I0(line_x_pos_reg[3]),
        .O(line_x_pos0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_7
       (.I0(line_x_pos_reg[2]),
        .O(line_x_pos0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_x_pos0_carry_i_8
       (.I0(line_x_pos_reg[1]),
        .O(line_x_pos0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \line_x_pos[0]_i_1 
       (.I0(line_x_pos_reg[0]),
        .O(\line_x_pos[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\line_x_pos[0]_i_1_n_0 ),
        .Q(line_x_pos_reg[0]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[10]),
        .Q(line_x_pos_reg[10]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[11]),
        .Q(line_x_pos_reg[11]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[12]),
        .Q(line_x_pos_reg[12]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[13]),
        .Q(line_x_pos_reg[13]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[14]),
        .Q(line_x_pos_reg[14]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[15]),
        .Q(line_x_pos_reg[15]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[1]),
        .Q(line_x_pos_reg[1]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[2]),
        .Q(line_x_pos_reg[2]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[3]),
        .Q(line_x_pos_reg[3]),
        .R(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_x_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[4]),
        .Q(line_x_pos_reg[4]),
        .S(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[5]),
        .Q(line_x_pos_reg[5]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[6]),
        .Q(line_x_pos_reg[6]),
        .R(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_x_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[7]),
        .Q(line_x_pos_reg[7]),
        .S(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_x_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[8]),
        .Q(line_x_pos_reg[8]),
        .S(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_x_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[9]),
        .Q(line_x_pos_reg[9]),
        .R(line_rgb));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    line_y_pos0_carry
       (.CI(line_y_pos_reg[0]),
        .CI_TOP(1'b0),
        .CO({line_y_pos0_carry_n_0,line_y_pos0_carry_n_1,line_y_pos0_carry_n_2,line_y_pos0_carry_n_3,line_y_pos0_carry_n_4,line_y_pos0_carry_n_5,line_y_pos0_carry_n_6,line_y_pos0_carry_n_7}),
        .DI(line_y_pos_reg[8:1]),
        .O(line_y_pos0[8:1]),
        .S({line_y_pos0_carry_i_1_n_0,line_y_pos0_carry_i_2_n_0,line_y_pos0_carry_i_3_n_0,line_y_pos0_carry_i_4_n_0,line_y_pos0_carry_i_5_n_0,line_y_pos0_carry_i_6_n_0,line_y_pos0_carry_i_7_n_0,line_y_pos0_carry_i_8_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    line_y_pos0_carry__0
       (.CI(line_y_pos0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_line_y_pos0_carry__0_CO_UNCONNECTED[7:6],line_y_pos0_carry__0_n_2,line_y_pos0_carry__0_n_3,line_y_pos0_carry__0_n_4,line_y_pos0_carry__0_n_5,line_y_pos0_carry__0_n_6,line_y_pos0_carry__0_n_7}),
        .DI({1'b0,1'b0,line_y_pos_reg[14:9]}),
        .O({NLW_line_y_pos0_carry__0_O_UNCONNECTED[7],line_y_pos0[15:9]}),
        .S({1'b0,line_y_pos0_carry__0_i_1_n_0,line_y_pos0_carry__0_i_2_n_0,line_y_pos0_carry__0_i_3_n_0,line_y_pos0_carry__0_i_4_n_0,line_y_pos0_carry__0_i_5_n_0,line_y_pos0_carry__0_i_6_n_0,line_y_pos0_carry__0_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_1
       (.I0(line_y_pos_reg[15]),
        .O(line_y_pos0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_2
       (.I0(line_y_pos_reg[14]),
        .O(line_y_pos0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_3
       (.I0(line_y_pos_reg[13]),
        .O(line_y_pos0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_4
       (.I0(line_y_pos_reg[12]),
        .O(line_y_pos0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_5
       (.I0(line_y_pos_reg[11]),
        .O(line_y_pos0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_6
       (.I0(line_y_pos_reg[10]),
        .O(line_y_pos0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry__0_i_7
       (.I0(line_y_pos_reg[9]),
        .O(line_y_pos0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_1
       (.I0(line_y_pos_reg[8]),
        .O(line_y_pos0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_2
       (.I0(line_y_pos_reg[7]),
        .O(line_y_pos0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_3
       (.I0(line_y_pos_reg[6]),
        .O(line_y_pos0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_4
       (.I0(line_y_pos_reg[5]),
        .O(line_y_pos0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_5
       (.I0(line_y_pos_reg[4]),
        .O(line_y_pos0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_6
       (.I0(line_y_pos_reg[3]),
        .O(line_y_pos0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_7
       (.I0(line_y_pos_reg[2]),
        .O(line_y_pos0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    line_y_pos0_carry_i_8
       (.I0(line_y_pos_reg[1]),
        .O(line_y_pos0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \line_y_pos[0]_i_1 
       (.I0(line_y_pos_reg[0]),
        .O(\line_y_pos[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\line_y_pos[0]_i_1_n_0 ),
        .Q(line_y_pos_reg[0]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[10]),
        .Q(line_y_pos_reg[10]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[11]),
        .Q(line_y_pos_reg[11]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[12]),
        .Q(line_y_pos_reg[12]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[13]),
        .Q(line_y_pos_reg[13]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[14]),
        .Q(line_y_pos_reg[14]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[15]),
        .Q(line_y_pos_reg[15]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[1]),
        .Q(line_y_pos_reg[1]),
        .R(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_y_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[2]),
        .Q(line_y_pos_reg[2]),
        .S(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_y_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[3]),
        .Q(line_y_pos_reg[3]),
        .S(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[4]),
        .Q(line_y_pos_reg[4]),
        .R(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_y_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[5]),
        .Q(line_y_pos_reg[5]),
        .S(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[6]),
        .Q(line_y_pos_reg[6]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[7]),
        .Q(line_y_pos_reg[7]),
        .R(line_rgb));
  FDSE #(
    .INIT(1'b1)) 
    \line_y_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[8]),
        .Q(line_y_pos_reg[8]),
        .S(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    \line_y_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[9]),
        .Q(line_y_pos_reg[9]),
        .R(line_rgb));
  FDRE #(
    .INIT(1'b0)) 
    mode_bit_p1_reg
       (.C(clk_dot),
        .CE(1'b1),
        .D(mode_bit),
        .Q(mode_bit_p1),
        .R(1'b0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    p_1_out_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3,p_1_out_carry_n_4,p_1_out_carry_n_5,p_1_out_carry_n_6,p_1_out_carry_n_7}),
        .DI({sel0[0],data3}),
        .O(NLW_p_1_out_carry_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry_i_1_n_0,p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0,p_1_out_carry_i_5_n_0,p_1_out_carry_i_6_n_0,p_1_out_carry_i_7_n_0,p_1_out_carry_i_8_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3,p_1_out_carry__0_n_4,p_1_out_carry__0_n_5,p_1_out_carry__0_n_6,p_1_out_carry__0_n_7}),
        .DI({\u0_pel_x_reg_n_0_[15] ,\u0_pel_x_reg_n_0_[14] ,\u0_pel_x_reg_n_0_[13] ,\u0_pel_x_reg_n_0_[12] ,\u0_pel_x_reg_n_0_[11] ,\u0_pel_x_reg_n_0_[10] ,sel0[2:1]}),
        .O(NLW_p_1_out_carry__0_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0,p_1_out_carry__0_i_5_n_0,p_1_out_carry__0_i_6_n_0,p_1_out_carry__0_i_7_n_0,p_1_out_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h6999)) 
    p_1_out_carry__0_i_1
       (.I0(\u0_pel_x_reg_n_0_[15] ),
        .I1(p_0_in[15]),
        .I2(p_0_in[14]),
        .I3(p_1_out_carry__0_i_9_n_0),
        .O(p_1_out_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    p_1_out_carry__0_i_10
       (.I0(p_0_in[12]),
        .I1(p_0_in[10]),
        .I2(p_1_out_carry__0_i_11_n_0),
        .I3(p_0_in[9]),
        .I4(p_0_in[11]),
        .O(p_1_out_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    p_1_out_carry__0_i_11
       (.I0(p_0_in[8]),
        .I1(p_0_in[6]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .I4(p_0_in[5]),
        .I5(p_0_in[7]),
        .O(p_1_out_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    p_1_out_carry__0_i_12
       (.I0(p_0_in[7]),
        .I1(p_0_in[5]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .I4(p_0_in[6]),
        .O(p_1_out_carry__0_i_12_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p_1_out_carry__0_i_2
       (.I0(\u0_pel_x_reg_n_0_[14] ),
        .I1(p_0_in[14]),
        .I2(p_1_out_carry__0_i_9_n_0),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p_1_out_carry__0_i_3
       (.I0(\u0_pel_x_reg_n_0_[13] ),
        .I1(p_0_in[13]),
        .I2(p_1_out_carry__0_i_10_n_0),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    p_1_out_carry__0_i_4
       (.I0(\u0_pel_x_reg_n_0_[12] ),
        .I1(p_0_in[12]),
        .I2(p_0_in[11]),
        .I3(p_0_in[9]),
        .I4(p_1_out_carry__0_i_11_n_0),
        .I5(p_0_in[10]),
        .O(p_1_out_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h69999999)) 
    p_1_out_carry__0_i_5
       (.I0(\u0_pel_x_reg_n_0_[11] ),
        .I1(p_0_in[11]),
        .I2(p_0_in[10]),
        .I3(p_1_out_carry__0_i_11_n_0),
        .I4(p_0_in[9]),
        .O(p_1_out_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    p_1_out_carry__0_i_6
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .I3(p_1_out_carry__0_i_11_n_0),
        .O(p_1_out_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p_1_out_carry__0_i_7
       (.I0(sel0[2]),
        .I1(p_0_in[9]),
        .I2(p_1_out_carry__0_i_11_n_0),
        .O(p_1_out_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p_1_out_carry__0_i_8
       (.I0(sel0[1]),
        .I1(p_0_in[8]),
        .I2(p_1_out_carry__0_i_12_n_0),
        .O(p_1_out_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    p_1_out_carry__0_i_9
       (.I0(p_0_in[13]),
        .I1(p_0_in[11]),
        .I2(p_0_in[9]),
        .I3(p_1_out_carry__0_i_11_n_0),
        .I4(p_0_in[10]),
        .I5(p_0_in[12]),
        .O(p_1_out_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    p_1_out_carry_i_1
       (.I0(sel0[0]),
        .I1(p_0_in[7]),
        .I2(p_0_in[6]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(p_0_in[5]),
        .O(p_1_out_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h69999999)) 
    p_1_out_carry_i_2
       (.I0(data3[15]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .O(p_1_out_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    p_1_out_carry_i_3
       (.I0(data3[14]),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[3]),
        .O(p_1_out_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p_1_out_carry_i_4
       (.I0(data3[13]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .O(p_1_out_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_5
       (.I0(data3[12]),
        .I1(p_0_in[3]),
        .O(p_1_out_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_6
       (.I0(data3[11]),
        .I1(p_0_in[2]),
        .O(p_1_out_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_7
       (.I0(data3[10]),
        .I1(p_0_in[1]),
        .O(p_1_out_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_8
       (.I0(data3[9]),
        .I1(p_0_in[0]),
        .O(p_1_out_carry_i_8_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \p_1_out_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\p_1_out_inferred__0/i__carry_n_0 ,\p_1_out_inferred__0/i__carry_n_1 ,\p_1_out_inferred__0/i__carry_n_2 ,\p_1_out_inferred__0/i__carry_n_3 ,\p_1_out_inferred__0/i__carry_n_4 ,\p_1_out_inferred__0/i__carry_n_5 ,\p_1_out_inferred__0/i__carry_n_6 ,\p_1_out_inferred__0/i__carry_n_7 }),
        .DI({\u0_pel_y_reg_n_0_[7] ,\u0_pel_y_reg_n_0_[6] ,\u0_pel_y_reg_n_0_[5] ,\u0_pel_y_reg_n_0_[4] ,\u0_pel_y_reg_n_0_[3] ,\u0_pel_y_reg_n_0_[2] ,\u0_pel_y_reg_n_0_[1] ,\u0_pel_y_reg_n_0_[0] }),
        .O(\NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \p_1_out_inferred__0/i__carry__0 
       (.CI(\p_1_out_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\p_1_out_inferred__0/i__carry__0_n_0 ,\p_1_out_inferred__0/i__carry__0_n_1 ,\p_1_out_inferred__0/i__carry__0_n_2 ,\p_1_out_inferred__0/i__carry__0_n_3 ,\p_1_out_inferred__0/i__carry__0_n_4 ,\p_1_out_inferred__0/i__carry__0_n_5 ,\p_1_out_inferred__0/i__carry__0_n_6 ,\p_1_out_inferred__0/i__carry__0_n_7 }),
        .DI({\u0_pel_y_reg_n_0_[15] ,\u0_pel_y_reg_n_0_[14] ,\u0_pel_y_reg_n_0_[13] ,\u0_pel_y_reg_n_0_[12] ,\u0_pel_y_reg_n_0_[11] ,\u0_pel_y_reg_n_0_[10] ,\u0_pel_y_reg_n_0_[9] ,\u0_pel_y_reg_n_0_[8] }),
        .O(\NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \u0_pel_x[0]_i_1 
       (.I0(\u0_pel_x[15]_i_3_n_0 ),
        .I1(data3[9]),
        .O(u0_pel_x[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[10]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\u0_pel_x[10]_i_2_n_0 ),
        .I4(sel0[1]),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[10]_i_2 
       (.I0(data3[15]),
        .I1(data3[13]),
        .I2(data3[11]),
        .I3(\u0_pel_x[5]_i_2_n_0 ),
        .I4(data3[12]),
        .I5(data3[14]),
        .O(\u0_pel_x[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_x[11]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[11] ),
        .I1(\u0_pel_x[14]_i_2_n_0 ),
        .I2(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_x[12]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[12] ),
        .I1(\u0_pel_x_reg_n_0_[11] ),
        .I2(\u0_pel_x[14]_i_2_n_0 ),
        .I3(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_x[13]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[13] ),
        .I1(\u0_pel_x_reg_n_0_[12] ),
        .I2(\u0_pel_x[14]_i_2_n_0 ),
        .I3(\u0_pel_x_reg_n_0_[11] ),
        .I4(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[14]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[14] ),
        .I1(\u0_pel_x_reg_n_0_[13] ),
        .I2(\u0_pel_x_reg_n_0_[11] ),
        .I3(\u0_pel_x[14]_i_2_n_0 ),
        .I4(\u0_pel_x_reg_n_0_[12] ),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[14]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[14]_i_2 
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(sel0[1]),
        .I2(data3[15]),
        .I3(\u0_pel_x[9]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\u0_pel_x[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[15]_i_1 
       (.I0(\u0_pel_x_reg_n_0_[15] ),
        .I1(\u0_pel_x_reg_n_0_[14] ),
        .I2(\u0_pel_x_reg_n_0_[12] ),
        .I3(\u0_pel_x[15]_i_2_n_0 ),
        .I4(\u0_pel_x_reg_n_0_[13] ),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[15]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[15]_i_2 
       (.I0(\u0_pel_x_reg_n_0_[11] ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\u0_pel_x[10]_i_2_n_0 ),
        .I4(sel0[1]),
        .I5(\u0_pel_x_reg_n_0_[10] ),
        .O(\u0_pel_x[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[15]_i_3 
       (.I0(\u0_pel_x[15]_i_4_n_0 ),
        .I1(\u0_pel_x_reg_n_0_[13] ),
        .I2(\u0_pel_x_reg_n_0_[14] ),
        .I3(\u0_pel_x_reg_n_0_[12] ),
        .I4(\u0_pel_x_reg_n_0_[15] ),
        .I5(\u0_pel_x[15]_i_5_n_0 ),
        .O(\u0_pel_x[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[15]_i_4 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(data3[15]),
        .I3(\u0_pel_x_reg_n_0_[10] ),
        .I4(\u0_pel_x_reg_n_0_[11] ),
        .I5(sel0[2]),
        .O(\u0_pel_x[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[15]_i_5 
       (.I0(data3[10]),
        .I1(data3[11]),
        .I2(data3[9]),
        .I3(data3[13]),
        .I4(data3[14]),
        .I5(data3[12]),
        .O(\u0_pel_x[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_x[1]_i_1 
       (.I0(data3[10]),
        .I1(data3[9]),
        .I2(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_x[2]_i_1 
       (.I0(data3[11]),
        .I1(data3[10]),
        .I2(data3[9]),
        .I3(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_x[3]_i_1 
       (.I0(data3[12]),
        .I1(data3[11]),
        .I2(data3[9]),
        .I3(data3[10]),
        .I4(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[4]_i_1 
       (.I0(data3[13]),
        .I1(data3[12]),
        .I2(data3[10]),
        .I3(data3[9]),
        .I4(data3[11]),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[5]_i_1 
       (.I0(data3[14]),
        .I1(data3[13]),
        .I2(data3[11]),
        .I3(\u0_pel_x[5]_i_2_n_0 ),
        .I4(data3[12]),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \u0_pel_x[5]_i_2 
       (.I0(data3[10]),
        .I1(data3[9]),
        .O(\u0_pel_x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_x[6]_i_1 
       (.I0(data3[15]),
        .I1(\u0_pel_x[9]_i_2_n_0 ),
        .I2(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_x[7]_i_1 
       (.I0(sel0[0]),
        .I1(data3[15]),
        .I2(\u0_pel_x[9]_i_2_n_0 ),
        .I3(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_x[8]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(\u0_pel_x[9]_i_2_n_0 ),
        .I3(data3[15]),
        .I4(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_x[9]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(data3[15]),
        .I3(\u0_pel_x[9]_i_2_n_0 ),
        .I4(sel0[0]),
        .I5(\u0_pel_x[15]_i_3_n_0 ),
        .O(u0_pel_x[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_x[9]_i_2 
       (.I0(data3[14]),
        .I1(data3[12]),
        .I2(data3[10]),
        .I3(data3[9]),
        .I4(data3[11]),
        .I5(data3[13]),
        .O(\u0_pel_x[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[0]),
        .Q(data3[9]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[10]),
        .Q(\u0_pel_x_reg_n_0_[10] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[11]),
        .Q(\u0_pel_x_reg_n_0_[11] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[12]),
        .Q(\u0_pel_x_reg_n_0_[12] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[13]),
        .Q(\u0_pel_x_reg_n_0_[13] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[14]),
        .Q(\u0_pel_x_reg_n_0_[14] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[15]),
        .Q(\u0_pel_x_reg_n_0_[15] ),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[1]),
        .Q(data3[10]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[2]),
        .Q(data3[11]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[3]),
        .Q(data3[12]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[4]),
        .Q(data3[13]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[5]),
        .Q(data3[14]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[6]),
        .Q(data3[15]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[7]),
        .Q(sel0[0]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[8]),
        .Q(sel0[1]),
        .R(u0_vid_new_line));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_x_reg[9] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[9]),
        .Q(sel0[2]),
        .R(u0_vid_new_line));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \u0_pel_y[0]_i_1 
       (.I0(\u0_pel_y[15]_i_3_n_0 ),
        .I1(\u0_pel_y_reg_n_0_[0] ),
        .O(u0_pel_y[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[10]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(\u0_pel_y_reg_n_0_[9] ),
        .I2(\u0_pel_y_reg_n_0_[7] ),
        .I3(\u0_pel_y[10]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[8] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[10]_i_2 
       (.I0(\u0_pel_y_reg_n_0_[6] ),
        .I1(\u0_pel_y_reg_n_0_[4] ),
        .I2(\u0_pel_y_reg_n_0_[2] ),
        .I3(\u0_pel_y[5]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[3] ),
        .I5(\u0_pel_y_reg_n_0_[5] ),
        .O(\u0_pel_y[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_y[11]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[11] ),
        .I1(\u0_pel_y[14]_i_2_n_0 ),
        .I2(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_y[12]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[12] ),
        .I1(\u0_pel_y_reg_n_0_[11] ),
        .I2(\u0_pel_y[14]_i_2_n_0 ),
        .I3(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_y[13]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[13] ),
        .I1(\u0_pel_y_reg_n_0_[12] ),
        .I2(\u0_pel_y[14]_i_2_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[11] ),
        .I4(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[14]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[14] ),
        .I1(\u0_pel_y_reg_n_0_[13] ),
        .I2(\u0_pel_y_reg_n_0_[11] ),
        .I3(\u0_pel_y[14]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[12] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[14]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[14]_i_2 
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(\u0_pel_y_reg_n_0_[8] ),
        .I2(\u0_pel_y_reg_n_0_[6] ),
        .I3(\u0_pel_y[9]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[7] ),
        .I5(\u0_pel_y_reg_n_0_[9] ),
        .O(\u0_pel_y[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[15]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[15] ),
        .I1(\u0_pel_y_reg_n_0_[14] ),
        .I2(\u0_pel_y_reg_n_0_[12] ),
        .I3(\u0_pel_y[15]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[13] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[15]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[15]_i_2 
       (.I0(\u0_pel_y_reg_n_0_[11] ),
        .I1(\u0_pel_y_reg_n_0_[9] ),
        .I2(\u0_pel_y_reg_n_0_[7] ),
        .I3(\u0_pel_y[10]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[8] ),
        .I5(\u0_pel_y_reg_n_0_[10] ),
        .O(\u0_pel_y[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[15]_i_3 
       (.I0(\u0_pel_y[15]_i_4_n_0 ),
        .I1(\u0_pel_y_reg_n_0_[13] ),
        .I2(\u0_pel_y_reg_n_0_[14] ),
        .I3(\u0_pel_y_reg_n_0_[12] ),
        .I4(\u0_pel_y_reg_n_0_[15] ),
        .I5(\u0_pel_y[15]_i_5_n_0 ),
        .O(\u0_pel_y[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[15]_i_4 
       (.I0(\u0_pel_y_reg_n_0_[7] ),
        .I1(\u0_pel_y_reg_n_0_[8] ),
        .I2(\u0_pel_y_reg_n_0_[6] ),
        .I3(\u0_pel_y_reg_n_0_[10] ),
        .I4(\u0_pel_y_reg_n_0_[11] ),
        .I5(\u0_pel_y_reg_n_0_[9] ),
        .O(\u0_pel_y[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[15]_i_5 
       (.I0(\u0_pel_y_reg_n_0_[1] ),
        .I1(\u0_pel_y_reg_n_0_[2] ),
        .I2(\u0_pel_y_reg_n_0_[0] ),
        .I3(\u0_pel_y_reg_n_0_[4] ),
        .I4(\u0_pel_y_reg_n_0_[5] ),
        .I5(\u0_pel_y_reg_n_0_[3] ),
        .O(\u0_pel_y[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_y[1]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[1] ),
        .I1(\u0_pel_y_reg_n_0_[0] ),
        .I2(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_y[2]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[2] ),
        .I1(\u0_pel_y_reg_n_0_[1] ),
        .I2(\u0_pel_y_reg_n_0_[0] ),
        .I3(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_y[3]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[3] ),
        .I1(\u0_pel_y_reg_n_0_[2] ),
        .I2(\u0_pel_y_reg_n_0_[0] ),
        .I3(\u0_pel_y_reg_n_0_[1] ),
        .I4(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[4]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[4] ),
        .I1(\u0_pel_y_reg_n_0_[3] ),
        .I2(\u0_pel_y_reg_n_0_[1] ),
        .I3(\u0_pel_y_reg_n_0_[0] ),
        .I4(\u0_pel_y_reg_n_0_[2] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[5]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[5] ),
        .I1(\u0_pel_y_reg_n_0_[4] ),
        .I2(\u0_pel_y_reg_n_0_[2] ),
        .I3(\u0_pel_y[5]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[3] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \u0_pel_y[5]_i_2 
       (.I0(\u0_pel_y_reg_n_0_[1] ),
        .I1(\u0_pel_y_reg_n_0_[0] ),
        .O(\u0_pel_y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \u0_pel_y[6]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[6] ),
        .I1(\u0_pel_y[9]_i_2_n_0 ),
        .I2(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF6A)) 
    \u0_pel_y[7]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[7] ),
        .I1(\u0_pel_y_reg_n_0_[6] ),
        .I2(\u0_pel_y[9]_i_2_n_0 ),
        .I3(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \u0_pel_y[8]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[8] ),
        .I1(\u0_pel_y_reg_n_0_[7] ),
        .I2(\u0_pel_y[9]_i_2_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[6] ),
        .I4(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \u0_pel_y[9]_i_1 
       (.I0(\u0_pel_y_reg_n_0_[9] ),
        .I1(\u0_pel_y_reg_n_0_[8] ),
        .I2(\u0_pel_y_reg_n_0_[6] ),
        .I3(\u0_pel_y[9]_i_2_n_0 ),
        .I4(\u0_pel_y_reg_n_0_[7] ),
        .I5(\u0_pel_y[15]_i_3_n_0 ),
        .O(u0_pel_y[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \u0_pel_y[9]_i_2 
       (.I0(\u0_pel_y_reg_n_0_[5] ),
        .I1(\u0_pel_y_reg_n_0_[3] ),
        .I2(\u0_pel_y_reg_n_0_[1] ),
        .I3(\u0_pel_y_reg_n_0_[0] ),
        .I4(\u0_pel_y_reg_n_0_[2] ),
        .I5(\u0_pel_y_reg_n_0_[4] ),
        .O(\u0_pel_y[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[0]),
        .Q(\u0_pel_y_reg_n_0_[0] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[10]),
        .Q(\u0_pel_y_reg_n_0_[10] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[11]),
        .Q(\u0_pel_y_reg_n_0_[11] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[12]),
        .Q(\u0_pel_y_reg_n_0_[12] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[13]),
        .Q(\u0_pel_y_reg_n_0_[13] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[14]),
        .Q(\u0_pel_y_reg_n_0_[14] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[15]),
        .Q(\u0_pel_y_reg_n_0_[15] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[1]),
        .Q(\u0_pel_y_reg_n_0_[1] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[2]),
        .Q(\u0_pel_y_reg_n_0_[2] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[3]),
        .Q(\u0_pel_y_reg_n_0_[3] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[4]),
        .Q(\u0_pel_y_reg_n_0_[4] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[5]),
        .Q(\u0_pel_y_reg_n_0_[5] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[6]),
        .Q(\u0_pel_y_reg_n_0_[6] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[7]),
        .Q(\u0_pel_y_reg_n_0_[7] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[8]),
        .Q(\u0_pel_y_reg_n_0_[8] ),
        .R(u0_vid_new_frame));
  FDRE #(
    .INIT(1'b0)) 
    \u0_pel_y_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[9]),
        .Q(\u0_pel_y_reg_n_0_[9] ),
        .R(u0_vid_new_frame));
  vcu_DT_blk_design_vga_core_0_0_vga_timing u0_vga_timing
       (.DI(ball_y_dir__0[10]),
        .E(u0_vga_timing_n_5),
        .Q(line_y_pos_reg[1:0]),
        .SR(line_rgb),
        .\ball_x_dir_reg[10] (ball_x_dir__0[10]),
        .clk_dot(clk_dot),
        .\dir_chg_sr_reg[0] (u0_vga_timing_n_7),
        .\dir_chg_sr_reg[0]_0 (\ball_y_dir[11]_i_3_n_0 ),
        .\dir_chg_sr_reg[0]_1 (\ball_x_dir[11]_i_3_n_0 ),
        .\dir_chg_sr_reg[0]_2 (\dir_chg_sr_reg_n_0_[0] ),
        .\line_y_pos_reg[0] (\line_rgb[22]_i_2_n_0 ),
        .\line_y_pos_reg[0]_0 (\line_rgb[22]_i_3_n_0 ),
        .\line_y_pos_reg[0]_1 (\line_rgb[22]_i_7_n_0 ),
        .\line_y_pos_reg[0]_2 (\line_rgb[22]_i_8_n_0 ),
        .\line_y_pos_reg[0]_3 (\line_rgb[22]_i_9_n_0 ),
        .mode_bit(mode_bit),
        .mode_bit_0(u0_vga_timing_n_3),
        .reset(reset),
        .vga_active(vga_active),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync),
        .vid_new_frame(u0_vid_new_frame),
        .vid_new_frame_reg_0(u0_vga_timing_n_0),
        .vid_new_frame_reg_1(u0_vga_timing_n_2),
        .vid_new_frame_reg_2(u0_vga_timing_n_4),
        .vid_new_frame_reg_3(u0_vga_timing_n_6),
        .vid_new_line(u0_vid_new_line));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAAAEAA)) 
    \vga_rgb[0]_i_1 
       (.I0(\vga_rgb[6]_i_1_n_0 ),
        .I1(vga_rgb_ball[0]),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(mode_bit),
        .I4(\vga_rgb_line_reg_n_0_[0] ),
        .I5(color_3b),
        .O(\vga_rgb[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[10]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[10] ),
        .I3(vga_rgb_ball[10]),
        .I4(vga_rgb_tp[10]),
        .I5(color_3b),
        .O(\vga_rgb[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[11]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[11] ),
        .I3(vga_rgb_ball[11]),
        .I4(vga_rgb_tp[11]),
        .I5(color_3b),
        .O(\vga_rgb[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[12]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[12] ),
        .I3(vga_rgb_ball[12]),
        .I4(vga_rgb_tp[12]),
        .I5(color_3b),
        .O(\vga_rgb[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[13]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[13] ),
        .I3(vga_rgb_ball[13]),
        .I4(vga_rgb_tp[13]),
        .I5(color_3b),
        .O(\vga_rgb[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AA22288088000)) 
    \vga_rgb[14]_i_1 
       (.I0(color_3b),
        .I1(mode_bit),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(vga_rgb1),
        .I4(vga_rgb_ball[15]),
        .I5(vga_rgb_tp[15]),
        .O(\vga_rgb[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[14]_i_2 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[14] ),
        .I3(vga_rgb_ball[14]),
        .I4(vga_rgb_tp[14]),
        .I5(color_3b),
        .O(\vga_rgb[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \vga_rgb[15]_i_1 
       (.I0(vga_rgb_tp[15]),
        .I1(vga_rgb_ball[15]),
        .I2(vga_rgb1),
        .I3(\demo_mode_reg_n_0_[0] ),
        .I4(mode_bit),
        .O(\vga_rgb[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAAAEAA)) 
    \vga_rgb[16]_i_1 
       (.I0(\vga_rgb[22]_i_1_n_0 ),
        .I1(vga_rgb_ball[16]),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(mode_bit),
        .I4(\vga_rgb_line_reg_n_0_[16] ),
        .I5(color_3b),
        .O(\vga_rgb[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[17]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[17] ),
        .I3(vga_rgb_ball[17]),
        .I4(vga_rgb_tp[17]),
        .I5(color_3b),
        .O(\vga_rgb[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[18]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[18] ),
        .I3(vga_rgb_ball[18]),
        .I4(vga_rgb_tp[18]),
        .I5(color_3b),
        .O(\vga_rgb[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[19]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[19] ),
        .I3(vga_rgb_ball[19]),
        .I4(vga_rgb_tp[19]),
        .I5(color_3b),
        .O(\vga_rgb[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[1]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[1] ),
        .I3(vga_rgb_ball[1]),
        .I4(vga_rgb_tp[1]),
        .I5(color_3b),
        .O(\vga_rgb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[20]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[20] ),
        .I3(vga_rgb_ball[20]),
        .I4(vga_rgb_tp[20]),
        .I5(color_3b),
        .O(\vga_rgb[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[21]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[21] ),
        .I3(vga_rgb_ball[21]),
        .I4(vga_rgb_tp[21]),
        .I5(color_3b),
        .O(\vga_rgb[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AA22288088000)) 
    \vga_rgb[22]_i_1 
       (.I0(color_3b),
        .I1(mode_bit),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(\vga_rgb_line_reg_n_0_[23] ),
        .I4(vga_rgb_ball[23]),
        .I5(vga_rgb_tp[23]),
        .O(\vga_rgb[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[22]_i_2 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[22] ),
        .I3(vga_rgb_ball[22]),
        .I4(vga_rgb_tp[22]),
        .I5(color_3b),
        .O(\vga_rgb[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \vga_rgb[23]_i_1 
       (.I0(vga_rgb_tp[23]),
        .I1(vga_rgb_ball[23]),
        .I2(\vga_rgb_line_reg_n_0_[23] ),
        .I3(\demo_mode_reg_n_0_[0] ),
        .I4(mode_bit),
        .O(\vga_rgb[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[2]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[2] ),
        .I3(vga_rgb_ball[2]),
        .I4(vga_rgb_tp[2]),
        .I5(color_3b),
        .O(\vga_rgb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[3]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[3] ),
        .I3(vga_rgb_ball[3]),
        .I4(vga_rgb_tp[3]),
        .I5(color_3b),
        .O(\vga_rgb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[4]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[4] ),
        .I3(vga_rgb_ball[4]),
        .I4(vga_rgb_tp[4]),
        .I5(color_3b),
        .O(\vga_rgb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[5]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[5] ),
        .I3(vga_rgb_ball[5]),
        .I4(vga_rgb_tp[5]),
        .I5(color_3b),
        .O(\vga_rgb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AA22288088000)) 
    \vga_rgb[6]_i_1 
       (.I0(color_3b),
        .I1(mode_bit),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(\vga_rgb_line_reg_n_0_[7] ),
        .I4(vga_rgb_ball[7]),
        .I5(vga_rgb_tp[7]),
        .O(\vga_rgb[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[6]_i_2 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[6] ),
        .I3(vga_rgb_ball[6]),
        .I4(vga_rgb_tp[6]),
        .I5(color_3b),
        .O(\vga_rgb[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \vga_rgb[7]_i_1 
       (.I0(vga_rgb_tp[7]),
        .I1(vga_rgb_ball[7]),
        .I2(\vga_rgb_line_reg_n_0_[7] ),
        .I3(\demo_mode_reg_n_0_[0] ),
        .I4(mode_bit),
        .O(\vga_rgb[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEAAAEAA)) 
    \vga_rgb[8]_i_1 
       (.I0(\vga_rgb[14]_i_1_n_0 ),
        .I1(vga_rgb_ball[8]),
        .I2(\demo_mode_reg_n_0_[0] ),
        .I3(mode_bit),
        .I4(\vga_rgb_line_reg_n_0_[8] ),
        .I5(color_3b),
        .O(\vga_rgb[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7D5A280)) 
    \vga_rgb[9]_i_1 
       (.I0(mode_bit),
        .I1(\demo_mode_reg_n_0_[0] ),
        .I2(\vga_rgb_line_reg_n_0_[9] ),
        .I3(vga_rgb_ball[9]),
        .I4(vga_rgb_tp[9]),
        .I5(color_3b),
        .O(\vga_rgb[9]_i_1_n_0 ));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    vga_rgb_ball3_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({vga_rgb_ball3,vga_rgb_ball3_carry_n_1,vga_rgb_ball3_carry_n_2,vga_rgb_ball3_carry_n_3,vga_rgb_ball3_carry_n_4,vga_rgb_ball3_carry_n_5,vga_rgb_ball3_carry_n_6,vga_rgb_ball3_carry_n_7}),
        .DI({vga_rgb_ball3_carry_i_1_n_0,vga_rgb_ball3_carry_i_2_n_0,vga_rgb_ball3_carry_i_3_n_0,vga_rgb_ball3_carry_i_4_n_0,vga_rgb_ball3_carry_i_5_n_0,vga_rgb_ball3_carry_i_6_n_0,vga_rgb_ball3_carry_i_7_n_0,vga_rgb_ball3_carry_i_8_n_0}),
        .O(NLW_vga_rgb_ball3_carry_O_UNCONNECTED[7:0]),
        .S({vga_rgb_ball3_carry_i_9_n_0,vga_rgb_ball3_carry_i_10_n_0,vga_rgb_ball3_carry_i_11_n_0,vga_rgb_ball3_carry_i_12_n_0,vga_rgb_ball3_carry_i_13_n_0,vga_rgb_ball3_carry_i_14_n_0,vga_rgb_ball3_carry_i_15_n_0,vga_rgb_ball3_carry_i_16_n_0}));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    vga_rgb_ball3_carry_i_1
       (.I0(\u0_pel_y_reg_n_0_[14] ),
        .I1(\u0_pel_y_reg_n_0_[15] ),
        .I2(ball_y_pos_reg[22]),
        .I3(vga_rgb_ball3_carry_i_17_n_0),
        .I4(ball_y_pos_reg[23]),
        .O(vga_rgb_ball3_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    vga_rgb_ball3_carry_i_10
       (.I0(\u0_pel_y_reg_n_0_[13] ),
        .I1(ball_y_pos_reg[21]),
        .I2(vga_rgb_ball3_carry_i_18_n_0),
        .I3(ball_y_pos_reg[20]),
        .I4(\u0_pel_y_reg_n_0_[12] ),
        .O(vga_rgb_ball3_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h9990000600099990)) 
    vga_rgb_ball3_carry_i_11
       (.I0(\u0_pel_y_reg_n_0_[11] ),
        .I1(ball_y_pos_reg[19]),
        .I2(ball_y_pos_reg[17]),
        .I3(vga_rgb_ball3_carry_i_19_n_0),
        .I4(ball_y_pos_reg[18]),
        .I5(\u0_pel_y_reg_n_0_[10] ),
        .O(vga_rgb_ball3_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    vga_rgb_ball3_carry_i_12
       (.I0(\u0_pel_y_reg_n_0_[9] ),
        .I1(ball_y_pos_reg[17]),
        .I2(vga_rgb_ball3_carry_i_20_n_0),
        .I3(ball_y_pos_reg[16]),
        .I4(\u0_pel_y_reg_n_0_[8] ),
        .O(vga_rgb_ball3_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h8282828282828228)) 
    vga_rgb_ball3_carry_i_13
       (.I0(vga_rgb_ball3_carry_i_22_n_0),
        .I1(\u0_pel_y_reg_n_0_[6] ),
        .I2(ball_y_pos_reg[14]),
        .I3(ball_y_pos_reg[12]),
        .I4(ball_y_pos_reg[11]),
        .I5(ball_y_pos_reg[13]),
        .O(vga_rgb_ball3_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    vga_rgb_ball3_carry_i_14
       (.I0(\u0_pel_y_reg_n_0_[4] ),
        .I1(ball_y_pos_reg[12]),
        .I2(ball_y_pos_reg[11]),
        .I3(ball_y_pos_reg[13]),
        .I4(\u0_pel_y_reg_n_0_[5] ),
        .O(vga_rgb_ball3_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    vga_rgb_ball3_carry_i_15
       (.I0(\u0_pel_y_reg_n_0_[3] ),
        .I1(ball_y_pos_reg[11]),
        .I2(\u0_pel_y_reg_n_0_[2] ),
        .I3(ball_y_pos_reg[10]),
        .O(vga_rgb_ball3_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    vga_rgb_ball3_carry_i_16
       (.I0(ball_y_pos_reg[9]),
        .I1(\u0_pel_y_reg_n_0_[1] ),
        .I2(\u0_pel_y_reg_n_0_[0] ),
        .I3(ball_y_pos_reg[8]),
        .O(vga_rgb_ball3_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vga_rgb_ball3_carry_i_17
       (.I0(ball_y_pos_reg[20]),
        .I1(ball_y_pos_reg[18]),
        .I2(vga_rgb_ball3_carry_i_19_n_0),
        .I3(ball_y_pos_reg[17]),
        .I4(ball_y_pos_reg[19]),
        .I5(ball_y_pos_reg[21]),
        .O(vga_rgb_ball3_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vga_rgb_ball3_carry_i_18
       (.I0(ball_y_pos_reg[18]),
        .I1(vga_rgb_ball3_carry_i_19_n_0),
        .I2(ball_y_pos_reg[17]),
        .I3(ball_y_pos_reg[19]),
        .O(vga_rgb_ball3_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    vga_rgb_ball3_carry_i_19
       (.I0(ball_y_pos_reg[15]),
        .I1(ball_y_pos_reg[13]),
        .I2(ball_y_pos_reg[11]),
        .I3(ball_y_pos_reg[12]),
        .I4(ball_y_pos_reg[14]),
        .I5(ball_y_pos_reg[16]),
        .O(vga_rgb_ball3_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    vga_rgb_ball3_carry_i_2
       (.I0(\u0_pel_y_reg_n_0_[12] ),
        .I1(\u0_pel_y_reg_n_0_[13] ),
        .I2(ball_y_pos_reg[20]),
        .I3(vga_rgb_ball3_carry_i_18_n_0),
        .I4(ball_y_pos_reg[21]),
        .O(vga_rgb_ball3_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vga_rgb_ball3_carry_i_20
       (.I0(ball_y_pos_reg[14]),
        .I1(ball_y_pos_reg[12]),
        .I2(ball_y_pos_reg[11]),
        .I3(ball_y_pos_reg[13]),
        .I4(ball_y_pos_reg[15]),
        .O(vga_rgb_ball3_carry_i_20_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    vga_rgb_ball3_carry_i_21
       (.I0(ball_y_pos_reg[11]),
        .I1(ball_y_pos_reg[12]),
        .O(vga_rgb_ball3_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    vga_rgb_ball3_carry_i_22
       (.I0(\u0_pel_y_reg_n_0_[7] ),
        .I1(ball_y_pos_reg[15]),
        .I2(ball_y_pos_reg[13]),
        .I3(ball_y_pos_reg[11]),
        .I4(ball_y_pos_reg[12]),
        .I5(ball_y_pos_reg[14]),
        .O(vga_rgb_ball3_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    vga_rgb_ball3_carry_i_3
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(\u0_pel_y_reg_n_0_[11] ),
        .I2(ball_y_pos_reg[18]),
        .I3(vga_rgb_ball3_carry_i_19_n_0),
        .I4(ball_y_pos_reg[17]),
        .I5(ball_y_pos_reg[19]),
        .O(vga_rgb_ball3_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    vga_rgb_ball3_carry_i_4
       (.I0(\u0_pel_y_reg_n_0_[8] ),
        .I1(\u0_pel_y_reg_n_0_[9] ),
        .I2(ball_y_pos_reg[16]),
        .I3(vga_rgb_ball3_carry_i_20_n_0),
        .I4(ball_y_pos_reg[17]),
        .O(vga_rgb_ball3_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    vga_rgb_ball3_carry_i_5
       (.I0(\u0_pel_y_reg_n_0_[6] ),
        .I1(\u0_pel_y_reg_n_0_[7] ),
        .I2(ball_y_pos_reg[14]),
        .I3(vga_rgb_ball3_carry_i_21_n_0),
        .I4(ball_y_pos_reg[13]),
        .I5(ball_y_pos_reg[15]),
        .O(vga_rgb_ball3_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    vga_rgb_ball3_carry_i_6
       (.I0(\u0_pel_y_reg_n_0_[4] ),
        .I1(\u0_pel_y_reg_n_0_[5] ),
        .I2(ball_y_pos_reg[12]),
        .I3(ball_y_pos_reg[11]),
        .I4(ball_y_pos_reg[13]),
        .O(vga_rgb_ball3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    vga_rgb_ball3_carry_i_7
       (.I0(\u0_pel_y_reg_n_0_[2] ),
        .I1(ball_y_pos_reg[10]),
        .I2(\u0_pel_y_reg_n_0_[3] ),
        .I3(ball_y_pos_reg[11]),
        .O(vga_rgb_ball3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    vga_rgb_ball3_carry_i_8
       (.I0(\u0_pel_y_reg_n_0_[0] ),
        .I1(ball_y_pos_reg[8]),
        .I2(ball_y_pos_reg[9]),
        .I3(\u0_pel_y_reg_n_0_[1] ),
        .O(vga_rgb_ball3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    vga_rgb_ball3_carry_i_9
       (.I0(\u0_pel_y_reg_n_0_[15] ),
        .I1(ball_y_pos_reg[23]),
        .I2(vga_rgb_ball3_carry_i_17_n_0),
        .I3(ball_y_pos_reg[22]),
        .I4(\u0_pel_y_reg_n_0_[14] ),
        .O(vga_rgb_ball3_carry_i_9_n_0));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \vga_rgb_ball4_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({vga_rgb_ball40_in,\vga_rgb_ball4_inferred__0/i__carry_n_1 ,\vga_rgb_ball4_inferred__0/i__carry_n_2 ,\vga_rgb_ball4_inferred__0/i__carry_n_3 ,\vga_rgb_ball4_inferred__0/i__carry_n_4 ,\vga_rgb_ball4_inferred__0/i__carry_n_5 ,\vga_rgb_ball4_inferred__0/i__carry_n_6 ,\vga_rgb_ball4_inferred__0/i__carry_n_7 }),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}),
        .O(\NLW_vga_rgb_ball4_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_9_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0,i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0}));
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \vga_rgb_ball[22]_i_1 
       (.I0(mode_bit),
        .I1(\p_1_out_inferred__0/i__carry__0_n_0 ),
        .I2(p_1_out_carry__0_n_0),
        .I3(vga_rgb_ball40_in),
        .I4(vga_rgb_ball3),
        .O(\vga_rgb_ball[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \vga_rgb_ball[23]_i_1 
       (.I0(vga_rgb_ball3),
        .I1(vga_rgb_ball40_in),
        .I2(p_1_out_carry__0_n_0),
        .I3(\p_1_out_inferred__0/i__carry__0_n_0 ),
        .O(vga_rgb_ball1));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[0] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[0]),
        .Q(vga_rgb_ball[0]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[10] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[10]),
        .Q(vga_rgb_ball[10]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[11] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[11]),
        .Q(vga_rgb_ball[11]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[12] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[12]),
        .Q(vga_rgb_ball[12]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[13] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[13]),
        .Q(vga_rgb_ball[13]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[14] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[14]),
        .Q(vga_rgb_ball[14]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[15] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[15]),
        .Q(vga_rgb_ball[15]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[16] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[16]),
        .Q(vga_rgb_ball[16]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[17] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[17]),
        .Q(vga_rgb_ball[17]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[18] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[18]),
        .Q(vga_rgb_ball[18]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[19] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[19]),
        .Q(vga_rgb_ball[19]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[1] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[1]),
        .Q(vga_rgb_ball[1]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[20] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[20]),
        .Q(vga_rgb_ball[20]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[21] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[21]),
        .Q(vga_rgb_ball[21]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[22] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[22]),
        .Q(vga_rgb_ball[22]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[23] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(vga_rgb_ball1),
        .Q(vga_rgb_ball[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[2] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[2]),
        .Q(vga_rgb_ball[2]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[3] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[3]),
        .Q(vga_rgb_ball[3]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[4] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[4]),
        .Q(vga_rgb_ball[4]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[5] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[5]),
        .Q(vga_rgb_ball[5]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[6] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[6]),
        .Q(vga_rgb_ball[6]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[7] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[7]),
        .Q(vga_rgb_ball[7]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[8] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[8]),
        .Q(vga_rgb_ball[8]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_ball_reg[9] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[9]),
        .Q(vga_rgb_ball[9]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_rgb_line[22]_i_1 
       (.I0(mode_bit),
        .I1(vga_rgb_line1),
        .O(\vga_rgb_line[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \vga_rgb_line[23]_i_1 
       (.I0(\vga_rgb_line[23]_i_2_n_0 ),
        .I1(\vga_rgb_line[23]_i_3_n_0 ),
        .I2(\vga_rgb_line[23]_i_4_n_0 ),
        .I3(\vga_rgb_line[23]_i_5_n_0 ),
        .I4(\vga_rgb_line[23]_i_6_n_0 ),
        .I5(\vga_rgb_line[23]_i_7_n_0 ),
        .O(vga_rgb_line1));
  LUT6 #(
    .INIT(64'hFFF6F9FFF6FFFFF6)) 
    \vga_rgb_line[23]_i_10 
       (.I0(line_y_pos_reg[9]),
        .I1(\u0_pel_y_reg_n_0_[9] ),
        .I2(\vga_rgb_line[23]_i_37_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[8] ),
        .I4(\vga_rgb_line[23]_i_38_n_0 ),
        .I5(line_y_pos_reg[8]),
        .O(\vga_rgb_line[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    \vga_rgb_line[23]_i_11 
       (.I0(line_y_pos_reg[14]),
        .I1(line_y_pos_reg[12]),
        .I2(\vga_rgb_line[23]_i_39_n_0 ),
        .I3(line_y_pos_reg[11]),
        .I4(line_y_pos_reg[13]),
        .I5(line_y_pos_reg[15]),
        .O(vga_rgb_line4__29));
  LUT6 #(
    .INIT(64'h0660060660096060)) 
    \vga_rgb_line[23]_i_12 
       (.I0(\u0_pel_y_reg_n_0_[13] ),
        .I1(line_y_pos_reg[13]),
        .I2(\u0_pel_y_reg_n_0_[12] ),
        .I3(line_y_pos_reg[11]),
        .I4(\vga_rgb_line[23]_i_39_n_0 ),
        .I5(line_y_pos_reg[12]),
        .O(\vga_rgb_line[23]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \vga_rgb_line[23]_i_13 
       (.I0(line_y_pos_reg[12]),
        .I1(\vga_rgb_line[23]_i_39_n_0 ),
        .I2(line_y_pos_reg[11]),
        .I3(line_y_pos_reg[13]),
        .O(\vga_rgb_line[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6A95)) 
    \vga_rgb_line[23]_i_14 
       (.I0(line_x_pos_reg[15]),
        .I1(line_x_pos_reg[14]),
        .I2(\vga_rgb_line[23]_i_40_n_0 ),
        .I3(\u0_pel_x_reg_n_0_[15] ),
        .O(\vga_rgb_line[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFFFF9FFF9F6FF)) 
    \vga_rgb_line[23]_i_15 
       (.I0(line_x_pos_reg[9]),
        .I1(sel0[2]),
        .I2(\vga_rgb_line[23]_i_41_n_0 ),
        .I3(sel0[1]),
        .I4(\vga_rgb_line[23]_i_42_n_0 ),
        .I5(line_x_pos_reg[8]),
        .O(\vga_rgb_line[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFEDFDFEFEFFDFDFE)) 
    \vga_rgb_line[23]_i_16 
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(\vga_rgb_line[23]_i_43_n_0 ),
        .I2(\u0_pel_x_reg_n_0_[11] ),
        .I3(\vga_rgb_line[23]_i_44_n_0 ),
        .I4(line_x_pos_reg[10]),
        .I5(line_x_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBEBEFF)) 
    \vga_rgb_line[23]_i_17 
       (.I0(\vga_rgb_line[23]_i_45_n_0 ),
        .I1(data3[10]),
        .I2(line_x_pos_reg[1]),
        .I3(line_x_pos_reg[4]),
        .I4(data3[13]),
        .I5(\vga_rgb_line[23]_i_46_n_0 ),
        .O(\vga_rgb_line[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0280802020080802)) 
    \vga_rgb_line[23]_i_18 
       (.I0(\vga_rgb_line[23]_i_47_n_0 ),
        .I1(\u0_pel_x_reg_n_0_[13] ),
        .I2(\u0_pel_x_reg_n_0_[14] ),
        .I3(\vga_rgb_line[23]_i_48_n_0 ),
        .I4(line_x_pos_reg[13]),
        .I5(line_x_pos_reg[14]),
        .O(\vga_rgb_line[23]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF69)) 
    \vga_rgb_line[23]_i_19 
       (.I0(line_x_pos_reg[5]),
        .I1(\vga_rgb_line[23]_i_49_n_0 ),
        .I2(data3[14]),
        .I3(\vga_rgb_line[23]_i_50_n_0 ),
        .I4(\vga_rgb_line[23]_i_51_n_0 ),
        .I5(\vga_rgb_line[23]_i_52_n_0 ),
        .O(\vga_rgb_line[23]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h01000001)) 
    \vga_rgb_line[23]_i_2 
       (.I0(\vga_rgb_line[23]_i_8_n_0 ),
        .I1(\vga_rgb_line[23]_i_9_n_0 ),
        .I2(\vga_rgb_line[23]_i_10_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[15] ),
        .I4(vga_rgb_line4__29),
        .O(\vga_rgb_line[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDEFFEFDDFFEEFDF)) 
    \vga_rgb_line[23]_i_20 
       (.I0(\u0_pel_x_reg_n_0_[10] ),
        .I1(\vga_rgb_line[23]_i_53_n_0 ),
        .I2(\u0_pel_x_reg_n_0_[11] ),
        .I3(line_x_pos_reg[10]),
        .I4(\vga_rgb_line[23]_i_54_n_0 ),
        .I5(line_x_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6F9FFF6FFFFF6)) 
    \vga_rgb_line[23]_i_21 
       (.I0(line_x_pos_reg[9]),
        .I1(sel0[2]),
        .I2(\vga_rgb_line[23]_i_55_n_0 ),
        .I3(sel0[1]),
        .I4(\vga_rgb_line[23]_i_56_n_0 ),
        .I5(line_x_pos_reg[8]),
        .O(\vga_rgb_line[23]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    \vga_rgb_line[23]_i_22 
       (.I0(line_x_pos_reg[14]),
        .I1(line_x_pos_reg[12]),
        .I2(\vga_rgb_line[23]_i_57_n_0 ),
        .I3(line_x_pos_reg[11]),
        .I4(line_x_pos_reg[13]),
        .I5(line_x_pos_reg[15]),
        .O(vga_rgb_line52_in));
  LUT6 #(
    .INIT(64'h0660060660096060)) 
    \vga_rgb_line[23]_i_23 
       (.I0(\u0_pel_x_reg_n_0_[13] ),
        .I1(line_x_pos_reg[13]),
        .I2(\u0_pel_x_reg_n_0_[12] ),
        .I3(line_x_pos_reg[11]),
        .I4(\vga_rgb_line[23]_i_57_n_0 ),
        .I5(line_x_pos_reg[12]),
        .O(\vga_rgb_line[23]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \vga_rgb_line[23]_i_24 
       (.I0(line_x_pos_reg[12]),
        .I1(\vga_rgb_line[23]_i_57_n_0 ),
        .I2(line_x_pos_reg[11]),
        .I3(line_x_pos_reg[13]),
        .O(\vga_rgb_line[23]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \vga_rgb_line[23]_i_25 
       (.I0(line_y_pos_reg[15]),
        .I1(line_y_pos_reg[14]),
        .I2(\vga_rgb_line[23]_i_58_n_0 ),
        .I3(line_y_pos_reg[13]),
        .I4(\u0_pel_y_reg_n_0_[15] ),
        .O(\vga_rgb_line[23]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF9FFFFF9FFF9F6FF)) 
    \vga_rgb_line[23]_i_26 
       (.I0(line_y_pos_reg[9]),
        .I1(\u0_pel_y_reg_n_0_[9] ),
        .I2(\vga_rgb_line[23]_i_59_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[8] ),
        .I4(\vga_rgb_line[23]_i_60_n_0 ),
        .I5(line_y_pos_reg[8]),
        .O(\vga_rgb_line[23]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFEDFDFEFEFFDFDFE)) 
    \vga_rgb_line[23]_i_27 
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(\vga_rgb_line[23]_i_61_n_0 ),
        .I2(\u0_pel_y_reg_n_0_[11] ),
        .I3(\vga_rgb_line[23]_i_62_n_0 ),
        .I4(line_y_pos_reg[10]),
        .I5(line_y_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFEFBBF)) 
    \vga_rgb_line[23]_i_28 
       (.I0(\vga_rgb_line[23]_i_63_n_0 ),
        .I1(\u0_pel_y_reg_n_0_[2] ),
        .I2(\u0_pel_y_reg_n_0_[3] ),
        .I3(line_y_pos_reg[3]),
        .I4(line_y_pos_reg[2]),
        .I5(\vga_rgb_line[23]_i_64_n_0 ),
        .O(\vga_rgb_line[23]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h6A95)) 
    \vga_rgb_line[23]_i_29 
       (.I0(line_y_pos_reg[14]),
        .I1(line_y_pos_reg[13]),
        .I2(\vga_rgb_line[23]_i_58_n_0 ),
        .I3(\u0_pel_y_reg_n_0_[14] ),
        .O(\vga_rgb_line[23]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \vga_rgb_line[23]_i_3 
       (.I0(\vga_rgb_line[23]_i_12_n_0 ),
        .I1(\u0_pel_y_reg_n_0_[14] ),
        .I2(\vga_rgb_line[23]_i_13_n_0 ),
        .I3(line_y_pos_reg[14]),
        .O(\vga_rgb_line[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \vga_rgb_line[23]_i_30 
       (.I0(\u0_pel_y_reg_n_0_[13] ),
        .I1(line_y_pos_reg[13]),
        .I2(\u0_pel_y_reg_n_0_[12] ),
        .I3(\vga_rgb_line[23]_i_65_n_0 ),
        .I4(line_y_pos_reg[12]),
        .O(\vga_rgb_line[23]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000057FF)) 
    \vga_rgb_line[23]_i_31 
       (.I0(line_y_pos_reg[3]),
        .I1(line_y_pos_reg[0]),
        .I2(line_y_pos_reg[1]),
        .I3(line_y_pos_reg[2]),
        .I4(line_y_pos_reg[4]),
        .O(\vga_rgb_line[23]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EEDDBDBDBB7)) 
    \vga_rgb_line[23]_i_32 
       (.I0(\u0_pel_y_reg_n_0_[2] ),
        .I1(\u0_pel_y_reg_n_0_[3] ),
        .I2(line_y_pos_reg[2]),
        .I3(line_y_pos_reg[1]),
        .I4(line_y_pos_reg[0]),
        .I5(line_y_pos_reg[3]),
        .O(\vga_rgb_line[23]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h99955555666AAAAA)) 
    \vga_rgb_line[23]_i_33 
       (.I0(line_y_pos_reg[4]),
        .I1(line_y_pos_reg[2]),
        .I2(line_y_pos_reg[1]),
        .I3(line_y_pos_reg[0]),
        .I4(line_y_pos_reg[3]),
        .I5(\u0_pel_y_reg_n_0_[4] ),
        .O(\vga_rgb_line[23]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h9FF6)) 
    \vga_rgb_line[23]_i_34 
       (.I0(\u0_pel_y_reg_n_0_[1] ),
        .I1(line_y_pos_reg[1]),
        .I2(\u0_pel_y_reg_n_0_[0] ),
        .I3(line_y_pos_reg[0]),
        .O(\vga_rgb_line[23]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \vga_rgb_line[23]_i_35 
       (.I0(line_y_pos_reg[7]),
        .I1(\vga_rgb_line[23]_i_66_n_0 ),
        .I2(line_y_pos_reg[6]),
        .I3(\u0_pel_y_reg_n_0_[7] ),
        .O(\vga_rgb_line[23]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \vga_rgb_line[23]_i_36 
       (.I0(line_y_pos_reg[8]),
        .I1(line_y_pos_reg[6]),
        .I2(\vga_rgb_line[23]_i_66_n_0 ),
        .I3(line_y_pos_reg[7]),
        .I4(line_y_pos_reg[9]),
        .O(\vga_rgb_line[23]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \vga_rgb_line[23]_i_37 
       (.I0(line_y_pos_reg[6]),
        .I1(\vga_rgb_line[23]_i_66_n_0 ),
        .I2(\u0_pel_y_reg_n_0_[6] ),
        .O(\vga_rgb_line[23]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \vga_rgb_line[23]_i_38 
       (.I0(line_y_pos_reg[6]),
        .I1(\vga_rgb_line[23]_i_66_n_0 ),
        .I2(line_y_pos_reg[7]),
        .O(\vga_rgb_line[23]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000105555)) 
    \vga_rgb_line[23]_i_39 
       (.I0(line_y_pos_reg[9]),
        .I1(line_y_pos_reg[7]),
        .I2(\vga_rgb_line[23]_i_66_n_0 ),
        .I3(line_y_pos_reg[6]),
        .I4(line_y_pos_reg[8]),
        .I5(line_y_pos_reg[10]),
        .O(\vga_rgb_line[23]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \vga_rgb_line[23]_i_4 
       (.I0(\vga_rgb_line[23]_i_14_n_0 ),
        .I1(\vga_rgb_line[23]_i_15_n_0 ),
        .I2(\vga_rgb_line[23]_i_16_n_0 ),
        .I3(\vga_rgb_line[23]_i_17_n_0 ),
        .I4(\vga_rgb_line[23]_i_18_n_0 ),
        .O(\vga_rgb_line[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_rgb_line[23]_i_40 
       (.I0(line_x_pos_reg[13]),
        .I1(line_x_pos_reg[11]),
        .I2(\vga_rgb_line[23]_i_44_n_0 ),
        .I3(line_x_pos_reg[10]),
        .I4(line_x_pos_reg[12]),
        .O(\vga_rgb_line[23]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \vga_rgb_line[23]_i_41 
       (.I0(line_x_pos_reg[6]),
        .I1(line_x_pos_reg[5]),
        .I2(line_x_pos_reg[4]),
        .I3(data3[15]),
        .O(\vga_rgb_line[23]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \vga_rgb_line[23]_i_42 
       (.I0(line_x_pos_reg[5]),
        .I1(line_x_pos_reg[4]),
        .I2(line_x_pos_reg[6]),
        .I3(line_x_pos_reg[7]),
        .O(\vga_rgb_line[23]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \vga_rgb_line[23]_i_43 
       (.I0(line_x_pos_reg[7]),
        .I1(line_x_pos_reg[6]),
        .I2(line_x_pos_reg[4]),
        .I3(line_x_pos_reg[5]),
        .I4(sel0[0]),
        .O(\vga_rgb_line[23]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8888888)) 
    \vga_rgb_line[23]_i_44 
       (.I0(line_x_pos_reg[9]),
        .I1(line_x_pos_reg[8]),
        .I2(line_x_pos_reg[5]),
        .I3(line_x_pos_reg[4]),
        .I4(line_x_pos_reg[6]),
        .I5(line_x_pos_reg[7]),
        .O(\vga_rgb_line[23]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \vga_rgb_line[23]_i_45 
       (.I0(data3[12]),
        .I1(line_x_pos_reg[3]),
        .I2(data3[9]),
        .I3(line_x_pos_reg[0]),
        .O(\vga_rgb_line[23]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h96FFFF96)) 
    \vga_rgb_line[23]_i_46 
       (.I0(data3[14]),
        .I1(line_x_pos_reg[4]),
        .I2(line_x_pos_reg[5]),
        .I3(data3[11]),
        .I4(line_x_pos_reg[2]),
        .O(\vga_rgb_line[23]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    \vga_rgb_line[23]_i_47 
       (.I0(line_x_pos_reg[12]),
        .I1(line_x_pos_reg[11]),
        .I2(\vga_rgb_line[23]_i_44_n_0 ),
        .I3(line_x_pos_reg[10]),
        .I4(\u0_pel_x_reg_n_0_[12] ),
        .O(\vga_rgb_line[23]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \vga_rgb_line[23]_i_48 
       (.I0(line_x_pos_reg[12]),
        .I1(line_x_pos_reg[10]),
        .I2(\vga_rgb_line[23]_i_44_n_0 ),
        .I3(line_x_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \vga_rgb_line[23]_i_49 
       (.I0(line_x_pos_reg[3]),
        .I1(line_x_pos_reg[0]),
        .I2(line_x_pos_reg[1]),
        .I3(line_x_pos_reg[2]),
        .I4(line_x_pos_reg[4]),
        .O(\vga_rgb_line[23]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h01000001)) 
    \vga_rgb_line[23]_i_5 
       (.I0(\vga_rgb_line[23]_i_19_n_0 ),
        .I1(\vga_rgb_line[23]_i_20_n_0 ),
        .I2(\vga_rgb_line[23]_i_21_n_0 ),
        .I3(\u0_pel_x_reg_n_0_[15] ),
        .I4(vga_rgb_line52_in),
        .O(\vga_rgb_line[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEDEDEDDBB7B7B77E)) 
    \vga_rgb_line[23]_i_50 
       (.I0(data3[11]),
        .I1(data3[12]),
        .I2(line_x_pos_reg[2]),
        .I3(line_x_pos_reg[1]),
        .I4(line_x_pos_reg[0]),
        .I5(line_x_pos_reg[3]),
        .O(\vga_rgb_line[23]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    \vga_rgb_line[23]_i_51 
       (.I0(line_x_pos_reg[4]),
        .I1(line_x_pos_reg[2]),
        .I2(line_x_pos_reg[1]),
        .I3(line_x_pos_reg[0]),
        .I4(line_x_pos_reg[3]),
        .I5(data3[13]),
        .O(\vga_rgb_line[23]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h9FF6)) 
    \vga_rgb_line[23]_i_52 
       (.I0(data3[10]),
        .I1(line_x_pos_reg[1]),
        .I2(data3[9]),
        .I3(line_x_pos_reg[0]),
        .O(\vga_rgb_line[23]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    \vga_rgb_line[23]_i_53 
       (.I0(line_x_pos_reg[7]),
        .I1(\vga_rgb_line[23]_i_67_n_0 ),
        .I2(line_x_pos_reg[6]),
        .I3(sel0[0]),
        .O(\vga_rgb_line[23]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h000075FF)) 
    \vga_rgb_line[23]_i_54 
       (.I0(line_x_pos_reg[8]),
        .I1(line_x_pos_reg[6]),
        .I2(\vga_rgb_line[23]_i_67_n_0 ),
        .I3(line_x_pos_reg[7]),
        .I4(line_x_pos_reg[9]),
        .O(\vga_rgb_line[23]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \vga_rgb_line[23]_i_55 
       (.I0(line_x_pos_reg[6]),
        .I1(\vga_rgb_line[23]_i_67_n_0 ),
        .I2(data3[15]),
        .O(\vga_rgb_line[23]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \vga_rgb_line[23]_i_56 
       (.I0(line_x_pos_reg[6]),
        .I1(\vga_rgb_line[23]_i_67_n_0 ),
        .I2(line_x_pos_reg[7]),
        .O(\vga_rgb_line[23]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011515555)) 
    \vga_rgb_line[23]_i_57 
       (.I0(line_x_pos_reg[9]),
        .I1(line_x_pos_reg[7]),
        .I2(\vga_rgb_line[23]_i_67_n_0 ),
        .I3(line_x_pos_reg[6]),
        .I4(line_x_pos_reg[8]),
        .I5(line_x_pos_reg[10]),
        .O(\vga_rgb_line[23]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \vga_rgb_line[23]_i_58 
       (.I0(line_y_pos_reg[12]),
        .I1(line_y_pos_reg[10]),
        .I2(\vga_rgb_line[23]_i_60_n_0 ),
        .I3(line_y_pos_reg[8]),
        .I4(line_y_pos_reg[9]),
        .I5(line_y_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA955555556AA)) 
    \vga_rgb_line[23]_i_59 
       (.I0(line_y_pos_reg[6]),
        .I1(line_y_pos_reg[2]),
        .I2(line_y_pos_reg[3]),
        .I3(line_y_pos_reg[4]),
        .I4(line_y_pos_reg[5]),
        .I5(\u0_pel_y_reg_n_0_[6] ),
        .O(\vga_rgb_line[23]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h8228)) 
    \vga_rgb_line[23]_i_6 
       (.I0(\vga_rgb_line[23]_i_23_n_0 ),
        .I1(\u0_pel_x_reg_n_0_[14] ),
        .I2(\vga_rgb_line[23]_i_24_n_0 ),
        .I3(line_x_pos_reg[14]),
        .O(\vga_rgb_line[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA80000000000)) 
    \vga_rgb_line[23]_i_60 
       (.I0(line_y_pos_reg[7]),
        .I1(line_y_pos_reg[2]),
        .I2(line_y_pos_reg[3]),
        .I3(line_y_pos_reg[4]),
        .I4(line_y_pos_reg[5]),
        .I5(line_y_pos_reg[6]),
        .O(\vga_rgb_line[23]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h99959595666A6A6A)) 
    \vga_rgb_line[23]_i_61 
       (.I0(line_y_pos_reg[7]),
        .I1(line_y_pos_reg[6]),
        .I2(line_y_pos_reg[5]),
        .I3(line_y_pos_reg[4]),
        .I4(\vga_rgb_line[23]_i_68_n_0 ),
        .I5(\u0_pel_y_reg_n_0_[7] ),
        .O(\vga_rgb_line[23]_i_61_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \vga_rgb_line[23]_i_62 
       (.I0(line_y_pos_reg[9]),
        .I1(line_y_pos_reg[8]),
        .I2(\vga_rgb_line[23]_i_60_n_0 ),
        .O(\vga_rgb_line[23]_i_62_n_0 ));
  LUT5 #(
    .INIT(32'h666A9995)) 
    \vga_rgb_line[23]_i_63 
       (.I0(line_y_pos_reg[5]),
        .I1(line_y_pos_reg[4]),
        .I2(line_y_pos_reg[3]),
        .I3(line_y_pos_reg[2]),
        .I4(\u0_pel_y_reg_n_0_[5] ),
        .O(\vga_rgb_line[23]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFF7D7DFF7DFFFF7D)) 
    \vga_rgb_line[23]_i_64 
       (.I0(\vga_rgb_line[23]_i_69_n_0 ),
        .I1(line_y_pos_reg[1]),
        .I2(\u0_pel_y_reg_n_0_[1] ),
        .I3(\u0_pel_y_reg_n_0_[4] ),
        .I4(\vga_rgb_line[23]_i_68_n_0 ),
        .I5(line_y_pos_reg[4]),
        .O(\vga_rgb_line[23]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h88800000)) 
    \vga_rgb_line[23]_i_65 
       (.I0(line_y_pos_reg[11]),
        .I1(line_y_pos_reg[9]),
        .I2(line_y_pos_reg[8]),
        .I3(\vga_rgb_line[23]_i_60_n_0 ),
        .I4(line_y_pos_reg[10]),
        .O(\vga_rgb_line[23]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h11155555FFFFFFFF)) 
    \vga_rgb_line[23]_i_66 
       (.I0(line_y_pos_reg[4]),
        .I1(line_y_pos_reg[2]),
        .I2(line_y_pos_reg[1]),
        .I3(line_y_pos_reg[0]),
        .I4(line_y_pos_reg[3]),
        .I5(line_y_pos_reg[5]),
        .O(\vga_rgb_line[23]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    \vga_rgb_line[23]_i_67 
       (.I0(line_x_pos_reg[4]),
        .I1(line_x_pos_reg[2]),
        .I2(line_x_pos_reg[1]),
        .I3(line_x_pos_reg[0]),
        .I4(line_x_pos_reg[3]),
        .I5(line_x_pos_reg[5]),
        .O(\vga_rgb_line[23]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vga_rgb_line[23]_i_68 
       (.I0(line_y_pos_reg[2]),
        .I1(line_y_pos_reg[3]),
        .O(\vga_rgb_line[23]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \vga_rgb_line[23]_i_69 
       (.I0(line_y_pos_reg[0]),
        .I1(\u0_pel_y_reg_n_0_[0] ),
        .O(\vga_rgb_line[23]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \vga_rgb_line[23]_i_7 
       (.I0(\vga_rgb_line[23]_i_25_n_0 ),
        .I1(\vga_rgb_line[23]_i_26_n_0 ),
        .I2(\vga_rgb_line[23]_i_27_n_0 ),
        .I3(\vga_rgb_line[23]_i_28_n_0 ),
        .I4(\vga_rgb_line[23]_i_29_n_0 ),
        .I5(\vga_rgb_line[23]_i_30_n_0 ),
        .O(\vga_rgb_line[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF96)) 
    \vga_rgb_line[23]_i_8 
       (.I0(line_y_pos_reg[5]),
        .I1(\vga_rgb_line[23]_i_31_n_0 ),
        .I2(\u0_pel_y_reg_n_0_[5] ),
        .I3(\vga_rgb_line[23]_i_32_n_0 ),
        .I4(\vga_rgb_line[23]_i_33_n_0 ),
        .I5(\vga_rgb_line[23]_i_34_n_0 ),
        .O(\vga_rgb_line[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDEFFEFDDFFEEFDF)) 
    \vga_rgb_line[23]_i_9 
       (.I0(\u0_pel_y_reg_n_0_[10] ),
        .I1(\vga_rgb_line[23]_i_35_n_0 ),
        .I2(\u0_pel_y_reg_n_0_[11] ),
        .I3(line_y_pos_reg[10]),
        .I4(\vga_rgb_line[23]_i_36_n_0 ),
        .I5(line_y_pos_reg[11]),
        .O(\vga_rgb_line[23]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[0] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[0] ),
        .Q(\vga_rgb_line_reg_n_0_[0] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[10] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[10] ),
        .Q(\vga_rgb_line_reg_n_0_[10] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[11] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[11] ),
        .Q(\vga_rgb_line_reg_n_0_[11] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[12] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[12] ),
        .Q(\vga_rgb_line_reg_n_0_[12] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[13] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[13] ),
        .Q(\vga_rgb_line_reg_n_0_[13] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[14] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[14] ),
        .Q(\vga_rgb_line_reg_n_0_[14] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[15] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[15] ),
        .Q(vga_rgb1),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[16] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[16] ),
        .Q(\vga_rgb_line_reg_n_0_[16] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[17] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[17] ),
        .Q(\vga_rgb_line_reg_n_0_[17] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[18] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[18] ),
        .Q(\vga_rgb_line_reg_n_0_[18] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[19] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[19] ),
        .Q(\vga_rgb_line_reg_n_0_[19] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[1] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[1] ),
        .Q(\vga_rgb_line_reg_n_0_[1] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[20] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[20] ),
        .Q(\vga_rgb_line_reg_n_0_[20] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[21] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[21] ),
        .Q(\vga_rgb_line_reg_n_0_[21] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[22] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[22] ),
        .Q(\vga_rgb_line_reg_n_0_[22] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[23] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(vga_rgb_line1),
        .Q(\vga_rgb_line_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[2] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[2] ),
        .Q(\vga_rgb_line_reg_n_0_[2] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[3] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[3] ),
        .Q(\vga_rgb_line_reg_n_0_[3] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[4] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[4] ),
        .Q(\vga_rgb_line_reg_n_0_[4] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[5] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[5] ),
        .Q(\vga_rgb_line_reg_n_0_[5] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[6] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[6] ),
        .Q(\vga_rgb_line_reg_n_0_[6] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[7] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[7] ),
        .Q(\vga_rgb_line_reg_n_0_[7] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[8] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[8] ),
        .Q(\vga_rgb_line_reg_n_0_[8] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_line_reg[9] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[9] ),
        .Q(\vga_rgb_line_reg_n_0_[9] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[0]_i_1_n_0 ),
        .Q(vga_pixel_rgb[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[10]_i_1_n_0 ),
        .Q(vga_pixel_rgb[10]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[11]_i_1_n_0 ),
        .Q(vga_pixel_rgb[11]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[12]_i_1_n_0 ),
        .Q(vga_pixel_rgb[12]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[13]_i_1_n_0 ),
        .Q(vga_pixel_rgb[13]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[14]_i_2_n_0 ),
        .Q(vga_pixel_rgb[14]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[15]_i_1_n_0 ),
        .Q(vga_pixel_rgb[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[16] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[16]_i_1_n_0 ),
        .Q(vga_pixel_rgb[16]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[17] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[17]_i_1_n_0 ),
        .Q(vga_pixel_rgb[17]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[18] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[18]_i_1_n_0 ),
        .Q(vga_pixel_rgb[18]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[19] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[19]_i_1_n_0 ),
        .Q(vga_pixel_rgb[19]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[1]_i_1_n_0 ),
        .Q(vga_pixel_rgb[1]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[20] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[20]_i_1_n_0 ),
        .Q(vga_pixel_rgb[20]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[21] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[21]_i_1_n_0 ),
        .Q(vga_pixel_rgb[21]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[22] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[22]_i_2_n_0 ),
        .Q(vga_pixel_rgb[22]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[23] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[23]_i_1_n_0 ),
        .Q(vga_pixel_rgb[23]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[2]_i_1_n_0 ),
        .Q(vga_pixel_rgb[2]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[3]_i_1_n_0 ),
        .Q(vga_pixel_rgb[3]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[4]_i_1_n_0 ),
        .Q(vga_pixel_rgb[4]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[5]_i_1_n_0 ),
        .Q(vga_pixel_rgb[5]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[6]_i_2_n_0 ),
        .Q(vga_pixel_rgb[6]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[7]_i_1_n_0 ),
        .Q(vga_pixel_rgb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[8]_i_1_n_0 ),
        .Q(vga_pixel_rgb[8]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \vga_rgb_reg[9] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[9]_i_1_n_0 ),
        .Q(vga_pixel_rgb[9]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[10]_i_1 
       (.I0(data3[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[11]_i_1 
       (.I0(data3[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[12]_i_1 
       (.I0(data3[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[13]_i_1 
       (.I0(data3[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[13]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[14]_i_1 
       (.I0(data3[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[14]));
  LUT3 #(
    .INIT(8'h14)) 
    \vga_rgb_tp[15]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(\vga_rgb_tp[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h60C0)) 
    \vga_rgb_tp[15]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(data3[15]),
        .I3(sel0[0]),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[17]_i_1 
       (.I0(data3[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[18]_i_1 
       (.I0(data3[10]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[19]_i_1 
       (.I0(data3[11]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[9]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[20]_i_1 
       (.I0(data3[12]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[21]_i_1 
       (.I0(data3[13]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[21]));
  LUT3 #(
    .INIT(8'h28)) 
    \vga_rgb_tp[22]_i_1 
       (.I0(data3[14]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_out[22]));
  LUT3 #(
    .INIT(8'h18)) 
    \vga_rgb_tp[23]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\vga_rgb_tp[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \vga_rgb_tp[23]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \vga_rgb_tp[23]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(data3[15]),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[10]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[11]),
        .O(p_0_out[3]));
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[4]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[12]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[5]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[13]),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[6]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[14]),
        .O(p_0_out[6]));
  LUT3 #(
    .INIT(8'h70)) 
    \vga_rgb_tp[7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\vga_rgb_tp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    \vga_rgb_tp[7]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data3[15]),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \vga_rgb_tp[9]_i_1 
       (.I0(data3[9]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(p_0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[10] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[10]),
        .Q(vga_rgb_tp[10]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[11] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[11]),
        .Q(vga_rgb_tp[11]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[12] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[12]),
        .Q(vga_rgb_tp[12]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[13] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[13]),
        .Q(vga_rgb_tp[13]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[14] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[14]),
        .Q(vga_rgb_tp[14]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[15] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[15]),
        .Q(vga_rgb_tp[15]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[17] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[17]),
        .Q(vga_rgb_tp[17]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[18] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[18]),
        .Q(vga_rgb_tp[18]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[19] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[19]),
        .Q(vga_rgb_tp[19]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[1] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[1]),
        .Q(vga_rgb_tp[1]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[20] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[20]),
        .Q(vga_rgb_tp[20]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[21] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[21]),
        .Q(vga_rgb_tp[21]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[22] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[22]),
        .Q(vga_rgb_tp[22]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[23] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[23]),
        .Q(vga_rgb_tp[23]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[2] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[2]),
        .Q(vga_rgb_tp[2]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[3] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[3]),
        .Q(vga_rgb_tp[3]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[4] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[4]),
        .Q(vga_rgb_tp[4]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[5] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[5]),
        .Q(vga_rgb_tp[5]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[6] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[6]),
        .Q(vga_rgb_tp[6]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[7] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[7]),
        .Q(vga_rgb_tp[7]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_rgb_tp_reg[9] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[9]),
        .Q(vga_rgb_tp[9]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "vga_timing" *) 
module vcu_DT_blk_design_vga_core_0_0_vga_timing
   (vid_new_frame_reg_0,
    vid_new_frame,
    vid_new_frame_reg_1,
    mode_bit_0,
    vid_new_frame_reg_2,
    E,
    vid_new_frame_reg_3,
    \dir_chg_sr_reg[0] ,
    SR,
    vid_new_line,
    vga_active,
    vga_hsync,
    vga_vsync,
    \dir_chg_sr_reg[0]_0 ,
    mode_bit,
    DI,
    \dir_chg_sr_reg[0]_1 ,
    \ball_x_dir_reg[10] ,
    \dir_chg_sr_reg[0]_2 ,
    \line_y_pos_reg[0] ,
    \line_y_pos_reg[0]_0 ,
    Q,
    \line_y_pos_reg[0]_1 ,
    \line_y_pos_reg[0]_2 ,
    \line_y_pos_reg[0]_3 ,
    clk_dot,
    reset);
  output vid_new_frame_reg_0;
  output vid_new_frame;
  output vid_new_frame_reg_1;
  output mode_bit_0;
  output vid_new_frame_reg_2;
  output [0:0]E;
  output [0:0]vid_new_frame_reg_3;
  output [0:0]\dir_chg_sr_reg[0] ;
  output [0:0]SR;
  output vid_new_line;
  output vga_active;
  output vga_hsync;
  output vga_vsync;
  input \dir_chg_sr_reg[0]_0 ;
  input mode_bit;
  input [0:0]DI;
  input \dir_chg_sr_reg[0]_1 ;
  input [0:0]\ball_x_dir_reg[10] ;
  input \dir_chg_sr_reg[0]_2 ;
  input \line_y_pos_reg[0] ;
  input \line_y_pos_reg[0]_0 ;
  input [1:0]Q;
  input \line_y_pos_reg[0]_1 ;
  input \line_y_pos_reg[0]_2 ;
  input \line_y_pos_reg[0]_3 ;
  input clk_dot;
  input reset;

  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]\ball_x_dir_reg[10] ;
  wire clk_dot;
  wire [15:0]cnt_h;
  wire cnt_h115_out;
  wire \cnt_h[11]_i_1_n_0 ;
  wire \cnt_h[12]_i_2_n_0 ;
  wire \cnt_h[15]_i_2_n_0 ;
  wire \cnt_h[6]_i_2_n_0 ;
  wire \cnt_h[7]_i_2_n_0 ;
  wire \cnt_h_reg_n_0_[0] ;
  wire \cnt_h_reg_n_0_[10] ;
  wire \cnt_h_reg_n_0_[11] ;
  wire \cnt_h_reg_n_0_[12] ;
  wire \cnt_h_reg_n_0_[13] ;
  wire \cnt_h_reg_n_0_[14] ;
  wire \cnt_h_reg_n_0_[15] ;
  wire \cnt_h_reg_n_0_[1] ;
  wire \cnt_h_reg_n_0_[2] ;
  wire \cnt_h_reg_n_0_[3] ;
  wire \cnt_h_reg_n_0_[4] ;
  wire \cnt_h_reg_n_0_[5] ;
  wire \cnt_h_reg_n_0_[6] ;
  wire \cnt_h_reg_n_0_[7] ;
  wire \cnt_h_reg_n_0_[8] ;
  wire \cnt_h_reg_n_0_[9] ;
  wire [15:0]cnt_v;
  wire \cnt_v[10]_i_2_n_0 ;
  wire \cnt_v[15]_i_2_n_0 ;
  wire \cnt_v[2]_i_2_n_0 ;
  wire \cnt_v[2]_i_3_n_0 ;
  wire \cnt_v[4]_i_2_n_0 ;
  wire \cnt_v[9]_i_2_n_0 ;
  wire \cnt_v[9]_i_3_n_0 ;
  wire \cnt_v[9]_i_4_n_0 ;
  wire \cnt_v_reg_n_0_[0] ;
  wire \cnt_v_reg_n_0_[10] ;
  wire \cnt_v_reg_n_0_[11] ;
  wire \cnt_v_reg_n_0_[12] ;
  wire \cnt_v_reg_n_0_[13] ;
  wire \cnt_v_reg_n_0_[14] ;
  wire \cnt_v_reg_n_0_[15] ;
  wire \cnt_v_reg_n_0_[1] ;
  wire \cnt_v_reg_n_0_[2] ;
  wire \cnt_v_reg_n_0_[3] ;
  wire \cnt_v_reg_n_0_[4] ;
  wire \cnt_v_reg_n_0_[5] ;
  wire \cnt_v_reg_n_0_[6] ;
  wire \cnt_v_reg_n_0_[7] ;
  wire \cnt_v_reg_n_0_[8] ;
  wire \cnt_v_reg_n_0_[9] ;
  wire [0:0]\dir_chg_sr_reg[0] ;
  wire \dir_chg_sr_reg[0]_0 ;
  wire \dir_chg_sr_reg[0]_1 ;
  wire \dir_chg_sr_reg[0]_2 ;
  wire [1:0]fsm_h;
  wire \fsm_h[1]_i_1_n_0 ;
  wire \fsm_h[1]_i_3_n_0 ;
  wire \fsm_h[1]_i_4_n_0 ;
  wire \fsm_h[1]_i_5_n_0 ;
  wire \fsm_h[1]_i_6_n_0 ;
  wire \fsm_h[1]_i_7_n_0 ;
  wire \fsm_h_reg_n_0_[0] ;
  wire \fsm_h_reg_n_0_[1] ;
  wire [1:0]fsm_v;
  wire \fsm_v[0]_i_2_n_0 ;
  wire \fsm_v[1]_i_10_n_0 ;
  wire \fsm_v[1]_i_1_n_0 ;
  wire \fsm_v[1]_i_3_n_0 ;
  wire \fsm_v[1]_i_4_n_0 ;
  wire \fsm_v[1]_i_5_n_0 ;
  wire \fsm_v[1]_i_6_n_0 ;
  wire \fsm_v[1]_i_7_n_0 ;
  wire \fsm_v[1]_i_8_n_0 ;
  wire \fsm_v[1]_i_9_n_0 ;
  wire \fsm_v_reg_n_0_[0] ;
  wire \fsm_v_reg_n_0_[1] ;
  wire h_rollover;
  wire h_rollover_i_2_n_0;
  wire hsync_loc;
  wire hsync_loc_i_1_n_0;
  wire \line_rgb[22]_i_4_n_0 ;
  wire \line_y_pos_reg[0] ;
  wire \line_y_pos_reg[0]_0 ;
  wire \line_y_pos_reg[0]_1 ;
  wire \line_y_pos_reg[0]_2 ;
  wire \line_y_pos_reg[0]_3 ;
  wire mode_bit;
  wire mode_bit_0;
  wire reset;
  wire vga_active;
  wire vga_hsync;
  wire vga_vsync;
  wire vid_active0;
  wire vid_new_frame;
  wire vid_new_frame_i_1_n_0;
  wire vid_new_frame_reg_0;
  wire vid_new_frame_reg_1;
  wire vid_new_frame_reg_2;
  wire [0:0]vid_new_frame_reg_3;
  wire vid_new_line;
  wire vid_new_line0;
  wire vid_new_line_i_2_n_0;
  wire vid_new_line_i_3_n_0;
  wire vsync_loc;
  wire vsync_loc_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \ball_rgb[22]_i_1 
       (.I0(\dir_chg_sr_reg[0]_2 ),
        .I1(vid_new_frame),
        .I2(mode_bit),
        .O(\dir_chg_sr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F8F)) 
    \ball_x_dir[10]_i_1 
       (.I0(\dir_chg_sr_reg[0]_1 ),
        .I1(vid_new_frame),
        .I2(mode_bit),
        .I3(\ball_x_dir_reg[10] ),
        .O(vid_new_frame_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \ball_x_dir[11]_i_1 
       (.I0(\dir_chg_sr_reg[0]_1 ),
        .I1(vid_new_frame),
        .I2(mode_bit),
        .O(vid_new_frame_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F8F)) 
    \ball_y_dir[10]_i_1 
       (.I0(vid_new_frame),
        .I1(\dir_chg_sr_reg[0]_0 ),
        .I2(mode_bit),
        .I3(DI),
        .O(vid_new_frame_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \ball_y_dir[11]_i_1 
       (.I0(vid_new_frame),
        .I1(\dir_chg_sr_reg[0]_0 ),
        .I2(mode_bit),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_h[0]_i_1 
       (.I0(\cnt_h_reg_n_0_[0] ),
        .O(cnt_h[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \cnt_h[10]_i_1 
       (.I0(\cnt_h_reg_n_0_[10] ),
        .I1(\cnt_h_reg_n_0_[9] ),
        .I2(\cnt_h_reg_n_0_[8] ),
        .I3(\cnt_h[12]_i_2_n_0 ),
        .O(cnt_h[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \cnt_h[11]_i_1 
       (.I0(\cnt_h_reg_n_0_[11] ),
        .I1(\cnt_h_reg_n_0_[10] ),
        .I2(\cnt_h_reg_n_0_[9] ),
        .I3(\cnt_h_reg_n_0_[8] ),
        .I4(\cnt_h[12]_i_2_n_0 ),
        .O(\cnt_h[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \cnt_h[12]_i_1 
       (.I0(\cnt_h_reg_n_0_[12] ),
        .I1(\cnt_h[12]_i_2_n_0 ),
        .I2(\cnt_h_reg_n_0_[8] ),
        .I3(\cnt_h_reg_n_0_[9] ),
        .I4(\cnt_h_reg_n_0_[10] ),
        .I5(\cnt_h_reg_n_0_[11] ),
        .O(cnt_h[12]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \cnt_h[12]_i_2 
       (.I0(\cnt_h_reg_n_0_[6] ),
        .I1(\cnt_h_reg_n_0_[4] ),
        .I2(\cnt_h[6]_i_2_n_0 ),
        .I3(\cnt_h_reg_n_0_[3] ),
        .I4(\cnt_h_reg_n_0_[5] ),
        .I5(\cnt_h_reg_n_0_[7] ),
        .O(\cnt_h[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \cnt_h[13]_i_1 
       (.I0(\cnt_h_reg_n_0_[13] ),
        .I1(\cnt_h_reg_n_0_[11] ),
        .I2(\cnt_h[15]_i_2_n_0 ),
        .I3(\cnt_h_reg_n_0_[12] ),
        .O(cnt_h[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \cnt_h[14]_i_1 
       (.I0(\cnt_h_reg_n_0_[14] ),
        .I1(\cnt_h_reg_n_0_[12] ),
        .I2(\cnt_h[15]_i_2_n_0 ),
        .I3(\cnt_h_reg_n_0_[11] ),
        .I4(\cnt_h_reg_n_0_[13] ),
        .O(cnt_h[14]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \cnt_h[15]_i_1 
       (.I0(\cnt_h_reg_n_0_[15] ),
        .I1(\cnt_h_reg_n_0_[13] ),
        .I2(\cnt_h_reg_n_0_[11] ),
        .I3(\cnt_h[15]_i_2_n_0 ),
        .I4(\cnt_h_reg_n_0_[12] ),
        .I5(\cnt_h_reg_n_0_[14] ),
        .O(cnt_h[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \cnt_h[15]_i_2 
       (.I0(\cnt_h[12]_i_2_n_0 ),
        .I1(\cnt_h_reg_n_0_[8] ),
        .I2(\cnt_h_reg_n_0_[9] ),
        .I3(\cnt_h_reg_n_0_[10] ),
        .O(\cnt_h[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_h[1]_i_1 
       (.I0(\cnt_h_reg_n_0_[0] ),
        .I1(\cnt_h_reg_n_0_[1] ),
        .O(cnt_h[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_h[2]_i_1 
       (.I0(\cnt_h_reg_n_0_[2] ),
        .I1(\cnt_h_reg_n_0_[0] ),
        .I2(\cnt_h_reg_n_0_[1] ),
        .O(cnt_h[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_h[3]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .I1(\cnt_h_reg_n_0_[1] ),
        .I2(\cnt_h_reg_n_0_[0] ),
        .I3(\cnt_h_reg_n_0_[2] ),
        .I4(\cnt_h_reg_n_0_[3] ),
        .O(cnt_h[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_h[4]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .I1(\cnt_h_reg_n_0_[2] ),
        .I2(\cnt_h_reg_n_0_[0] ),
        .I3(\cnt_h_reg_n_0_[1] ),
        .I4(\cnt_h_reg_n_0_[3] ),
        .I5(\cnt_h_reg_n_0_[4] ),
        .O(cnt_h[4]));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \cnt_h[5]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .I1(\cnt_h_reg_n_0_[3] ),
        .I2(\cnt_h[6]_i_2_n_0 ),
        .I3(\cnt_h_reg_n_0_[4] ),
        .I4(\cnt_h_reg_n_0_[5] ),
        .O(cnt_h[5]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \cnt_h[6]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .I1(\cnt_h_reg_n_0_[4] ),
        .I2(\cnt_h[6]_i_2_n_0 ),
        .I3(\cnt_h_reg_n_0_[3] ),
        .I4(\cnt_h_reg_n_0_[5] ),
        .I5(\cnt_h_reg_n_0_[6] ),
        .O(cnt_h[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_h[6]_i_2 
       (.I0(\cnt_h_reg_n_0_[1] ),
        .I1(\cnt_h_reg_n_0_[0] ),
        .I2(\cnt_h_reg_n_0_[2] ),
        .O(\cnt_h[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \cnt_h[7]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .I1(\cnt_h[7]_i_2_n_0 ),
        .I2(\cnt_h_reg_n_0_[6] ),
        .I3(\cnt_h_reg_n_0_[7] ),
        .O(cnt_h[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_h[7]_i_2 
       (.I0(\cnt_h_reg_n_0_[4] ),
        .I1(\cnt_h_reg_n_0_[2] ),
        .I2(\cnt_h_reg_n_0_[0] ),
        .I3(\cnt_h_reg_n_0_[1] ),
        .I4(\cnt_h_reg_n_0_[3] ),
        .I5(\cnt_h_reg_n_0_[5] ),
        .O(\cnt_h[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \cnt_h[8]_i_1 
       (.I0(\cnt_h_reg_n_0_[8] ),
        .I1(\cnt_h[12]_i_2_n_0 ),
        .I2(\fsm_h[1]_i_3_n_0 ),
        .O(cnt_h[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA600)) 
    \cnt_h[9]_i_1 
       (.I0(\cnt_h_reg_n_0_[9] ),
        .I1(\cnt_h_reg_n_0_[8] ),
        .I2(\cnt_h[12]_i_2_n_0 ),
        .I3(\fsm_h[1]_i_3_n_0 ),
        .O(cnt_h[9]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_h_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(cnt_h[0]),
        .PRE(reset),
        .Q(\cnt_h_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[10]),
        .Q(\cnt_h_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt_h[11]_i_1_n_0 ),
        .Q(\cnt_h_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[12]),
        .Q(\cnt_h_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[13]),
        .Q(\cnt_h_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[14]),
        .Q(\cnt_h_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[15]),
        .Q(\cnt_h_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[1]),
        .Q(\cnt_h_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[2]),
        .Q(\cnt_h_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[3]),
        .Q(\cnt_h_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[4]),
        .Q(\cnt_h_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[5]),
        .Q(\cnt_h_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[6]),
        .Q(\cnt_h_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[7]),
        .Q(\cnt_h_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[8]),
        .Q(\cnt_h_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_h_reg[9] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[9]),
        .Q(\cnt_h_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \cnt_v[0]_i_1 
       (.I0(\cnt_v_reg_n_0_[0] ),
        .I1(\fsm_v[1]_i_3_n_0 ),
        .I2(fsm_v[1]),
        .O(cnt_v[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \cnt_v[10]_i_1 
       (.I0(\cnt_v_reg_n_0_[8] ),
        .I1(\cnt_v_reg_n_0_[6] ),
        .I2(\cnt_v[10]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[7] ),
        .I4(\cnt_v_reg_n_0_[9] ),
        .I5(\cnt_v_reg_n_0_[10] ),
        .O(cnt_v[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_v[10]_i_2 
       (.I0(\cnt_v_reg_n_0_[4] ),
        .I1(\cnt_v_reg_n_0_[2] ),
        .I2(\cnt_v_reg_n_0_[0] ),
        .I3(\cnt_v_reg_n_0_[1] ),
        .I4(\cnt_v_reg_n_0_[3] ),
        .I5(\cnt_v_reg_n_0_[5] ),
        .O(\cnt_v[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_v[11]_i_1 
       (.I0(\cnt_v_reg_n_0_[11] ),
        .I1(\cnt_v[15]_i_2_n_0 ),
        .O(cnt_v[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_v[12]_i_1 
       (.I0(\cnt_v_reg_n_0_[12] ),
        .I1(\cnt_v[15]_i_2_n_0 ),
        .I2(\cnt_v_reg_n_0_[11] ),
        .O(cnt_v[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cnt_v[13]_i_1 
       (.I0(\cnt_v_reg_n_0_[13] ),
        .I1(\cnt_v_reg_n_0_[11] ),
        .I2(\cnt_v[15]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[12] ),
        .O(cnt_v[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt_v[14]_i_1 
       (.I0(\cnt_v_reg_n_0_[14] ),
        .I1(\cnt_v_reg_n_0_[12] ),
        .I2(\cnt_v[15]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[11] ),
        .I4(\cnt_v_reg_n_0_[13] ),
        .O(cnt_v[14]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_v[15]_i_1 
       (.I0(\cnt_v_reg_n_0_[15] ),
        .I1(\cnt_v_reg_n_0_[13] ),
        .I2(\cnt_v_reg_n_0_[11] ),
        .I3(\cnt_v[15]_i_2_n_0 ),
        .I4(\cnt_v_reg_n_0_[12] ),
        .I5(\cnt_v_reg_n_0_[14] ),
        .O(cnt_v[15]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \cnt_v[15]_i_2 
       (.I0(\cnt_v_reg_n_0_[10] ),
        .I1(\cnt_v_reg_n_0_[9] ),
        .I2(\cnt_v_reg_n_0_[7] ),
        .I3(\cnt_v[10]_i_2_n_0 ),
        .I4(\cnt_v_reg_n_0_[6] ),
        .I5(\cnt_v_reg_n_0_[8] ),
        .O(\cnt_v[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_v[1]_i_1 
       (.I0(\cnt_v[9]_i_2_n_0 ),
        .I1(\cnt_v_reg_n_0_[0] ),
        .I2(\cnt_v_reg_n_0_[1] ),
        .O(cnt_v[1]));
  LUT6 #(
    .INIT(64'h00FFFFFEFF000000)) 
    \cnt_v[2]_i_1 
       (.I0(\cnt_v[2]_i_2_n_0 ),
        .I1(\fsm_v_reg_n_0_[1] ),
        .I2(\fsm_v_reg_n_0_[0] ),
        .I3(\cnt_v_reg_n_0_[1] ),
        .I4(\cnt_v_reg_n_0_[0] ),
        .I5(\cnt_v_reg_n_0_[2] ),
        .O(cnt_v[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_v[2]_i_2 
       (.I0(\cnt_v_reg_n_0_[4] ),
        .I1(\cnt_v[2]_i_3_n_0 ),
        .I2(\cnt_v_reg_n_0_[6] ),
        .I3(\cnt_v_reg_n_0_[9] ),
        .I4(\cnt_v_reg_n_0_[3] ),
        .O(\cnt_v[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt_v[2]_i_3 
       (.I0(\fsm_v[1]_i_7_n_0 ),
        .I1(\cnt_v_reg_n_0_[8] ),
        .I2(\cnt_v_reg_n_0_[14] ),
        .I3(\cnt_v_reg_n_0_[15] ),
        .I4(\cnt_v_reg_n_0_[10] ),
        .I5(\cnt_v_reg_n_0_[11] ),
        .O(\cnt_v[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \cnt_v[3]_i_1 
       (.I0(\fsm_v[1]_i_3_n_0 ),
        .I1(fsm_v[1]),
        .I2(\cnt_v_reg_n_0_[1] ),
        .I3(\cnt_v_reg_n_0_[0] ),
        .I4(\cnt_v_reg_n_0_[2] ),
        .I5(\cnt_v_reg_n_0_[3] ),
        .O(cnt_v[3]));
  LUT5 #(
    .INIT(32'h10110100)) 
    \cnt_v[4]_i_1 
       (.I0(\fsm_v[1]_i_3_n_0 ),
        .I1(fsm_v[1]),
        .I2(\cnt_v[4]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[3] ),
        .I4(\cnt_v_reg_n_0_[4] ),
        .O(cnt_v[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_v[4]_i_2 
       (.I0(\cnt_v_reg_n_0_[1] ),
        .I1(\cnt_v_reg_n_0_[0] ),
        .I2(\cnt_v_reg_n_0_[2] ),
        .O(\cnt_v[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cnt_v[5]_i_1 
       (.I0(\cnt_v_reg_n_0_[5] ),
        .I1(\cnt_v_reg_n_0_[3] ),
        .I2(\cnt_v_reg_n_0_[1] ),
        .I3(\cnt_v_reg_n_0_[0] ),
        .I4(\cnt_v_reg_n_0_[2] ),
        .I5(\cnt_v_reg_n_0_[4] ),
        .O(cnt_v[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_v[6]_i_1 
       (.I0(\cnt_v[9]_i_2_n_0 ),
        .I1(\cnt_v[10]_i_2_n_0 ),
        .I2(\cnt_v_reg_n_0_[6] ),
        .O(cnt_v[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \cnt_v[7]_i_1 
       (.I0(\cnt_v_reg_n_0_[7] ),
        .I1(\cnt_v[10]_i_2_n_0 ),
        .I2(\cnt_v_reg_n_0_[6] ),
        .O(cnt_v[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \cnt_v[8]_i_1 
       (.I0(\cnt_v_reg_n_0_[8] ),
        .I1(\cnt_v_reg_n_0_[6] ),
        .I2(\cnt_v[10]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[7] ),
        .O(cnt_v[8]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \cnt_v[9]_i_1 
       (.I0(\cnt_v[9]_i_2_n_0 ),
        .I1(\cnt_v_reg_n_0_[7] ),
        .I2(\cnt_v[10]_i_2_n_0 ),
        .I3(\cnt_v_reg_n_0_[6] ),
        .I4(\cnt_v_reg_n_0_[8] ),
        .I5(\cnt_v_reg_n_0_[9] ),
        .O(cnt_v[9]));
  LUT6 #(
    .INIT(64'hFBFBFFFFFF00FFFF)) 
    \cnt_v[9]_i_2 
       (.I0(\fsm_v[0]_i_2_n_0 ),
        .I1(\cnt_v_reg_n_0_[0] ),
        .I2(\cnt_v_reg_n_0_[1] ),
        .I3(\cnt_v[9]_i_3_n_0 ),
        .I4(\fsm_v_reg_n_0_[1] ),
        .I5(\fsm_v_reg_n_0_[0] ),
        .O(\cnt_v[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \cnt_v[9]_i_3 
       (.I0(\cnt_v[2]_i_3_n_0 ),
        .I1(\cnt_v[9]_i_4_n_0 ),
        .I2(\cnt_v_reg_n_0_[4] ),
        .I3(\cnt_v_reg_n_0_[3] ),
        .I4(\cnt_v_reg_n_0_[2] ),
        .I5(\fsm_v[1]_i_9_n_0 ),
        .O(\cnt_v[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_v[9]_i_4 
       (.I0(\cnt_v_reg_n_0_[6] ),
        .I1(\cnt_v_reg_n_0_[9] ),
        .O(\cnt_v[9]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_v_reg[0] 
       (.C(clk_dot),
        .CE(h_rollover),
        .D(cnt_v[0]),
        .PRE(reset),
        .Q(\cnt_v_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[10] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[10]),
        .Q(\cnt_v_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[11] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[11]),
        .Q(\cnt_v_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[12] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[12]),
        .Q(\cnt_v_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[13] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[13]),
        .Q(\cnt_v_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[14] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[14]),
        .Q(\cnt_v_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[15] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[15]),
        .Q(\cnt_v_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[1] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[1]),
        .Q(\cnt_v_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[2] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[2]),
        .Q(\cnt_v_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[3] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[3]),
        .Q(\cnt_v_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[4] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[4]),
        .Q(\cnt_v_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[5] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[5]),
        .Q(\cnt_v_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[6] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[6]),
        .Q(\cnt_v_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[7] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[7]),
        .Q(\cnt_v_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[8] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[8]),
        .Q(\cnt_v_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_v_reg[9] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[9]),
        .Q(\cnt_v_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \dir_chg_sr[0]_i_1 
       (.I0(\dir_chg_sr_reg[0]_0 ),
        .I1(\dir_chg_sr_reg[0]_1 ),
        .I2(mode_bit),
        .I3(vid_new_frame),
        .I4(\dir_chg_sr_reg[0]_2 ),
        .O(mode_bit_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dir_chg_sr[3]_i_1 
       (.I0(vid_new_frame),
        .I1(mode_bit),
        .O(vid_new_frame_reg_2));
  LUT2 #(
    .INIT(4'h1)) 
    \fsm_h[0]_i_1 
       (.I0(vid_new_line0),
        .I1(cnt_h115_out),
        .O(fsm_h[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \fsm_h[1]_i_1 
       (.I0(\fsm_h[1]_i_3_n_0 ),
        .O(\fsm_h[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \fsm_h[1]_i_2 
       (.I0(vid_new_line0),
        .I1(\cnt_h_reg_n_0_[5] ),
        .I2(\cnt_h_reg_n_0_[3] ),
        .I3(\cnt_h_reg_n_0_[7] ),
        .I4(\fsm_h[1]_i_4_n_0 ),
        .I5(\fsm_h[1]_i_5_n_0 ),
        .O(fsm_h[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \fsm_h[1]_i_3 
       (.I0(fsm_h[1]),
        .I1(\fsm_h[1]_i_6_n_0 ),
        .O(\fsm_h[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \fsm_h[1]_i_4 
       (.I0(\fsm_h_reg_n_0_[1] ),
        .I1(\fsm_h_reg_n_0_[0] ),
        .I2(\cnt_h_reg_n_0_[8] ),
        .I3(\cnt_h_reg_n_0_[9] ),
        .I4(\cnt_h_reg_n_0_[4] ),
        .I5(\cnt_h_reg_n_0_[6] ),
        .O(\fsm_h[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fsm_h[1]_i_5 
       (.I0(\cnt_h_reg_n_0_[2] ),
        .I1(\cnt_h_reg_n_0_[12] ),
        .I2(\cnt_h_reg_n_0_[11] ),
        .I3(\fsm_h[1]_i_7_n_0 ),
        .O(\fsm_h[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000008)) 
    \fsm_h[1]_i_6 
       (.I0(h_rollover_i_2_n_0),
        .I1(\cnt_h_reg_n_0_[7] ),
        .I2(\cnt_h_reg_n_0_[3] ),
        .I3(\fsm_h_reg_n_0_[1] ),
        .I4(\fsm_h_reg_n_0_[0] ),
        .I5(\cnt_h_reg_n_0_[5] ),
        .O(\fsm_h[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fsm_h[1]_i_7 
       (.I0(\cnt_h_reg_n_0_[1] ),
        .I1(\cnt_h_reg_n_0_[0] ),
        .I2(\cnt_h_reg_n_0_[10] ),
        .I3(\cnt_h_reg_n_0_[15] ),
        .I4(\cnt_h_reg_n_0_[13] ),
        .I5(\cnt_h_reg_n_0_[14] ),
        .O(\fsm_h[1]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \fsm_h_reg[0] 
       (.C(clk_dot),
        .CE(\fsm_h[1]_i_1_n_0 ),
        .CLR(reset),
        .D(fsm_h[0]),
        .Q(\fsm_h_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \fsm_h_reg[1] 
       (.C(clk_dot),
        .CE(\fsm_h[1]_i_1_n_0 ),
        .CLR(reset),
        .D(fsm_h[1]),
        .Q(\fsm_h_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00000000)) 
    \fsm_v[0]_i_1 
       (.I0(\fsm_v[0]_i_2_n_0 ),
        .I1(\fsm_v_reg_n_0_[0] ),
        .I2(\cnt_v_reg_n_0_[0] ),
        .I3(\cnt_v_reg_n_0_[1] ),
        .I4(\fsm_v_reg_n_0_[1] ),
        .I5(\fsm_v[1]_i_6_n_0 ),
        .O(fsm_v[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \fsm_v[0]_i_2 
       (.I0(\cnt_v_reg_n_0_[2] ),
        .I1(\cnt_v[2]_i_2_n_0 ),
        .O(\fsm_v[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \fsm_v[1]_i_1 
       (.I0(h_rollover),
        .I1(\fsm_v[1]_i_3_n_0 ),
        .I2(fsm_v[1]),
        .O(\fsm_v[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fsm_v[1]_i_10 
       (.I0(\cnt_v_reg_n_0_[3] ),
        .I1(\cnt_v_reg_n_0_[9] ),
        .I2(\cnt_v_reg_n_0_[6] ),
        .I3(\cnt_v[2]_i_3_n_0 ),
        .O(\fsm_v[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \fsm_v[1]_i_2 
       (.I0(\cnt_v_reg_n_0_[15] ),
        .I1(\cnt_v_reg_n_0_[14] ),
        .I2(\cnt_v_reg_n_0_[8] ),
        .I3(\fsm_v[1]_i_4_n_0 ),
        .I4(\fsm_v[1]_i_5_n_0 ),
        .I5(\fsm_v[1]_i_6_n_0 ),
        .O(fsm_v[1]));
  LUT6 #(
    .INIT(64'h0000000004000002)) 
    \fsm_v[1]_i_3 
       (.I0(\cnt_v_reg_n_0_[2] ),
        .I1(\cnt_v_reg_n_0_[0] ),
        .I2(\cnt_v_reg_n_0_[1] ),
        .I3(\fsm_v_reg_n_0_[0] ),
        .I4(\fsm_v_reg_n_0_[1] ),
        .I5(\cnt_v[2]_i_2_n_0 ),
        .O(\fsm_v[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \fsm_v[1]_i_4 
       (.I0(\fsm_v[1]_i_7_n_0 ),
        .I1(\cnt_v_reg_n_0_[4] ),
        .I2(\cnt_v_reg_n_0_[6] ),
        .I3(\cnt_v_reg_n_0_[9] ),
        .O(\fsm_v[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \fsm_v[1]_i_5 
       (.I0(\cnt_v_reg_n_0_[2] ),
        .I1(\cnt_v_reg_n_0_[3] ),
        .I2(\fsm_v[1]_i_8_n_0 ),
        .I3(\fsm_v[1]_i_9_n_0 ),
        .I4(\cnt_v_reg_n_0_[10] ),
        .I5(\cnt_v_reg_n_0_[11] ),
        .O(\fsm_v[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \fsm_v[1]_i_6 
       (.I0(\fsm_v[1]_i_10_n_0 ),
        .I1(\fsm_v_reg_n_0_[1] ),
        .I2(\cnt_v_reg_n_0_[4] ),
        .I3(\fsm_v_reg_n_0_[0] ),
        .I4(\cnt_v[4]_i_2_n_0 ),
        .O(\fsm_v[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fsm_v[1]_i_7 
       (.I0(\cnt_v_reg_n_0_[13] ),
        .I1(\cnt_v_reg_n_0_[5] ),
        .I2(\cnt_v_reg_n_0_[12] ),
        .I3(\cnt_v_reg_n_0_[7] ),
        .O(\fsm_v[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fsm_v[1]_i_8 
       (.I0(\fsm_v_reg_n_0_[1] ),
        .I1(\fsm_v_reg_n_0_[0] ),
        .O(\fsm_v[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fsm_v[1]_i_9 
       (.I0(\cnt_v_reg_n_0_[0] ),
        .I1(\cnt_v_reg_n_0_[1] ),
        .O(\fsm_v[1]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \fsm_v_reg[0] 
       (.C(clk_dot),
        .CE(\fsm_v[1]_i_1_n_0 ),
        .D(fsm_v[0]),
        .PRE(reset),
        .Q(\fsm_v_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \fsm_v_reg[1] 
       (.C(clk_dot),
        .CE(\fsm_v[1]_i_1_n_0 ),
        .D(fsm_v[1]),
        .PRE(reset),
        .Q(\fsm_v_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    h_rollover_i_1
       (.I0(h_rollover_i_2_n_0),
        .I1(\cnt_h_reg_n_0_[5] ),
        .I2(\cnt_h_reg_n_0_[3] ),
        .I3(\cnt_h_reg_n_0_[7] ),
        .I4(\fsm_h_reg_n_0_[0] ),
        .I5(\fsm_h_reg_n_0_[1] ),
        .O(cnt_h115_out));
  LUT3 #(
    .INIT(8'h02)) 
    h_rollover_i_2
       (.I0(vid_new_line_i_2_n_0),
        .I1(\cnt_h_reg_n_0_[6] ),
        .I2(\cnt_h_reg_n_0_[4] ),
        .O(h_rollover_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    h_rollover_reg
       (.C(clk_dot),
        .CE(1'b1),
        .D(cnt_h115_out),
        .PRE(reset),
        .Q(h_rollover));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    hsync_loc_i_1
       (.I0(\fsm_h_reg_n_0_[1] ),
        .I1(\fsm_h_reg_n_0_[0] ),
        .O(hsync_loc_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    hsync_loc_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(hsync_loc_i_1_n_0),
        .Q(hsync_loc));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFD555)) 
    \line_rgb[22]_i_1 
       (.I0(mode_bit),
        .I1(\line_y_pos_reg[0] ),
        .I2(\line_y_pos_reg[0]_0 ),
        .I3(vid_new_frame),
        .I4(\line_rgb[22]_i_4_n_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \line_rgb[22]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(vid_new_frame),
        .I3(\line_y_pos_reg[0]_1 ),
        .I4(\line_y_pos_reg[0]_2 ),
        .I5(\line_y_pos_reg[0]_3 ),
        .O(\line_rgb[22]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    vga_hsync_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(hsync_loc),
        .Q(vga_hsync));
  FDCE #(
    .INIT(1'b0)) 
    vga_vsync_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(vsync_loc),
        .Q(vga_vsync));
  LUT4 #(
    .INIT(16'h0040)) 
    vid_active_i_1
       (.I0(\fsm_v_reg_n_0_[0] ),
        .I1(\fsm_v_reg_n_0_[1] ),
        .I2(\fsm_h_reg_n_0_[1] ),
        .I3(\fsm_h_reg_n_0_[0] ),
        .O(vid_active0));
  FDCE #(
    .INIT(1'b0)) 
    vid_active_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(vid_active0),
        .Q(vga_active));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    vid_new_frame_i_1
       (.I0(vid_new_line0),
        .I1(\fsm_v_reg_n_0_[0] ),
        .I2(\fsm_v_reg_n_0_[1] ),
        .I3(\cnt_v_reg_n_0_[0] ),
        .I4(\cnt_v_reg_n_0_[1] ),
        .I5(\fsm_v[0]_i_2_n_0 ),
        .O(vid_new_frame_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    vid_new_frame_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(vid_new_frame_i_1_n_0),
        .Q(vid_new_frame));
  LUT5 #(
    .INIT(32'h00000200)) 
    vid_new_line_i_1
       (.I0(vid_new_line_i_2_n_0),
        .I1(\cnt_h_reg_n_0_[5] ),
        .I2(\fsm_h_reg_n_0_[1] ),
        .I3(\cnt_h_reg_n_0_[4] ),
        .I4(vid_new_line_i_3_n_0),
        .O(vid_new_line0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    vid_new_line_i_2
       (.I0(\fsm_h[1]_i_7_n_0 ),
        .I1(\cnt_h_reg_n_0_[11] ),
        .I2(\cnt_h_reg_n_0_[12] ),
        .I3(\cnt_h_reg_n_0_[2] ),
        .I4(\cnt_h_reg_n_0_[9] ),
        .I5(\cnt_h_reg_n_0_[8] ),
        .O(vid_new_line_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    vid_new_line_i_3
       (.I0(\cnt_h_reg_n_0_[3] ),
        .I1(\cnt_h_reg_n_0_[7] ),
        .I2(\cnt_h_reg_n_0_[6] ),
        .I3(\fsm_h_reg_n_0_[0] ),
        .O(vid_new_line_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    vid_new_line_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(vid_new_line0),
        .Q(vid_new_line));
  LUT6 #(
    .INIT(64'h001000000000FFFB)) 
    vsync_loc_i_1
       (.I0(\cnt_v[2]_i_2_n_0 ),
        .I1(\cnt_v_reg_n_0_[2] ),
        .I2(\cnt_v_reg_n_0_[0] ),
        .I3(\cnt_v_reg_n_0_[1] ),
        .I4(\fsm_v_reg_n_0_[1] ),
        .I5(\fsm_v_reg_n_0_[0] ),
        .O(vsync_loc_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    vsync_loc_reg
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(vsync_loc_i_1_n_0),
        .Q(vsync_loc));
endmodule

(* NotValidForBitStream *)
module vcu_DT_blk_design_wrapper
   (blue,
    clk,
    green,
    red,
    reset,
    user_si570_clock_clk_n,
    user_si570_clock_clk_p,
    vga_active,
    vga_hsync,
    vga_vsync);
  output [3:0]blue;
  output clk;
  output [3:0]green;
  output [3:0]red;
  input reset;
  input user_si570_clock_clk_n;
  input user_si570_clock_clk_p;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue;
  wire [3:0]blue_OBUF;
  wire clk;
  wire clk_OBUF;
  wire [3:0]green;
  wire [3:0]green_OBUF;
  wire [3:0]red;
  wire [3:0]red_OBUF;
  wire reset;
  wire reset_IBUF;
  (* IBUF_LOW_PWR *) wire user_si570_clock_clk_n;
  (* IBUF_LOW_PWR *) wire user_si570_clock_clk_p;
  wire vga_active;
  wire vga_active_OBUF;
  wire vga_hsync;
  wire vga_hsync_OBUF;
  wire vga_vsync;
  wire vga_vsync_OBUF;

  OBUF \blue_OBUF[0]_inst 
       (.I(blue_OBUF[0]),
        .O(blue[0]));
  OBUF \blue_OBUF[1]_inst 
       (.I(blue_OBUF[1]),
        .O(blue[1]));
  OBUF \blue_OBUF[2]_inst 
       (.I(blue_OBUF[2]),
        .O(blue[2]));
  OBUF \blue_OBUF[3]_inst 
       (.I(blue_OBUF[3]),
        .O(blue[3]));
  OBUF clk_OBUF_inst
       (.I(clk_OBUF),
        .O(clk));
  OBUF \green_OBUF[0]_inst 
       (.I(green_OBUF[0]),
        .O(green[0]));
  OBUF \green_OBUF[1]_inst 
       (.I(green_OBUF[1]),
        .O(green[1]));
  OBUF \green_OBUF[2]_inst 
       (.I(green_OBUF[2]),
        .O(green[2]));
  OBUF \green_OBUF[3]_inst 
       (.I(green_OBUF[3]),
        .O(green[3]));
  OBUF \red_OBUF[0]_inst 
       (.I(red_OBUF[0]),
        .O(red[0]));
  OBUF \red_OBUF[1]_inst 
       (.I(red_OBUF[1]),
        .O(red[1]));
  OBUF \red_OBUF[2]_inst 
       (.I(red_OBUF[2]),
        .O(red[2]));
  OBUF \red_OBUF[3]_inst 
       (.I(red_OBUF[3]),
        .O(red[3]));
  (* XILINX_REPORT_XFORM = "IBUF" *) 
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* HW_HANDOFF = "vcu_DT_blk_design.hwdef" *) 
  vcu_DT_blk_design vcu_DT_blk_design_i
       (.blue(blue_OBUF),
        .clk(clk_OBUF),
        .green(green_OBUF),
        .red(red_OBUF),
        .reset(reset_IBUF),
        .user_si570_clock_clk_n(user_si570_clock_clk_n),
        .user_si570_clock_clk_p(user_si570_clock_clk_p),
        .vga_active(vga_active_OBUF),
        .vga_hsync(vga_hsync_OBUF),
        .vga_vsync(vga_vsync_OBUF));
  OBUF vga_active_OBUF_inst
       (.I(vga_active_OBUF),
        .O(vga_active));
  OBUF vga_hsync_OBUF_inst
       (.I(vga_hsync_OBUF),
        .O(vga_hsync));
  OBUF vga_vsync_OBUF_inst
       (.I(vga_vsync_OBUF),
        .O(vga_vsync));
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlconstant_0_0,xlconstant_v1_1_6_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconstant_v1_1_6_xlconstant,Vivado 2019.1" *) 
module vcu_DT_blk_design_xlconstant_0_0
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
module vcu_DT_blk_design_xlslice_0_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[30];
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
module vcu_DT_blk_design_xlslice_0_1
   (Din,
    Dout);
  input [23:0]Din;
  output [3:0]Dout;

  wire [23:0]Din;

  assign Dout[3:0] = Din[23:20];
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
module vcu_DT_blk_design_xlslice_1_0
   (Din,
    Dout);
  input [23:0]Din;
  output [3:0]Dout;

  wire [23:0]Din;

  assign Dout[3:0] = Din[15:12];
endmodule

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2019.1" *) 
module vcu_DT_blk_design_xlslice_2_0
   (Din,
    Dout);
  input [23:0]Din;
  output [3:0]Dout;

  wire [23:0]Din;

  assign Dout[3:0] = Din[7:4];
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "11" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_13" *) 
module vcu_DT_blk_design_c_counter_binary_0_0__c_counter_binary_v12_0_13
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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* c_count_by = "11" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  vcu_DT_blk_design_c_counter_binary_0_0__c_counter_binary_v12_0_13_viv i_synth
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
n4++whhPbSywXyHVNUe+JFX4nKr4g9J1Dy7DJOCy0wpIonpC/2wty3I3GZMgcLcDGaVjcXTE8GeE
NN5jpH5qI8e/D7/nFfYN38DbVi5jQLgJadeovNsU4h6s1fpIIyA1c4WHUIEmF3O3OC6WltPDSZPF
CFnDDbO8sCtjH6V4XPbcogrzg3EZIH5F3pxFE76HmJAE2flOhG0CSwiISZfarMHLO3zAD1pR8nod
v8e4Q05oj17dlgS5jPAdLCfCtcTf1VTr0SK2SSvxJR+lPqryBpR9UBry7P25EcU5F9XK9yxMTPWW
+uSx/JMOGgKO9aarZWDtD0Pq11s/865ov3IqDQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dZX3k0pqsVa589647E3zbj44wjX1fjj4H3wD0oBET3VMnMhfjFx1V6WLc7ihyp1lNHXuaO57yXeV
l8P0v7WN+K1VqYO3BjmvS1vsFnk/wEDtl+lHRnExBNJ0ZbVirmYmiotxoKMpbSNRK1DIBEmns3ae
ARiosCdZsvb4sDAPRuLTKFlqA84i9lbFW3yLQprBYorsaBwHIGzJVM6kC0qDdZgjrPj4So2iOtmM
ru4feMHqfKxsnFeLBhlkMaLqWTeT8CIwuf9sE1vsbzVJqx4FvN60SKJeIJqixfFcESrpvYHCs9kL
c8iBVcvH5FNN4poqtkP7lt5X0dzd3HcjM9M5Kg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16976)
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
