-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Mar 29 12:16:00 2021
-- Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rwegter/xil_logs/vcu118_display_test/vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_clk_wiz_0_3/vcu_DT_blk_design_clk_wiz_0_3_stub.vhdl
-- Design      : vcu_DT_blk_design_clk_wiz_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vcu_DT_blk_design_clk_wiz_0_3 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end vcu_DT_blk_design_clk_wiz_0_3;

architecture stub of vcu_DT_blk_design_clk_wiz_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
