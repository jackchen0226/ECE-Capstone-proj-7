//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Mon Mar 29 12:14:05 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target vcu_DT_blk_design.bd
//Design      : vcu_DT_blk_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vcu_DT_blk_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vcu_DT_blk_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vcu_DT_blk_design.hwdef" *) 
module vcu_DT_blk_design
   (blue,
    clk,
    green,
    red,
    reset,
    sysclk_125_clk_n,
    sysclk_125_clk_p,
    vga_active,
    vga_hsync,
    vga_vsync);
  output [3:0]blue;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN vcu_DT_blk_design_clk_wiz_0_3_clk_out1, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.0" *) output clk;
  output [3:0]green;
  output [3:0]red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk_125 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sysclk_125, CAN_DEBUG false, FREQ_HZ 125000000" *) input sysclk_125_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk_125 CLK_P" *) input sysclk_125_clk_p;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue_Dout;
  wire [31:0]c_counter_binary_0_Q;
  wire clk_wiz_0_clk_out1;
  wire [3:0]green_Dout;
  wire [3:0]red_Dout;
  wire reset_1;
  wire sysclk_125_1_CLK_N;
  wire sysclk_125_1_CLK_P;
  wire vga_core_0_vga_active;
  wire vga_core_0_vga_hsync;
  wire [23:0]vga_core_0_vga_pixel_rgb;
  wire vga_core_0_vga_vsync;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]zero_dout;

  assign blue[3:0] = blue_Dout;
  assign clk = clk_wiz_0_clk_out1;
  assign green[3:0] = green_Dout;
  assign red[3:0] = red_Dout;
  assign reset_1 = reset;
  assign sysclk_125_1_CLK_N = sysclk_125_clk_n;
  assign sysclk_125_1_CLK_P = sysclk_125_clk_p;
  assign vga_active = vga_core_0_vga_active;
  assign vga_hsync = vga_core_0_vga_hsync;
  assign vga_vsync = vga_core_0_vga_vsync;
  vcu_DT_blk_design_xlslice_2_0 blue_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(blue_Dout));
  vcu_DT_blk_design_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk_wiz_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  vcu_DT_blk_design_clk_wiz_0_3 clk_wiz_0
       (.clk_in1_n(sysclk_125_1_CLK_N),
        .clk_in1_p(sysclk_125_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
  vcu_DT_blk_design_xlslice_1_0 green_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(green_Dout));
  vcu_DT_blk_design_xlslice_0_0 mode
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
  vcu_DT_blk_design_xlslice_0_1 red_RnM
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(red_Dout));
  vcu_DT_blk_design_vga_core_0_0 vga_core_0
       (.clk_dot(clk_wiz_0_clk_out1),
        .color_3b(zero_dout),
        .mode_bit(xlslice_0_Dout),
        .random_num(c_counter_binary_0_Q),
        .reset(reset_1),
        .vga_active(vga_core_0_vga_active),
        .vga_hsync(vga_core_0_vga_hsync),
        .vga_pixel_rgb(vga_core_0_vga_pixel_rgb),
        .vga_vsync(vga_core_0_vga_vsync));
  vcu_DT_blk_design_xlconstant_0_0 zero
       (.dout(zero_dout));
endmodule
