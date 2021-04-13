//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Mar 24 11:24:46 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (blue,
    clk,
    clk_100MHz,
    green,
    red,
    reset,
    vga_active,
    vga_hsync,
    vga_vsync);
  output [3:0]blue;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_clk_wiz_1_clk_out1, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.0" *) output clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  output [3:0]green;
  output [3:0]red;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue_2_Dout;
  wire [31:0]c_counter_binary_0_Q;
  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire [3:0]green_1_Dout;
  wire [0:0]mode_0_Dout;
  wire [3:0]red_0_Dout;
  wire reset_1;
  wire vga_core_0_vga_active;
  wire vga_core_0_vga_hsync;
  wire [23:0]vga_core_0_vga_pixel_rgb;
  wire vga_core_0_vga_vsync;
  wire [0:0]zero_0_dout;

  assign blue[3:0] = blue_2_Dout;
  assign clk = clk_wiz_0_clk_out1;
  assign clk_100MHz_1 = clk_100MHz;
  assign green[3:0] = green_1_Dout;
  assign red[3:0] = red_0_Dout;
  assign reset_1 = reset;
  assign vga_active = vga_core_0_vga_active;
  assign vga_hsync = vga_core_0_vga_hsync;
  assign vga_vsync = vga_core_0_vga_vsync;
  design_1_xlslice_0_3 blue_0
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(blue_2_Dout));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clk_wiz_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  design_1_clk_wiz_1 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_1));
  design_1_xlslice_0_2 green_0
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(green_1_Dout));
  design_1_xlslice_0_0 mode_0
       (.Din(c_counter_binary_0_Q),
        .Dout(mode_0_Dout));
  design_1_xlslice_0_1 red_0
       (.Din(vga_core_0_vga_pixel_rgb),
        .Dout(red_0_Dout));
  design_1_vga_core_0_0 vga_core_0
       (.clk_dot(clk_wiz_0_clk_out1),
        .color_3b(zero_0_dout),
        .mode_bit(mode_0_Dout),
        .random_num(c_counter_binary_0_Q),
        .reset(reset_1),
        .vga_active(vga_core_0_vga_active),
        .vga_hsync(vga_core_0_vga_hsync),
        .vga_pixel_rgb(vga_core_0_vga_pixel_rgb),
        .vga_vsync(vga_core_0_vga_vsync));
  design_1_xlconstant_0_0 zero_0
       (.dout(zero_0_dout));
endmodule
