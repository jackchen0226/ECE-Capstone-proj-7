// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Mar 27 14:48:39 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rwegter/xil_logs/vcu118_display_test/vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_vga_core_0_0/vcu_DT_blk_design_vga_core_0_0_sim_netlist.v
// Design      : vcu_DT_blk_design_vga_core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vcu_DT_blk_design_vga_core_0_0,vga_core,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vga_core,Vivado 2019.1" *) 
(* NotValidForBitStream *)
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

  FDRE \ball_rgb_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[0]),
        .Q(ball_rgb__0[0]),
        .R(1'b0));
  FDRE \ball_rgb_reg[10] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[10]),
        .Q(ball_rgb__0[10]),
        .R(1'b0));
  FDRE \ball_rgb_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[11]),
        .Q(ball_rgb__0[11]),
        .R(1'b0));
  FDRE \ball_rgb_reg[12] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[12]),
        .Q(ball_rgb__0[12]),
        .R(1'b0));
  FDRE \ball_rgb_reg[13] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[13]),
        .Q(ball_rgb__0[13]),
        .R(1'b0));
  FDRE \ball_rgb_reg[14] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[14]),
        .Q(ball_rgb__0[14]),
        .R(1'b0));
  FDRE \ball_rgb_reg[15] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[15]),
        .Q(ball_rgb__0[15]),
        .R(1'b0));
  FDRE \ball_rgb_reg[16] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[16]),
        .Q(ball_rgb__0[16]),
        .R(1'b0));
  FDRE \ball_rgb_reg[17] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[17]),
        .Q(ball_rgb__0[17]),
        .R(1'b0));
  FDRE \ball_rgb_reg[18] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[18]),
        .Q(ball_rgb__0[18]),
        .R(1'b0));
  FDRE \ball_rgb_reg[19] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[19]),
        .Q(ball_rgb__0[19]),
        .R(1'b0));
  FDRE \ball_rgb_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[1]),
        .Q(ball_rgb__0[1]),
        .R(1'b0));
  FDRE \ball_rgb_reg[20] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[20]),
        .Q(ball_rgb__0[20]),
        .R(1'b0));
  FDRE \ball_rgb_reg[21] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[21]),
        .Q(ball_rgb__0[21]),
        .R(1'b0));
  FDRE \ball_rgb_reg[22] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[22]),
        .Q(ball_rgb__0[22]),
        .R(1'b0));
  FDRE \ball_rgb_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[2]),
        .Q(ball_rgb__0[2]),
        .R(1'b0));
  FDRE \ball_rgb_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[3]),
        .Q(ball_rgb__0[3]),
        .R(1'b0));
  FDRE \ball_rgb_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[4]),
        .Q(ball_rgb__0[4]),
        .R(1'b0));
  FDRE \ball_rgb_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[5]),
        .Q(ball_rgb__0[5]),
        .R(1'b0));
  FDRE \ball_rgb_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[6]),
        .Q(ball_rgb__0[6]),
        .R(1'b0));
  FDRE \ball_rgb_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[7]),
        .Q(ball_rgb__0[7]),
        .R(1'b0));
  FDRE \ball_rgb_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_7),
        .D(random_num[8]),
        .Q(ball_rgb__0[8]),
        .R(1'b0));
  FDRE \ball_rgb_reg[9] 
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
  FDRE \ball_x_dir_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[0]_i_1_n_0 ),
        .Q(ball_x_dir__0[0]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_2),
        .Q(ball_x_dir__0[10]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[11]_i_2_n_0 ),
        .Q(ball_x_dir__0[11]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[1]_i_1_n_0 ),
        .Q(ball_x_dir__0[1]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[2]_i_1_n_0 ),
        .Q(ball_x_dir__0[2]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[3]_i_1_n_0 ),
        .Q(ball_x_dir__0[3]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[4]_i_1_n_0 ),
        .Q(ball_x_dir__0[4]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[5]_i_1_n_0 ),
        .Q(ball_x_dir__0[5]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[6]_i_1_n_0 ),
        .Q(ball_x_dir__0[6]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[7]_i_1_n_0 ),
        .Q(ball_x_dir__0[7]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_6),
        .D(\ball_x_dir[8]_i_1_n_0 ),
        .Q(ball_x_dir__0[8]),
        .R(1'b0));
  FDRE \ball_x_dir_reg[9] 
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
  FDRE \ball_x_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_15 ),
        .Q(\ball_x_pos_reg_n_0_[0] ),
        .R(clear));
  CARRY8 \ball_x_pos_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ball_x_pos_reg[0]_i_1_n_0 ,\ball_x_pos_reg[0]_i_1_n_1 ,\ball_x_pos_reg[0]_i_1_n_2 ,\ball_x_pos_reg[0]_i_1_n_3 ,\ball_x_pos_reg[0]_i_1_n_4 ,\ball_x_pos_reg[0]_i_1_n_5 ,\ball_x_pos_reg[0]_i_1_n_6 ,\ball_x_pos_reg[0]_i_1_n_7 }),
        .DI(ball_x_dir__0[7:0]),
        .O({\ball_x_pos_reg[0]_i_1_n_8 ,\ball_x_pos_reg[0]_i_1_n_9 ,\ball_x_pos_reg[0]_i_1_n_10 ,\ball_x_pos_reg[0]_i_1_n_11 ,\ball_x_pos_reg[0]_i_1_n_12 ,\ball_x_pos_reg[0]_i_1_n_13 ,\ball_x_pos_reg[0]_i_1_n_14 ,\ball_x_pos_reg[0]_i_1_n_15 }),
        .S({\ball_x_pos[0]_i_2_n_0 ,\ball_x_pos[0]_i_3_n_0 ,\ball_x_pos[0]_i_4_n_0 ,\ball_x_pos[0]_i_5_n_0 ,\ball_x_pos[0]_i_6_n_0 ,\ball_x_pos[0]_i_7_n_0 ,\ball_x_pos[0]_i_8_n_0 ,\ball_x_pos[0]_i_9_n_0 }));
  FDRE \ball_x_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_13 ),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE \ball_x_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_12 ),
        .Q(p_0_in[3]),
        .R(clear));
  FDSE \ball_x_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_11 ),
        .Q(p_0_in[4]),
        .S(clear));
  FDRE \ball_x_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_10 ),
        .Q(p_0_in[5]),
        .R(clear));
  FDRE \ball_x_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_9 ),
        .Q(p_0_in[6]),
        .R(clear));
  FDSE \ball_x_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_8 ),
        .Q(p_0_in[7]),
        .S(clear));
  FDRE \ball_x_pos_reg[16] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_15 ),
        .Q(p_0_in[8]),
        .R(clear));
  CARRY8 \ball_x_pos_reg[16]_i_1 
       (.CI(\ball_x_pos_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ball_x_pos_reg[16]_i_1_CO_UNCONNECTED [7],\ball_x_pos_reg[16]_i_1_n_1 ,\ball_x_pos_reg[16]_i_1_n_2 ,\ball_x_pos_reg[16]_i_1_n_3 ,\ball_x_pos_reg[16]_i_1_n_4 ,\ball_x_pos_reg[16]_i_1_n_5 ,\ball_x_pos_reg[16]_i_1_n_6 ,\ball_x_pos_reg[16]_i_1_n_7 }),
        .DI({1'b0,ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11]}),
        .O({\ball_x_pos_reg[16]_i_1_n_8 ,\ball_x_pos_reg[16]_i_1_n_9 ,\ball_x_pos_reg[16]_i_1_n_10 ,\ball_x_pos_reg[16]_i_1_n_11 ,\ball_x_pos_reg[16]_i_1_n_12 ,\ball_x_pos_reg[16]_i_1_n_13 ,\ball_x_pos_reg[16]_i_1_n_14 ,\ball_x_pos_reg[16]_i_1_n_15 }),
        .S({\ball_x_pos[16]_i_2_n_0 ,\ball_x_pos[16]_i_3_n_0 ,\ball_x_pos[16]_i_4_n_0 ,\ball_x_pos[16]_i_5_n_0 ,\ball_x_pos[16]_i_6_n_0 ,\ball_x_pos[16]_i_7_n_0 ,\ball_x_pos[16]_i_8_n_0 ,\ball_x_pos[16]_i_9_n_0 }));
  FDRE \ball_x_pos_reg[17] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_14 ),
        .Q(p_0_in[9]),
        .R(clear));
  FDRE \ball_x_pos_reg[18] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_13 ),
        .Q(p_0_in[10]),
        .R(clear));
  FDRE \ball_x_pos_reg[19] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_12 ),
        .Q(p_0_in[11]),
        .R(clear));
  FDRE \ball_x_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_14 ),
        .Q(\ball_x_pos_reg_n_0_[1] ),
        .R(clear));
  FDRE \ball_x_pos_reg[20] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_11 ),
        .Q(p_0_in[12]),
        .R(clear));
  FDRE \ball_x_pos_reg[21] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_10 ),
        .Q(p_0_in[13]),
        .R(clear));
  FDRE \ball_x_pos_reg[22] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_9 ),
        .Q(p_0_in[14]),
        .R(clear));
  FDRE \ball_x_pos_reg[23] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[16]_i_1_n_8 ),
        .Q(p_0_in[15]),
        .R(clear));
  FDRE \ball_x_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_13 ),
        .Q(\ball_x_pos_reg_n_0_[2] ),
        .R(clear));
  FDRE \ball_x_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_12 ),
        .Q(\ball_x_pos_reg_n_0_[3] ),
        .R(clear));
  FDRE \ball_x_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_11 ),
        .Q(\ball_x_pos_reg_n_0_[4] ),
        .R(clear));
  FDRE \ball_x_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_10 ),
        .Q(\ball_x_pos_reg_n_0_[5] ),
        .R(clear));
  FDRE \ball_x_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_9 ),
        .Q(\ball_x_pos_reg_n_0_[6] ),
        .R(clear));
  FDRE \ball_x_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[0]_i_1_n_8 ),
        .Q(\ball_x_pos_reg_n_0_[7] ),
        .R(clear));
  FDRE \ball_x_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_x_pos_reg[8]_i_1_n_15 ),
        .Q(p_0_in[0]),
        .R(clear));
  CARRY8 \ball_x_pos_reg[8]_i_1 
       (.CI(\ball_x_pos_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ball_x_pos_reg[8]_i_1_n_0 ,\ball_x_pos_reg[8]_i_1_n_1 ,\ball_x_pos_reg[8]_i_1_n_2 ,\ball_x_pos_reg[8]_i_1_n_3 ,\ball_x_pos_reg[8]_i_1_n_4 ,\ball_x_pos_reg[8]_i_1_n_5 ,\ball_x_pos_reg[8]_i_1_n_6 ,\ball_x_pos_reg[8]_i_1_n_7 }),
        .DI({ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11],ball_x_dir__0[11:8]}),
        .O({\ball_x_pos_reg[8]_i_1_n_8 ,\ball_x_pos_reg[8]_i_1_n_9 ,\ball_x_pos_reg[8]_i_1_n_10 ,\ball_x_pos_reg[8]_i_1_n_11 ,\ball_x_pos_reg[8]_i_1_n_12 ,\ball_x_pos_reg[8]_i_1_n_13 ,\ball_x_pos_reg[8]_i_1_n_14 ,\ball_x_pos_reg[8]_i_1_n_15 }),
        .S({\ball_x_pos[8]_i_2_n_0 ,\ball_x_pos[8]_i_3_n_0 ,\ball_x_pos[8]_i_4_n_0 ,\ball_x_pos[8]_i_5_n_0 ,\ball_x_pos[8]_i_6_n_0 ,\ball_x_pos[8]_i_7_n_0 ,\ball_x_pos[8]_i_8_n_0 ,\ball_x_pos[8]_i_9_n_0 }));
  FDRE \ball_x_pos_reg[9] 
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
  FDRE \ball_y_dir_reg[0] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[0]_i_1_n_0 ),
        .Q(ball_y_dir__0[0]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_0),
        .Q(ball_y_dir__0[10]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[11] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[11]_i_2_n_0 ),
        .Q(ball_y_dir__0[11]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[1]_i_1_n_0 ),
        .Q(ball_y_dir__0[1]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[2]_i_1_n_0 ),
        .Q(ball_y_dir__0[2]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[3] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[3]_i_1_n_0 ),
        .Q(ball_y_dir__0[3]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[4] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[4]_i_1_n_0 ),
        .Q(ball_y_dir__0[4]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[5] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[5]_i_1_n_0 ),
        .Q(ball_y_dir__0[5]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[6] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[6]_i_1_n_0 ),
        .Q(ball_y_dir__0[6]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[7] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[7]_i_1_n_0 ),
        .Q(ball_y_dir__0[7]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[8] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_5),
        .D(\ball_y_dir[8]_i_1_n_0 ),
        .Q(ball_y_dir__0[8]),
        .R(1'b0));
  FDRE \ball_y_dir_reg[9] 
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
  FDRE \ball_y_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_15 ),
        .Q(\ball_y_pos_reg_n_0_[0] ),
        .R(clear));
  CARRY8 \ball_y_pos_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ball_y_pos_reg[0]_i_2_n_0 ,\ball_y_pos_reg[0]_i_2_n_1 ,\ball_y_pos_reg[0]_i_2_n_2 ,\ball_y_pos_reg[0]_i_2_n_3 ,\ball_y_pos_reg[0]_i_2_n_4 ,\ball_y_pos_reg[0]_i_2_n_5 ,\ball_y_pos_reg[0]_i_2_n_6 ,\ball_y_pos_reg[0]_i_2_n_7 }),
        .DI(ball_y_dir__0[7:0]),
        .O({\ball_y_pos_reg[0]_i_2_n_8 ,\ball_y_pos_reg[0]_i_2_n_9 ,\ball_y_pos_reg[0]_i_2_n_10 ,\ball_y_pos_reg[0]_i_2_n_11 ,\ball_y_pos_reg[0]_i_2_n_12 ,\ball_y_pos_reg[0]_i_2_n_13 ,\ball_y_pos_reg[0]_i_2_n_14 ,\ball_y_pos_reg[0]_i_2_n_15 }),
        .S({\ball_y_pos[0]_i_3_n_0 ,\ball_y_pos[0]_i_4_n_0 ,\ball_y_pos[0]_i_5_n_0 ,\ball_y_pos[0]_i_6_n_0 ,\ball_y_pos[0]_i_7_n_0 ,\ball_y_pos[0]_i_8_n_0 ,\ball_y_pos[0]_i_9_n_0 ,\ball_y_pos[0]_i_10_n_0 }));
  FDSE \ball_y_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_13 ),
        .Q(ball_y_pos_reg[10]),
        .S(clear));
  FDSE \ball_y_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_12 ),
        .Q(ball_y_pos_reg[11]),
        .S(clear));
  FDRE \ball_y_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_11 ),
        .Q(ball_y_pos_reg[12]),
        .R(clear));
  FDSE \ball_y_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_10 ),
        .Q(ball_y_pos_reg[13]),
        .S(clear));
  FDRE \ball_y_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_9 ),
        .Q(ball_y_pos_reg[14]),
        .R(clear));
  FDRE \ball_y_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_8 ),
        .Q(ball_y_pos_reg[15]),
        .R(clear));
  FDRE \ball_y_pos_reg[16] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_15 ),
        .Q(ball_y_pos_reg[16]),
        .R(clear));
  CARRY8 \ball_y_pos_reg[16]_i_1 
       (.CI(\ball_y_pos_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ball_y_pos_reg[16]_i_1_CO_UNCONNECTED [7],\ball_y_pos_reg[16]_i_1_n_1 ,\ball_y_pos_reg[16]_i_1_n_2 ,\ball_y_pos_reg[16]_i_1_n_3 ,\ball_y_pos_reg[16]_i_1_n_4 ,\ball_y_pos_reg[16]_i_1_n_5 ,\ball_y_pos_reg[16]_i_1_n_6 ,\ball_y_pos_reg[16]_i_1_n_7 }),
        .DI({1'b0,ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11]}),
        .O({\ball_y_pos_reg[16]_i_1_n_8 ,\ball_y_pos_reg[16]_i_1_n_9 ,\ball_y_pos_reg[16]_i_1_n_10 ,\ball_y_pos_reg[16]_i_1_n_11 ,\ball_y_pos_reg[16]_i_1_n_12 ,\ball_y_pos_reg[16]_i_1_n_13 ,\ball_y_pos_reg[16]_i_1_n_14 ,\ball_y_pos_reg[16]_i_1_n_15 }),
        .S({\ball_y_pos[16]_i_2_n_0 ,\ball_y_pos[16]_i_3_n_0 ,\ball_y_pos[16]_i_4_n_0 ,\ball_y_pos[16]_i_5_n_0 ,\ball_y_pos[16]_i_6_n_0 ,\ball_y_pos[16]_i_7_n_0 ,\ball_y_pos[16]_i_8_n_0 ,\ball_y_pos[16]_i_9_n_0 }));
  FDRE \ball_y_pos_reg[17] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_14 ),
        .Q(ball_y_pos_reg[17]),
        .R(clear));
  FDRE \ball_y_pos_reg[18] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_13 ),
        .Q(ball_y_pos_reg[18]),
        .R(clear));
  FDRE \ball_y_pos_reg[19] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_12 ),
        .Q(ball_y_pos_reg[19]),
        .R(clear));
  FDRE \ball_y_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_14 ),
        .Q(\ball_y_pos_reg_n_0_[1] ),
        .R(clear));
  FDRE \ball_y_pos_reg[20] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_11 ),
        .Q(ball_y_pos_reg[20]),
        .R(clear));
  FDRE \ball_y_pos_reg[21] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_10 ),
        .Q(ball_y_pos_reg[21]),
        .R(clear));
  FDRE \ball_y_pos_reg[22] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_9 ),
        .Q(ball_y_pos_reg[22]),
        .R(clear));
  FDRE \ball_y_pos_reg[23] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[16]_i_1_n_8 ),
        .Q(ball_y_pos_reg[23]),
        .R(clear));
  FDRE \ball_y_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_13 ),
        .Q(\ball_y_pos_reg_n_0_[2] ),
        .R(clear));
  FDRE \ball_y_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_12 ),
        .Q(\ball_y_pos_reg_n_0_[3] ),
        .R(clear));
  FDRE \ball_y_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_11 ),
        .Q(\ball_y_pos_reg_n_0_[4] ),
        .R(clear));
  FDRE \ball_y_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_10 ),
        .Q(\ball_y_pos_reg_n_0_[5] ),
        .R(clear));
  FDRE \ball_y_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_9 ),
        .Q(\ball_y_pos_reg_n_0_[6] ),
        .R(clear));
  FDRE \ball_y_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[0]_i_2_n_8 ),
        .Q(\ball_y_pos_reg_n_0_[7] ),
        .R(clear));
  FDRE \ball_y_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\ball_y_pos_reg[8]_i_1_n_15 ),
        .Q(ball_y_pos_reg[8]),
        .R(clear));
  CARRY8 \ball_y_pos_reg[8]_i_1 
       (.CI(\ball_y_pos_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ball_y_pos_reg[8]_i_1_n_0 ,\ball_y_pos_reg[8]_i_1_n_1 ,\ball_y_pos_reg[8]_i_1_n_2 ,\ball_y_pos_reg[8]_i_1_n_3 ,\ball_y_pos_reg[8]_i_1_n_4 ,\ball_y_pos_reg[8]_i_1_n_5 ,\ball_y_pos_reg[8]_i_1_n_6 ,\ball_y_pos_reg[8]_i_1_n_7 }),
        .DI({ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11],ball_y_dir__0[11:8]}),
        .O({\ball_y_pos_reg[8]_i_1_n_8 ,\ball_y_pos_reg[8]_i_1_n_9 ,\ball_y_pos_reg[8]_i_1_n_10 ,\ball_y_pos_reg[8]_i_1_n_11 ,\ball_y_pos_reg[8]_i_1_n_12 ,\ball_y_pos_reg[8]_i_1_n_13 ,\ball_y_pos_reg[8]_i_1_n_14 ,\ball_y_pos_reg[8]_i_1_n_15 }),
        .S({\ball_y_pos[8]_i_2_n_0 ,\ball_y_pos[8]_i_3_n_0 ,\ball_y_pos[8]_i_4_n_0 ,\ball_y_pos[8]_i_5_n_0 ,\ball_y_pos[8]_i_6_n_0 ,\ball_y_pos[8]_i_7_n_0 ,\ball_y_pos[8]_i_8_n_0 ,\ball_y_pos[8]_i_9_n_0 }));
  FDRE \ball_y_pos_reg[9] 
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
  FDRE \demo_mode_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\demo_mode[0]_i_1_n_0 ),
        .Q(\demo_mode_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dir_chg_sr_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_vga_timing_n_3),
        .Q(\dir_chg_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dir_chg_sr_reg[1] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_4),
        .D(\dir_chg_sr_reg_n_0_[0] ),
        .Q(\dir_chg_sr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dir_chg_sr_reg[2] 
       (.C(clk_dot),
        .CE(u0_vga_timing_n_4),
        .D(\dir_chg_sr_reg_n_0_[1] ),
        .Q(\dir_chg_sr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dir_chg_sr_reg[3] 
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
  FDRE \line_rgb_reg[0] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[0]),
        .Q(\line_rgb_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \line_rgb_reg[10] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[10]),
        .Q(\line_rgb_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \line_rgb_reg[11] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[11]),
        .Q(\line_rgb_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \line_rgb_reg[12] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[12]),
        .Q(\line_rgb_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \line_rgb_reg[13] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[13]),
        .Q(\line_rgb_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \line_rgb_reg[14] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[14]),
        .Q(\line_rgb_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \line_rgb_reg[15] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[15]),
        .Q(\line_rgb_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \line_rgb_reg[16] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[16]),
        .Q(\line_rgb_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \line_rgb_reg[17] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[17]),
        .Q(\line_rgb_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \line_rgb_reg[18] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[18]),
        .Q(\line_rgb_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \line_rgb_reg[19] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[19]),
        .Q(\line_rgb_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \line_rgb_reg[1] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[1]),
        .Q(\line_rgb_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \line_rgb_reg[20] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[20]),
        .Q(\line_rgb_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \line_rgb_reg[21] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[21]),
        .Q(\line_rgb_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \line_rgb_reg[22] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[22]),
        .Q(\line_rgb_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \line_rgb_reg[2] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[2]),
        .Q(\line_rgb_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \line_rgb_reg[3] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[3]),
        .Q(\line_rgb_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \line_rgb_reg[4] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[4]),
        .Q(\line_rgb_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \line_rgb_reg[5] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[5]),
        .Q(\line_rgb_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \line_rgb_reg[6] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[6]),
        .Q(\line_rgb_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \line_rgb_reg[7] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[7]),
        .Q(\line_rgb_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \line_rgb_reg[8] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[8]),
        .Q(\line_rgb_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \line_rgb_reg[9] 
       (.C(clk_dot),
        .CE(line_rgb),
        .D(random_num[9]),
        .Q(\line_rgb_reg_n_0_[9] ),
        .R(1'b0));
  CARRY8 line_x_pos0_carry
       (.CI(line_x_pos_reg[0]),
        .CI_TOP(1'b0),
        .CO({line_x_pos0_carry_n_0,line_x_pos0_carry_n_1,line_x_pos0_carry_n_2,line_x_pos0_carry_n_3,line_x_pos0_carry_n_4,line_x_pos0_carry_n_5,line_x_pos0_carry_n_6,line_x_pos0_carry_n_7}),
        .DI(line_x_pos_reg[8:1]),
        .O(line_x_pos0[8:1]),
        .S({line_x_pos0_carry_i_1_n_0,line_x_pos0_carry_i_2_n_0,line_x_pos0_carry_i_3_n_0,line_x_pos0_carry_i_4_n_0,vga_rgb_line5,line_x_pos0_carry_i_6_n_0,line_x_pos0_carry_i_7_n_0,line_x_pos0_carry_i_8_n_0}));
  CARRY8 line_x_pos0_carry__0
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
  FDRE \line_x_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\line_x_pos[0]_i_1_n_0 ),
        .Q(line_x_pos_reg[0]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[10]),
        .Q(line_x_pos_reg[10]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[11]),
        .Q(line_x_pos_reg[11]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[12]),
        .Q(line_x_pos_reg[12]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[13]),
        .Q(line_x_pos_reg[13]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[14]),
        .Q(line_x_pos_reg[14]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[15]),
        .Q(line_x_pos_reg[15]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[1]),
        .Q(line_x_pos_reg[1]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[2]),
        .Q(line_x_pos_reg[2]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[3]),
        .Q(line_x_pos_reg[3]),
        .R(line_rgb));
  FDSE \line_x_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[4]),
        .Q(line_x_pos_reg[4]),
        .S(line_rgb));
  FDRE \line_x_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[5]),
        .Q(line_x_pos_reg[5]),
        .R(line_rgb));
  FDRE \line_x_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[6]),
        .Q(line_x_pos_reg[6]),
        .R(line_rgb));
  FDSE \line_x_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[7]),
        .Q(line_x_pos_reg[7]),
        .S(line_rgb));
  FDSE \line_x_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[8]),
        .Q(line_x_pos_reg[8]),
        .S(line_rgb));
  FDRE \line_x_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_x_pos0[9]),
        .Q(line_x_pos_reg[9]),
        .R(line_rgb));
  CARRY8 line_y_pos0_carry
       (.CI(line_y_pos_reg[0]),
        .CI_TOP(1'b0),
        .CO({line_y_pos0_carry_n_0,line_y_pos0_carry_n_1,line_y_pos0_carry_n_2,line_y_pos0_carry_n_3,line_y_pos0_carry_n_4,line_y_pos0_carry_n_5,line_y_pos0_carry_n_6,line_y_pos0_carry_n_7}),
        .DI(line_y_pos_reg[8:1]),
        .O(line_y_pos0[8:1]),
        .S({line_y_pos0_carry_i_1_n_0,line_y_pos0_carry_i_2_n_0,line_y_pos0_carry_i_3_n_0,line_y_pos0_carry_i_4_n_0,line_y_pos0_carry_i_5_n_0,line_y_pos0_carry_i_6_n_0,line_y_pos0_carry_i_7_n_0,line_y_pos0_carry_i_8_n_0}));
  CARRY8 line_y_pos0_carry__0
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
  FDRE \line_y_pos_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(\line_y_pos[0]_i_1_n_0 ),
        .Q(line_y_pos_reg[0]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[10]),
        .Q(line_y_pos_reg[10]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[11]),
        .Q(line_y_pos_reg[11]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[12]),
        .Q(line_y_pos_reg[12]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[13]),
        .Q(line_y_pos_reg[13]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[14]),
        .Q(line_y_pos_reg[14]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[15]),
        .Q(line_y_pos_reg[15]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[1]),
        .Q(line_y_pos_reg[1]),
        .R(line_rgb));
  FDSE \line_y_pos_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[2]),
        .Q(line_y_pos_reg[2]),
        .S(line_rgb));
  FDSE \line_y_pos_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[3]),
        .Q(line_y_pos_reg[3]),
        .S(line_rgb));
  FDRE \line_y_pos_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[4]),
        .Q(line_y_pos_reg[4]),
        .R(line_rgb));
  FDSE \line_y_pos_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[5]),
        .Q(line_y_pos_reg[5]),
        .S(line_rgb));
  FDRE \line_y_pos_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[6]),
        .Q(line_y_pos_reg[6]),
        .R(line_rgb));
  FDRE \line_y_pos_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[7]),
        .Q(line_y_pos_reg[7]),
        .R(line_rgb));
  FDSE \line_y_pos_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[8]),
        .Q(line_y_pos_reg[8]),
        .S(line_rgb));
  FDRE \line_y_pos_reg[9] 
       (.C(clk_dot),
        .CE(u0_vid_new_frame),
        .D(line_y_pos0[9]),
        .Q(line_y_pos_reg[9]),
        .R(line_rgb));
  FDRE mode_bit_p1_reg
       (.C(clk_dot),
        .CE(1'b1),
        .D(mode_bit),
        .Q(mode_bit_p1),
        .R(1'b0));
  CARRY8 p_1_out_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3,p_1_out_carry_n_4,p_1_out_carry_n_5,p_1_out_carry_n_6,p_1_out_carry_n_7}),
        .DI({sel0[0],data3}),
        .O(NLW_p_1_out_carry_O_UNCONNECTED[7:0]),
        .S({p_1_out_carry_i_1_n_0,p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0,p_1_out_carry_i_5_n_0,p_1_out_carry_i_6_n_0,p_1_out_carry_i_7_n_0,p_1_out_carry_i_8_n_0}));
  CARRY8 p_1_out_carry__0
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
  CARRY8 \p_1_out_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\p_1_out_inferred__0/i__carry_n_0 ,\p_1_out_inferred__0/i__carry_n_1 ,\p_1_out_inferred__0/i__carry_n_2 ,\p_1_out_inferred__0/i__carry_n_3 ,\p_1_out_inferred__0/i__carry_n_4 ,\p_1_out_inferred__0/i__carry_n_5 ,\p_1_out_inferred__0/i__carry_n_6 ,\p_1_out_inferred__0/i__carry_n_7 }),
        .DI({\u0_pel_y_reg_n_0_[7] ,\u0_pel_y_reg_n_0_[6] ,\u0_pel_y_reg_n_0_[5] ,\u0_pel_y_reg_n_0_[4] ,\u0_pel_y_reg_n_0_[3] ,\u0_pel_y_reg_n_0_[2] ,\u0_pel_y_reg_n_0_[1] ,\u0_pel_y_reg_n_0_[0] }),
        .O(\NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY8 \p_1_out_inferred__0/i__carry__0 
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
  FDRE \u0_pel_x_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[0]),
        .Q(data3[9]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[10]),
        .Q(\u0_pel_x_reg_n_0_[10] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[11]),
        .Q(\u0_pel_x_reg_n_0_[11] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[12]),
        .Q(\u0_pel_x_reg_n_0_[12] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[13]),
        .Q(\u0_pel_x_reg_n_0_[13] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[14]),
        .Q(\u0_pel_x_reg_n_0_[14] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[15]),
        .Q(\u0_pel_x_reg_n_0_[15] ),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[1]),
        .Q(data3[10]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[2]),
        .Q(data3[11]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[3]),
        .Q(data3[12]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[4]),
        .Q(data3[13]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[5]),
        .Q(data3[14]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[6]),
        .Q(data3[15]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[7]),
        .Q(sel0[0]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(u0_pel_x[8]),
        .Q(sel0[1]),
        .R(u0_vid_new_line));
  FDRE \u0_pel_x_reg[9] 
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
  FDRE \u0_pel_y_reg[0] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[0]),
        .Q(\u0_pel_y_reg_n_0_[0] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[10] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[10]),
        .Q(\u0_pel_y_reg_n_0_[10] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[11] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[11]),
        .Q(\u0_pel_y_reg_n_0_[11] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[12] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[12]),
        .Q(\u0_pel_y_reg_n_0_[12] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[13] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[13]),
        .Q(\u0_pel_y_reg_n_0_[13] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[14] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[14]),
        .Q(\u0_pel_y_reg_n_0_[14] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[15] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[15]),
        .Q(\u0_pel_y_reg_n_0_[15] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[1] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[1]),
        .Q(\u0_pel_y_reg_n_0_[1] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[2] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[2]),
        .Q(\u0_pel_y_reg_n_0_[2] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[3] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[3]),
        .Q(\u0_pel_y_reg_n_0_[3] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[4] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[4]),
        .Q(\u0_pel_y_reg_n_0_[4] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[5] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[5]),
        .Q(\u0_pel_y_reg_n_0_[5] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[6] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[6]),
        .Q(\u0_pel_y_reg_n_0_[6] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[7] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[7]),
        .Q(\u0_pel_y_reg_n_0_[7] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[8] 
       (.C(clk_dot),
        .CE(u0_vid_new_line),
        .D(u0_pel_y[8]),
        .Q(\u0_pel_y_reg_n_0_[8] ),
        .R(u0_vid_new_frame));
  FDRE \u0_pel_y_reg[9] 
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
  CARRY8 vga_rgb_ball3_carry
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
  CARRY8 \vga_rgb_ball4_inferred__0/i__carry 
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
  FDRE \vga_rgb_ball_reg[0] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[0]),
        .Q(vga_rgb_ball[0]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[10] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[10]),
        .Q(vga_rgb_ball[10]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[11] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[11]),
        .Q(vga_rgb_ball[11]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[12] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[12]),
        .Q(vga_rgb_ball[12]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[13] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[13]),
        .Q(vga_rgb_ball[13]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[14] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[14]),
        .Q(vga_rgb_ball[14]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[15] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[15]),
        .Q(vga_rgb_ball[15]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[16] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[16]),
        .Q(vga_rgb_ball[16]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[17] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[17]),
        .Q(vga_rgb_ball[17]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[18] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[18]),
        .Q(vga_rgb_ball[18]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[19] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[19]),
        .Q(vga_rgb_ball[19]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[1] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[1]),
        .Q(vga_rgb_ball[1]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[20] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[20]),
        .Q(vga_rgb_ball[20]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[21] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[21]),
        .Q(vga_rgb_ball[21]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[22] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[22]),
        .Q(vga_rgb_ball[22]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[23] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(vga_rgb_ball1),
        .Q(vga_rgb_ball[23]),
        .R(1'b0));
  FDRE \vga_rgb_ball_reg[2] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[2]),
        .Q(vga_rgb_ball[2]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[3] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[3]),
        .Q(vga_rgb_ball[3]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[4] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[4]),
        .Q(vga_rgb_ball[4]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[5] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[5]),
        .Q(vga_rgb_ball[5]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[6] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[6]),
        .Q(vga_rgb_ball[6]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[7] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[7]),
        .Q(vga_rgb_ball[7]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[8] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(ball_rgb__0[8]),
        .Q(vga_rgb_ball[8]),
        .R(\vga_rgb_ball[22]_i_1_n_0 ));
  FDRE \vga_rgb_ball_reg[9] 
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
  FDRE \vga_rgb_line_reg[0] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[0] ),
        .Q(\vga_rgb_line_reg_n_0_[0] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[10] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[10] ),
        .Q(\vga_rgb_line_reg_n_0_[10] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[11] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[11] ),
        .Q(\vga_rgb_line_reg_n_0_[11] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[12] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[12] ),
        .Q(\vga_rgb_line_reg_n_0_[12] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[13] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[13] ),
        .Q(\vga_rgb_line_reg_n_0_[13] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[14] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[14] ),
        .Q(\vga_rgb_line_reg_n_0_[14] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[15] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[15] ),
        .Q(vga_rgb1),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[16] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[16] ),
        .Q(\vga_rgb_line_reg_n_0_[16] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[17] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[17] ),
        .Q(\vga_rgb_line_reg_n_0_[17] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[18] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[18] ),
        .Q(\vga_rgb_line_reg_n_0_[18] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[19] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[19] ),
        .Q(\vga_rgb_line_reg_n_0_[19] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[1] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[1] ),
        .Q(\vga_rgb_line_reg_n_0_[1] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[20] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[20] ),
        .Q(\vga_rgb_line_reg_n_0_[20] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[21] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[21] ),
        .Q(\vga_rgb_line_reg_n_0_[21] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[22] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[22] ),
        .Q(\vga_rgb_line_reg_n_0_[22] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[23] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(vga_rgb_line1),
        .Q(\vga_rgb_line_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \vga_rgb_line_reg[2] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[2] ),
        .Q(\vga_rgb_line_reg_n_0_[2] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[3] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[3] ),
        .Q(\vga_rgb_line_reg_n_0_[3] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[4] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[4] ),
        .Q(\vga_rgb_line_reg_n_0_[4] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[5] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[5] ),
        .Q(\vga_rgb_line_reg_n_0_[5] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[6] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[6] ),
        .Q(\vga_rgb_line_reg_n_0_[6] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[7] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[7] ),
        .Q(\vga_rgb_line_reg_n_0_[7] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[8] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[8] ),
        .Q(\vga_rgb_line_reg_n_0_[8] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_line_reg[9] 
       (.C(clk_dot),
        .CE(mode_bit),
        .D(\line_rgb_reg_n_0_[9] ),
        .Q(\vga_rgb_line_reg_n_0_[9] ),
        .R(\vga_rgb_line[22]_i_1_n_0 ));
  FDRE \vga_rgb_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[0]_i_1_n_0 ),
        .Q(vga_pixel_rgb[0]),
        .R(1'b0));
  FDSE \vga_rgb_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[10]_i_1_n_0 ),
        .Q(vga_pixel_rgb[10]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE \vga_rgb_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[11]_i_1_n_0 ),
        .Q(vga_pixel_rgb[11]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE \vga_rgb_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[12]_i_1_n_0 ),
        .Q(vga_pixel_rgb[12]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE \vga_rgb_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[13]_i_1_n_0 ),
        .Q(vga_pixel_rgb[13]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDSE \vga_rgb_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[14]_i_2_n_0 ),
        .Q(vga_pixel_rgb[14]),
        .S(\vga_rgb[14]_i_1_n_0 ));
  FDRE \vga_rgb_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[15]_i_1_n_0 ),
        .Q(vga_pixel_rgb[15]),
        .R(1'b0));
  FDRE \vga_rgb_reg[16] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[16]_i_1_n_0 ),
        .Q(vga_pixel_rgb[16]),
        .R(1'b0));
  FDSE \vga_rgb_reg[17] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[17]_i_1_n_0 ),
        .Q(vga_pixel_rgb[17]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE \vga_rgb_reg[18] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[18]_i_1_n_0 ),
        .Q(vga_pixel_rgb[18]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE \vga_rgb_reg[19] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[19]_i_1_n_0 ),
        .Q(vga_pixel_rgb[19]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE \vga_rgb_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[1]_i_1_n_0 ),
        .Q(vga_pixel_rgb[1]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE \vga_rgb_reg[20] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[20]_i_1_n_0 ),
        .Q(vga_pixel_rgb[20]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE \vga_rgb_reg[21] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[21]_i_1_n_0 ),
        .Q(vga_pixel_rgb[21]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDSE \vga_rgb_reg[22] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[22]_i_2_n_0 ),
        .Q(vga_pixel_rgb[22]),
        .S(\vga_rgb[22]_i_1_n_0 ));
  FDRE \vga_rgb_reg[23] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[23]_i_1_n_0 ),
        .Q(vga_pixel_rgb[23]),
        .R(1'b0));
  FDSE \vga_rgb_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[2]_i_1_n_0 ),
        .Q(vga_pixel_rgb[2]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE \vga_rgb_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[3]_i_1_n_0 ),
        .Q(vga_pixel_rgb[3]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE \vga_rgb_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[4]_i_1_n_0 ),
        .Q(vga_pixel_rgb[4]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE \vga_rgb_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[5]_i_1_n_0 ),
        .Q(vga_pixel_rgb[5]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDSE \vga_rgb_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[6]_i_2_n_0 ),
        .Q(vga_pixel_rgb[6]),
        .S(\vga_rgb[6]_i_1_n_0 ));
  FDRE \vga_rgb_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[7]_i_1_n_0 ),
        .Q(vga_pixel_rgb[7]),
        .R(1'b0));
  FDRE \vga_rgb_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(\vga_rgb[8]_i_1_n_0 ),
        .Q(vga_pixel_rgb[8]),
        .R(1'b0));
  FDSE \vga_rgb_reg[9] 
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
  FDRE \vga_rgb_tp_reg[10] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[10]),
        .Q(vga_rgb_tp[10]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[11] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[11]),
        .Q(vga_rgb_tp[11]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[12] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[12]),
        .Q(vga_rgb_tp[12]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[13] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[13]),
        .Q(vga_rgb_tp[13]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[14] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[14]),
        .Q(vga_rgb_tp[14]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[15] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[15]),
        .Q(vga_rgb_tp[15]),
        .R(\vga_rgb_tp[15]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[17] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[17]),
        .Q(vga_rgb_tp[17]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[18] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[18]),
        .Q(vga_rgb_tp[18]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[19] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[19]),
        .Q(vga_rgb_tp[19]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[1] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[1]),
        .Q(vga_rgb_tp[1]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[20] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[20]),
        .Q(vga_rgb_tp[20]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[21] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[21]),
        .Q(vga_rgb_tp[21]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[22] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[22]),
        .Q(vga_rgb_tp[22]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[23] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[23]),
        .Q(vga_rgb_tp[23]),
        .R(\vga_rgb_tp[23]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[2] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[2]),
        .Q(vga_rgb_tp[2]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[3] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[3]),
        .Q(vga_rgb_tp[3]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[4] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[4]),
        .Q(vga_rgb_tp[4]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[5] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[5]),
        .Q(vga_rgb_tp[5]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[6] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[6]),
        .Q(vga_rgb_tp[6]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[7] 
       (.C(clk_dot),
        .CE(p_1_in),
        .D(p_0_out[7]),
        .Q(vga_rgb_tp[7]),
        .R(\vga_rgb_tp[7]_i_1_n_0 ));
  FDRE \vga_rgb_tp_reg[9] 
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
  FDPE \cnt_h_reg[0] 
       (.C(clk_dot),
        .CE(1'b1),
        .D(cnt_h[0]),
        .PRE(reset),
        .Q(\cnt_h_reg_n_0_[0] ));
  FDCE \cnt_h_reg[10] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[10]),
        .Q(\cnt_h_reg_n_0_[10] ));
  FDCE \cnt_h_reg[11] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt_h[11]_i_1_n_0 ),
        .Q(\cnt_h_reg_n_0_[11] ));
  FDCE \cnt_h_reg[12] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[12]),
        .Q(\cnt_h_reg_n_0_[12] ));
  FDCE \cnt_h_reg[13] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[13]),
        .Q(\cnt_h_reg_n_0_[13] ));
  FDCE \cnt_h_reg[14] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[14]),
        .Q(\cnt_h_reg_n_0_[14] ));
  FDCE \cnt_h_reg[15] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[15]),
        .Q(\cnt_h_reg_n_0_[15] ));
  FDCE \cnt_h_reg[1] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[1]),
        .Q(\cnt_h_reg_n_0_[1] ));
  FDCE \cnt_h_reg[2] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[2]),
        .Q(\cnt_h_reg_n_0_[2] ));
  FDCE \cnt_h_reg[3] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[3]),
        .Q(\cnt_h_reg_n_0_[3] ));
  FDCE \cnt_h_reg[4] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[4]),
        .Q(\cnt_h_reg_n_0_[4] ));
  FDCE \cnt_h_reg[5] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[5]),
        .Q(\cnt_h_reg_n_0_[5] ));
  FDCE \cnt_h_reg[6] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[6]),
        .Q(\cnt_h_reg_n_0_[6] ));
  FDCE \cnt_h_reg[7] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[7]),
        .Q(\cnt_h_reg_n_0_[7] ));
  FDCE \cnt_h_reg[8] 
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(cnt_h[8]),
        .Q(\cnt_h_reg_n_0_[8] ));
  FDCE \cnt_h_reg[9] 
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
  FDPE \cnt_v_reg[0] 
       (.C(clk_dot),
        .CE(h_rollover),
        .D(cnt_v[0]),
        .PRE(reset),
        .Q(\cnt_v_reg_n_0_[0] ));
  FDCE \cnt_v_reg[10] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[10]),
        .Q(\cnt_v_reg_n_0_[10] ));
  FDCE \cnt_v_reg[11] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[11]),
        .Q(\cnt_v_reg_n_0_[11] ));
  FDCE \cnt_v_reg[12] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[12]),
        .Q(\cnt_v_reg_n_0_[12] ));
  FDCE \cnt_v_reg[13] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[13]),
        .Q(\cnt_v_reg_n_0_[13] ));
  FDCE \cnt_v_reg[14] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[14]),
        .Q(\cnt_v_reg_n_0_[14] ));
  FDCE \cnt_v_reg[15] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[15]),
        .Q(\cnt_v_reg_n_0_[15] ));
  FDCE \cnt_v_reg[1] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[1]),
        .Q(\cnt_v_reg_n_0_[1] ));
  FDCE \cnt_v_reg[2] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[2]),
        .Q(\cnt_v_reg_n_0_[2] ));
  FDCE \cnt_v_reg[3] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[3]),
        .Q(\cnt_v_reg_n_0_[3] ));
  FDCE \cnt_v_reg[4] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[4]),
        .Q(\cnt_v_reg_n_0_[4] ));
  FDCE \cnt_v_reg[5] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[5]),
        .Q(\cnt_v_reg_n_0_[5] ));
  FDCE \cnt_v_reg[6] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[6]),
        .Q(\cnt_v_reg_n_0_[6] ));
  FDCE \cnt_v_reg[7] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[7]),
        .Q(\cnt_v_reg_n_0_[7] ));
  FDCE \cnt_v_reg[8] 
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(cnt_v[8]),
        .Q(\cnt_v_reg_n_0_[8] ));
  FDCE \cnt_v_reg[9] 
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
  FDCE \fsm_h_reg[0] 
       (.C(clk_dot),
        .CE(\fsm_h[1]_i_1_n_0 ),
        .CLR(reset),
        .D(fsm_h[0]),
        .Q(\fsm_h_reg_n_0_[0] ));
  FDCE \fsm_h_reg[1] 
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
  FDPE \fsm_v_reg[0] 
       (.C(clk_dot),
        .CE(\fsm_v[1]_i_1_n_0 ),
        .D(fsm_v[0]),
        .PRE(reset),
        .Q(\fsm_v_reg_n_0_[0] ));
  FDPE \fsm_v_reg[1] 
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
  FDPE h_rollover_reg
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
  FDCE hsync_loc_reg
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
  FDCE vga_hsync_reg
       (.C(clk_dot),
        .CE(1'b1),
        .CLR(reset),
        .D(hsync_loc),
        .Q(vga_hsync));
  FDCE vga_vsync_reg
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
  FDCE vid_active_reg
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
  FDCE vid_new_frame_reg
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
  FDCE vid_new_line_reg
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
  FDCE vsync_loc_reg
       (.C(clk_dot),
        .CE(h_rollover),
        .CLR(reset),
        .D(vsync_loc_i_1_n_0),
        .Q(vsync_loc));
endmodule
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
