// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Mar 27 14:48:38 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vcu_DT_blk_design_vga_core_0_0_stub.v
// Design      : vcu_DT_blk_design_vga_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_core,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reset, color_3b, mode_bit, clk_dot, random_num, 
  vga_pixel_rgb, vga_active, vga_hsync, vga_vsync)
/* synthesis syn_black_box black_box_pad_pin="reset,color_3b,mode_bit,clk_dot,random_num[31:0],vga_pixel_rgb[23:0],vga_active,vga_hsync,vga_vsync" */;
  input reset;
  input color_3b;
  input mode_bit;
  input clk_dot;
  input [31:0]random_num;
  output [23:0]vga_pixel_rgb;
  output vga_active;
  output vga_hsync;
  output vga_vsync;
endmodule
