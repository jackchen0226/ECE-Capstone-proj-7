//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Apr 14 12:14:14 2021
//Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Blue,
    Green,
    Red,
    clk,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vid_active_video_0,
    vid_hsync_0,
    vid_vsync_0);
  output [3:0]Blue;
  output [3:0]Green;
  output [3:0]Red;
  output clk;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output vid_active_video_0;
  output vid_hsync_0;
  output vid_vsync_0;

  wire [3:0]Blue;
  wire [3:0]Green;
  wire [3:0]Red;
  wire clk;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vid_active_video_0;
  wire vid_hsync_0;
  wire vid_vsync_0;

  design_1 design_1_i
       (.Blue(Blue),
        .Green(Green),
        .Red(Red),
        .clk(clk),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vid_active_video_0(vid_active_video_0),
        .vid_hsync_0(vid_hsync_0),
        .vid_vsync_0(vid_vsync_0));
endmodule
