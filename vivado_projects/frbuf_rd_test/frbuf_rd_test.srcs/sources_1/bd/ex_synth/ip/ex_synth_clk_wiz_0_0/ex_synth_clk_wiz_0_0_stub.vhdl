-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Apr 25 13:41:45 2021
-- Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_clk_wiz_0_0/ex_synth_clk_wiz_0_0_stub.vhdl
-- Design      : ex_synth_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ex_synth_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end ex_synth_clk_wiz_0_0;

architecture stub of ex_synth_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,locked,clk_in1";
begin
end;
