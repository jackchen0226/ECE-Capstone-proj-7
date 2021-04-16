//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Mon Mar 29 12:14:06 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target vcu_DT_blk_design_wrapper.bd
//Design      : vcu_DT_blk_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vcu_DT_blk_design_wrapper
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
  output clk;
  output [3:0]green;
  output [3:0]red;
  input reset;
  input sysclk_125_clk_n;
  input sysclk_125_clk_p;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue;
  wire clk;
  wire [3:0]green;
  wire [3:0]red;
  wire reset;
  wire sysclk_125_clk_n;
  wire sysclk_125_clk_p;
  wire vga_active;
  wire vga_hsync;
  wire vga_vsync;

  vcu_DT_blk_design vcu_DT_blk_design_i
       (.blue(blue),
        .clk(clk),
        .green(green),
        .red(red),
        .reset(reset),
        .sysclk_125_clk_n(sysclk_125_clk_n),
        .sysclk_125_clk_p(sysclk_125_clk_p),
        .vga_active(vga_active),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync));
endmodule
