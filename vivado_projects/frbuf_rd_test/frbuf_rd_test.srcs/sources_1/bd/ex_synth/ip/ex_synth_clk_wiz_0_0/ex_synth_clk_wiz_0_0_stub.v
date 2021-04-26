// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Apr 25 13:41:45 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_clk_wiz_0_0/ex_synth_clk_wiz_0_0_stub.v
// Design      : ex_synth_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ex_synth_clk_wiz_0_0(clk_out1, clk_out2, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,resetn,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1;
endmodule
