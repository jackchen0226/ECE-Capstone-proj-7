//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Mar 24 11:24:46 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  output clk;
  input clk_100MHz;
  output [3:0]green;
  output [3:0]red;
  input reset;
  output vga_active;
  output vga_hsync;
  output vga_vsync;

  wire [3:0]blue;
  wire clk;
  wire clk_100MHz;
  wire [3:0]green;
  wire [3:0]red;
  wire reset;
  wire vga_active;
  wire vga_hsync;
  wire vga_vsync;

  design_1 design_1_i
       (.blue(blue),
        .clk(clk),
        .clk_100MHz(clk_100MHz),
        .green(green),
        .red(red),
        .reset(reset),
        .vga_active(vga_active),
        .vga_hsync(vga_hsync),
        .vga_vsync(vga_vsync));
endmodule
