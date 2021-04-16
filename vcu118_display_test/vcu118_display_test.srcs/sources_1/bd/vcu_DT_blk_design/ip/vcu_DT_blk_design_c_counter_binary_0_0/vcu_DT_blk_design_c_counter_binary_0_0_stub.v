// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Mar 24 11:57:45 2021
// Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top vcu_DT_blk_design_c_counter_binary_0_0 -prefix
//               vcu_DT_blk_design_c_counter_binary_0_0_ vcu_DT_blk_design_c_counter_binary_0_0_stub.v
// Design      : vcu_DT_blk_design_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *)
module vcu_DT_blk_design_c_counter_binary_0_0(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[31:0]" */;
  input CLK;
  output [31:0]Q;
endmodule
