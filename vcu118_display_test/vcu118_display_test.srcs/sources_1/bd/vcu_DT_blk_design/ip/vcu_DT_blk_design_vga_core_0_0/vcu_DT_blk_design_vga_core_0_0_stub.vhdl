-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sat Mar 27 14:48:39 2021
-- Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rwegter/xil_logs/vcu118_display_test/vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_vga_core_0_0/vcu_DT_blk_design_vga_core_0_0_stub.vhdl
-- Design      : vcu_DT_blk_design_vga_core_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vcu_DT_blk_design_vga_core_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    color_3b : in STD_LOGIC;
    mode_bit : in STD_LOGIC;
    clk_dot : in STD_LOGIC;
    random_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    vga_pixel_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vga_active : out STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC
  );

end vcu_DT_blk_design_vga_core_0_0;

architecture stub of vcu_DT_blk_design_vga_core_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,color_3b,mode_bit,clk_dot,random_num[31:0],vga_pixel_rgb[23:0],vga_active,vga_hsync,vga_vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_core,Vivado 2019.1";
begin
end;
