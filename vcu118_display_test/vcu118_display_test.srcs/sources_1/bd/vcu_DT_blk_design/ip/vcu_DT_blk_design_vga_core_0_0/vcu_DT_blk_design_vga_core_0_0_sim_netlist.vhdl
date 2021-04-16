-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sat Mar 27 14:48:40 2021
-- Host        : WT-SP4U running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rwegter/xil_logs/vcu118_display_test/vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_vga_core_0_0/vcu_DT_blk_design_vga_core_0_0_sim_netlist.vhdl
-- Design      : vcu_DT_blk_design_vga_core_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcu_DT_blk_design_vga_core_0_0_vga_timing is
  port (
    vid_new_frame_reg_0 : out STD_LOGIC;
    vid_new_frame : out STD_LOGIC;
    vid_new_frame_reg_1 : out STD_LOGIC;
    mode_bit_0 : out STD_LOGIC;
    vid_new_frame_reg_2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_new_frame_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dir_chg_sr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    vid_new_line : out STD_LOGIC;
    vga_active : out STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    \dir_chg_sr_reg[0]_0\ : in STD_LOGIC;
    mode_bit : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dir_chg_sr_reg[0]_1\ : in STD_LOGIC;
    \ball_x_dir_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dir_chg_sr_reg[0]_2\ : in STD_LOGIC;
    \line_y_pos_reg[0]\ : in STD_LOGIC;
    \line_y_pos_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \line_y_pos_reg[0]_1\ : in STD_LOGIC;
    \line_y_pos_reg[0]_2\ : in STD_LOGIC;
    \line_y_pos_reg[0]_3\ : in STD_LOGIC;
    clk_dot : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcu_DT_blk_design_vga_core_0_0_vga_timing : entity is "vga_timing";
end vcu_DT_blk_design_vga_core_0_0_vga_timing;

architecture STRUCTURE of vcu_DT_blk_design_vga_core_0_0_vga_timing is
  signal cnt_h : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cnt_h115_out : STD_LOGIC;
  signal \cnt_h[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_h[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_h[15]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_h[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_h[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_h_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_v : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_v[10]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_v[15]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_v[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_v[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_v[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_v[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_v[9]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_v[9]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_v_reg_n_0_[9]\ : STD_LOGIC;
  signal fsm_h : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \fsm_h[1]_i_1_n_0\ : STD_LOGIC;
  signal \fsm_h[1]_i_3_n_0\ : STD_LOGIC;
  signal \fsm_h[1]_i_4_n_0\ : STD_LOGIC;
  signal \fsm_h[1]_i_5_n_0\ : STD_LOGIC;
  signal \fsm_h[1]_i_6_n_0\ : STD_LOGIC;
  signal \fsm_h[1]_i_7_n_0\ : STD_LOGIC;
  signal \fsm_h_reg_n_0_[0]\ : STD_LOGIC;
  signal \fsm_h_reg_n_0_[1]\ : STD_LOGIC;
  signal fsm_v : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \fsm_v[0]_i_2_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_10_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_1_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_3_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_4_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_5_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_6_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_7_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_8_n_0\ : STD_LOGIC;
  signal \fsm_v[1]_i_9_n_0\ : STD_LOGIC;
  signal \fsm_v_reg_n_0_[0]\ : STD_LOGIC;
  signal \fsm_v_reg_n_0_[1]\ : STD_LOGIC;
  signal h_rollover : STD_LOGIC;
  signal h_rollover_i_2_n_0 : STD_LOGIC;
  signal hsync_loc : STD_LOGIC;
  signal hsync_loc_i_1_n_0 : STD_LOGIC;
  signal \line_rgb[22]_i_4_n_0\ : STD_LOGIC;
  signal vid_active0 : STD_LOGIC;
  signal \^vid_new_frame\ : STD_LOGIC;
  signal vid_new_frame_i_1_n_0 : STD_LOGIC;
  signal vid_new_line0 : STD_LOGIC;
  signal vid_new_line_i_2_n_0 : STD_LOGIC;
  signal vid_new_line_i_3_n_0 : STD_LOGIC;
  signal vsync_loc : STD_LOGIC;
  signal vsync_loc_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ball_rgb[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ball_x_dir[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ball_x_dir[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ball_y_dir[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ball_y_dir[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_h[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_h[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_h[13]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_h[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_h[15]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_h[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_h[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_h[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_h[6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_h[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_v[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_v[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_v[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_v[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_v[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_v[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_v[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_v[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_v[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_v[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_v[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_v[9]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dir_chg_sr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dir_chg_sr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fsm_v[1]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fsm_v[1]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fsm_v[1]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fsm_v[1]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of hsync_loc_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \line_rgb[22]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vid_new_line_i_3 : label is "soft_lutpair8";
begin
  vid_new_frame <= \^vid_new_frame\;
\ball_rgb[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \dir_chg_sr_reg[0]_2\,
      I1 => \^vid_new_frame\,
      I2 => mode_bit,
      O => \dir_chg_sr_reg[0]\(0)
    );
\ball_x_dir[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F8F"
    )
        port map (
      I0 => \dir_chg_sr_reg[0]_1\,
      I1 => \^vid_new_frame\,
      I2 => mode_bit,
      I3 => \ball_x_dir_reg[10]\(0),
      O => vid_new_frame_reg_1
    );
\ball_x_dir[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \dir_chg_sr_reg[0]_1\,
      I1 => \^vid_new_frame\,
      I2 => mode_bit,
      O => vid_new_frame_reg_3(0)
    );
\ball_y_dir[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F8F"
    )
        port map (
      I0 => \^vid_new_frame\,
      I1 => \dir_chg_sr_reg[0]_0\,
      I2 => mode_bit,
      I3 => DI(0),
      O => vid_new_frame_reg_0
    );
\ball_y_dir[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^vid_new_frame\,
      I1 => \dir_chg_sr_reg[0]_0\,
      I2 => mode_bit,
      O => E(0)
    );
\cnt_h[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[0]\,
      O => cnt_h(0)
    );
\cnt_h[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[10]\,
      I1 => \cnt_h_reg_n_0_[9]\,
      I2 => \cnt_h_reg_n_0_[8]\,
      I3 => \cnt_h[12]_i_2_n_0\,
      O => cnt_h(10)
    );
\cnt_h[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[11]\,
      I1 => \cnt_h_reg_n_0_[10]\,
      I2 => \cnt_h_reg_n_0_[9]\,
      I3 => \cnt_h_reg_n_0_[8]\,
      I4 => \cnt_h[12]_i_2_n_0\,
      O => \cnt_h[11]_i_1_n_0\
    );
\cnt_h[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[12]\,
      I1 => \cnt_h[12]_i_2_n_0\,
      I2 => \cnt_h_reg_n_0_[8]\,
      I3 => \cnt_h_reg_n_0_[9]\,
      I4 => \cnt_h_reg_n_0_[10]\,
      I5 => \cnt_h_reg_n_0_[11]\,
      O => cnt_h(12)
    );
\cnt_h[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[6]\,
      I1 => \cnt_h_reg_n_0_[4]\,
      I2 => \cnt_h[6]_i_2_n_0\,
      I3 => \cnt_h_reg_n_0_[3]\,
      I4 => \cnt_h_reg_n_0_[5]\,
      I5 => \cnt_h_reg_n_0_[7]\,
      O => \cnt_h[12]_i_2_n_0\
    );
\cnt_h[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[13]\,
      I1 => \cnt_h_reg_n_0_[11]\,
      I2 => \cnt_h[15]_i_2_n_0\,
      I3 => \cnt_h_reg_n_0_[12]\,
      O => cnt_h(13)
    );
\cnt_h[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[14]\,
      I1 => \cnt_h_reg_n_0_[12]\,
      I2 => \cnt_h[15]_i_2_n_0\,
      I3 => \cnt_h_reg_n_0_[11]\,
      I4 => \cnt_h_reg_n_0_[13]\,
      O => cnt_h(14)
    );
\cnt_h[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[15]\,
      I1 => \cnt_h_reg_n_0_[13]\,
      I2 => \cnt_h_reg_n_0_[11]\,
      I3 => \cnt_h[15]_i_2_n_0\,
      I4 => \cnt_h_reg_n_0_[12]\,
      I5 => \cnt_h_reg_n_0_[14]\,
      O => cnt_h(15)
    );
\cnt_h[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \cnt_h[12]_i_2_n_0\,
      I1 => \cnt_h_reg_n_0_[8]\,
      I2 => \cnt_h_reg_n_0_[9]\,
      I3 => \cnt_h_reg_n_0_[10]\,
      O => \cnt_h[15]_i_2_n_0\
    );
\cnt_h[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[0]\,
      I1 => \cnt_h_reg_n_0_[1]\,
      O => cnt_h(1)
    );
\cnt_h[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[2]\,
      I1 => \cnt_h_reg_n_0_[0]\,
      I2 => \cnt_h_reg_n_0_[1]\,
      O => cnt_h(2)
    );
\cnt_h[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      I1 => \cnt_h_reg_n_0_[1]\,
      I2 => \cnt_h_reg_n_0_[0]\,
      I3 => \cnt_h_reg_n_0_[2]\,
      I4 => \cnt_h_reg_n_0_[3]\,
      O => cnt_h(3)
    );
\cnt_h[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      I1 => \cnt_h_reg_n_0_[2]\,
      I2 => \cnt_h_reg_n_0_[0]\,
      I3 => \cnt_h_reg_n_0_[1]\,
      I4 => \cnt_h_reg_n_0_[3]\,
      I5 => \cnt_h_reg_n_0_[4]\,
      O => cnt_h(4)
    );
\cnt_h[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      I1 => \cnt_h_reg_n_0_[3]\,
      I2 => \cnt_h[6]_i_2_n_0\,
      I3 => \cnt_h_reg_n_0_[4]\,
      I4 => \cnt_h_reg_n_0_[5]\,
      O => cnt_h(5)
    );
\cnt_h[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      I1 => \cnt_h_reg_n_0_[4]\,
      I2 => \cnt_h[6]_i_2_n_0\,
      I3 => \cnt_h_reg_n_0_[3]\,
      I4 => \cnt_h_reg_n_0_[5]\,
      I5 => \cnt_h_reg_n_0_[6]\,
      O => cnt_h(6)
    );
\cnt_h[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[1]\,
      I1 => \cnt_h_reg_n_0_[0]\,
      I2 => \cnt_h_reg_n_0_[2]\,
      O => \cnt_h[6]_i_2_n_0\
    );
\cnt_h[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      I1 => \cnt_h[7]_i_2_n_0\,
      I2 => \cnt_h_reg_n_0_[6]\,
      I3 => \cnt_h_reg_n_0_[7]\,
      O => cnt_h(7)
    );
\cnt_h[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[4]\,
      I1 => \cnt_h_reg_n_0_[2]\,
      I2 => \cnt_h_reg_n_0_[0]\,
      I3 => \cnt_h_reg_n_0_[1]\,
      I4 => \cnt_h_reg_n_0_[3]\,
      I5 => \cnt_h_reg_n_0_[5]\,
      O => \cnt_h[7]_i_2_n_0\
    );
\cnt_h[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[8]\,
      I1 => \cnt_h[12]_i_2_n_0\,
      I2 => \fsm_h[1]_i_3_n_0\,
      O => cnt_h(8)
    );
\cnt_h[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A600"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[9]\,
      I1 => \cnt_h_reg_n_0_[8]\,
      I2 => \cnt_h[12]_i_2_n_0\,
      I3 => \fsm_h[1]_i_3_n_0\,
      O => cnt_h(9)
    );
\cnt_h_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_dot,
      CE => '1',
      D => cnt_h(0),
      PRE => reset,
      Q => \cnt_h_reg_n_0_[0]\
    );
\cnt_h_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(10),
      Q => \cnt_h_reg_n_0_[10]\
    );
\cnt_h_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => \cnt_h[11]_i_1_n_0\,
      Q => \cnt_h_reg_n_0_[11]\
    );
\cnt_h_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(12),
      Q => \cnt_h_reg_n_0_[12]\
    );
\cnt_h_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(13),
      Q => \cnt_h_reg_n_0_[13]\
    );
\cnt_h_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(14),
      Q => \cnt_h_reg_n_0_[14]\
    );
\cnt_h_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(15),
      Q => \cnt_h_reg_n_0_[15]\
    );
\cnt_h_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(1),
      Q => \cnt_h_reg_n_0_[1]\
    );
\cnt_h_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(2),
      Q => \cnt_h_reg_n_0_[2]\
    );
\cnt_h_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(3),
      Q => \cnt_h_reg_n_0_[3]\
    );
\cnt_h_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(4),
      Q => \cnt_h_reg_n_0_[4]\
    );
\cnt_h_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(5),
      Q => \cnt_h_reg_n_0_[5]\
    );
\cnt_h_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(6),
      Q => \cnt_h_reg_n_0_[6]\
    );
\cnt_h_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(7),
      Q => \cnt_h_reg_n_0_[7]\
    );
\cnt_h_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(8),
      Q => \cnt_h_reg_n_0_[8]\
    );
\cnt_h_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => cnt_h(9),
      Q => \cnt_h_reg_n_0_[9]\
    );
\cnt_v[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[0]\,
      I1 => \fsm_v[1]_i_3_n_0\,
      I2 => fsm_v(1),
      O => cnt_v(0)
    );
\cnt_v[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[8]\,
      I1 => \cnt_v_reg_n_0_[6]\,
      I2 => \cnt_v[10]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[7]\,
      I4 => \cnt_v_reg_n_0_[9]\,
      I5 => \cnt_v_reg_n_0_[10]\,
      O => cnt_v(10)
    );
\cnt_v[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[4]\,
      I1 => \cnt_v_reg_n_0_[2]\,
      I2 => \cnt_v_reg_n_0_[0]\,
      I3 => \cnt_v_reg_n_0_[1]\,
      I4 => \cnt_v_reg_n_0_[3]\,
      I5 => \cnt_v_reg_n_0_[5]\,
      O => \cnt_v[10]_i_2_n_0\
    );
\cnt_v[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[11]\,
      I1 => \cnt_v[15]_i_2_n_0\,
      O => cnt_v(11)
    );
\cnt_v[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[12]\,
      I1 => \cnt_v[15]_i_2_n_0\,
      I2 => \cnt_v_reg_n_0_[11]\,
      O => cnt_v(12)
    );
\cnt_v[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[13]\,
      I1 => \cnt_v_reg_n_0_[11]\,
      I2 => \cnt_v[15]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[12]\,
      O => cnt_v(13)
    );
\cnt_v[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[14]\,
      I1 => \cnt_v_reg_n_0_[12]\,
      I2 => \cnt_v[15]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[11]\,
      I4 => \cnt_v_reg_n_0_[13]\,
      O => cnt_v(14)
    );
\cnt_v[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[15]\,
      I1 => \cnt_v_reg_n_0_[13]\,
      I2 => \cnt_v_reg_n_0_[11]\,
      I3 => \cnt_v[15]_i_2_n_0\,
      I4 => \cnt_v_reg_n_0_[12]\,
      I5 => \cnt_v_reg_n_0_[14]\,
      O => cnt_v(15)
    );
\cnt_v[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[10]\,
      I1 => \cnt_v_reg_n_0_[9]\,
      I2 => \cnt_v_reg_n_0_[7]\,
      I3 => \cnt_v[10]_i_2_n_0\,
      I4 => \cnt_v_reg_n_0_[6]\,
      I5 => \cnt_v_reg_n_0_[8]\,
      O => \cnt_v[15]_i_2_n_0\
    );
\cnt_v[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_v[9]_i_2_n_0\,
      I1 => \cnt_v_reg_n_0_[0]\,
      I2 => \cnt_v_reg_n_0_[1]\,
      O => cnt_v(1)
    );
\cnt_v[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFEFF000000"
    )
        port map (
      I0 => \cnt_v[2]_i_2_n_0\,
      I1 => \fsm_v_reg_n_0_[1]\,
      I2 => \fsm_v_reg_n_0_[0]\,
      I3 => \cnt_v_reg_n_0_[1]\,
      I4 => \cnt_v_reg_n_0_[0]\,
      I5 => \cnt_v_reg_n_0_[2]\,
      O => cnt_v(2)
    );
\cnt_v[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[4]\,
      I1 => \cnt_v[2]_i_3_n_0\,
      I2 => \cnt_v_reg_n_0_[6]\,
      I3 => \cnt_v_reg_n_0_[9]\,
      I4 => \cnt_v_reg_n_0_[3]\,
      O => \cnt_v[2]_i_2_n_0\
    );
\cnt_v[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fsm_v[1]_i_7_n_0\,
      I1 => \cnt_v_reg_n_0_[8]\,
      I2 => \cnt_v_reg_n_0_[14]\,
      I3 => \cnt_v_reg_n_0_[15]\,
      I4 => \cnt_v_reg_n_0_[10]\,
      I5 => \cnt_v_reg_n_0_[11]\,
      O => \cnt_v[2]_i_3_n_0\
    );
\cnt_v[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111110000000"
    )
        port map (
      I0 => \fsm_v[1]_i_3_n_0\,
      I1 => fsm_v(1),
      I2 => \cnt_v_reg_n_0_[1]\,
      I3 => \cnt_v_reg_n_0_[0]\,
      I4 => \cnt_v_reg_n_0_[2]\,
      I5 => \cnt_v_reg_n_0_[3]\,
      O => cnt_v(3)
    );
\cnt_v[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110100"
    )
        port map (
      I0 => \fsm_v[1]_i_3_n_0\,
      I1 => fsm_v(1),
      I2 => \cnt_v[4]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[3]\,
      I4 => \cnt_v_reg_n_0_[4]\,
      O => cnt_v(4)
    );
\cnt_v[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[1]\,
      I1 => \cnt_v_reg_n_0_[0]\,
      I2 => \cnt_v_reg_n_0_[2]\,
      O => \cnt_v[4]_i_2_n_0\
    );
\cnt_v[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[5]\,
      I1 => \cnt_v_reg_n_0_[3]\,
      I2 => \cnt_v_reg_n_0_[1]\,
      I3 => \cnt_v_reg_n_0_[0]\,
      I4 => \cnt_v_reg_n_0_[2]\,
      I5 => \cnt_v_reg_n_0_[4]\,
      O => cnt_v(5)
    );
\cnt_v[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \cnt_v[9]_i_2_n_0\,
      I1 => \cnt_v[10]_i_2_n_0\,
      I2 => \cnt_v_reg_n_0_[6]\,
      O => cnt_v(6)
    );
\cnt_v[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[7]\,
      I1 => \cnt_v[10]_i_2_n_0\,
      I2 => \cnt_v_reg_n_0_[6]\,
      O => cnt_v(7)
    );
\cnt_v[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[8]\,
      I1 => \cnt_v_reg_n_0_[6]\,
      I2 => \cnt_v[10]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[7]\,
      O => cnt_v(8)
    );
\cnt_v[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \cnt_v[9]_i_2_n_0\,
      I1 => \cnt_v_reg_n_0_[7]\,
      I2 => \cnt_v[10]_i_2_n_0\,
      I3 => \cnt_v_reg_n_0_[6]\,
      I4 => \cnt_v_reg_n_0_[8]\,
      I5 => \cnt_v_reg_n_0_[9]\,
      O => cnt_v(9)
    );
\cnt_v[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFFFF00FFFF"
    )
        port map (
      I0 => \fsm_v[0]_i_2_n_0\,
      I1 => \cnt_v_reg_n_0_[0]\,
      I2 => \cnt_v_reg_n_0_[1]\,
      I3 => \cnt_v[9]_i_3_n_0\,
      I4 => \fsm_v_reg_n_0_[1]\,
      I5 => \fsm_v_reg_n_0_[0]\,
      O => \cnt_v[9]_i_2_n_0\
    );
\cnt_v[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \cnt_v[2]_i_3_n_0\,
      I1 => \cnt_v[9]_i_4_n_0\,
      I2 => \cnt_v_reg_n_0_[4]\,
      I3 => \cnt_v_reg_n_0_[3]\,
      I4 => \cnt_v_reg_n_0_[2]\,
      I5 => \fsm_v[1]_i_9_n_0\,
      O => \cnt_v[9]_i_3_n_0\
    );
\cnt_v[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[6]\,
      I1 => \cnt_v_reg_n_0_[9]\,
      O => \cnt_v[9]_i_4_n_0\
    );
\cnt_v_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_dot,
      CE => h_rollover,
      D => cnt_v(0),
      PRE => reset,
      Q => \cnt_v_reg_n_0_[0]\
    );
\cnt_v_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(10),
      Q => \cnt_v_reg_n_0_[10]\
    );
\cnt_v_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(11),
      Q => \cnt_v_reg_n_0_[11]\
    );
\cnt_v_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(12),
      Q => \cnt_v_reg_n_0_[12]\
    );
\cnt_v_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(13),
      Q => \cnt_v_reg_n_0_[13]\
    );
\cnt_v_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(14),
      Q => \cnt_v_reg_n_0_[14]\
    );
\cnt_v_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(15),
      Q => \cnt_v_reg_n_0_[15]\
    );
\cnt_v_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(1),
      Q => \cnt_v_reg_n_0_[1]\
    );
\cnt_v_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(2),
      Q => \cnt_v_reg_n_0_[2]\
    );
\cnt_v_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(3),
      Q => \cnt_v_reg_n_0_[3]\
    );
\cnt_v_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(4),
      Q => \cnt_v_reg_n_0_[4]\
    );
\cnt_v_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(5),
      Q => \cnt_v_reg_n_0_[5]\
    );
\cnt_v_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(6),
      Q => \cnt_v_reg_n_0_[6]\
    );
\cnt_v_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(7),
      Q => \cnt_v_reg_n_0_[7]\
    );
\cnt_v_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(8),
      Q => \cnt_v_reg_n_0_[8]\
    );
\cnt_v_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => cnt_v(9),
      Q => \cnt_v_reg_n_0_[9]\
    );
\dir_chg_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE000"
    )
        port map (
      I0 => \dir_chg_sr_reg[0]_0\,
      I1 => \dir_chg_sr_reg[0]_1\,
      I2 => mode_bit,
      I3 => \^vid_new_frame\,
      I4 => \dir_chg_sr_reg[0]_2\,
      O => mode_bit_0
    );
\dir_chg_sr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^vid_new_frame\,
      I1 => mode_bit,
      O => vid_new_frame_reg_2
    );
\fsm_h[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_new_line0,
      I1 => cnt_h115_out,
      O => fsm_h(0)
    );
\fsm_h[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fsm_h[1]_i_3_n_0\,
      O => \fsm_h[1]_i_1_n_0\
    );
\fsm_h[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => vid_new_line0,
      I1 => \cnt_h_reg_n_0_[5]\,
      I2 => \cnt_h_reg_n_0_[3]\,
      I3 => \cnt_h_reg_n_0_[7]\,
      I4 => \fsm_h[1]_i_4_n_0\,
      I5 => \fsm_h[1]_i_5_n_0\,
      O => fsm_h(1)
    );
\fsm_h[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fsm_h(1),
      I1 => \fsm_h[1]_i_6_n_0\,
      O => \fsm_h[1]_i_3_n_0\
    );
\fsm_h[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \fsm_h_reg_n_0_[1]\,
      I1 => \fsm_h_reg_n_0_[0]\,
      I2 => \cnt_h_reg_n_0_[8]\,
      I3 => \cnt_h_reg_n_0_[9]\,
      I4 => \cnt_h_reg_n_0_[4]\,
      I5 => \cnt_h_reg_n_0_[6]\,
      O => \fsm_h[1]_i_4_n_0\
    );
\fsm_h[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[2]\,
      I1 => \cnt_h_reg_n_0_[12]\,
      I2 => \cnt_h_reg_n_0_[11]\,
      I3 => \fsm_h[1]_i_7_n_0\,
      O => \fsm_h[1]_i_5_n_0\
    );
\fsm_h[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000008"
    )
        port map (
      I0 => h_rollover_i_2_n_0,
      I1 => \cnt_h_reg_n_0_[7]\,
      I2 => \cnt_h_reg_n_0_[3]\,
      I3 => \fsm_h_reg_n_0_[1]\,
      I4 => \fsm_h_reg_n_0_[0]\,
      I5 => \cnt_h_reg_n_0_[5]\,
      O => \fsm_h[1]_i_6_n_0\
    );
\fsm_h[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[1]\,
      I1 => \cnt_h_reg_n_0_[0]\,
      I2 => \cnt_h_reg_n_0_[10]\,
      I3 => \cnt_h_reg_n_0_[15]\,
      I4 => \cnt_h_reg_n_0_[13]\,
      I5 => \cnt_h_reg_n_0_[14]\,
      O => \fsm_h[1]_i_7_n_0\
    );
\fsm_h_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => \fsm_h[1]_i_1_n_0\,
      CLR => reset,
      D => fsm_h(0),
      Q => \fsm_h_reg_n_0_[0]\
    );
\fsm_h_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => \fsm_h[1]_i_1_n_0\,
      CLR => reset,
      D => fsm_h(1),
      Q => \fsm_h_reg_n_0_[1]\
    );
\fsm_v[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00000000"
    )
        port map (
      I0 => \fsm_v[0]_i_2_n_0\,
      I1 => \fsm_v_reg_n_0_[0]\,
      I2 => \cnt_v_reg_n_0_[0]\,
      I3 => \cnt_v_reg_n_0_[1]\,
      I4 => \fsm_v_reg_n_0_[1]\,
      I5 => \fsm_v[1]_i_6_n_0\,
      O => fsm_v(0)
    );
\fsm_v[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[2]\,
      I1 => \cnt_v[2]_i_2_n_0\,
      O => \fsm_v[0]_i_2_n_0\
    );
\fsm_v[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => h_rollover,
      I1 => \fsm_v[1]_i_3_n_0\,
      I2 => fsm_v(1),
      O => \fsm_v[1]_i_1_n_0\
    );
\fsm_v[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[3]\,
      I1 => \cnt_v_reg_n_0_[9]\,
      I2 => \cnt_v_reg_n_0_[6]\,
      I3 => \cnt_v[2]_i_3_n_0\,
      O => \fsm_v[1]_i_10_n_0\
    );
\fsm_v[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[15]\,
      I1 => \cnt_v_reg_n_0_[14]\,
      I2 => \cnt_v_reg_n_0_[8]\,
      I3 => \fsm_v[1]_i_4_n_0\,
      I4 => \fsm_v[1]_i_5_n_0\,
      I5 => \fsm_v[1]_i_6_n_0\,
      O => fsm_v(1)
    );
\fsm_v[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000002"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[2]\,
      I1 => \cnt_v_reg_n_0_[0]\,
      I2 => \cnt_v_reg_n_0_[1]\,
      I3 => \fsm_v_reg_n_0_[0]\,
      I4 => \fsm_v_reg_n_0_[1]\,
      I5 => \cnt_v[2]_i_2_n_0\,
      O => \fsm_v[1]_i_3_n_0\
    );
\fsm_v[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \fsm_v[1]_i_7_n_0\,
      I1 => \cnt_v_reg_n_0_[4]\,
      I2 => \cnt_v_reg_n_0_[6]\,
      I3 => \cnt_v_reg_n_0_[9]\,
      O => \fsm_v[1]_i_4_n_0\
    );
\fsm_v[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[2]\,
      I1 => \cnt_v_reg_n_0_[3]\,
      I2 => \fsm_v[1]_i_8_n_0\,
      I3 => \fsm_v[1]_i_9_n_0\,
      I4 => \cnt_v_reg_n_0_[10]\,
      I5 => \cnt_v_reg_n_0_[11]\,
      O => \fsm_v[1]_i_5_n_0\
    );
\fsm_v[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \fsm_v[1]_i_10_n_0\,
      I1 => \fsm_v_reg_n_0_[1]\,
      I2 => \cnt_v_reg_n_0_[4]\,
      I3 => \fsm_v_reg_n_0_[0]\,
      I4 => \cnt_v[4]_i_2_n_0\,
      O => \fsm_v[1]_i_6_n_0\
    );
\fsm_v[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[13]\,
      I1 => \cnt_v_reg_n_0_[5]\,
      I2 => \cnt_v_reg_n_0_[12]\,
      I3 => \cnt_v_reg_n_0_[7]\,
      O => \fsm_v[1]_i_7_n_0\
    );
\fsm_v[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \fsm_v_reg_n_0_[1]\,
      I1 => \fsm_v_reg_n_0_[0]\,
      O => \fsm_v[1]_i_8_n_0\
    );
\fsm_v[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_v_reg_n_0_[0]\,
      I1 => \cnt_v_reg_n_0_[1]\,
      O => \fsm_v[1]_i_9_n_0\
    );
\fsm_v_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_dot,
      CE => \fsm_v[1]_i_1_n_0\,
      D => fsm_v(0),
      PRE => reset,
      Q => \fsm_v_reg_n_0_[0]\
    );
\fsm_v_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_dot,
      CE => \fsm_v[1]_i_1_n_0\,
      D => fsm_v(1),
      PRE => reset,
      Q => \fsm_v_reg_n_0_[1]\
    );
h_rollover_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => h_rollover_i_2_n_0,
      I1 => \cnt_h_reg_n_0_[5]\,
      I2 => \cnt_h_reg_n_0_[3]\,
      I3 => \cnt_h_reg_n_0_[7]\,
      I4 => \fsm_h_reg_n_0_[0]\,
      I5 => \fsm_h_reg_n_0_[1]\,
      O => cnt_h115_out
    );
h_rollover_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => vid_new_line_i_2_n_0,
      I1 => \cnt_h_reg_n_0_[6]\,
      I2 => \cnt_h_reg_n_0_[4]\,
      O => h_rollover_i_2_n_0
    );
h_rollover_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_dot,
      CE => '1',
      D => cnt_h115_out,
      PRE => reset,
      Q => h_rollover
    );
hsync_loc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fsm_h_reg_n_0_[1]\,
      I1 => \fsm_h_reg_n_0_[0]\,
      O => hsync_loc_i_1_n_0
    );
hsync_loc_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => hsync_loc_i_1_n_0,
      Q => hsync_loc
    );
\line_rgb[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD555"
    )
        port map (
      I0 => mode_bit,
      I1 => \line_y_pos_reg[0]\,
      I2 => \line_y_pos_reg[0]_0\,
      I3 => \^vid_new_frame\,
      I4 => \line_rgb[22]_i_4_n_0\,
      O => SR(0)
    );
\line_rgb[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^vid_new_frame\,
      I3 => \line_y_pos_reg[0]_1\,
      I4 => \line_y_pos_reg[0]_2\,
      I5 => \line_y_pos_reg[0]_3\,
      O => \line_rgb[22]_i_4_n_0\
    );
vga_hsync_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => hsync_loc,
      Q => vga_hsync
    );
vga_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => vsync_loc,
      Q => vga_vsync
    );
vid_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \fsm_v_reg_n_0_[0]\,
      I1 => \fsm_v_reg_n_0_[1]\,
      I2 => \fsm_h_reg_n_0_[1]\,
      I3 => \fsm_h_reg_n_0_[0]\,
      O => vid_active0
    );
vid_active_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => vid_active0,
      Q => vga_active
    );
vid_new_frame_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => vid_new_line0,
      I1 => \fsm_v_reg_n_0_[0]\,
      I2 => \fsm_v_reg_n_0_[1]\,
      I3 => \cnt_v_reg_n_0_[0]\,
      I4 => \cnt_v_reg_n_0_[1]\,
      I5 => \fsm_v[0]_i_2_n_0\,
      O => vid_new_frame_i_1_n_0
    );
vid_new_frame_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => vid_new_frame_i_1_n_0,
      Q => \^vid_new_frame\
    );
vid_new_line_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => vid_new_line_i_2_n_0,
      I1 => \cnt_h_reg_n_0_[5]\,
      I2 => \fsm_h_reg_n_0_[1]\,
      I3 => \cnt_h_reg_n_0_[4]\,
      I4 => vid_new_line_i_3_n_0,
      O => vid_new_line0
    );
vid_new_line_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \fsm_h[1]_i_7_n_0\,
      I1 => \cnt_h_reg_n_0_[11]\,
      I2 => \cnt_h_reg_n_0_[12]\,
      I3 => \cnt_h_reg_n_0_[2]\,
      I4 => \cnt_h_reg_n_0_[9]\,
      I5 => \cnt_h_reg_n_0_[8]\,
      O => vid_new_line_i_2_n_0
    );
vid_new_line_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \cnt_h_reg_n_0_[3]\,
      I1 => \cnt_h_reg_n_0_[7]\,
      I2 => \cnt_h_reg_n_0_[6]\,
      I3 => \fsm_h_reg_n_0_[0]\,
      O => vid_new_line_i_3_n_0
    );
vid_new_line_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => '1',
      CLR => reset,
      D => vid_new_line0,
      Q => vid_new_line
    );
vsync_loc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001000000000FFFB"
    )
        port map (
      I0 => \cnt_v[2]_i_2_n_0\,
      I1 => \cnt_v_reg_n_0_[2]\,
      I2 => \cnt_v_reg_n_0_[0]\,
      I3 => \cnt_v_reg_n_0_[1]\,
      I4 => \fsm_v_reg_n_0_[1]\,
      I5 => \fsm_v_reg_n_0_[0]\,
      O => vsync_loc_i_1_n_0
    );
vsync_loc_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_dot,
      CE => h_rollover,
      CLR => reset,
      D => vsync_loc_i_1_n_0,
      Q => vsync_loc
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcu_DT_blk_design_vga_core_0_0_vga_core is
  port (
    vga_active : out STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_pixel_rgb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    mode_bit : in STD_LOGIC;
    clk_dot : in STD_LOGIC;
    reset : in STD_LOGIC;
    random_num : in STD_LOGIC_VECTOR ( 23 downto 0 );
    color_3b : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcu_DT_blk_design_vga_core_0_0_vga_core : entity is "vga_core";
end vcu_DT_blk_design_vga_core_0_0_vga_core;

architecture STRUCTURE of vcu_DT_blk_design_vga_core_0_0_vga_core is
  signal \ball_rgb__0\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal ball_x_dir1 : STD_LOGIC;
  signal \ball_x_dir[0]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_2_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_3_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_4_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_6_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_7_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_8_n_0\ : STD_LOGIC;
  signal \ball_x_dir[11]_i_9_n_0\ : STD_LOGIC;
  signal \ball_x_dir[1]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[2]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[3]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[4]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[5]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[6]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[7]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[8]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir[9]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_dir__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ball_x_pos[0]_i_2_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_3_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_4_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_5_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_6_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_7_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_8_n_0\ : STD_LOGIC;
  signal \ball_x_pos[0]_i_9_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_2_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_3_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_4_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_5_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_6_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_7_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_8_n_0\ : STD_LOGIC;
  signal \ball_x_pos[16]_i_9_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_2_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_3_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_4_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_5_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_6_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_7_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_8_n_0\ : STD_LOGIC;
  signal \ball_x_pos[8]_i_9_n_0\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \ball_x_pos_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \ball_x_pos_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \ball_x_pos_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[4]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[5]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[6]\ : STD_LOGIC;
  signal \ball_x_pos_reg_n_0_[7]\ : STD_LOGIC;
  signal ball_y_dir1 : STD_LOGIC;
  signal \ball_y_dir[0]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_10_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_2_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_3_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_5_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_7_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_8_n_0\ : STD_LOGIC;
  signal \ball_y_dir[11]_i_9_n_0\ : STD_LOGIC;
  signal \ball_y_dir[1]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[2]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[3]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[4]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[5]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[6]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[7]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[8]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir[9]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_dir__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \ball_y_pos[0]_i_10_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_3_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_4_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_5_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_6_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_7_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_8_n_0\ : STD_LOGIC;
  signal \ball_y_pos[0]_i_9_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_2_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_3_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_4_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_5_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_6_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_7_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_8_n_0\ : STD_LOGIC;
  signal \ball_y_pos[16]_i_9_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_2_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_3_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_4_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_5_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_6_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_7_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_8_n_0\ : STD_LOGIC;
  signal \ball_y_pos[8]_i_9_n_0\ : STD_LOGIC;
  signal ball_y_pos_reg : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal \ball_y_pos_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \ball_y_pos_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \ball_y_pos_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \ball_y_pos_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[4]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[5]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[6]\ : STD_LOGIC;
  signal \ball_y_pos_reg_n_0_[7]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal \demo_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \demo_mode_reg_n_0_[0]\ : STD_LOGIC;
  signal \dir_chg_sr__0\ : STD_LOGIC;
  signal \dir_chg_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \dir_chg_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \dir_chg_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \dir_chg_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal line_rgb : STD_LOGIC;
  signal \line_rgb[22]_i_2_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_3_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_5_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_6_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_7_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_8_n_0\ : STD_LOGIC;
  signal \line_rgb[22]_i_9_n_0\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[10]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[11]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[12]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[13]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[14]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[15]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[16]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[17]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[18]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[19]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[20]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[21]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[22]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[8]\ : STD_LOGIC;
  signal \line_rgb_reg_n_0_[9]\ : STD_LOGIC;
  signal line_x_pos0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \line_x_pos0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_2\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_3\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_4\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_5\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_6\ : STD_LOGIC;
  signal \line_x_pos0_carry__0_n_7\ : STD_LOGIC;
  signal line_x_pos0_carry_i_1_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_2_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_3_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_4_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_6_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_7_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_i_8_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_n_0 : STD_LOGIC;
  signal line_x_pos0_carry_n_1 : STD_LOGIC;
  signal line_x_pos0_carry_n_2 : STD_LOGIC;
  signal line_x_pos0_carry_n_3 : STD_LOGIC;
  signal line_x_pos0_carry_n_4 : STD_LOGIC;
  signal line_x_pos0_carry_n_5 : STD_LOGIC;
  signal line_x_pos0_carry_n_6 : STD_LOGIC;
  signal line_x_pos0_carry_n_7 : STD_LOGIC;
  signal \line_x_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal line_x_pos_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal line_y_pos0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \line_y_pos0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_2\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_3\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_4\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_5\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_6\ : STD_LOGIC;
  signal \line_y_pos0_carry__0_n_7\ : STD_LOGIC;
  signal line_y_pos0_carry_i_1_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_2_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_3_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_4_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_5_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_6_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_7_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_i_8_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_n_0 : STD_LOGIC;
  signal line_y_pos0_carry_n_1 : STD_LOGIC;
  signal line_y_pos0_carry_n_2 : STD_LOGIC;
  signal line_y_pos0_carry_n_3 : STD_LOGIC;
  signal line_y_pos0_carry_n_4 : STD_LOGIC;
  signal line_y_pos0_carry_n_5 : STD_LOGIC;
  signal line_y_pos0_carry_n_6 : STD_LOGIC;
  signal line_y_pos0_carry_n_7 : STD_LOGIC;
  signal \line_y_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal line_y_pos_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mode_bit_p1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_1_in : STD_LOGIC;
  signal \p_1_out_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_4\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_5\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_6\ : STD_LOGIC;
  signal \p_1_out_carry__0_n_7\ : STD_LOGIC;
  signal p_1_out_carry_i_1_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_5_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_6_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_7_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_8_n_0 : STD_LOGIC;
  signal p_1_out_carry_n_0 : STD_LOGIC;
  signal p_1_out_carry_n_1 : STD_LOGIC;
  signal p_1_out_carry_n_2 : STD_LOGIC;
  signal p_1_out_carry_n_3 : STD_LOGIC;
  signal p_1_out_carry_n_4 : STD_LOGIC;
  signal p_1_out_carry_n_5 : STD_LOGIC;
  signal p_1_out_carry_n_6 : STD_LOGIC;
  signal p_1_out_carry_n_7 : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \p_1_out_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal u0_pel_x : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \u0_pel_x[10]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_x[14]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_x[15]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_x[15]_i_3_n_0\ : STD_LOGIC;
  signal \u0_pel_x[15]_i_4_n_0\ : STD_LOGIC;
  signal \u0_pel_x[15]_i_5_n_0\ : STD_LOGIC;
  signal \u0_pel_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_x[9]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[10]\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[11]\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[12]\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[13]\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[14]\ : STD_LOGIC;
  signal \u0_pel_x_reg_n_0_[15]\ : STD_LOGIC;
  signal u0_pel_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \u0_pel_y[10]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_y[14]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_y[15]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_y[15]_i_3_n_0\ : STD_LOGIC;
  signal \u0_pel_y[15]_i_4_n_0\ : STD_LOGIC;
  signal \u0_pel_y[15]_i_5_n_0\ : STD_LOGIC;
  signal \u0_pel_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_y[9]_i_2_n_0\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[10]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[11]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[12]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[13]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[14]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[15]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[8]\ : STD_LOGIC;
  signal \u0_pel_y_reg_n_0_[9]\ : STD_LOGIC;
  signal u0_vga_timing_n_0 : STD_LOGIC;
  signal u0_vga_timing_n_2 : STD_LOGIC;
  signal u0_vga_timing_n_3 : STD_LOGIC;
  signal u0_vga_timing_n_4 : STD_LOGIC;
  signal u0_vga_timing_n_5 : STD_LOGIC;
  signal u0_vga_timing_n_6 : STD_LOGIC;
  signal u0_vga_timing_n_7 : STD_LOGIC;
  signal u0_vid_new_frame : STD_LOGIC;
  signal u0_vid_new_line : STD_LOGIC;
  signal vga_rgb1 : STD_LOGIC;
  signal \vga_rgb[0]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[10]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[11]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[12]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[13]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[14]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[14]_i_2_n_0\ : STD_LOGIC;
  signal \vga_rgb[15]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[16]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[17]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[18]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[19]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[1]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[20]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[21]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[22]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[22]_i_2_n_0\ : STD_LOGIC;
  signal \vga_rgb[23]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[2]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[3]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[4]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[5]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[6]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[6]_i_2_n_0\ : STD_LOGIC;
  signal \vga_rgb[7]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[8]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb[9]_i_1_n_0\ : STD_LOGIC;
  signal vga_rgb_ball : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vga_rgb_ball1 : STD_LOGIC;
  signal vga_rgb_ball3 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_10_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_11_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_12_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_13_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_14_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_15_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_16_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_17_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_18_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_19_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_1_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_20_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_21_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_22_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_2_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_3_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_4_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_5_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_6_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_7_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_8_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_i_9_n_0 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_1 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_2 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_3 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_4 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_5 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_6 : STD_LOGIC;
  signal vga_rgb_ball3_carry_n_7 : STD_LOGIC;
  signal vga_rgb_ball40_in : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \vga_rgb_ball4_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \vga_rgb_ball[22]_i_1_n_0\ : STD_LOGIC;
  signal vga_rgb_line1 : STD_LOGIC;
  signal \vga_rgb_line4__29\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal vga_rgb_line5 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal vga_rgb_line52_in : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \vga_rgb_line[22]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_10_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_12_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_13_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_14_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_15_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_16_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_17_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_18_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_19_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_20_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_21_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_23_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_24_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_25_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_26_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_27_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_28_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_29_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_2_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_30_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_31_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_32_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_33_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_34_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_35_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_36_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_37_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_38_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_39_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_3_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_40_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_41_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_42_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_43_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_44_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_45_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_46_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_47_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_48_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_49_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_4_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_50_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_51_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_52_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_53_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_54_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_55_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_56_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_57_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_58_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_59_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_5_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_60_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_61_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_62_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_63_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_64_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_65_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_66_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_67_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_68_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_69_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_6_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_7_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_8_n_0\ : STD_LOGIC;
  signal \vga_rgb_line[23]_i_9_n_0\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[0]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[10]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[11]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[12]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[13]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[14]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[16]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[17]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[18]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[19]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[1]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[20]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[21]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[22]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[23]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[2]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[3]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[4]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[5]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[6]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[7]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[8]\ : STD_LOGIC;
  signal \vga_rgb_line_reg_n_0_[9]\ : STD_LOGIC;
  signal vga_rgb_tp : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \vga_rgb_tp[15]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb_tp[23]_i_1_n_0\ : STD_LOGIC;
  signal \vga_rgb_tp[7]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_ball_x_pos_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_ball_y_pos_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_line_x_pos0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_line_x_pos0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_line_y_pos0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_line_y_pos0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_p_1_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_p_1_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_vga_rgb_ball3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_vga_rgb_ball4_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ball_x_dir[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \ball_x_dir[11]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ball_x_dir[11]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ball_x_dir[11]_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ball_x_dir[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ball_x_dir[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ball_x_dir[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ball_x_dir[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ball_x_dir[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ball_x_dir[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ball_x_dir[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ball_x_dir[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ball_x_dir[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ball_y_dir[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \ball_y_dir[11]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ball_y_dir[11]_i_8\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ball_y_dir[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ball_y_dir[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ball_y_dir[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ball_y_dir[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ball_y_dir[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ball_y_dir[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ball_y_dir[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ball_y_dir[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ball_y_dir[9]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i__carry__0_i_12\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i__carry_i_18\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i__carry_i_20\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i__carry_i_21\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \line_rgb[22]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_rgb[22]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \line_rgb[22]_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \line_x_pos[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \line_y_pos[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \p_1_out_carry__0_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \u0_pel_x[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \u0_pel_x[11]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \u0_pel_x[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \u0_pel_x[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \u0_pel_x[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \u0_pel_x[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \u0_pel_x[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \u0_pel_x[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \u0_pel_x[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \u0_pel_x[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \u0_pel_y[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \u0_pel_y[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \u0_pel_y[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \u0_pel_y[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \u0_pel_y[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \u0_pel_y[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \u0_pel_y[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \u0_pel_y[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \u0_pel_y[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of vga_rgb_ball3_carry_i_18 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of vga_rgb_ball3_carry_i_20 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_31\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_34\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_35\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_36\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_37\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_38\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_41\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_42\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_43\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_45\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_47\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_48\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_52\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_53\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_54\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_55\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_56\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_65\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_68\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \vga_rgb_line[23]_i_69\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \vga_rgb_tp[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \vga_rgb_tp[11]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \vga_rgb_tp[12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \vga_rgb_tp[13]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \vga_rgb_tp[15]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \vga_rgb_tp[17]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \vga_rgb_tp[18]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \vga_rgb_tp[19]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \vga_rgb_tp[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \vga_rgb_tp[20]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \vga_rgb_tp[21]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \vga_rgb_tp[23]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \vga_rgb_tp[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \vga_rgb_tp[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vga_rgb_tp[5]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vga_rgb_tp[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \vga_rgb_tp[7]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \vga_rgb_tp[9]_i_1\ : label is "soft_lutpair43";
begin
\ball_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(0),
      Q => \ball_rgb__0\(0),
      R => '0'
    );
\ball_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(10),
      Q => \ball_rgb__0\(10),
      R => '0'
    );
\ball_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(11),
      Q => \ball_rgb__0\(11),
      R => '0'
    );
\ball_rgb_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(12),
      Q => \ball_rgb__0\(12),
      R => '0'
    );
\ball_rgb_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(13),
      Q => \ball_rgb__0\(13),
      R => '0'
    );
\ball_rgb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(14),
      Q => \ball_rgb__0\(14),
      R => '0'
    );
\ball_rgb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(15),
      Q => \ball_rgb__0\(15),
      R => '0'
    );
\ball_rgb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(16),
      Q => \ball_rgb__0\(16),
      R => '0'
    );
\ball_rgb_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(17),
      Q => \ball_rgb__0\(17),
      R => '0'
    );
\ball_rgb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(18),
      Q => \ball_rgb__0\(18),
      R => '0'
    );
\ball_rgb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(19),
      Q => \ball_rgb__0\(19),
      R => '0'
    );
\ball_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(1),
      Q => \ball_rgb__0\(1),
      R => '0'
    );
\ball_rgb_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(20),
      Q => \ball_rgb__0\(20),
      R => '0'
    );
\ball_rgb_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(21),
      Q => \ball_rgb__0\(21),
      R => '0'
    );
\ball_rgb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(22),
      Q => \ball_rgb__0\(22),
      R => '0'
    );
\ball_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(2),
      Q => \ball_rgb__0\(2),
      R => '0'
    );
\ball_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(3),
      Q => \ball_rgb__0\(3),
      R => '0'
    );
\ball_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(4),
      Q => \ball_rgb__0\(4),
      R => '0'
    );
\ball_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(5),
      Q => \ball_rgb__0\(5),
      R => '0'
    );
\ball_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(6),
      Q => \ball_rgb__0\(6),
      R => '0'
    );
\ball_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(7),
      Q => \ball_rgb__0\(7),
      R => '0'
    );
\ball_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(8),
      Q => \ball_rgb__0\(8),
      R => '0'
    );
\ball_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_7,
      D => random_num(9),
      Q => \ball_rgb__0\(9),
      R => '0'
    );
\ball_x_dir[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(0),
      I1 => mode_bit,
      I2 => random_num(2),
      O => \ball_x_dir[0]_i_1_n_0\
    );
\ball_x_dir[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mode_bit,
      I1 => \ball_x_dir__0\(11),
      O => \ball_x_dir[11]_i_2_n_0\
    );
\ball_x_dir[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000020000"
    )
        port map (
      I0 => \ball_x_dir[11]_i_4_n_0\,
      I1 => p_0_in(5),
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => \dir_chg_sr__0\,
      I5 => ball_x_dir1,
      O => \ball_x_dir[11]_i_3_n_0\
    );
\ball_x_dir[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(13),
      I2 => p_0_in(14),
      I3 => p_0_in(15),
      I4 => \ball_x_dir[11]_i_6_n_0\,
      O => \ball_x_dir[11]_i_4_n_0\
    );
\ball_x_dir[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ball_x_dir[11]_i_7_n_0\,
      I1 => \ball_x_dir[11]_i_8_n_0\,
      I2 => p_0_in(11),
      I3 => p_0_in(12),
      O => ball_x_dir1
    );
\ball_x_dir[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(10),
      I2 => p_0_in(9),
      I3 => p_0_in(8),
      O => \ball_x_dir[11]_i_6_n_0\
    );
\ball_x_dir[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(15),
      I2 => p_0_in(10),
      I3 => p_0_in(14),
      O => \ball_x_dir[11]_i_7_n_0\
    );
\ball_x_dir[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => p_0_in(9),
      I1 => p_0_in(8),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => p_0_in(7),
      I5 => \ball_x_dir[11]_i_9_n_0\,
      O => \ball_x_dir[11]_i_8_n_0\
    );
\ball_x_dir[11]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      I4 => p_0_in(6),
      O => \ball_x_dir[11]_i_9_n_0\
    );
\ball_x_dir[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(1),
      I1 => mode_bit,
      I2 => random_num(3),
      O => \ball_x_dir[1]_i_1_n_0\
    );
\ball_x_dir[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(2),
      I1 => mode_bit,
      I2 => random_num(4),
      O => \ball_x_dir[2]_i_1_n_0\
    );
\ball_x_dir[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(3),
      I1 => mode_bit,
      I2 => random_num(5),
      O => \ball_x_dir[3]_i_1_n_0\
    );
\ball_x_dir[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(4),
      I1 => mode_bit,
      I2 => random_num(6),
      O => \ball_x_dir[4]_i_1_n_0\
    );
\ball_x_dir[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(5),
      I1 => mode_bit,
      I2 => random_num(7),
      O => \ball_x_dir[5]_i_1_n_0\
    );
\ball_x_dir[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(6),
      I1 => mode_bit,
      I2 => random_num(8),
      O => \ball_x_dir[6]_i_1_n_0\
    );
\ball_x_dir[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(7),
      I1 => mode_bit,
      I2 => random_num(9),
      O => \ball_x_dir[7]_i_1_n_0\
    );
\ball_x_dir[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(8),
      I1 => mode_bit,
      I2 => random_num(10),
      O => \ball_x_dir[8]_i_1_n_0\
    );
\ball_x_dir[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_x_dir__0\(9),
      I1 => mode_bit,
      I2 => random_num(11),
      O => \ball_x_dir[9]_i_1_n_0\
    );
\ball_x_dir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[0]_i_1_n_0\,
      Q => \ball_x_dir__0\(0),
      R => '0'
    );
\ball_x_dir_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_vga_timing_n_2,
      Q => \ball_x_dir__0\(10),
      R => '0'
    );
\ball_x_dir_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[11]_i_2_n_0\,
      Q => \ball_x_dir__0\(11),
      R => '0'
    );
\ball_x_dir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[1]_i_1_n_0\,
      Q => \ball_x_dir__0\(1),
      R => '0'
    );
\ball_x_dir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[2]_i_1_n_0\,
      Q => \ball_x_dir__0\(2),
      R => '0'
    );
\ball_x_dir_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[3]_i_1_n_0\,
      Q => \ball_x_dir__0\(3),
      R => '0'
    );
\ball_x_dir_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[4]_i_1_n_0\,
      Q => \ball_x_dir__0\(4),
      R => '0'
    );
\ball_x_dir_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[5]_i_1_n_0\,
      Q => \ball_x_dir__0\(5),
      R => '0'
    );
\ball_x_dir_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[6]_i_1_n_0\,
      Q => \ball_x_dir__0\(6),
      R => '0'
    );
\ball_x_dir_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[7]_i_1_n_0\,
      Q => \ball_x_dir__0\(7),
      R => '0'
    );
\ball_x_dir_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[8]_i_1_n_0\,
      Q => \ball_x_dir__0\(8),
      R => '0'
    );
\ball_x_dir_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_6,
      D => \ball_x_dir[9]_i_1_n_0\,
      Q => \ball_x_dir__0\(9),
      R => '0'
    );
\ball_x_pos[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(7),
      I1 => \ball_x_pos_reg_n_0_[7]\,
      O => \ball_x_pos[0]_i_2_n_0\
    );
\ball_x_pos[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(6),
      I1 => \ball_x_pos_reg_n_0_[6]\,
      O => \ball_x_pos[0]_i_3_n_0\
    );
\ball_x_pos[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(5),
      I1 => \ball_x_pos_reg_n_0_[5]\,
      O => \ball_x_pos[0]_i_4_n_0\
    );
\ball_x_pos[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(4),
      I1 => \ball_x_pos_reg_n_0_[4]\,
      O => \ball_x_pos[0]_i_5_n_0\
    );
\ball_x_pos[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(3),
      I1 => \ball_x_pos_reg_n_0_[3]\,
      O => \ball_x_pos[0]_i_6_n_0\
    );
\ball_x_pos[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(2),
      I1 => \ball_x_pos_reg_n_0_[2]\,
      O => \ball_x_pos[0]_i_7_n_0\
    );
\ball_x_pos[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(1),
      I1 => \ball_x_pos_reg_n_0_[1]\,
      O => \ball_x_pos[0]_i_8_n_0\
    );
\ball_x_pos[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(0),
      I1 => \ball_x_pos_reg_n_0_[0]\,
      O => \ball_x_pos[0]_i_9_n_0\
    );
\ball_x_pos[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(15),
      O => \ball_x_pos[16]_i_2_n_0\
    );
\ball_x_pos[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(14),
      O => \ball_x_pos[16]_i_3_n_0\
    );
\ball_x_pos[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(13),
      O => \ball_x_pos[16]_i_4_n_0\
    );
\ball_x_pos[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(12),
      O => \ball_x_pos[16]_i_5_n_0\
    );
\ball_x_pos[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(11),
      O => \ball_x_pos[16]_i_6_n_0\
    );
\ball_x_pos[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(10),
      O => \ball_x_pos[16]_i_7_n_0\
    );
\ball_x_pos[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(9),
      O => \ball_x_pos[16]_i_8_n_0\
    );
\ball_x_pos[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(8),
      O => \ball_x_pos[16]_i_9_n_0\
    );
\ball_x_pos[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(7),
      O => \ball_x_pos[8]_i_2_n_0\
    );
\ball_x_pos[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(6),
      O => \ball_x_pos[8]_i_3_n_0\
    );
\ball_x_pos[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(5),
      O => \ball_x_pos[8]_i_4_n_0\
    );
\ball_x_pos[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(4),
      O => \ball_x_pos[8]_i_5_n_0\
    );
\ball_x_pos[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(11),
      I1 => p_0_in(3),
      O => \ball_x_pos[8]_i_6_n_0\
    );
\ball_x_pos[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(10),
      I1 => p_0_in(2),
      O => \ball_x_pos[8]_i_7_n_0\
    );
\ball_x_pos[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(9),
      I1 => p_0_in(1),
      O => \ball_x_pos[8]_i_8_n_0\
    );
\ball_x_pos[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_x_dir__0\(8),
      I1 => p_0_in(0),
      O => \ball_x_pos[8]_i_9_n_0\
    );
\ball_x_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_15\,
      Q => \ball_x_pos_reg_n_0_[0]\,
      R => clear
    );
\ball_x_pos_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \ball_x_pos_reg[0]_i_1_n_0\,
      CO(6) => \ball_x_pos_reg[0]_i_1_n_1\,
      CO(5) => \ball_x_pos_reg[0]_i_1_n_2\,
      CO(4) => \ball_x_pos_reg[0]_i_1_n_3\,
      CO(3) => \ball_x_pos_reg[0]_i_1_n_4\,
      CO(2) => \ball_x_pos_reg[0]_i_1_n_5\,
      CO(1) => \ball_x_pos_reg[0]_i_1_n_6\,
      CO(0) => \ball_x_pos_reg[0]_i_1_n_7\,
      DI(7 downto 0) => \ball_x_dir__0\(7 downto 0),
      O(7) => \ball_x_pos_reg[0]_i_1_n_8\,
      O(6) => \ball_x_pos_reg[0]_i_1_n_9\,
      O(5) => \ball_x_pos_reg[0]_i_1_n_10\,
      O(4) => \ball_x_pos_reg[0]_i_1_n_11\,
      O(3) => \ball_x_pos_reg[0]_i_1_n_12\,
      O(2) => \ball_x_pos_reg[0]_i_1_n_13\,
      O(1) => \ball_x_pos_reg[0]_i_1_n_14\,
      O(0) => \ball_x_pos_reg[0]_i_1_n_15\,
      S(7) => \ball_x_pos[0]_i_2_n_0\,
      S(6) => \ball_x_pos[0]_i_3_n_0\,
      S(5) => \ball_x_pos[0]_i_4_n_0\,
      S(4) => \ball_x_pos[0]_i_5_n_0\,
      S(3) => \ball_x_pos[0]_i_6_n_0\,
      S(2) => \ball_x_pos[0]_i_7_n_0\,
      S(1) => \ball_x_pos[0]_i_8_n_0\,
      S(0) => \ball_x_pos[0]_i_9_n_0\
    );
\ball_x_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_13\,
      Q => p_0_in(2),
      R => clear
    );
\ball_x_pos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_12\,
      Q => p_0_in(3),
      R => clear
    );
\ball_x_pos_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_11\,
      Q => p_0_in(4),
      S => clear
    );
\ball_x_pos_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_10\,
      Q => p_0_in(5),
      R => clear
    );
\ball_x_pos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_9\,
      Q => p_0_in(6),
      R => clear
    );
\ball_x_pos_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_8\,
      Q => p_0_in(7),
      S => clear
    );
\ball_x_pos_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_15\,
      Q => p_0_in(8),
      R => clear
    );
\ball_x_pos_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ball_x_pos_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_ball_x_pos_reg[16]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \ball_x_pos_reg[16]_i_1_n_1\,
      CO(5) => \ball_x_pos_reg[16]_i_1_n_2\,
      CO(4) => \ball_x_pos_reg[16]_i_1_n_3\,
      CO(3) => \ball_x_pos_reg[16]_i_1_n_4\,
      CO(2) => \ball_x_pos_reg[16]_i_1_n_5\,
      CO(1) => \ball_x_pos_reg[16]_i_1_n_6\,
      CO(0) => \ball_x_pos_reg[16]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \ball_x_dir__0\(11),
      DI(5) => \ball_x_dir__0\(11),
      DI(4) => \ball_x_dir__0\(11),
      DI(3) => \ball_x_dir__0\(11),
      DI(2) => \ball_x_dir__0\(11),
      DI(1) => \ball_x_dir__0\(11),
      DI(0) => \ball_x_dir__0\(11),
      O(7) => \ball_x_pos_reg[16]_i_1_n_8\,
      O(6) => \ball_x_pos_reg[16]_i_1_n_9\,
      O(5) => \ball_x_pos_reg[16]_i_1_n_10\,
      O(4) => \ball_x_pos_reg[16]_i_1_n_11\,
      O(3) => \ball_x_pos_reg[16]_i_1_n_12\,
      O(2) => \ball_x_pos_reg[16]_i_1_n_13\,
      O(1) => \ball_x_pos_reg[16]_i_1_n_14\,
      O(0) => \ball_x_pos_reg[16]_i_1_n_15\,
      S(7) => \ball_x_pos[16]_i_2_n_0\,
      S(6) => \ball_x_pos[16]_i_3_n_0\,
      S(5) => \ball_x_pos[16]_i_4_n_0\,
      S(4) => \ball_x_pos[16]_i_5_n_0\,
      S(3) => \ball_x_pos[16]_i_6_n_0\,
      S(2) => \ball_x_pos[16]_i_7_n_0\,
      S(1) => \ball_x_pos[16]_i_8_n_0\,
      S(0) => \ball_x_pos[16]_i_9_n_0\
    );
\ball_x_pos_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_14\,
      Q => p_0_in(9),
      R => clear
    );
\ball_x_pos_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_13\,
      Q => p_0_in(10),
      R => clear
    );
\ball_x_pos_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_12\,
      Q => p_0_in(11),
      R => clear
    );
\ball_x_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_14\,
      Q => \ball_x_pos_reg_n_0_[1]\,
      R => clear
    );
\ball_x_pos_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_11\,
      Q => p_0_in(12),
      R => clear
    );
\ball_x_pos_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_10\,
      Q => p_0_in(13),
      R => clear
    );
\ball_x_pos_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_9\,
      Q => p_0_in(14),
      R => clear
    );
\ball_x_pos_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[16]_i_1_n_8\,
      Q => p_0_in(15),
      R => clear
    );
\ball_x_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_13\,
      Q => \ball_x_pos_reg_n_0_[2]\,
      R => clear
    );
\ball_x_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_12\,
      Q => \ball_x_pos_reg_n_0_[3]\,
      R => clear
    );
\ball_x_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_11\,
      Q => \ball_x_pos_reg_n_0_[4]\,
      R => clear
    );
\ball_x_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_10\,
      Q => \ball_x_pos_reg_n_0_[5]\,
      R => clear
    );
\ball_x_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_9\,
      Q => \ball_x_pos_reg_n_0_[6]\,
      R => clear
    );
\ball_x_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[0]_i_1_n_8\,
      Q => \ball_x_pos_reg_n_0_[7]\,
      R => clear
    );
\ball_x_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_15\,
      Q => p_0_in(0),
      R => clear
    );
\ball_x_pos_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ball_x_pos_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ball_x_pos_reg[8]_i_1_n_0\,
      CO(6) => \ball_x_pos_reg[8]_i_1_n_1\,
      CO(5) => \ball_x_pos_reg[8]_i_1_n_2\,
      CO(4) => \ball_x_pos_reg[8]_i_1_n_3\,
      CO(3) => \ball_x_pos_reg[8]_i_1_n_4\,
      CO(2) => \ball_x_pos_reg[8]_i_1_n_5\,
      CO(1) => \ball_x_pos_reg[8]_i_1_n_6\,
      CO(0) => \ball_x_pos_reg[8]_i_1_n_7\,
      DI(7) => \ball_x_dir__0\(11),
      DI(6) => \ball_x_dir__0\(11),
      DI(5) => \ball_x_dir__0\(11),
      DI(4) => \ball_x_dir__0\(11),
      DI(3 downto 0) => \ball_x_dir__0\(11 downto 8),
      O(7) => \ball_x_pos_reg[8]_i_1_n_8\,
      O(6) => \ball_x_pos_reg[8]_i_1_n_9\,
      O(5) => \ball_x_pos_reg[8]_i_1_n_10\,
      O(4) => \ball_x_pos_reg[8]_i_1_n_11\,
      O(3) => \ball_x_pos_reg[8]_i_1_n_12\,
      O(2) => \ball_x_pos_reg[8]_i_1_n_13\,
      O(1) => \ball_x_pos_reg[8]_i_1_n_14\,
      O(0) => \ball_x_pos_reg[8]_i_1_n_15\,
      S(7) => \ball_x_pos[8]_i_2_n_0\,
      S(6) => \ball_x_pos[8]_i_3_n_0\,
      S(5) => \ball_x_pos[8]_i_4_n_0\,
      S(4) => \ball_x_pos[8]_i_5_n_0\,
      S(3) => \ball_x_pos[8]_i_6_n_0\,
      S(2) => \ball_x_pos[8]_i_7_n_0\,
      S(1) => \ball_x_pos[8]_i_8_n_0\,
      S(0) => \ball_x_pos[8]_i_9_n_0\
    );
\ball_x_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_x_pos_reg[8]_i_1_n_14\,
      Q => p_0_in(1),
      R => clear
    );
\ball_y_dir[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(0),
      I1 => mode_bit,
      I2 => random_num(14),
      O => \ball_y_dir[0]_i_1_n_0\
    );
\ball_y_dir[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8000"
    )
        port map (
      I0 => ball_y_pos_reg(13),
      I1 => ball_y_pos_reg(10),
      I2 => ball_y_pos_reg(9),
      I3 => ball_y_pos_reg(8),
      I4 => ball_y_pos_reg(11),
      I5 => ball_y_pos_reg(12),
      O => \ball_y_dir[11]_i_10_n_0\
    );
\ball_y_dir[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mode_bit,
      I1 => \ball_y_dir__0\(11),
      O => \ball_y_dir[11]_i_2_n_0\
    );
\ball_y_dir[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A0A0E0"
    )
        port map (
      I0 => ball_y_dir1,
      I1 => \ball_y_dir[11]_i_5_n_0\,
      I2 => \dir_chg_sr__0\,
      I3 => ball_y_pos_reg(13),
      I4 => ball_y_pos_reg(14),
      I5 => ball_y_pos_reg(15),
      O => \ball_y_dir[11]_i_3_n_0\
    );
\ball_y_dir[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ball_y_pos_reg(22),
      I1 => ball_y_pos_reg(18),
      I2 => ball_y_pos_reg(23),
      I3 => ball_y_pos_reg(21),
      I4 => \ball_y_dir[11]_i_7_n_0\,
      O => ball_y_dir1
    );
\ball_y_dir[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => ball_y_pos_reg(20),
      I1 => ball_y_pos_reg(21),
      I2 => ball_y_pos_reg(22),
      I3 => ball_y_pos_reg(23),
      I4 => \ball_y_dir[11]_i_8_n_0\,
      O => \ball_y_dir[11]_i_5_n_0\
    );
\ball_y_dir[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \dir_chg_sr_reg_n_0_[1]\,
      I1 => \dir_chg_sr_reg_n_0_[0]\,
      I2 => \dir_chg_sr_reg_n_0_[3]\,
      I3 => \dir_chg_sr_reg_n_0_[2]\,
      O => \dir_chg_sr__0\
    );
\ball_y_dir[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEEEEEEEE"
    )
        port map (
      I0 => ball_y_pos_reg(20),
      I1 => ball_y_pos_reg(19),
      I2 => \ball_y_dir[11]_i_9_n_0\,
      I3 => ball_y_pos_reg(16),
      I4 => \ball_y_dir[11]_i_10_n_0\,
      I5 => ball_y_pos_reg(17),
      O => \ball_y_dir[11]_i_7_n_0\
    );
\ball_y_dir[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ball_y_pos_reg(19),
      I1 => ball_y_pos_reg(18),
      I2 => ball_y_pos_reg(17),
      I3 => ball_y_pos_reg(16),
      O => \ball_y_dir[11]_i_8_n_0\
    );
\ball_y_dir[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ball_y_pos_reg(14),
      I1 => ball_y_pos_reg(15),
      O => \ball_y_dir[11]_i_9_n_0\
    );
\ball_y_dir[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(1),
      I1 => mode_bit,
      I2 => random_num(15),
      O => \ball_y_dir[1]_i_1_n_0\
    );
\ball_y_dir[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(2),
      I1 => mode_bit,
      I2 => random_num(16),
      O => \ball_y_dir[2]_i_1_n_0\
    );
\ball_y_dir[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(3),
      I1 => mode_bit,
      I2 => random_num(17),
      O => \ball_y_dir[3]_i_1_n_0\
    );
\ball_y_dir[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(4),
      I1 => mode_bit,
      I2 => random_num(18),
      O => \ball_y_dir[4]_i_1_n_0\
    );
\ball_y_dir[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(5),
      I1 => mode_bit,
      I2 => random_num(19),
      O => \ball_y_dir[5]_i_1_n_0\
    );
\ball_y_dir[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(6),
      I1 => mode_bit,
      I2 => random_num(20),
      O => \ball_y_dir[6]_i_1_n_0\
    );
\ball_y_dir[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(7),
      I1 => mode_bit,
      I2 => random_num(21),
      O => \ball_y_dir[7]_i_1_n_0\
    );
\ball_y_dir[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(8),
      I1 => mode_bit,
      I2 => random_num(22),
      O => \ball_y_dir[8]_i_1_n_0\
    );
\ball_y_dir[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ball_y_dir__0\(9),
      I1 => mode_bit,
      I2 => random_num(23),
      O => \ball_y_dir[9]_i_1_n_0\
    );
\ball_y_dir_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[0]_i_1_n_0\,
      Q => \ball_y_dir__0\(0),
      R => '0'
    );
\ball_y_dir_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_vga_timing_n_0,
      Q => \ball_y_dir__0\(10),
      R => '0'
    );
\ball_y_dir_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[11]_i_2_n_0\,
      Q => \ball_y_dir__0\(11),
      R => '0'
    );
\ball_y_dir_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[1]_i_1_n_0\,
      Q => \ball_y_dir__0\(1),
      R => '0'
    );
\ball_y_dir_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[2]_i_1_n_0\,
      Q => \ball_y_dir__0\(2),
      R => '0'
    );
\ball_y_dir_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[3]_i_1_n_0\,
      Q => \ball_y_dir__0\(3),
      R => '0'
    );
\ball_y_dir_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[4]_i_1_n_0\,
      Q => \ball_y_dir__0\(4),
      R => '0'
    );
\ball_y_dir_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[5]_i_1_n_0\,
      Q => \ball_y_dir__0\(5),
      R => '0'
    );
\ball_y_dir_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[6]_i_1_n_0\,
      Q => \ball_y_dir__0\(6),
      R => '0'
    );
\ball_y_dir_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[7]_i_1_n_0\,
      Q => \ball_y_dir__0\(7),
      R => '0'
    );
\ball_y_dir_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[8]_i_1_n_0\,
      Q => \ball_y_dir__0\(8),
      R => '0'
    );
\ball_y_dir_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_5,
      D => \ball_y_dir[9]_i_1_n_0\,
      Q => \ball_y_dir__0\(9),
      R => '0'
    );
\ball_y_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mode_bit,
      O => clear
    );
\ball_y_pos[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(0),
      I1 => \ball_y_pos_reg_n_0_[0]\,
      O => \ball_y_pos[0]_i_10_n_0\
    );
\ball_y_pos[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(7),
      I1 => \ball_y_pos_reg_n_0_[7]\,
      O => \ball_y_pos[0]_i_3_n_0\
    );
\ball_y_pos[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(6),
      I1 => \ball_y_pos_reg_n_0_[6]\,
      O => \ball_y_pos[0]_i_4_n_0\
    );
\ball_y_pos[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(5),
      I1 => \ball_y_pos_reg_n_0_[5]\,
      O => \ball_y_pos[0]_i_5_n_0\
    );
\ball_y_pos[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(4),
      I1 => \ball_y_pos_reg_n_0_[4]\,
      O => \ball_y_pos[0]_i_6_n_0\
    );
\ball_y_pos[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(3),
      I1 => \ball_y_pos_reg_n_0_[3]\,
      O => \ball_y_pos[0]_i_7_n_0\
    );
\ball_y_pos[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(2),
      I1 => \ball_y_pos_reg_n_0_[2]\,
      O => \ball_y_pos[0]_i_8_n_0\
    );
\ball_y_pos[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(1),
      I1 => \ball_y_pos_reg_n_0_[1]\,
      O => \ball_y_pos[0]_i_9_n_0\
    );
\ball_y_pos[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(23),
      O => \ball_y_pos[16]_i_2_n_0\
    );
\ball_y_pos[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(22),
      O => \ball_y_pos[16]_i_3_n_0\
    );
\ball_y_pos[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(21),
      O => \ball_y_pos[16]_i_4_n_0\
    );
\ball_y_pos[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(20),
      O => \ball_y_pos[16]_i_5_n_0\
    );
\ball_y_pos[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(19),
      O => \ball_y_pos[16]_i_6_n_0\
    );
\ball_y_pos[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(18),
      O => \ball_y_pos[16]_i_7_n_0\
    );
\ball_y_pos[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(17),
      O => \ball_y_pos[16]_i_8_n_0\
    );
\ball_y_pos[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(16),
      O => \ball_y_pos[16]_i_9_n_0\
    );
\ball_y_pos[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(15),
      O => \ball_y_pos[8]_i_2_n_0\
    );
\ball_y_pos[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(14),
      O => \ball_y_pos[8]_i_3_n_0\
    );
\ball_y_pos[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(13),
      O => \ball_y_pos[8]_i_4_n_0\
    );
\ball_y_pos[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(12),
      O => \ball_y_pos[8]_i_5_n_0\
    );
\ball_y_pos[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(11),
      I1 => ball_y_pos_reg(11),
      O => \ball_y_pos[8]_i_6_n_0\
    );
\ball_y_pos[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(10),
      I1 => ball_y_pos_reg(10),
      O => \ball_y_pos[8]_i_7_n_0\
    );
\ball_y_pos[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(9),
      I1 => ball_y_pos_reg(9),
      O => \ball_y_pos[8]_i_8_n_0\
    );
\ball_y_pos[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ball_y_dir__0\(8),
      I1 => ball_y_pos_reg(8),
      O => \ball_y_pos[8]_i_9_n_0\
    );
\ball_y_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_15\,
      Q => \ball_y_pos_reg_n_0_[0]\,
      R => clear
    );
\ball_y_pos_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \ball_y_pos_reg[0]_i_2_n_0\,
      CO(6) => \ball_y_pos_reg[0]_i_2_n_1\,
      CO(5) => \ball_y_pos_reg[0]_i_2_n_2\,
      CO(4) => \ball_y_pos_reg[0]_i_2_n_3\,
      CO(3) => \ball_y_pos_reg[0]_i_2_n_4\,
      CO(2) => \ball_y_pos_reg[0]_i_2_n_5\,
      CO(1) => \ball_y_pos_reg[0]_i_2_n_6\,
      CO(0) => \ball_y_pos_reg[0]_i_2_n_7\,
      DI(7 downto 0) => \ball_y_dir__0\(7 downto 0),
      O(7) => \ball_y_pos_reg[0]_i_2_n_8\,
      O(6) => \ball_y_pos_reg[0]_i_2_n_9\,
      O(5) => \ball_y_pos_reg[0]_i_2_n_10\,
      O(4) => \ball_y_pos_reg[0]_i_2_n_11\,
      O(3) => \ball_y_pos_reg[0]_i_2_n_12\,
      O(2) => \ball_y_pos_reg[0]_i_2_n_13\,
      O(1) => \ball_y_pos_reg[0]_i_2_n_14\,
      O(0) => \ball_y_pos_reg[0]_i_2_n_15\,
      S(7) => \ball_y_pos[0]_i_3_n_0\,
      S(6) => \ball_y_pos[0]_i_4_n_0\,
      S(5) => \ball_y_pos[0]_i_5_n_0\,
      S(4) => \ball_y_pos[0]_i_6_n_0\,
      S(3) => \ball_y_pos[0]_i_7_n_0\,
      S(2) => \ball_y_pos[0]_i_8_n_0\,
      S(1) => \ball_y_pos[0]_i_9_n_0\,
      S(0) => \ball_y_pos[0]_i_10_n_0\
    );
\ball_y_pos_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_13\,
      Q => ball_y_pos_reg(10),
      S => clear
    );
\ball_y_pos_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_12\,
      Q => ball_y_pos_reg(11),
      S => clear
    );
\ball_y_pos_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_11\,
      Q => ball_y_pos_reg(12),
      R => clear
    );
\ball_y_pos_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_10\,
      Q => ball_y_pos_reg(13),
      S => clear
    );
\ball_y_pos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_9\,
      Q => ball_y_pos_reg(14),
      R => clear
    );
\ball_y_pos_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_8\,
      Q => ball_y_pos_reg(15),
      R => clear
    );
\ball_y_pos_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_15\,
      Q => ball_y_pos_reg(16),
      R => clear
    );
\ball_y_pos_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ball_y_pos_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_ball_y_pos_reg[16]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \ball_y_pos_reg[16]_i_1_n_1\,
      CO(5) => \ball_y_pos_reg[16]_i_1_n_2\,
      CO(4) => \ball_y_pos_reg[16]_i_1_n_3\,
      CO(3) => \ball_y_pos_reg[16]_i_1_n_4\,
      CO(2) => \ball_y_pos_reg[16]_i_1_n_5\,
      CO(1) => \ball_y_pos_reg[16]_i_1_n_6\,
      CO(0) => \ball_y_pos_reg[16]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \ball_y_dir__0\(11),
      DI(5) => \ball_y_dir__0\(11),
      DI(4) => \ball_y_dir__0\(11),
      DI(3) => \ball_y_dir__0\(11),
      DI(2) => \ball_y_dir__0\(11),
      DI(1) => \ball_y_dir__0\(11),
      DI(0) => \ball_y_dir__0\(11),
      O(7) => \ball_y_pos_reg[16]_i_1_n_8\,
      O(6) => \ball_y_pos_reg[16]_i_1_n_9\,
      O(5) => \ball_y_pos_reg[16]_i_1_n_10\,
      O(4) => \ball_y_pos_reg[16]_i_1_n_11\,
      O(3) => \ball_y_pos_reg[16]_i_1_n_12\,
      O(2) => \ball_y_pos_reg[16]_i_1_n_13\,
      O(1) => \ball_y_pos_reg[16]_i_1_n_14\,
      O(0) => \ball_y_pos_reg[16]_i_1_n_15\,
      S(7) => \ball_y_pos[16]_i_2_n_0\,
      S(6) => \ball_y_pos[16]_i_3_n_0\,
      S(5) => \ball_y_pos[16]_i_4_n_0\,
      S(4) => \ball_y_pos[16]_i_5_n_0\,
      S(3) => \ball_y_pos[16]_i_6_n_0\,
      S(2) => \ball_y_pos[16]_i_7_n_0\,
      S(1) => \ball_y_pos[16]_i_8_n_0\,
      S(0) => \ball_y_pos[16]_i_9_n_0\
    );
\ball_y_pos_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_14\,
      Q => ball_y_pos_reg(17),
      R => clear
    );
\ball_y_pos_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_13\,
      Q => ball_y_pos_reg(18),
      R => clear
    );
\ball_y_pos_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_12\,
      Q => ball_y_pos_reg(19),
      R => clear
    );
\ball_y_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_14\,
      Q => \ball_y_pos_reg_n_0_[1]\,
      R => clear
    );
\ball_y_pos_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_11\,
      Q => ball_y_pos_reg(20),
      R => clear
    );
\ball_y_pos_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_10\,
      Q => ball_y_pos_reg(21),
      R => clear
    );
\ball_y_pos_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_9\,
      Q => ball_y_pos_reg(22),
      R => clear
    );
\ball_y_pos_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[16]_i_1_n_8\,
      Q => ball_y_pos_reg(23),
      R => clear
    );
\ball_y_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_13\,
      Q => \ball_y_pos_reg_n_0_[2]\,
      R => clear
    );
\ball_y_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_12\,
      Q => \ball_y_pos_reg_n_0_[3]\,
      R => clear
    );
\ball_y_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_11\,
      Q => \ball_y_pos_reg_n_0_[4]\,
      R => clear
    );
\ball_y_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_10\,
      Q => \ball_y_pos_reg_n_0_[5]\,
      R => clear
    );
\ball_y_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_9\,
      Q => \ball_y_pos_reg_n_0_[6]\,
      R => clear
    );
\ball_y_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[0]_i_2_n_8\,
      Q => \ball_y_pos_reg_n_0_[7]\,
      R => clear
    );
\ball_y_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_15\,
      Q => ball_y_pos_reg(8),
      R => clear
    );
\ball_y_pos_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ball_y_pos_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \ball_y_pos_reg[8]_i_1_n_0\,
      CO(6) => \ball_y_pos_reg[8]_i_1_n_1\,
      CO(5) => \ball_y_pos_reg[8]_i_1_n_2\,
      CO(4) => \ball_y_pos_reg[8]_i_1_n_3\,
      CO(3) => \ball_y_pos_reg[8]_i_1_n_4\,
      CO(2) => \ball_y_pos_reg[8]_i_1_n_5\,
      CO(1) => \ball_y_pos_reg[8]_i_1_n_6\,
      CO(0) => \ball_y_pos_reg[8]_i_1_n_7\,
      DI(7) => \ball_y_dir__0\(11),
      DI(6) => \ball_y_dir__0\(11),
      DI(5) => \ball_y_dir__0\(11),
      DI(4) => \ball_y_dir__0\(11),
      DI(3 downto 0) => \ball_y_dir__0\(11 downto 8),
      O(7) => \ball_y_pos_reg[8]_i_1_n_8\,
      O(6) => \ball_y_pos_reg[8]_i_1_n_9\,
      O(5) => \ball_y_pos_reg[8]_i_1_n_10\,
      O(4) => \ball_y_pos_reg[8]_i_1_n_11\,
      O(3) => \ball_y_pos_reg[8]_i_1_n_12\,
      O(2) => \ball_y_pos_reg[8]_i_1_n_13\,
      O(1) => \ball_y_pos_reg[8]_i_1_n_14\,
      O(0) => \ball_y_pos_reg[8]_i_1_n_15\,
      S(7) => \ball_y_pos[8]_i_2_n_0\,
      S(6) => \ball_y_pos[8]_i_3_n_0\,
      S(5) => \ball_y_pos[8]_i_4_n_0\,
      S(4) => \ball_y_pos[8]_i_5_n_0\,
      S(3) => \ball_y_pos[8]_i_6_n_0\,
      S(2) => \ball_y_pos[8]_i_7_n_0\,
      S(1) => \ball_y_pos[8]_i_8_n_0\,
      S(0) => \ball_y_pos[8]_i_9_n_0\
    );
\ball_y_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \ball_y_pos_reg[8]_i_1_n_14\,
      Q => ball_y_pos_reg(9),
      R => clear
    );
\demo_mode[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => mode_bit_p1,
      I1 => mode_bit,
      I2 => \demo_mode_reg_n_0_[0]\,
      O => \demo_mode[0]_i_1_n_0\
    );
\demo_mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \demo_mode[0]_i_1_n_0\,
      Q => \demo_mode_reg_n_0_[0]\,
      R => '0'
    );
\dir_chg_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_vga_timing_n_3,
      Q => \dir_chg_sr_reg_n_0_[0]\,
      R => '0'
    );
\dir_chg_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_4,
      D => \dir_chg_sr_reg_n_0_[0]\,
      Q => \dir_chg_sr_reg_n_0_[1]\,
      R => '0'
    );
\dir_chg_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_4,
      D => \dir_chg_sr_reg_n_0_[1]\,
      Q => \dir_chg_sr_reg_n_0_[2]\,
      R => '0'
    );
\dir_chg_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vga_timing_n_4,
      D => \dir_chg_sr_reg_n_0_[2]\,
      Q => \dir_chg_sr_reg_n_0_[3]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[15]\,
      I1 => ball_y_pos_reg(23),
      I2 => ball_y_pos_reg(22),
      I3 => \i__carry__0_i_9_n_0\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ball_y_pos_reg(20),
      I1 => ball_y_pos_reg(18),
      I2 => \i__carry__0_i_11_n_0\,
      I3 => ball_y_pos_reg(17),
      I4 => ball_y_pos_reg(19),
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ball_y_pos_reg(16),
      I1 => ball_y_pos_reg(14),
      I2 => ball_y_pos_reg(12),
      I3 => ball_y_pos_reg(11),
      I4 => ball_y_pos_reg(13),
      I5 => ball_y_pos_reg(15),
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ball_y_pos_reg(15),
      I1 => ball_y_pos_reg(13),
      I2 => ball_y_pos_reg(11),
      I3 => ball_y_pos_reg(12),
      I4 => ball_y_pos_reg(14),
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[14]\,
      I1 => ball_y_pos_reg(22),
      I2 => \i__carry__0_i_9_n_0\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[13]\,
      I1 => ball_y_pos_reg(21),
      I2 => \i__carry__0_i_10_n_0\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[12]\,
      I1 => ball_y_pos_reg(20),
      I2 => ball_y_pos_reg(19),
      I3 => ball_y_pos_reg(17),
      I4 => \i__carry__0_i_11_n_0\,
      I5 => ball_y_pos_reg(18),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[11]\,
      I1 => ball_y_pos_reg(19),
      I2 => ball_y_pos_reg(18),
      I3 => \i__carry__0_i_11_n_0\,
      I4 => ball_y_pos_reg(17),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => ball_y_pos_reg(18),
      I2 => ball_y_pos_reg(17),
      I3 => \i__carry__0_i_11_n_0\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[9]\,
      I1 => ball_y_pos_reg(17),
      I2 => \i__carry__0_i_11_n_0\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[8]\,
      I1 => ball_y_pos_reg(16),
      I2 => \i__carry__0_i_12_n_0\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ball_y_pos_reg(21),
      I1 => ball_y_pos_reg(19),
      I2 => ball_y_pos_reg(17),
      I3 => \i__carry__0_i_11_n_0\,
      I4 => ball_y_pos_reg(18),
      I5 => ball_y_pos_reg(20),
      O => \i__carry__0_i_9_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[14]\,
      I1 => \u0_pel_x_reg_n_0_[15]\,
      I2 => p_0_in(14),
      I3 => \i__carry_i_17_n_0\,
      I4 => p_0_in(15),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[13]\,
      I1 => p_0_in(13),
      I2 => \i__carry_i_18_n_0\,
      I3 => p_0_in(12),
      I4 => \u0_pel_x_reg_n_0_[12]\,
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[11]\,
      I1 => p_0_in(11),
      I2 => p_0_in(9),
      I3 => \i__carry_i_19_n_0\,
      I4 => p_0_in(10),
      I5 => \u0_pel_x_reg_n_0_[10]\,
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => sel0(2),
      I1 => p_0_in(9),
      I2 => \i__carry_i_20_n_0\,
      I3 => p_0_in(8),
      I4 => sel0(1),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828282828228"
    )
        port map (
      I0 => \i__carry_i_22_n_0\,
      I1 => data3(15),
      I2 => p_0_in(6),
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => p_0_in(5),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => p_0_in(5),
      I1 => data3(14),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      I4 => data3(13),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => data3(12),
      I1 => p_0_in(3),
      I2 => data3(11),
      I3 => p_0_in(2),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(1),
      I1 => data3(10),
      I2 => data3(9),
      I3 => p_0_in(0),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(10),
      I2 => \i__carry_i_19_n_0\,
      I3 => p_0_in(9),
      I4 => p_0_in(11),
      I5 => p_0_in(13),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \i__carry_i_19_n_0\,
      I2 => p_0_in(9),
      I3 => p_0_in(11),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      I4 => p_0_in(6),
      I5 => p_0_in(8),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[7]\,
      I1 => ball_y_pos_reg(15),
      I2 => ball_y_pos_reg(14),
      I3 => ball_y_pos_reg(12),
      I4 => ball_y_pos_reg(11),
      I5 => ball_y_pos_reg(13),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[12]\,
      I1 => \u0_pel_x_reg_n_0_[13]\,
      I2 => p_0_in(12),
      I3 => \i__carry_i_18_n_0\,
      I4 => p_0_in(13),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => sel0(0),
      I1 => p_0_in(7),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => p_0_in(6),
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[6]\,
      I1 => ball_y_pos_reg(14),
      I2 => ball_y_pos_reg(13),
      I3 => ball_y_pos_reg(11),
      I4 => ball_y_pos_reg(12),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => \u0_pel_x_reg_n_0_[11]\,
      I2 => p_0_in(10),
      I3 => \i__carry_i_19_n_0\,
      I4 => p_0_in(9),
      I5 => p_0_in(11),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[5]\,
      I1 => ball_y_pos_reg(13),
      I2 => ball_y_pos_reg(12),
      I3 => ball_y_pos_reg(11),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => p_0_in(8),
      I3 => \i__carry_i_20_n_0\,
      I4 => p_0_in(9),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => ball_y_pos_reg(11),
      I1 => ball_y_pos_reg(12),
      I2 => \u0_pel_y_reg_n_0_[4]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => data3(15),
      I1 => sel0(0),
      I2 => p_0_in(6),
      I3 => \i__carry_i_21_n_0\,
      I4 => p_0_in(5),
      I5 => p_0_in(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[3]\,
      I1 => ball_y_pos_reg(11),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => data3(13),
      I1 => data3(14),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      I4 => p_0_in(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[2]\,
      I1 => ball_y_pos_reg(10),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => data3(11),
      I1 => p_0_in(2),
      I2 => data3(12),
      I3 => p_0_in(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[1]\,
      I1 => ball_y_pos_reg(9),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(9),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => data3(10),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[0]\,
      I1 => ball_y_pos_reg(8),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[15]\,
      I1 => p_0_in(15),
      I2 => \i__carry_i_17_n_0\,
      I3 => p_0_in(14),
      I4 => \u0_pel_x_reg_n_0_[14]\,
      O => \i__carry_i_9_n_0\
    );
\line_rgb[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => line_x_pos_reg(12),
      I1 => line_x_pos_reg(13),
      I2 => line_x_pos_reg(14),
      I3 => line_x_pos_reg(15),
      I4 => \line_rgb[22]_i_5_n_0\,
      O => \line_rgb[22]_i_2_n_0\
    );
\line_rgb[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => line_x_pos_reg(2),
      I1 => line_x_pos_reg(3),
      I2 => line_x_pos_reg(0),
      I3 => line_x_pos_reg(1),
      I4 => \line_rgb[22]_i_6_n_0\,
      O => \line_rgb[22]_i_3_n_0\
    );
\line_rgb[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => line_x_pos_reg(11),
      I1 => line_x_pos_reg(10),
      I2 => line_x_pos_reg(9),
      I3 => line_x_pos_reg(8),
      O => \line_rgb[22]_i_5_n_0\
    );
\line_rgb[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => line_x_pos_reg(7),
      I1 => line_x_pos_reg(6),
      I2 => line_x_pos_reg(5),
      I3 => line_x_pos_reg(4),
      O => \line_rgb[22]_i_6_n_0\
    );
\line_rgb[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => line_y_pos_reg(7),
      I1 => line_y_pos_reg(6),
      I2 => line_y_pos_reg(5),
      I3 => line_y_pos_reg(4),
      O => \line_rgb[22]_i_7_n_0\
    );
\line_rgb[22]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => line_y_pos_reg(11),
      I1 => line_y_pos_reg(10),
      I2 => line_y_pos_reg(9),
      I3 => line_y_pos_reg(8),
      O => \line_rgb[22]_i_8_n_0\
    );
\line_rgb[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => line_y_pos_reg(12),
      I1 => line_y_pos_reg(13),
      I2 => line_y_pos_reg(14),
      I3 => line_y_pos_reg(15),
      I4 => line_y_pos_reg(3),
      I5 => line_y_pos_reg(2),
      O => \line_rgb[22]_i_9_n_0\
    );
\line_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(0),
      Q => \line_rgb_reg_n_0_[0]\,
      R => '0'
    );
\line_rgb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(10),
      Q => \line_rgb_reg_n_0_[10]\,
      R => '0'
    );
\line_rgb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(11),
      Q => \line_rgb_reg_n_0_[11]\,
      R => '0'
    );
\line_rgb_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(12),
      Q => \line_rgb_reg_n_0_[12]\,
      R => '0'
    );
\line_rgb_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(13),
      Q => \line_rgb_reg_n_0_[13]\,
      R => '0'
    );
\line_rgb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(14),
      Q => \line_rgb_reg_n_0_[14]\,
      R => '0'
    );
\line_rgb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(15),
      Q => \line_rgb_reg_n_0_[15]\,
      R => '0'
    );
\line_rgb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(16),
      Q => \line_rgb_reg_n_0_[16]\,
      R => '0'
    );
\line_rgb_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(17),
      Q => \line_rgb_reg_n_0_[17]\,
      R => '0'
    );
\line_rgb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(18),
      Q => \line_rgb_reg_n_0_[18]\,
      R => '0'
    );
\line_rgb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(19),
      Q => \line_rgb_reg_n_0_[19]\,
      R => '0'
    );
\line_rgb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(1),
      Q => \line_rgb_reg_n_0_[1]\,
      R => '0'
    );
\line_rgb_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(20),
      Q => \line_rgb_reg_n_0_[20]\,
      R => '0'
    );
\line_rgb_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(21),
      Q => \line_rgb_reg_n_0_[21]\,
      R => '0'
    );
\line_rgb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(22),
      Q => \line_rgb_reg_n_0_[22]\,
      R => '0'
    );
\line_rgb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(2),
      Q => \line_rgb_reg_n_0_[2]\,
      R => '0'
    );
\line_rgb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(3),
      Q => \line_rgb_reg_n_0_[3]\,
      R => '0'
    );
\line_rgb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(4),
      Q => \line_rgb_reg_n_0_[4]\,
      R => '0'
    );
\line_rgb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(5),
      Q => \line_rgb_reg_n_0_[5]\,
      R => '0'
    );
\line_rgb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(6),
      Q => \line_rgb_reg_n_0_[6]\,
      R => '0'
    );
\line_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(7),
      Q => \line_rgb_reg_n_0_[7]\,
      R => '0'
    );
\line_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(8),
      Q => \line_rgb_reg_n_0_[8]\,
      R => '0'
    );
\line_rgb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => line_rgb,
      D => random_num(9),
      Q => \line_rgb_reg_n_0_[9]\,
      R => '0'
    );
line_x_pos0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => line_x_pos_reg(0),
      CI_TOP => '0',
      CO(7) => line_x_pos0_carry_n_0,
      CO(6) => line_x_pos0_carry_n_1,
      CO(5) => line_x_pos0_carry_n_2,
      CO(4) => line_x_pos0_carry_n_3,
      CO(3) => line_x_pos0_carry_n_4,
      CO(2) => line_x_pos0_carry_n_5,
      CO(1) => line_x_pos0_carry_n_6,
      CO(0) => line_x_pos0_carry_n_7,
      DI(7 downto 0) => line_x_pos_reg(8 downto 1),
      O(7 downto 0) => line_x_pos0(8 downto 1),
      S(7) => line_x_pos0_carry_i_1_n_0,
      S(6) => line_x_pos0_carry_i_2_n_0,
      S(5) => line_x_pos0_carry_i_3_n_0,
      S(4) => line_x_pos0_carry_i_4_n_0,
      S(3) => vga_rgb_line5(4),
      S(2) => line_x_pos0_carry_i_6_n_0,
      S(1) => line_x_pos0_carry_i_7_n_0,
      S(0) => line_x_pos0_carry_i_8_n_0
    );
\line_x_pos0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => line_x_pos0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_line_x_pos0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \line_x_pos0_carry__0_n_2\,
      CO(4) => \line_x_pos0_carry__0_n_3\,
      CO(3) => \line_x_pos0_carry__0_n_4\,
      CO(2) => \line_x_pos0_carry__0_n_5\,
      CO(1) => \line_x_pos0_carry__0_n_6\,
      CO(0) => \line_x_pos0_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => line_x_pos_reg(14 downto 9),
      O(7) => \NLW_line_x_pos0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => line_x_pos0(15 downto 9),
      S(7) => '0',
      S(6) => \line_x_pos0_carry__0_i_1_n_0\,
      S(5) => \line_x_pos0_carry__0_i_2_n_0\,
      S(4) => \line_x_pos0_carry__0_i_3_n_0\,
      S(3) => \line_x_pos0_carry__0_i_4_n_0\,
      S(2) => \line_x_pos0_carry__0_i_5_n_0\,
      S(1) => \line_x_pos0_carry__0_i_6_n_0\,
      S(0) => \line_x_pos0_carry__0_i_7_n_0\
    );
\line_x_pos0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(15),
      O => \line_x_pos0_carry__0_i_1_n_0\
    );
\line_x_pos0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(14),
      O => \line_x_pos0_carry__0_i_2_n_0\
    );
\line_x_pos0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(13),
      O => \line_x_pos0_carry__0_i_3_n_0\
    );
\line_x_pos0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(12),
      O => \line_x_pos0_carry__0_i_4_n_0\
    );
\line_x_pos0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(11),
      O => \line_x_pos0_carry__0_i_5_n_0\
    );
\line_x_pos0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(10),
      O => \line_x_pos0_carry__0_i_6_n_0\
    );
\line_x_pos0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(9),
      O => \line_x_pos0_carry__0_i_7_n_0\
    );
line_x_pos0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(8),
      O => line_x_pos0_carry_i_1_n_0
    );
line_x_pos0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(7),
      O => line_x_pos0_carry_i_2_n_0
    );
line_x_pos0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(6),
      O => line_x_pos0_carry_i_3_n_0
    );
line_x_pos0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(5),
      O => line_x_pos0_carry_i_4_n_0
    );
line_x_pos0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(4),
      O => vga_rgb_line5(4)
    );
line_x_pos0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(3),
      O => line_x_pos0_carry_i_6_n_0
    );
line_x_pos0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(2),
      O => line_x_pos0_carry_i_7_n_0
    );
line_x_pos0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(1),
      O => line_x_pos0_carry_i_8_n_0
    );
\line_x_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_x_pos_reg(0),
      O => \line_x_pos[0]_i_1_n_0\
    );
\line_x_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \line_x_pos[0]_i_1_n_0\,
      Q => line_x_pos_reg(0),
      R => line_rgb
    );
\line_x_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(10),
      Q => line_x_pos_reg(10),
      R => line_rgb
    );
\line_x_pos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(11),
      Q => line_x_pos_reg(11),
      R => line_rgb
    );
\line_x_pos_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(12),
      Q => line_x_pos_reg(12),
      R => line_rgb
    );
\line_x_pos_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(13),
      Q => line_x_pos_reg(13),
      R => line_rgb
    );
\line_x_pos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(14),
      Q => line_x_pos_reg(14),
      R => line_rgb
    );
\line_x_pos_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(15),
      Q => line_x_pos_reg(15),
      R => line_rgb
    );
\line_x_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(1),
      Q => line_x_pos_reg(1),
      R => line_rgb
    );
\line_x_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(2),
      Q => line_x_pos_reg(2),
      R => line_rgb
    );
\line_x_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(3),
      Q => line_x_pos_reg(3),
      R => line_rgb
    );
\line_x_pos_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(4),
      Q => line_x_pos_reg(4),
      S => line_rgb
    );
\line_x_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(5),
      Q => line_x_pos_reg(5),
      R => line_rgb
    );
\line_x_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(6),
      Q => line_x_pos_reg(6),
      R => line_rgb
    );
\line_x_pos_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(7),
      Q => line_x_pos_reg(7),
      S => line_rgb
    );
\line_x_pos_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(8),
      Q => line_x_pos_reg(8),
      S => line_rgb
    );
\line_x_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_x_pos0(9),
      Q => line_x_pos_reg(9),
      R => line_rgb
    );
line_y_pos0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => line_y_pos_reg(0),
      CI_TOP => '0',
      CO(7) => line_y_pos0_carry_n_0,
      CO(6) => line_y_pos0_carry_n_1,
      CO(5) => line_y_pos0_carry_n_2,
      CO(4) => line_y_pos0_carry_n_3,
      CO(3) => line_y_pos0_carry_n_4,
      CO(2) => line_y_pos0_carry_n_5,
      CO(1) => line_y_pos0_carry_n_6,
      CO(0) => line_y_pos0_carry_n_7,
      DI(7 downto 0) => line_y_pos_reg(8 downto 1),
      O(7 downto 0) => line_y_pos0(8 downto 1),
      S(7) => line_y_pos0_carry_i_1_n_0,
      S(6) => line_y_pos0_carry_i_2_n_0,
      S(5) => line_y_pos0_carry_i_3_n_0,
      S(4) => line_y_pos0_carry_i_4_n_0,
      S(3) => line_y_pos0_carry_i_5_n_0,
      S(2) => line_y_pos0_carry_i_6_n_0,
      S(1) => line_y_pos0_carry_i_7_n_0,
      S(0) => line_y_pos0_carry_i_8_n_0
    );
\line_y_pos0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => line_y_pos0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_line_y_pos0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \line_y_pos0_carry__0_n_2\,
      CO(4) => \line_y_pos0_carry__0_n_3\,
      CO(3) => \line_y_pos0_carry__0_n_4\,
      CO(2) => \line_y_pos0_carry__0_n_5\,
      CO(1) => \line_y_pos0_carry__0_n_6\,
      CO(0) => \line_y_pos0_carry__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => line_y_pos_reg(14 downto 9),
      O(7) => \NLW_line_y_pos0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => line_y_pos0(15 downto 9),
      S(7) => '0',
      S(6) => \line_y_pos0_carry__0_i_1_n_0\,
      S(5) => \line_y_pos0_carry__0_i_2_n_0\,
      S(4) => \line_y_pos0_carry__0_i_3_n_0\,
      S(3) => \line_y_pos0_carry__0_i_4_n_0\,
      S(2) => \line_y_pos0_carry__0_i_5_n_0\,
      S(1) => \line_y_pos0_carry__0_i_6_n_0\,
      S(0) => \line_y_pos0_carry__0_i_7_n_0\
    );
\line_y_pos0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(15),
      O => \line_y_pos0_carry__0_i_1_n_0\
    );
\line_y_pos0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(14),
      O => \line_y_pos0_carry__0_i_2_n_0\
    );
\line_y_pos0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(13),
      O => \line_y_pos0_carry__0_i_3_n_0\
    );
\line_y_pos0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(12),
      O => \line_y_pos0_carry__0_i_4_n_0\
    );
\line_y_pos0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(11),
      O => \line_y_pos0_carry__0_i_5_n_0\
    );
\line_y_pos0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(10),
      O => \line_y_pos0_carry__0_i_6_n_0\
    );
\line_y_pos0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(9),
      O => \line_y_pos0_carry__0_i_7_n_0\
    );
line_y_pos0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(8),
      O => line_y_pos0_carry_i_1_n_0
    );
line_y_pos0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(7),
      O => line_y_pos0_carry_i_2_n_0
    );
line_y_pos0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(6),
      O => line_y_pos0_carry_i_3_n_0
    );
line_y_pos0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(5),
      O => line_y_pos0_carry_i_4_n_0
    );
line_y_pos0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(4),
      O => line_y_pos0_carry_i_5_n_0
    );
line_y_pos0_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(3),
      O => line_y_pos0_carry_i_6_n_0
    );
line_y_pos0_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(2),
      O => line_y_pos0_carry_i_7_n_0
    );
line_y_pos0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(1),
      O => line_y_pos0_carry_i_8_n_0
    );
\line_y_pos[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_y_pos_reg(0),
      O => \line_y_pos[0]_i_1_n_0\
    );
\line_y_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => \line_y_pos[0]_i_1_n_0\,
      Q => line_y_pos_reg(0),
      R => line_rgb
    );
\line_y_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(10),
      Q => line_y_pos_reg(10),
      R => line_rgb
    );
\line_y_pos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(11),
      Q => line_y_pos_reg(11),
      R => line_rgb
    );
\line_y_pos_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(12),
      Q => line_y_pos_reg(12),
      R => line_rgb
    );
\line_y_pos_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(13),
      Q => line_y_pos_reg(13),
      R => line_rgb
    );
\line_y_pos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(14),
      Q => line_y_pos_reg(14),
      R => line_rgb
    );
\line_y_pos_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(15),
      Q => line_y_pos_reg(15),
      R => line_rgb
    );
\line_y_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(1),
      Q => line_y_pos_reg(1),
      R => line_rgb
    );
\line_y_pos_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(2),
      Q => line_y_pos_reg(2),
      S => line_rgb
    );
\line_y_pos_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(3),
      Q => line_y_pos_reg(3),
      S => line_rgb
    );
\line_y_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(4),
      Q => line_y_pos_reg(4),
      R => line_rgb
    );
\line_y_pos_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(5),
      Q => line_y_pos_reg(5),
      S => line_rgb
    );
\line_y_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(6),
      Q => line_y_pos_reg(6),
      R => line_rgb
    );
\line_y_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(7),
      Q => line_y_pos_reg(7),
      R => line_rgb
    );
\line_y_pos_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(8),
      Q => line_y_pos_reg(8),
      S => line_rgb
    );
\line_y_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_frame,
      D => line_y_pos0(9),
      Q => line_y_pos_reg(9),
      R => line_rgb
    );
mode_bit_p1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => mode_bit,
      Q => mode_bit_p1,
      R => '0'
    );
p_1_out_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => p_1_out_carry_n_0,
      CO(6) => p_1_out_carry_n_1,
      CO(5) => p_1_out_carry_n_2,
      CO(4) => p_1_out_carry_n_3,
      CO(3) => p_1_out_carry_n_4,
      CO(2) => p_1_out_carry_n_5,
      CO(1) => p_1_out_carry_n_6,
      CO(0) => p_1_out_carry_n_7,
      DI(7) => sel0(0),
      DI(6 downto 0) => data3(15 downto 9),
      O(7 downto 0) => NLW_p_1_out_carry_O_UNCONNECTED(7 downto 0),
      S(7) => p_1_out_carry_i_1_n_0,
      S(6) => p_1_out_carry_i_2_n_0,
      S(5) => p_1_out_carry_i_3_n_0,
      S(4) => p_1_out_carry_i_4_n_0,
      S(3) => p_1_out_carry_i_5_n_0,
      S(2) => p_1_out_carry_i_6_n_0,
      S(1) => p_1_out_carry_i_7_n_0,
      S(0) => p_1_out_carry_i_8_n_0
    );
\p_1_out_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => p_1_out_carry_n_0,
      CI_TOP => '0',
      CO(7) => \p_1_out_carry__0_n_0\,
      CO(6) => \p_1_out_carry__0_n_1\,
      CO(5) => \p_1_out_carry__0_n_2\,
      CO(4) => \p_1_out_carry__0_n_3\,
      CO(3) => \p_1_out_carry__0_n_4\,
      CO(2) => \p_1_out_carry__0_n_5\,
      CO(1) => \p_1_out_carry__0_n_6\,
      CO(0) => \p_1_out_carry__0_n_7\,
      DI(7) => \u0_pel_x_reg_n_0_[15]\,
      DI(6) => \u0_pel_x_reg_n_0_[14]\,
      DI(5) => \u0_pel_x_reg_n_0_[13]\,
      DI(4) => \u0_pel_x_reg_n_0_[12]\,
      DI(3) => \u0_pel_x_reg_n_0_[11]\,
      DI(2) => \u0_pel_x_reg_n_0_[10]\,
      DI(1 downto 0) => sel0(2 downto 1),
      O(7 downto 0) => \NLW_p_1_out_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \p_1_out_carry__0_i_1_n_0\,
      S(6) => \p_1_out_carry__0_i_2_n_0\,
      S(5) => \p_1_out_carry__0_i_3_n_0\,
      S(4) => \p_1_out_carry__0_i_4_n_0\,
      S(3) => \p_1_out_carry__0_i_5_n_0\,
      S(2) => \p_1_out_carry__0_i_6_n_0\,
      S(1) => \p_1_out_carry__0_i_7_n_0\,
      S(0) => \p_1_out_carry__0_i_8_n_0\
    );
\p_1_out_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[15]\,
      I1 => p_0_in(15),
      I2 => p_0_in(14),
      I3 => \p_1_out_carry__0_i_9_n_0\,
      O => \p_1_out_carry__0_i_1_n_0\
    );
\p_1_out_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(10),
      I2 => \p_1_out_carry__0_i_11_n_0\,
      I3 => p_0_in(9),
      I4 => p_0_in(11),
      O => \p_1_out_carry__0_i_10_n_0\
    );
\p_1_out_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(6),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      I4 => p_0_in(5),
      I5 => p_0_in(7),
      O => \p_1_out_carry__0_i_11_n_0\
    );
\p_1_out_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      I3 => p_0_in(4),
      I4 => p_0_in(6),
      O => \p_1_out_carry__0_i_12_n_0\
    );
\p_1_out_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[14]\,
      I1 => p_0_in(14),
      I2 => \p_1_out_carry__0_i_9_n_0\,
      O => \p_1_out_carry__0_i_2_n_0\
    );
\p_1_out_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[13]\,
      I1 => p_0_in(13),
      I2 => \p_1_out_carry__0_i_10_n_0\,
      O => \p_1_out_carry__0_i_3_n_0\
    );
\p_1_out_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[12]\,
      I1 => p_0_in(12),
      I2 => p_0_in(11),
      I3 => p_0_in(9),
      I4 => \p_1_out_carry__0_i_11_n_0\,
      I5 => p_0_in(10),
      O => \p_1_out_carry__0_i_4_n_0\
    );
\p_1_out_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[11]\,
      I1 => p_0_in(11),
      I2 => p_0_in(10),
      I3 => \p_1_out_carry__0_i_11_n_0\,
      I4 => p_0_in(9),
      O => \p_1_out_carry__0_i_5_n_0\
    );
\p_1_out_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => p_0_in(10),
      I2 => p_0_in(9),
      I3 => \p_1_out_carry__0_i_11_n_0\,
      O => \p_1_out_carry__0_i_6_n_0\
    );
\p_1_out_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => sel0(2),
      I1 => p_0_in(9),
      I2 => \p_1_out_carry__0_i_11_n_0\,
      O => \p_1_out_carry__0_i_7_n_0\
    );
\p_1_out_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => sel0(1),
      I1 => p_0_in(8),
      I2 => \p_1_out_carry__0_i_12_n_0\,
      O => \p_1_out_carry__0_i_8_n_0\
    );
\p_1_out_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(13),
      I1 => p_0_in(11),
      I2 => p_0_in(9),
      I3 => \p_1_out_carry__0_i_11_n_0\,
      I4 => p_0_in(10),
      I5 => p_0_in(12),
      O => \p_1_out_carry__0_i_9_n_0\
    );
p_1_out_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => sel0(0),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => p_0_in(5),
      O => p_1_out_carry_i_1_n_0
    );
p_1_out_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => data3(15),
      I1 => p_0_in(6),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      O => p_1_out_carry_i_2_n_0
    );
p_1_out_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => data3(14),
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      O => p_1_out_carry_i_3_n_0
    );
p_1_out_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => data3(13),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      O => p_1_out_carry_i_4_n_0
    );
p_1_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(12),
      I1 => p_0_in(3),
      O => p_1_out_carry_i_5_n_0
    );
p_1_out_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(11),
      I1 => p_0_in(2),
      O => p_1_out_carry_i_6_n_0
    );
p_1_out_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(10),
      I1 => p_0_in(1),
      O => p_1_out_carry_i_7_n_0
    );
p_1_out_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(9),
      I1 => p_0_in(0),
      O => p_1_out_carry_i_8_n_0
    );
\p_1_out_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \p_1_out_inferred__0/i__carry_n_0\,
      CO(6) => \p_1_out_inferred__0/i__carry_n_1\,
      CO(5) => \p_1_out_inferred__0/i__carry_n_2\,
      CO(4) => \p_1_out_inferred__0/i__carry_n_3\,
      CO(3) => \p_1_out_inferred__0/i__carry_n_4\,
      CO(2) => \p_1_out_inferred__0/i__carry_n_5\,
      CO(1) => \p_1_out_inferred__0/i__carry_n_6\,
      CO(0) => \p_1_out_inferred__0/i__carry_n_7\,
      DI(7) => \u0_pel_y_reg_n_0_[7]\,
      DI(6) => \u0_pel_y_reg_n_0_[6]\,
      DI(5) => \u0_pel_y_reg_n_0_[5]\,
      DI(4) => \u0_pel_y_reg_n_0_[4]\,
      DI(3) => \u0_pel_y_reg_n_0_[3]\,
      DI(2) => \u0_pel_y_reg_n_0_[2]\,
      DI(1) => \u0_pel_y_reg_n_0_[1]\,
      DI(0) => \u0_pel_y_reg_n_0_[0]\,
      O(7 downto 0) => \NLW_p_1_out_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_1__0_n_0\,
      S(6) => \i__carry_i_2__0_n_0\,
      S(5) => \i__carry_i_3__0_n_0\,
      S(4) => \i__carry_i_4__0_n_0\,
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\p_1_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \p_1_out_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \p_1_out_inferred__0/i__carry__0_n_0\,
      CO(6) => \p_1_out_inferred__0/i__carry__0_n_1\,
      CO(5) => \p_1_out_inferred__0/i__carry__0_n_2\,
      CO(4) => \p_1_out_inferred__0/i__carry__0_n_3\,
      CO(3) => \p_1_out_inferred__0/i__carry__0_n_4\,
      CO(2) => \p_1_out_inferred__0/i__carry__0_n_5\,
      CO(1) => \p_1_out_inferred__0/i__carry__0_n_6\,
      CO(0) => \p_1_out_inferred__0/i__carry__0_n_7\,
      DI(7) => \u0_pel_y_reg_n_0_[15]\,
      DI(6) => \u0_pel_y_reg_n_0_[14]\,
      DI(5) => \u0_pel_y_reg_n_0_[13]\,
      DI(4) => \u0_pel_y_reg_n_0_[12]\,
      DI(3) => \u0_pel_y_reg_n_0_[11]\,
      DI(2) => \u0_pel_y_reg_n_0_[10]\,
      DI(1) => \u0_pel_y_reg_n_0_[9]\,
      DI(0) => \u0_pel_y_reg_n_0_[8]\,
      O(7 downto 0) => \NLW_p_1_out_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry__0_i_1_n_0\,
      S(6) => \i__carry__0_i_2_n_0\,
      S(5) => \i__carry__0_i_3_n_0\,
      S(4) => \i__carry__0_i_4_n_0\,
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\u0_pel_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \u0_pel_x[15]_i_3_n_0\,
      I1 => data3(9),
      O => u0_pel_x(0)
    );
\u0_pel_x[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \u0_pel_x[10]_i_2_n_0\,
      I4 => sel0(1),
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(10)
    );
\u0_pel_x[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data3(15),
      I1 => data3(13),
      I2 => data3(11),
      I3 => \u0_pel_x[5]_i_2_n_0\,
      I4 => data3(12),
      I5 => data3(14),
      O => \u0_pel_x[10]_i_2_n_0\
    );
\u0_pel_x[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[11]\,
      I1 => \u0_pel_x[14]_i_2_n_0\,
      I2 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(11)
    );
\u0_pel_x[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[12]\,
      I1 => \u0_pel_x_reg_n_0_[11]\,
      I2 => \u0_pel_x[14]_i_2_n_0\,
      I3 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(12)
    );
\u0_pel_x[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[13]\,
      I1 => \u0_pel_x_reg_n_0_[12]\,
      I2 => \u0_pel_x[14]_i_2_n_0\,
      I3 => \u0_pel_x_reg_n_0_[11]\,
      I4 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(13)
    );
\u0_pel_x[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[14]\,
      I1 => \u0_pel_x_reg_n_0_[13]\,
      I2 => \u0_pel_x_reg_n_0_[11]\,
      I3 => \u0_pel_x[14]_i_2_n_0\,
      I4 => \u0_pel_x_reg_n_0_[12]\,
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(14)
    );
\u0_pel_x[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => sel0(1),
      I2 => data3(15),
      I3 => \u0_pel_x[9]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(2),
      O => \u0_pel_x[14]_i_2_n_0\
    );
\u0_pel_x[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[15]\,
      I1 => \u0_pel_x_reg_n_0_[14]\,
      I2 => \u0_pel_x_reg_n_0_[12]\,
      I3 => \u0_pel_x[15]_i_2_n_0\,
      I4 => \u0_pel_x_reg_n_0_[13]\,
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(15)
    );
\u0_pel_x[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[11]\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \u0_pel_x[10]_i_2_n_0\,
      I4 => sel0(1),
      I5 => \u0_pel_x_reg_n_0_[10]\,
      O => \u0_pel_x[15]_i_2_n_0\
    );
\u0_pel_x[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_x[15]_i_4_n_0\,
      I1 => \u0_pel_x_reg_n_0_[13]\,
      I2 => \u0_pel_x_reg_n_0_[14]\,
      I3 => \u0_pel_x_reg_n_0_[12]\,
      I4 => \u0_pel_x_reg_n_0_[15]\,
      I5 => \u0_pel_x[15]_i_5_n_0\,
      O => \u0_pel_x[15]_i_3_n_0\
    );
\u0_pel_x[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => data3(15),
      I3 => \u0_pel_x_reg_n_0_[10]\,
      I4 => \u0_pel_x_reg_n_0_[11]\,
      I5 => sel0(2),
      O => \u0_pel_x[15]_i_4_n_0\
    );
\u0_pel_x[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data3(10),
      I1 => data3(11),
      I2 => data3(9),
      I3 => data3(13),
      I4 => data3(14),
      I5 => data3(12),
      O => \u0_pel_x[15]_i_5_n_0\
    );
\u0_pel_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => data3(10),
      I1 => data3(9),
      I2 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(1)
    );
\u0_pel_x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => data3(11),
      I1 => data3(10),
      I2 => data3(9),
      I3 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(2)
    );
\u0_pel_x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => data3(12),
      I1 => data3(11),
      I2 => data3(9),
      I3 => data3(10),
      I4 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(3)
    );
\u0_pel_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => data3(13),
      I1 => data3(12),
      I2 => data3(10),
      I3 => data3(9),
      I4 => data3(11),
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(4)
    );
\u0_pel_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => data3(14),
      I1 => data3(13),
      I2 => data3(11),
      I3 => \u0_pel_x[5]_i_2_n_0\,
      I4 => data3(12),
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(5)
    );
\u0_pel_x[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data3(10),
      I1 => data3(9),
      O => \u0_pel_x[5]_i_2_n_0\
    );
\u0_pel_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => data3(15),
      I1 => \u0_pel_x[9]_i_2_n_0\,
      I2 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(6)
    );
\u0_pel_x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => sel0(0),
      I1 => data3(15),
      I2 => \u0_pel_x[9]_i_2_n_0\,
      I3 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(7)
    );
\u0_pel_x[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => \u0_pel_x[9]_i_2_n_0\,
      I3 => data3(15),
      I4 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(8)
    );
\u0_pel_x[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => data3(15),
      I3 => \u0_pel_x[9]_i_2_n_0\,
      I4 => sel0(0),
      I5 => \u0_pel_x[15]_i_3_n_0\,
      O => u0_pel_x(9)
    );
\u0_pel_x[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data3(14),
      I1 => data3(12),
      I2 => data3(10),
      I3 => data3(9),
      I4 => data3(11),
      I5 => data3(13),
      O => \u0_pel_x[9]_i_2_n_0\
    );
\u0_pel_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(0),
      Q => data3(9),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(10),
      Q => \u0_pel_x_reg_n_0_[10]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(11),
      Q => \u0_pel_x_reg_n_0_[11]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(12),
      Q => \u0_pel_x_reg_n_0_[12]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(13),
      Q => \u0_pel_x_reg_n_0_[13]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(14),
      Q => \u0_pel_x_reg_n_0_[14]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(15),
      Q => \u0_pel_x_reg_n_0_[15]\,
      R => u0_vid_new_line
    );
\u0_pel_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(1),
      Q => data3(10),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(2),
      Q => data3(11),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(3),
      Q => data3(12),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(4),
      Q => data3(13),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(5),
      Q => data3(14),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(6),
      Q => data3(15),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(7),
      Q => sel0(0),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(8),
      Q => sel0(1),
      R => u0_vid_new_line
    );
\u0_pel_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => u0_pel_x(9),
      Q => sel0(2),
      R => u0_vid_new_line
    );
\u0_pel_y[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \u0_pel_y[15]_i_3_n_0\,
      I1 => \u0_pel_y_reg_n_0_[0]\,
      O => u0_pel_y(0)
    );
\u0_pel_y[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => \u0_pel_y_reg_n_0_[9]\,
      I2 => \u0_pel_y_reg_n_0_[7]\,
      I3 => \u0_pel_y[10]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[8]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(10)
    );
\u0_pel_y[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[6]\,
      I1 => \u0_pel_y_reg_n_0_[4]\,
      I2 => \u0_pel_y_reg_n_0_[2]\,
      I3 => \u0_pel_y[5]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[3]\,
      I5 => \u0_pel_y_reg_n_0_[5]\,
      O => \u0_pel_y[10]_i_2_n_0\
    );
\u0_pel_y[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[11]\,
      I1 => \u0_pel_y[14]_i_2_n_0\,
      I2 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(11)
    );
\u0_pel_y[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[12]\,
      I1 => \u0_pel_y_reg_n_0_[11]\,
      I2 => \u0_pel_y[14]_i_2_n_0\,
      I3 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(12)
    );
\u0_pel_y[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[13]\,
      I1 => \u0_pel_y_reg_n_0_[12]\,
      I2 => \u0_pel_y[14]_i_2_n_0\,
      I3 => \u0_pel_y_reg_n_0_[11]\,
      I4 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(13)
    );
\u0_pel_y[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[14]\,
      I1 => \u0_pel_y_reg_n_0_[13]\,
      I2 => \u0_pel_y_reg_n_0_[11]\,
      I3 => \u0_pel_y[14]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[12]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(14)
    );
\u0_pel_y[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => \u0_pel_y_reg_n_0_[8]\,
      I2 => \u0_pel_y_reg_n_0_[6]\,
      I3 => \u0_pel_y[9]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[7]\,
      I5 => \u0_pel_y_reg_n_0_[9]\,
      O => \u0_pel_y[14]_i_2_n_0\
    );
\u0_pel_y[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[15]\,
      I1 => \u0_pel_y_reg_n_0_[14]\,
      I2 => \u0_pel_y_reg_n_0_[12]\,
      I3 => \u0_pel_y[15]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[13]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(15)
    );
\u0_pel_y[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[11]\,
      I1 => \u0_pel_y_reg_n_0_[9]\,
      I2 => \u0_pel_y_reg_n_0_[7]\,
      I3 => \u0_pel_y[10]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[8]\,
      I5 => \u0_pel_y_reg_n_0_[10]\,
      O => \u0_pel_y[15]_i_2_n_0\
    );
\u0_pel_y[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y[15]_i_4_n_0\,
      I1 => \u0_pel_y_reg_n_0_[13]\,
      I2 => \u0_pel_y_reg_n_0_[14]\,
      I3 => \u0_pel_y_reg_n_0_[12]\,
      I4 => \u0_pel_y_reg_n_0_[15]\,
      I5 => \u0_pel_y[15]_i_5_n_0\,
      O => \u0_pel_y[15]_i_3_n_0\
    );
\u0_pel_y[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[7]\,
      I1 => \u0_pel_y_reg_n_0_[8]\,
      I2 => \u0_pel_y_reg_n_0_[6]\,
      I3 => \u0_pel_y_reg_n_0_[10]\,
      I4 => \u0_pel_y_reg_n_0_[11]\,
      I5 => \u0_pel_y_reg_n_0_[9]\,
      O => \u0_pel_y[15]_i_4_n_0\
    );
\u0_pel_y[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[1]\,
      I1 => \u0_pel_y_reg_n_0_[2]\,
      I2 => \u0_pel_y_reg_n_0_[0]\,
      I3 => \u0_pel_y_reg_n_0_[4]\,
      I4 => \u0_pel_y_reg_n_0_[5]\,
      I5 => \u0_pel_y_reg_n_0_[3]\,
      O => \u0_pel_y[15]_i_5_n_0\
    );
\u0_pel_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[1]\,
      I1 => \u0_pel_y_reg_n_0_[0]\,
      I2 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(1)
    );
\u0_pel_y[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[2]\,
      I1 => \u0_pel_y_reg_n_0_[1]\,
      I2 => \u0_pel_y_reg_n_0_[0]\,
      I3 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(2)
    );
\u0_pel_y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[3]\,
      I1 => \u0_pel_y_reg_n_0_[2]\,
      I2 => \u0_pel_y_reg_n_0_[0]\,
      I3 => \u0_pel_y_reg_n_0_[1]\,
      I4 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(3)
    );
\u0_pel_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[4]\,
      I1 => \u0_pel_y_reg_n_0_[3]\,
      I2 => \u0_pel_y_reg_n_0_[1]\,
      I3 => \u0_pel_y_reg_n_0_[0]\,
      I4 => \u0_pel_y_reg_n_0_[2]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(4)
    );
\u0_pel_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[5]\,
      I1 => \u0_pel_y_reg_n_0_[4]\,
      I2 => \u0_pel_y_reg_n_0_[2]\,
      I3 => \u0_pel_y[5]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[3]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(5)
    );
\u0_pel_y[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[1]\,
      I1 => \u0_pel_y_reg_n_0_[0]\,
      O => \u0_pel_y[5]_i_2_n_0\
    );
\u0_pel_y[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[6]\,
      I1 => \u0_pel_y[9]_i_2_n_0\,
      I2 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(6)
    );
\u0_pel_y[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6A"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[7]\,
      I1 => \u0_pel_y_reg_n_0_[6]\,
      I2 => \u0_pel_y[9]_i_2_n_0\,
      I3 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(7)
    );
\u0_pel_y[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[8]\,
      I1 => \u0_pel_y_reg_n_0_[7]\,
      I2 => \u0_pel_y[9]_i_2_n_0\,
      I3 => \u0_pel_y_reg_n_0_[6]\,
      I4 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(8)
    );
\u0_pel_y[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6AAAAAAA"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[9]\,
      I1 => \u0_pel_y_reg_n_0_[8]\,
      I2 => \u0_pel_y_reg_n_0_[6]\,
      I3 => \u0_pel_y[9]_i_2_n_0\,
      I4 => \u0_pel_y_reg_n_0_[7]\,
      I5 => \u0_pel_y[15]_i_3_n_0\,
      O => u0_pel_y(9)
    );
\u0_pel_y[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[5]\,
      I1 => \u0_pel_y_reg_n_0_[3]\,
      I2 => \u0_pel_y_reg_n_0_[1]\,
      I3 => \u0_pel_y_reg_n_0_[0]\,
      I4 => \u0_pel_y_reg_n_0_[2]\,
      I5 => \u0_pel_y_reg_n_0_[4]\,
      O => \u0_pel_y[9]_i_2_n_0\
    );
\u0_pel_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(0),
      Q => \u0_pel_y_reg_n_0_[0]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(10),
      Q => \u0_pel_y_reg_n_0_[10]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(11),
      Q => \u0_pel_y_reg_n_0_[11]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(12),
      Q => \u0_pel_y_reg_n_0_[12]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(13),
      Q => \u0_pel_y_reg_n_0_[13]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(14),
      Q => \u0_pel_y_reg_n_0_[14]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(15),
      Q => \u0_pel_y_reg_n_0_[15]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(1),
      Q => \u0_pel_y_reg_n_0_[1]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(2),
      Q => \u0_pel_y_reg_n_0_[2]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(3),
      Q => \u0_pel_y_reg_n_0_[3]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(4),
      Q => \u0_pel_y_reg_n_0_[4]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(5),
      Q => \u0_pel_y_reg_n_0_[5]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(6),
      Q => \u0_pel_y_reg_n_0_[6]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(7),
      Q => \u0_pel_y_reg_n_0_[7]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(8),
      Q => \u0_pel_y_reg_n_0_[8]\,
      R => u0_vid_new_frame
    );
\u0_pel_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => u0_vid_new_line,
      D => u0_pel_y(9),
      Q => \u0_pel_y_reg_n_0_[9]\,
      R => u0_vid_new_frame
    );
u0_vga_timing: entity work.vcu_DT_blk_design_vga_core_0_0_vga_timing
     port map (
      DI(0) => \ball_y_dir__0\(10),
      E(0) => u0_vga_timing_n_5,
      Q(1 downto 0) => line_y_pos_reg(1 downto 0),
      SR(0) => line_rgb,
      \ball_x_dir_reg[10]\(0) => \ball_x_dir__0\(10),
      clk_dot => clk_dot,
      \dir_chg_sr_reg[0]\(0) => u0_vga_timing_n_7,
      \dir_chg_sr_reg[0]_0\ => \ball_y_dir[11]_i_3_n_0\,
      \dir_chg_sr_reg[0]_1\ => \ball_x_dir[11]_i_3_n_0\,
      \dir_chg_sr_reg[0]_2\ => \dir_chg_sr_reg_n_0_[0]\,
      \line_y_pos_reg[0]\ => \line_rgb[22]_i_2_n_0\,
      \line_y_pos_reg[0]_0\ => \line_rgb[22]_i_3_n_0\,
      \line_y_pos_reg[0]_1\ => \line_rgb[22]_i_7_n_0\,
      \line_y_pos_reg[0]_2\ => \line_rgb[22]_i_8_n_0\,
      \line_y_pos_reg[0]_3\ => \line_rgb[22]_i_9_n_0\,
      mode_bit => mode_bit,
      mode_bit_0 => u0_vga_timing_n_3,
      reset => reset,
      vga_active => vga_active,
      vga_hsync => vga_hsync,
      vga_vsync => vga_vsync,
      vid_new_frame => u0_vid_new_frame,
      vid_new_frame_reg_0 => u0_vga_timing_n_0,
      vid_new_frame_reg_1 => u0_vga_timing_n_2,
      vid_new_frame_reg_2 => u0_vga_timing_n_4,
      vid_new_frame_reg_3(0) => u0_vga_timing_n_6,
      vid_new_line => u0_vid_new_line
    );
\vga_rgb[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEAAAEAA"
    )
        port map (
      I0 => \vga_rgb[6]_i_1_n_0\,
      I1 => vga_rgb_ball(0),
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => mode_bit,
      I4 => \vga_rgb_line_reg_n_0_[0]\,
      I5 => color_3b,
      O => \vga_rgb[0]_i_1_n_0\
    );
\vga_rgb[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[10]\,
      I3 => vga_rgb_ball(10),
      I4 => vga_rgb_tp(10),
      I5 => color_3b,
      O => \vga_rgb[10]_i_1_n_0\
    );
\vga_rgb[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[11]\,
      I3 => vga_rgb_ball(11),
      I4 => vga_rgb_tp(11),
      I5 => color_3b,
      O => \vga_rgb[11]_i_1_n_0\
    );
\vga_rgb[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[12]\,
      I3 => vga_rgb_ball(12),
      I4 => vga_rgb_tp(12),
      I5 => color_3b,
      O => \vga_rgb[12]_i_1_n_0\
    );
\vga_rgb[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[13]\,
      I3 => vga_rgb_ball(13),
      I4 => vga_rgb_tp(13),
      I5 => color_3b,
      O => \vga_rgb[13]_i_1_n_0\
    );
\vga_rgb[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AA22288088000"
    )
        port map (
      I0 => color_3b,
      I1 => mode_bit,
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => vga_rgb1,
      I4 => vga_rgb_ball(15),
      I5 => vga_rgb_tp(15),
      O => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[14]\,
      I3 => vga_rgb_ball(14),
      I4 => vga_rgb_tp(14),
      I5 => color_3b,
      O => \vga_rgb[14]_i_2_n_0\
    );
\vga_rgb[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => vga_rgb_tp(15),
      I1 => vga_rgb_ball(15),
      I2 => vga_rgb1,
      I3 => \demo_mode_reg_n_0_[0]\,
      I4 => mode_bit,
      O => \vga_rgb[15]_i_1_n_0\
    );
\vga_rgb[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEAAAEAA"
    )
        port map (
      I0 => \vga_rgb[22]_i_1_n_0\,
      I1 => vga_rgb_ball(16),
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => mode_bit,
      I4 => \vga_rgb_line_reg_n_0_[16]\,
      I5 => color_3b,
      O => \vga_rgb[16]_i_1_n_0\
    );
\vga_rgb[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[17]\,
      I3 => vga_rgb_ball(17),
      I4 => vga_rgb_tp(17),
      I5 => color_3b,
      O => \vga_rgb[17]_i_1_n_0\
    );
\vga_rgb[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[18]\,
      I3 => vga_rgb_ball(18),
      I4 => vga_rgb_tp(18),
      I5 => color_3b,
      O => \vga_rgb[18]_i_1_n_0\
    );
\vga_rgb[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[19]\,
      I3 => vga_rgb_ball(19),
      I4 => vga_rgb_tp(19),
      I5 => color_3b,
      O => \vga_rgb[19]_i_1_n_0\
    );
\vga_rgb[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[1]\,
      I3 => vga_rgb_ball(1),
      I4 => vga_rgb_tp(1),
      I5 => color_3b,
      O => \vga_rgb[1]_i_1_n_0\
    );
\vga_rgb[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[20]\,
      I3 => vga_rgb_ball(20),
      I4 => vga_rgb_tp(20),
      I5 => color_3b,
      O => \vga_rgb[20]_i_1_n_0\
    );
\vga_rgb[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[21]\,
      I3 => vga_rgb_ball(21),
      I4 => vga_rgb_tp(21),
      I5 => color_3b,
      O => \vga_rgb[21]_i_1_n_0\
    );
\vga_rgb[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AA22288088000"
    )
        port map (
      I0 => color_3b,
      I1 => mode_bit,
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => \vga_rgb_line_reg_n_0_[23]\,
      I4 => vga_rgb_ball(23),
      I5 => vga_rgb_tp(23),
      O => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[22]\,
      I3 => vga_rgb_ball(22),
      I4 => vga_rgb_tp(22),
      I5 => color_3b,
      O => \vga_rgb[22]_i_2_n_0\
    );
\vga_rgb[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => vga_rgb_tp(23),
      I1 => vga_rgb_ball(23),
      I2 => \vga_rgb_line_reg_n_0_[23]\,
      I3 => \demo_mode_reg_n_0_[0]\,
      I4 => mode_bit,
      O => \vga_rgb[23]_i_1_n_0\
    );
\vga_rgb[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[2]\,
      I3 => vga_rgb_ball(2),
      I4 => vga_rgb_tp(2),
      I5 => color_3b,
      O => \vga_rgb[2]_i_1_n_0\
    );
\vga_rgb[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[3]\,
      I3 => vga_rgb_ball(3),
      I4 => vga_rgb_tp(3),
      I5 => color_3b,
      O => \vga_rgb[3]_i_1_n_0\
    );
\vga_rgb[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[4]\,
      I3 => vga_rgb_ball(4),
      I4 => vga_rgb_tp(4),
      I5 => color_3b,
      O => \vga_rgb[4]_i_1_n_0\
    );
\vga_rgb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[5]\,
      I3 => vga_rgb_ball(5),
      I4 => vga_rgb_tp(5),
      I5 => color_3b,
      O => \vga_rgb[5]_i_1_n_0\
    );
\vga_rgb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AA22288088000"
    )
        port map (
      I0 => color_3b,
      I1 => mode_bit,
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => \vga_rgb_line_reg_n_0_[7]\,
      I4 => vga_rgb_ball(7),
      I5 => vga_rgb_tp(7),
      O => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[6]\,
      I3 => vga_rgb_ball(6),
      I4 => vga_rgb_tp(6),
      I5 => color_3b,
      O => \vga_rgb[6]_i_2_n_0\
    );
\vga_rgb[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => vga_rgb_tp(7),
      I1 => vga_rgb_ball(7),
      I2 => \vga_rgb_line_reg_n_0_[7]\,
      I3 => \demo_mode_reg_n_0_[0]\,
      I4 => mode_bit,
      O => \vga_rgb[7]_i_1_n_0\
    );
\vga_rgb[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFEAAAEAA"
    )
        port map (
      I0 => \vga_rgb[14]_i_1_n_0\,
      I1 => vga_rgb_ball(8),
      I2 => \demo_mode_reg_n_0_[0]\,
      I3 => mode_bit,
      I4 => \vga_rgb_line_reg_n_0_[8]\,
      I5 => color_3b,
      O => \vga_rgb[8]_i_1_n_0\
    );
\vga_rgb[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => mode_bit,
      I1 => \demo_mode_reg_n_0_[0]\,
      I2 => \vga_rgb_line_reg_n_0_[9]\,
      I3 => vga_rgb_ball(9),
      I4 => vga_rgb_tp(9),
      I5 => color_3b,
      O => \vga_rgb[9]_i_1_n_0\
    );
vga_rgb_ball3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => vga_rgb_ball3,
      CO(6) => vga_rgb_ball3_carry_n_1,
      CO(5) => vga_rgb_ball3_carry_n_2,
      CO(4) => vga_rgb_ball3_carry_n_3,
      CO(3) => vga_rgb_ball3_carry_n_4,
      CO(2) => vga_rgb_ball3_carry_n_5,
      CO(1) => vga_rgb_ball3_carry_n_6,
      CO(0) => vga_rgb_ball3_carry_n_7,
      DI(7) => vga_rgb_ball3_carry_i_1_n_0,
      DI(6) => vga_rgb_ball3_carry_i_2_n_0,
      DI(5) => vga_rgb_ball3_carry_i_3_n_0,
      DI(4) => vga_rgb_ball3_carry_i_4_n_0,
      DI(3) => vga_rgb_ball3_carry_i_5_n_0,
      DI(2) => vga_rgb_ball3_carry_i_6_n_0,
      DI(1) => vga_rgb_ball3_carry_i_7_n_0,
      DI(0) => vga_rgb_ball3_carry_i_8_n_0,
      O(7 downto 0) => NLW_vga_rgb_ball3_carry_O_UNCONNECTED(7 downto 0),
      S(7) => vga_rgb_ball3_carry_i_9_n_0,
      S(6) => vga_rgb_ball3_carry_i_10_n_0,
      S(5) => vga_rgb_ball3_carry_i_11_n_0,
      S(4) => vga_rgb_ball3_carry_i_12_n_0,
      S(3) => vga_rgb_ball3_carry_i_13_n_0,
      S(2) => vga_rgb_ball3_carry_i_14_n_0,
      S(1) => vga_rgb_ball3_carry_i_15_n_0,
      S(0) => vga_rgb_ball3_carry_i_16_n_0
    );
vga_rgb_ball3_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[14]\,
      I1 => \u0_pel_y_reg_n_0_[15]\,
      I2 => ball_y_pos_reg(22),
      I3 => vga_rgb_ball3_carry_i_17_n_0,
      I4 => ball_y_pos_reg(23),
      O => vga_rgb_ball3_carry_i_1_n_0
    );
vga_rgb_ball3_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[13]\,
      I1 => ball_y_pos_reg(21),
      I2 => vga_rgb_ball3_carry_i_18_n_0,
      I3 => ball_y_pos_reg(20),
      I4 => \u0_pel_y_reg_n_0_[12]\,
      O => vga_rgb_ball3_carry_i_10_n_0
    );
vga_rgb_ball3_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[11]\,
      I1 => ball_y_pos_reg(19),
      I2 => ball_y_pos_reg(17),
      I3 => vga_rgb_ball3_carry_i_19_n_0,
      I4 => ball_y_pos_reg(18),
      I5 => \u0_pel_y_reg_n_0_[10]\,
      O => vga_rgb_ball3_carry_i_11_n_0
    );
vga_rgb_ball3_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[9]\,
      I1 => ball_y_pos_reg(17),
      I2 => vga_rgb_ball3_carry_i_20_n_0,
      I3 => ball_y_pos_reg(16),
      I4 => \u0_pel_y_reg_n_0_[8]\,
      O => vga_rgb_ball3_carry_i_12_n_0
    );
vga_rgb_ball3_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828282828228"
    )
        port map (
      I0 => vga_rgb_ball3_carry_i_22_n_0,
      I1 => \u0_pel_y_reg_n_0_[6]\,
      I2 => ball_y_pos_reg(14),
      I3 => ball_y_pos_reg(12),
      I4 => ball_y_pos_reg(11),
      I5 => ball_y_pos_reg(13),
      O => vga_rgb_ball3_carry_i_13_n_0
    );
vga_rgb_ball3_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[4]\,
      I1 => ball_y_pos_reg(12),
      I2 => ball_y_pos_reg(11),
      I3 => ball_y_pos_reg(13),
      I4 => \u0_pel_y_reg_n_0_[5]\,
      O => vga_rgb_ball3_carry_i_14_n_0
    );
vga_rgb_ball3_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[3]\,
      I1 => ball_y_pos_reg(11),
      I2 => \u0_pel_y_reg_n_0_[2]\,
      I3 => ball_y_pos_reg(10),
      O => vga_rgb_ball3_carry_i_15_n_0
    );
vga_rgb_ball3_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ball_y_pos_reg(9),
      I1 => \u0_pel_y_reg_n_0_[1]\,
      I2 => \u0_pel_y_reg_n_0_[0]\,
      I3 => ball_y_pos_reg(8),
      O => vga_rgb_ball3_carry_i_16_n_0
    );
vga_rgb_ball3_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ball_y_pos_reg(20),
      I1 => ball_y_pos_reg(18),
      I2 => vga_rgb_ball3_carry_i_19_n_0,
      I3 => ball_y_pos_reg(17),
      I4 => ball_y_pos_reg(19),
      I5 => ball_y_pos_reg(21),
      O => vga_rgb_ball3_carry_i_17_n_0
    );
vga_rgb_ball3_carry_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ball_y_pos_reg(18),
      I1 => vga_rgb_ball3_carry_i_19_n_0,
      I2 => ball_y_pos_reg(17),
      I3 => ball_y_pos_reg(19),
      O => vga_rgb_ball3_carry_i_18_n_0
    );
vga_rgb_ball3_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ball_y_pos_reg(15),
      I1 => ball_y_pos_reg(13),
      I2 => ball_y_pos_reg(11),
      I3 => ball_y_pos_reg(12),
      I4 => ball_y_pos_reg(14),
      I5 => ball_y_pos_reg(16),
      O => vga_rgb_ball3_carry_i_19_n_0
    );
vga_rgb_ball3_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[12]\,
      I1 => \u0_pel_y_reg_n_0_[13]\,
      I2 => ball_y_pos_reg(20),
      I3 => vga_rgb_ball3_carry_i_18_n_0,
      I4 => ball_y_pos_reg(21),
      O => vga_rgb_ball3_carry_i_2_n_0
    );
vga_rgb_ball3_carry_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ball_y_pos_reg(14),
      I1 => ball_y_pos_reg(12),
      I2 => ball_y_pos_reg(11),
      I3 => ball_y_pos_reg(13),
      I4 => ball_y_pos_reg(15),
      O => vga_rgb_ball3_carry_i_20_n_0
    );
vga_rgb_ball3_carry_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ball_y_pos_reg(11),
      I1 => ball_y_pos_reg(12),
      O => vga_rgb_ball3_carry_i_21_n_0
    );
vga_rgb_ball3_carry_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[7]\,
      I1 => ball_y_pos_reg(15),
      I2 => ball_y_pos_reg(13),
      I3 => ball_y_pos_reg(11),
      I4 => ball_y_pos_reg(12),
      I5 => ball_y_pos_reg(14),
      O => vga_rgb_ball3_carry_i_22_n_0
    );
vga_rgb_ball3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => \u0_pel_y_reg_n_0_[11]\,
      I2 => ball_y_pos_reg(18),
      I3 => vga_rgb_ball3_carry_i_19_n_0,
      I4 => ball_y_pos_reg(17),
      I5 => ball_y_pos_reg(19),
      O => vga_rgb_ball3_carry_i_3_n_0
    );
vga_rgb_ball3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[8]\,
      I1 => \u0_pel_y_reg_n_0_[9]\,
      I2 => ball_y_pos_reg(16),
      I3 => vga_rgb_ball3_carry_i_20_n_0,
      I4 => ball_y_pos_reg(17),
      O => vga_rgb_ball3_carry_i_4_n_0
    );
vga_rgb_ball3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088CCECECEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[6]\,
      I1 => \u0_pel_y_reg_n_0_[7]\,
      I2 => ball_y_pos_reg(14),
      I3 => vga_rgb_ball3_carry_i_21_n_0,
      I4 => ball_y_pos_reg(13),
      I5 => ball_y_pos_reg(15),
      O => vga_rgb_ball3_carry_i_5_n_0
    );
vga_rgb_ball3_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[4]\,
      I1 => \u0_pel_y_reg_n_0_[5]\,
      I2 => ball_y_pos_reg(12),
      I3 => ball_y_pos_reg(11),
      I4 => ball_y_pos_reg(13),
      O => vga_rgb_ball3_carry_i_6_n_0
    );
vga_rgb_ball3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[2]\,
      I1 => ball_y_pos_reg(10),
      I2 => \u0_pel_y_reg_n_0_[3]\,
      I3 => ball_y_pos_reg(11),
      O => vga_rgb_ball3_carry_i_7_n_0
    );
vga_rgb_ball3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[0]\,
      I1 => ball_y_pos_reg(8),
      I2 => ball_y_pos_reg(9),
      I3 => \u0_pel_y_reg_n_0_[1]\,
      O => vga_rgb_ball3_carry_i_8_n_0
    );
vga_rgb_ball3_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[15]\,
      I1 => ball_y_pos_reg(23),
      I2 => vga_rgb_ball3_carry_i_17_n_0,
      I3 => ball_y_pos_reg(22),
      I4 => \u0_pel_y_reg_n_0_[14]\,
      O => vga_rgb_ball3_carry_i_9_n_0
    );
\vga_rgb_ball4_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => vga_rgb_ball40_in,
      CO(6) => \vga_rgb_ball4_inferred__0/i__carry_n_1\,
      CO(5) => \vga_rgb_ball4_inferred__0/i__carry_n_2\,
      CO(4) => \vga_rgb_ball4_inferred__0/i__carry_n_3\,
      CO(3) => \vga_rgb_ball4_inferred__0/i__carry_n_4\,
      CO(2) => \vga_rgb_ball4_inferred__0/i__carry_n_5\,
      CO(1) => \vga_rgb_ball4_inferred__0/i__carry_n_6\,
      CO(0) => \vga_rgb_ball4_inferred__0/i__carry_n_7\,
      DI(7) => \i__carry_i_1_n_0\,
      DI(6) => \i__carry_i_2_n_0\,
      DI(5) => \i__carry_i_3_n_0\,
      DI(4) => \i__carry_i_4_n_0\,
      DI(3) => \i__carry_i_5_n_0\,
      DI(2) => \i__carry_i_6_n_0\,
      DI(1) => \i__carry_i_7_n_0\,
      DI(0) => \i__carry_i_8_n_0\,
      O(7 downto 0) => \NLW_vga_rgb_ball4_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_9_n_0\,
      S(6) => \i__carry_i_10_n_0\,
      S(5) => \i__carry_i_11_n_0\,
      S(4) => \i__carry_i_12_n_0\,
      S(3) => \i__carry_i_13_n_0\,
      S(2) => \i__carry_i_14_n_0\,
      S(1) => \i__carry_i_15_n_0\,
      S(0) => \i__carry_i_16_n_0\
    );
\vga_rgb_ball[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => mode_bit,
      I1 => \p_1_out_inferred__0/i__carry__0_n_0\,
      I2 => \p_1_out_carry__0_n_0\,
      I3 => vga_rgb_ball40_in,
      I4 => vga_rgb_ball3,
      O => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => vga_rgb_ball3,
      I1 => vga_rgb_ball40_in,
      I2 => \p_1_out_carry__0_n_0\,
      I3 => \p_1_out_inferred__0/i__carry__0_n_0\,
      O => vga_rgb_ball1
    );
\vga_rgb_ball_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(0),
      Q => vga_rgb_ball(0),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(10),
      Q => vga_rgb_ball(10),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(11),
      Q => vga_rgb_ball(11),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(12),
      Q => vga_rgb_ball(12),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(13),
      Q => vga_rgb_ball(13),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(14),
      Q => vga_rgb_ball(14),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(15),
      Q => vga_rgb_ball(15),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(16),
      Q => vga_rgb_ball(16),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(17),
      Q => vga_rgb_ball(17),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(18),
      Q => vga_rgb_ball(18),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(19),
      Q => vga_rgb_ball(19),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(1),
      Q => vga_rgb_ball(1),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(20),
      Q => vga_rgb_ball(20),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(21),
      Q => vga_rgb_ball(21),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(22),
      Q => vga_rgb_ball(22),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => vga_rgb_ball1,
      Q => vga_rgb_ball(23),
      R => '0'
    );
\vga_rgb_ball_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(2),
      Q => vga_rgb_ball(2),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(3),
      Q => vga_rgb_ball(3),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(4),
      Q => vga_rgb_ball(4),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(5),
      Q => vga_rgb_ball(5),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(6),
      Q => vga_rgb_ball(6),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(7),
      Q => vga_rgb_ball(7),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(8),
      Q => vga_rgb_ball(8),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_ball_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \ball_rgb__0\(9),
      Q => vga_rgb_ball(9),
      R => \vga_rgb_ball[22]_i_1_n_0\
    );
\vga_rgb_line[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mode_bit,
      I1 => vga_rgb_line1,
      O => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_2_n_0\,
      I1 => \vga_rgb_line[23]_i_3_n_0\,
      I2 => \vga_rgb_line[23]_i_4_n_0\,
      I3 => \vga_rgb_line[23]_i_5_n_0\,
      I4 => \vga_rgb_line[23]_i_6_n_0\,
      I5 => \vga_rgb_line[23]_i_7_n_0\,
      O => vga_rgb_line1
    );
\vga_rgb_line[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6F9FFF6FFFFF6"
    )
        port map (
      I0 => line_y_pos_reg(9),
      I1 => \u0_pel_y_reg_n_0_[9]\,
      I2 => \vga_rgb_line[23]_i_37_n_0\,
      I3 => \u0_pel_y_reg_n_0_[8]\,
      I4 => \vga_rgb_line[23]_i_38_n_0\,
      I5 => line_y_pos_reg(8),
      O => \vga_rgb_line[23]_i_10_n_0\
    );
\vga_rgb_line[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFEF"
    )
        port map (
      I0 => line_y_pos_reg(14),
      I1 => line_y_pos_reg(12),
      I2 => \vga_rgb_line[23]_i_39_n_0\,
      I3 => line_y_pos_reg(11),
      I4 => line_y_pos_reg(13),
      I5 => line_y_pos_reg(15),
      O => \vga_rgb_line4__29\(15)
    );
\vga_rgb_line[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660060660096060"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[13]\,
      I1 => line_y_pos_reg(13),
      I2 => \u0_pel_y_reg_n_0_[12]\,
      I3 => line_y_pos_reg(11),
      I4 => \vga_rgb_line[23]_i_39_n_0\,
      I5 => line_y_pos_reg(12),
      O => \vga_rgb_line[23]_i_12_n_0\
    );
\vga_rgb_line[23]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => line_y_pos_reg(12),
      I1 => \vga_rgb_line[23]_i_39_n_0\,
      I2 => line_y_pos_reg(11),
      I3 => line_y_pos_reg(13),
      O => \vga_rgb_line[23]_i_13_n_0\
    );
\vga_rgb_line[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A95"
    )
        port map (
      I0 => line_x_pos_reg(15),
      I1 => line_x_pos_reg(14),
      I2 => \vga_rgb_line[23]_i_40_n_0\,
      I3 => \u0_pel_x_reg_n_0_[15]\,
      O => \vga_rgb_line[23]_i_14_n_0\
    );
\vga_rgb_line[23]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFFFF9FFF9F6FF"
    )
        port map (
      I0 => line_x_pos_reg(9),
      I1 => sel0(2),
      I2 => \vga_rgb_line[23]_i_41_n_0\,
      I3 => sel0(1),
      I4 => \vga_rgb_line[23]_i_42_n_0\,
      I5 => line_x_pos_reg(8),
      O => \vga_rgb_line[23]_i_15_n_0\
    );
\vga_rgb_line[23]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEDFDFEFEFFDFDFE"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => \vga_rgb_line[23]_i_43_n_0\,
      I2 => \u0_pel_x_reg_n_0_[11]\,
      I3 => \vga_rgb_line[23]_i_44_n_0\,
      I4 => line_x_pos_reg(10),
      I5 => line_x_pos_reg(11),
      O => \vga_rgb_line[23]_i_16_n_0\
    );
\vga_rgb_line[23]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBEBEFF"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_45_n_0\,
      I1 => data3(10),
      I2 => line_x_pos_reg(1),
      I3 => line_x_pos_reg(4),
      I4 => data3(13),
      I5 => \vga_rgb_line[23]_i_46_n_0\,
      O => \vga_rgb_line[23]_i_17_n_0\
    );
\vga_rgb_line[23]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0280802020080802"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_47_n_0\,
      I1 => \u0_pel_x_reg_n_0_[13]\,
      I2 => \u0_pel_x_reg_n_0_[14]\,
      I3 => \vga_rgb_line[23]_i_48_n_0\,
      I4 => line_x_pos_reg(13),
      I5 => line_x_pos_reg(14),
      O => \vga_rgb_line[23]_i_18_n_0\
    );
\vga_rgb_line[23]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF69"
    )
        port map (
      I0 => line_x_pos_reg(5),
      I1 => \vga_rgb_line[23]_i_49_n_0\,
      I2 => data3(14),
      I3 => \vga_rgb_line[23]_i_50_n_0\,
      I4 => \vga_rgb_line[23]_i_51_n_0\,
      I5 => \vga_rgb_line[23]_i_52_n_0\,
      O => \vga_rgb_line[23]_i_19_n_0\
    );
\vga_rgb_line[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000001"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_8_n_0\,
      I1 => \vga_rgb_line[23]_i_9_n_0\,
      I2 => \vga_rgb_line[23]_i_10_n_0\,
      I3 => \u0_pel_y_reg_n_0_[15]\,
      I4 => \vga_rgb_line4__29\(15),
      O => \vga_rgb_line[23]_i_2_n_0\
    );
\vga_rgb_line[23]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDEFFEFDDFFEEFDF"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[10]\,
      I1 => \vga_rgb_line[23]_i_53_n_0\,
      I2 => \u0_pel_x_reg_n_0_[11]\,
      I3 => line_x_pos_reg(10),
      I4 => \vga_rgb_line[23]_i_54_n_0\,
      I5 => line_x_pos_reg(11),
      O => \vga_rgb_line[23]_i_20_n_0\
    );
\vga_rgb_line[23]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6F9FFF6FFFFF6"
    )
        port map (
      I0 => line_x_pos_reg(9),
      I1 => sel0(2),
      I2 => \vga_rgb_line[23]_i_55_n_0\,
      I3 => sel0(1),
      I4 => \vga_rgb_line[23]_i_56_n_0\,
      I5 => line_x_pos_reg(8),
      O => \vga_rgb_line[23]_i_21_n_0\
    );
\vga_rgb_line[23]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFEF"
    )
        port map (
      I0 => line_x_pos_reg(14),
      I1 => line_x_pos_reg(12),
      I2 => \vga_rgb_line[23]_i_57_n_0\,
      I3 => line_x_pos_reg(11),
      I4 => line_x_pos_reg(13),
      I5 => line_x_pos_reg(15),
      O => vga_rgb_line52_in(15)
    );
\vga_rgb_line[23]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0660060660096060"
    )
        port map (
      I0 => \u0_pel_x_reg_n_0_[13]\,
      I1 => line_x_pos_reg(13),
      I2 => \u0_pel_x_reg_n_0_[12]\,
      I3 => line_x_pos_reg(11),
      I4 => \vga_rgb_line[23]_i_57_n_0\,
      I5 => line_x_pos_reg(12),
      O => \vga_rgb_line[23]_i_23_n_0\
    );
\vga_rgb_line[23]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => line_x_pos_reg(12),
      I1 => \vga_rgb_line[23]_i_57_n_0\,
      I2 => line_x_pos_reg(11),
      I3 => line_x_pos_reg(13),
      O => \vga_rgb_line[23]_i_24_n_0\
    );
\vga_rgb_line[23]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => line_y_pos_reg(15),
      I1 => line_y_pos_reg(14),
      I2 => \vga_rgb_line[23]_i_58_n_0\,
      I3 => line_y_pos_reg(13),
      I4 => \u0_pel_y_reg_n_0_[15]\,
      O => \vga_rgb_line[23]_i_25_n_0\
    );
\vga_rgb_line[23]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFFFF9FFF9F6FF"
    )
        port map (
      I0 => line_y_pos_reg(9),
      I1 => \u0_pel_y_reg_n_0_[9]\,
      I2 => \vga_rgb_line[23]_i_59_n_0\,
      I3 => \u0_pel_y_reg_n_0_[8]\,
      I4 => \vga_rgb_line[23]_i_60_n_0\,
      I5 => line_y_pos_reg(8),
      O => \vga_rgb_line[23]_i_26_n_0\
    );
\vga_rgb_line[23]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEDFDFEFEFFDFDFE"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => \vga_rgb_line[23]_i_61_n_0\,
      I2 => \u0_pel_y_reg_n_0_[11]\,
      I3 => \vga_rgb_line[23]_i_62_n_0\,
      I4 => line_y_pos_reg(10),
      I5 => line_y_pos_reg(11),
      O => \vga_rgb_line[23]_i_27_n_0\
    );
\vga_rgb_line[23]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFEFBBF"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_63_n_0\,
      I1 => \u0_pel_y_reg_n_0_[2]\,
      I2 => \u0_pel_y_reg_n_0_[3]\,
      I3 => line_y_pos_reg(3),
      I4 => line_y_pos_reg(2),
      I5 => \vga_rgb_line[23]_i_64_n_0\,
      O => \vga_rgb_line[23]_i_28_n_0\
    );
\vga_rgb_line[23]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A95"
    )
        port map (
      I0 => line_y_pos_reg(14),
      I1 => line_y_pos_reg(13),
      I2 => \vga_rgb_line[23]_i_58_n_0\,
      I3 => \u0_pel_y_reg_n_0_[14]\,
      O => \vga_rgb_line[23]_i_29_n_0\
    );
\vga_rgb_line[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_12_n_0\,
      I1 => \u0_pel_y_reg_n_0_[14]\,
      I2 => \vga_rgb_line[23]_i_13_n_0\,
      I3 => line_y_pos_reg(14),
      O => \vga_rgb_line[23]_i_3_n_0\
    );
\vga_rgb_line[23]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[13]\,
      I1 => line_y_pos_reg(13),
      I2 => \u0_pel_y_reg_n_0_[12]\,
      I3 => \vga_rgb_line[23]_i_65_n_0\,
      I4 => line_y_pos_reg(12),
      O => \vga_rgb_line[23]_i_30_n_0\
    );
\vga_rgb_line[23]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000057FF"
    )
        port map (
      I0 => line_y_pos_reg(3),
      I1 => line_y_pos_reg(0),
      I2 => line_y_pos_reg(1),
      I3 => line_y_pos_reg(2),
      I4 => line_y_pos_reg(4),
      O => \vga_rgb_line[23]_i_31_n_0\
    );
\vga_rgb_line[23]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EEDDBDBDBB7"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[2]\,
      I1 => \u0_pel_y_reg_n_0_[3]\,
      I2 => line_y_pos_reg(2),
      I3 => line_y_pos_reg(1),
      I4 => line_y_pos_reg(0),
      I5 => line_y_pos_reg(3),
      O => \vga_rgb_line[23]_i_32_n_0\
    );
\vga_rgb_line[23]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99955555666AAAAA"
    )
        port map (
      I0 => line_y_pos_reg(4),
      I1 => line_y_pos_reg(2),
      I2 => line_y_pos_reg(1),
      I3 => line_y_pos_reg(0),
      I4 => line_y_pos_reg(3),
      I5 => \u0_pel_y_reg_n_0_[4]\,
      O => \vga_rgb_line[23]_i_33_n_0\
    );
\vga_rgb_line[23]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FF6"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[1]\,
      I1 => line_y_pos_reg(1),
      I2 => \u0_pel_y_reg_n_0_[0]\,
      I3 => line_y_pos_reg(0),
      O => \vga_rgb_line[23]_i_34_n_0\
    );
\vga_rgb_line[23]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => line_y_pos_reg(7),
      I1 => \vga_rgb_line[23]_i_66_n_0\,
      I2 => line_y_pos_reg(6),
      I3 => \u0_pel_y_reg_n_0_[7]\,
      O => \vga_rgb_line[23]_i_35_n_0\
    );
\vga_rgb_line[23]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => line_y_pos_reg(8),
      I1 => line_y_pos_reg(6),
      I2 => \vga_rgb_line[23]_i_66_n_0\,
      I3 => line_y_pos_reg(7),
      I4 => line_y_pos_reg(9),
      O => \vga_rgb_line[23]_i_36_n_0\
    );
\vga_rgb_line[23]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => line_y_pos_reg(6),
      I1 => \vga_rgb_line[23]_i_66_n_0\,
      I2 => \u0_pel_y_reg_n_0_[6]\,
      O => \vga_rgb_line[23]_i_37_n_0\
    );
\vga_rgb_line[23]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => line_y_pos_reg(6),
      I1 => \vga_rgb_line[23]_i_66_n_0\,
      I2 => line_y_pos_reg(7),
      O => \vga_rgb_line[23]_i_38_n_0\
    );
\vga_rgb_line[23]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000105555"
    )
        port map (
      I0 => line_y_pos_reg(9),
      I1 => line_y_pos_reg(7),
      I2 => \vga_rgb_line[23]_i_66_n_0\,
      I3 => line_y_pos_reg(6),
      I4 => line_y_pos_reg(8),
      I5 => line_y_pos_reg(10),
      O => \vga_rgb_line[23]_i_39_n_0\
    );
\vga_rgb_line[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_14_n_0\,
      I1 => \vga_rgb_line[23]_i_15_n_0\,
      I2 => \vga_rgb_line[23]_i_16_n_0\,
      I3 => \vga_rgb_line[23]_i_17_n_0\,
      I4 => \vga_rgb_line[23]_i_18_n_0\,
      O => \vga_rgb_line[23]_i_4_n_0\
    );
\vga_rgb_line[23]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => line_x_pos_reg(13),
      I1 => line_x_pos_reg(11),
      I2 => \vga_rgb_line[23]_i_44_n_0\,
      I3 => line_x_pos_reg(10),
      I4 => line_x_pos_reg(12),
      O => \vga_rgb_line[23]_i_40_n_0\
    );
\vga_rgb_line[23]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"956A"
    )
        port map (
      I0 => line_x_pos_reg(6),
      I1 => line_x_pos_reg(5),
      I2 => line_x_pos_reg(4),
      I3 => data3(15),
      O => \vga_rgb_line[23]_i_41_n_0\
    );
\vga_rgb_line[23]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => line_x_pos_reg(5),
      I1 => line_x_pos_reg(4),
      I2 => line_x_pos_reg(6),
      I3 => line_x_pos_reg(7),
      O => \vga_rgb_line[23]_i_42_n_0\
    );
\vga_rgb_line[23]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => line_x_pos_reg(7),
      I1 => line_x_pos_reg(6),
      I2 => line_x_pos_reg(4),
      I3 => line_x_pos_reg(5),
      I4 => sel0(0),
      O => \vga_rgb_line[23]_i_43_n_0\
    );
\vga_rgb_line[23]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => line_x_pos_reg(9),
      I1 => line_x_pos_reg(8),
      I2 => line_x_pos_reg(5),
      I3 => line_x_pos_reg(4),
      I4 => line_x_pos_reg(6),
      I5 => line_x_pos_reg(7),
      O => \vga_rgb_line[23]_i_44_n_0\
    );
\vga_rgb_line[23]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => data3(12),
      I1 => line_x_pos_reg(3),
      I2 => data3(9),
      I3 => line_x_pos_reg(0),
      O => \vga_rgb_line[23]_i_45_n_0\
    );
\vga_rgb_line[23]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FFFF96"
    )
        port map (
      I0 => data3(14),
      I1 => line_x_pos_reg(4),
      I2 => line_x_pos_reg(5),
      I3 => data3(11),
      I4 => line_x_pos_reg(2),
      O => \vga_rgb_line[23]_i_46_n_0\
    );
\vga_rgb_line[23]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA9555"
    )
        port map (
      I0 => line_x_pos_reg(12),
      I1 => line_x_pos_reg(11),
      I2 => \vga_rgb_line[23]_i_44_n_0\,
      I3 => line_x_pos_reg(10),
      I4 => \u0_pel_x_reg_n_0_[12]\,
      O => \vga_rgb_line[23]_i_47_n_0\
    );
\vga_rgb_line[23]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => line_x_pos_reg(12),
      I1 => line_x_pos_reg(10),
      I2 => \vga_rgb_line[23]_i_44_n_0\,
      I3 => line_x_pos_reg(11),
      O => \vga_rgb_line[23]_i_48_n_0\
    );
\vga_rgb_line[23]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => line_x_pos_reg(3),
      I1 => line_x_pos_reg(0),
      I2 => line_x_pos_reg(1),
      I3 => line_x_pos_reg(2),
      I4 => line_x_pos_reg(4),
      O => \vga_rgb_line[23]_i_49_n_0\
    );
\vga_rgb_line[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000001"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_19_n_0\,
      I1 => \vga_rgb_line[23]_i_20_n_0\,
      I2 => \vga_rgb_line[23]_i_21_n_0\,
      I3 => \u0_pel_x_reg_n_0_[15]\,
      I4 => vga_rgb_line52_in(15),
      O => \vga_rgb_line[23]_i_5_n_0\
    );
\vga_rgb_line[23]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDEDEDDBB7B7B77E"
    )
        port map (
      I0 => data3(11),
      I1 => data3(12),
      I2 => line_x_pos_reg(2),
      I3 => line_x_pos_reg(1),
      I4 => line_x_pos_reg(0),
      I5 => line_x_pos_reg(3),
      O => \vga_rgb_line[23]_i_50_n_0\
    );
\vga_rgb_line[23]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556AAAAAAA9"
    )
        port map (
      I0 => line_x_pos_reg(4),
      I1 => line_x_pos_reg(2),
      I2 => line_x_pos_reg(1),
      I3 => line_x_pos_reg(0),
      I4 => line_x_pos_reg(3),
      I5 => data3(13),
      O => \vga_rgb_line[23]_i_51_n_0\
    );
\vga_rgb_line[23]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FF6"
    )
        port map (
      I0 => data3(10),
      I1 => line_x_pos_reg(1),
      I2 => data3(9),
      I3 => line_x_pos_reg(0),
      O => \vga_rgb_line[23]_i_52_n_0\
    );
\vga_rgb_line[23]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => line_x_pos_reg(7),
      I1 => \vga_rgb_line[23]_i_67_n_0\,
      I2 => line_x_pos_reg(6),
      I3 => sel0(0),
      O => \vga_rgb_line[23]_i_53_n_0\
    );
\vga_rgb_line[23]_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000075FF"
    )
        port map (
      I0 => line_x_pos_reg(8),
      I1 => line_x_pos_reg(6),
      I2 => \vga_rgb_line[23]_i_67_n_0\,
      I3 => line_x_pos_reg(7),
      I4 => line_x_pos_reg(9),
      O => \vga_rgb_line[23]_i_54_n_0\
    );
\vga_rgb_line[23]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => line_x_pos_reg(6),
      I1 => \vga_rgb_line[23]_i_67_n_0\,
      I2 => data3(15),
      O => \vga_rgb_line[23]_i_55_n_0\
    );
\vga_rgb_line[23]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => line_x_pos_reg(6),
      I1 => \vga_rgb_line[23]_i_67_n_0\,
      I2 => line_x_pos_reg(7),
      O => \vga_rgb_line[23]_i_56_n_0\
    );
\vga_rgb_line[23]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011515555"
    )
        port map (
      I0 => line_x_pos_reg(9),
      I1 => line_x_pos_reg(7),
      I2 => \vga_rgb_line[23]_i_67_n_0\,
      I3 => line_x_pos_reg(6),
      I4 => line_x_pos_reg(8),
      I5 => line_x_pos_reg(10),
      O => \vga_rgb_line[23]_i_57_n_0\
    );
\vga_rgb_line[23]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000000000000"
    )
        port map (
      I0 => line_y_pos_reg(12),
      I1 => line_y_pos_reg(10),
      I2 => \vga_rgb_line[23]_i_60_n_0\,
      I3 => line_y_pos_reg(8),
      I4 => line_y_pos_reg(9),
      I5 => line_y_pos_reg(11),
      O => \vga_rgb_line[23]_i_58_n_0\
    );
\vga_rgb_line[23]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA955555556AA"
    )
        port map (
      I0 => line_y_pos_reg(6),
      I1 => line_y_pos_reg(2),
      I2 => line_y_pos_reg(3),
      I3 => line_y_pos_reg(4),
      I4 => line_y_pos_reg(5),
      I5 => \u0_pel_y_reg_n_0_[6]\,
      O => \vga_rgb_line[23]_i_59_n_0\
    );
\vga_rgb_line[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_23_n_0\,
      I1 => \u0_pel_x_reg_n_0_[14]\,
      I2 => \vga_rgb_line[23]_i_24_n_0\,
      I3 => line_x_pos_reg(14),
      O => \vga_rgb_line[23]_i_6_n_0\
    );
\vga_rgb_line[23]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA80000000000"
    )
        port map (
      I0 => line_y_pos_reg(7),
      I1 => line_y_pos_reg(2),
      I2 => line_y_pos_reg(3),
      I3 => line_y_pos_reg(4),
      I4 => line_y_pos_reg(5),
      I5 => line_y_pos_reg(6),
      O => \vga_rgb_line[23]_i_60_n_0\
    );
\vga_rgb_line[23]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99959595666A6A6A"
    )
        port map (
      I0 => line_y_pos_reg(7),
      I1 => line_y_pos_reg(6),
      I2 => line_y_pos_reg(5),
      I3 => line_y_pos_reg(4),
      I4 => \vga_rgb_line[23]_i_68_n_0\,
      I5 => \u0_pel_y_reg_n_0_[7]\,
      O => \vga_rgb_line[23]_i_61_n_0\
    );
\vga_rgb_line[23]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => line_y_pos_reg(9),
      I1 => line_y_pos_reg(8),
      I2 => \vga_rgb_line[23]_i_60_n_0\,
      O => \vga_rgb_line[23]_i_62_n_0\
    );
\vga_rgb_line[23]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666A9995"
    )
        port map (
      I0 => line_y_pos_reg(5),
      I1 => line_y_pos_reg(4),
      I2 => line_y_pos_reg(3),
      I3 => line_y_pos_reg(2),
      I4 => \u0_pel_y_reg_n_0_[5]\,
      O => \vga_rgb_line[23]_i_63_n_0\
    );
\vga_rgb_line[23]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7D7DFF7DFFFF7D"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_69_n_0\,
      I1 => line_y_pos_reg(1),
      I2 => \u0_pel_y_reg_n_0_[1]\,
      I3 => \u0_pel_y_reg_n_0_[4]\,
      I4 => \vga_rgb_line[23]_i_68_n_0\,
      I5 => line_y_pos_reg(4),
      O => \vga_rgb_line[23]_i_64_n_0\
    );
\vga_rgb_line[23]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => line_y_pos_reg(11),
      I1 => line_y_pos_reg(9),
      I2 => line_y_pos_reg(8),
      I3 => \vga_rgb_line[23]_i_60_n_0\,
      I4 => line_y_pos_reg(10),
      O => \vga_rgb_line[23]_i_65_n_0\
    );
\vga_rgb_line[23]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11155555FFFFFFFF"
    )
        port map (
      I0 => line_y_pos_reg(4),
      I1 => line_y_pos_reg(2),
      I2 => line_y_pos_reg(1),
      I3 => line_y_pos_reg(0),
      I4 => line_y_pos_reg(3),
      I5 => line_y_pos_reg(5),
      O => \vga_rgb_line[23]_i_66_n_0\
    );
\vga_rgb_line[23]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555557"
    )
        port map (
      I0 => line_x_pos_reg(4),
      I1 => line_x_pos_reg(2),
      I2 => line_x_pos_reg(1),
      I3 => line_x_pos_reg(0),
      I4 => line_x_pos_reg(3),
      I5 => line_x_pos_reg(5),
      O => \vga_rgb_line[23]_i_67_n_0\
    );
\vga_rgb_line[23]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => line_y_pos_reg(2),
      I1 => line_y_pos_reg(3),
      O => \vga_rgb_line[23]_i_68_n_0\
    );
\vga_rgb_line[23]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => line_y_pos_reg(0),
      I1 => \u0_pel_y_reg_n_0_[0]\,
      O => \vga_rgb_line[23]_i_69_n_0\
    );
\vga_rgb_line[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \vga_rgb_line[23]_i_25_n_0\,
      I1 => \vga_rgb_line[23]_i_26_n_0\,
      I2 => \vga_rgb_line[23]_i_27_n_0\,
      I3 => \vga_rgb_line[23]_i_28_n_0\,
      I4 => \vga_rgb_line[23]_i_29_n_0\,
      I5 => \vga_rgb_line[23]_i_30_n_0\,
      O => \vga_rgb_line[23]_i_7_n_0\
    );
\vga_rgb_line[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF96"
    )
        port map (
      I0 => line_y_pos_reg(5),
      I1 => \vga_rgb_line[23]_i_31_n_0\,
      I2 => \u0_pel_y_reg_n_0_[5]\,
      I3 => \vga_rgb_line[23]_i_32_n_0\,
      I4 => \vga_rgb_line[23]_i_33_n_0\,
      I5 => \vga_rgb_line[23]_i_34_n_0\,
      O => \vga_rgb_line[23]_i_8_n_0\
    );
\vga_rgb_line[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDEFFEFDDFFEEFDF"
    )
        port map (
      I0 => \u0_pel_y_reg_n_0_[10]\,
      I1 => \vga_rgb_line[23]_i_35_n_0\,
      I2 => \u0_pel_y_reg_n_0_[11]\,
      I3 => line_y_pos_reg(10),
      I4 => \vga_rgb_line[23]_i_36_n_0\,
      I5 => line_y_pos_reg(11),
      O => \vga_rgb_line[23]_i_9_n_0\
    );
\vga_rgb_line_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[0]\,
      Q => \vga_rgb_line_reg_n_0_[0]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[10]\,
      Q => \vga_rgb_line_reg_n_0_[10]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[11]\,
      Q => \vga_rgb_line_reg_n_0_[11]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[12]\,
      Q => \vga_rgb_line_reg_n_0_[12]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[13]\,
      Q => \vga_rgb_line_reg_n_0_[13]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[14]\,
      Q => \vga_rgb_line_reg_n_0_[14]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[15]\,
      Q => vga_rgb1,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[16]\,
      Q => \vga_rgb_line_reg_n_0_[16]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[17]\,
      Q => \vga_rgb_line_reg_n_0_[17]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[18]\,
      Q => \vga_rgb_line_reg_n_0_[18]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[19]\,
      Q => \vga_rgb_line_reg_n_0_[19]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[1]\,
      Q => \vga_rgb_line_reg_n_0_[1]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[20]\,
      Q => \vga_rgb_line_reg_n_0_[20]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[21]\,
      Q => \vga_rgb_line_reg_n_0_[21]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[22]\,
      Q => \vga_rgb_line_reg_n_0_[22]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => vga_rgb_line1,
      Q => \vga_rgb_line_reg_n_0_[23]\,
      R => '0'
    );
\vga_rgb_line_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[2]\,
      Q => \vga_rgb_line_reg_n_0_[2]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[3]\,
      Q => \vga_rgb_line_reg_n_0_[3]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[4]\,
      Q => \vga_rgb_line_reg_n_0_[4]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[5]\,
      Q => \vga_rgb_line_reg_n_0_[5]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[6]\,
      Q => \vga_rgb_line_reg_n_0_[6]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[7]\,
      Q => \vga_rgb_line_reg_n_0_[7]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[8]\,
      Q => \vga_rgb_line_reg_n_0_[8]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_line_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => mode_bit,
      D => \line_rgb_reg_n_0_[9]\,
      Q => \vga_rgb_line_reg_n_0_[9]\,
      R => \vga_rgb_line[22]_i_1_n_0\
    );
\vga_rgb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[0]_i_1_n_0\,
      Q => vga_pixel_rgb(0),
      R => '0'
    );
\vga_rgb_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[10]_i_1_n_0\,
      Q => vga_pixel_rgb(10),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[11]_i_1_n_0\,
      Q => vga_pixel_rgb(11),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[12]_i_1_n_0\,
      Q => vga_pixel_rgb(12),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[13]_i_1_n_0\,
      Q => vga_pixel_rgb(13),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[14]_i_2_n_0\,
      Q => vga_pixel_rgb(14),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[15]_i_1_n_0\,
      Q => vga_pixel_rgb(15),
      R => '0'
    );
\vga_rgb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[16]_i_1_n_0\,
      Q => vga_pixel_rgb(16),
      R => '0'
    );
\vga_rgb_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[17]_i_1_n_0\,
      Q => vga_pixel_rgb(17),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[18]_i_1_n_0\,
      Q => vga_pixel_rgb(18),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[19]_i_1_n_0\,
      Q => vga_pixel_rgb(19),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[1]_i_1_n_0\,
      Q => vga_pixel_rgb(1),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[20]_i_1_n_0\,
      Q => vga_pixel_rgb(20),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[21]_i_1_n_0\,
      Q => vga_pixel_rgb(21),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[22]_i_2_n_0\,
      Q => vga_pixel_rgb(22),
      S => \vga_rgb[22]_i_1_n_0\
    );
\vga_rgb_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[23]_i_1_n_0\,
      Q => vga_pixel_rgb(23),
      R => '0'
    );
\vga_rgb_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[2]_i_1_n_0\,
      Q => vga_pixel_rgb(2),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[3]_i_1_n_0\,
      Q => vga_pixel_rgb(3),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[4]_i_1_n_0\,
      Q => vga_pixel_rgb(4),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[5]_i_1_n_0\,
      Q => vga_pixel_rgb(5),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[6]_i_2_n_0\,
      Q => vga_pixel_rgb(6),
      S => \vga_rgb[6]_i_1_n_0\
    );
\vga_rgb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[7]_i_1_n_0\,
      Q => vga_pixel_rgb(7),
      R => '0'
    );
\vga_rgb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[8]_i_1_n_0\,
      Q => vga_pixel_rgb(8),
      R => '0'
    );
\vga_rgb_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk_dot,
      CE => '1',
      D => \vga_rgb[9]_i_1_n_0\,
      Q => vga_pixel_rgb(9),
      S => \vga_rgb[14]_i_1_n_0\
    );
\vga_rgb_tp[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(10),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(10)
    );
\vga_rgb_tp[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(11),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(11)
    );
\vga_rgb_tp[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(12),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(12)
    );
\vga_rgb_tp[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(13),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(13)
    );
\vga_rgb_tp[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(14),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(14)
    );
\vga_rgb_tp[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"60C0"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => data3(15),
      I3 => sel0(0),
      O => p_0_out(15)
    );
\vga_rgb_tp[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(9),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(17)
    );
\vga_rgb_tp[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(10),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(18)
    );
\vga_rgb_tp[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(11),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(19)
    );
\vga_rgb_tp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(9),
      O => p_0_out(1)
    );
\vga_rgb_tp[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(12),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(20)
    );
\vga_rgb_tp[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(13),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(21)
    );
\vga_rgb_tp[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => data3(14),
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_out(22)
    );
\vga_rgb_tp[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      O => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => p_1_in
    );
\vga_rgb_tp[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => data3(15),
      O => p_0_out(23)
    );
\vga_rgb_tp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(10),
      O => p_0_out(2)
    );
\vga_rgb_tp[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(11),
      O => p_0_out(3)
    );
\vga_rgb_tp[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(12),
      O => p_0_out(4)
    );
\vga_rgb_tp[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(13),
      O => p_0_out(5)
    );
\vga_rgb_tp[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(14),
      O => p_0_out(6)
    );
\vga_rgb_tp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      O => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => data3(15),
      O => p_0_out(7)
    );
\vga_rgb_tp[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => data3(9),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => p_0_out(9)
    );
\vga_rgb_tp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(10),
      Q => vga_rgb_tp(10),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(11),
      Q => vga_rgb_tp(11),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(12),
      Q => vga_rgb_tp(12),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(13),
      Q => vga_rgb_tp(13),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(14),
      Q => vga_rgb_tp(14),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(15),
      Q => vga_rgb_tp(15),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
\vga_rgb_tp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(17),
      Q => vga_rgb_tp(17),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(18),
      Q => vga_rgb_tp(18),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(19),
      Q => vga_rgb_tp(19),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(1),
      Q => vga_rgb_tp(1),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(20),
      Q => vga_rgb_tp(20),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(21),
      Q => vga_rgb_tp(21),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(22),
      Q => vga_rgb_tp(22),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(23),
      Q => vga_rgb_tp(23),
      R => \vga_rgb_tp[23]_i_1_n_0\
    );
\vga_rgb_tp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(2),
      Q => vga_rgb_tp(2),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(3),
      Q => vga_rgb_tp(3),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(4),
      Q => vga_rgb_tp(4),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(5),
      Q => vga_rgb_tp(5),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(6),
      Q => vga_rgb_tp(6),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(7),
      Q => vga_rgb_tp(7),
      R => \vga_rgb_tp[7]_i_1_n_0\
    );
\vga_rgb_tp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_dot,
      CE => p_1_in,
      D => p_0_out(9),
      Q => vga_rgb_tp(9),
      R => \vga_rgb_tp[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcu_DT_blk_design_vga_core_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vcu_DT_blk_design_vga_core_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vcu_DT_blk_design_vga_core_0_0 : entity is "vcu_DT_blk_design_vga_core_0_0,vga_core,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of vcu_DT_blk_design_vga_core_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of vcu_DT_blk_design_vga_core_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of vcu_DT_blk_design_vga_core_0_0 : entity is "vga_core,Vivado 2019.1";
end vcu_DT_blk_design_vga_core_0_0;

architecture STRUCTURE of vcu_DT_blk_design_vga_core_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.vcu_DT_blk_design_vga_core_0_0_vga_core
     port map (
      clk_dot => clk_dot,
      color_3b => color_3b,
      mode_bit => mode_bit,
      random_num(23 downto 0) => random_num(23 downto 0),
      reset => reset,
      vga_active => vga_active,
      vga_hsync => vga_hsync,
      vga_pixel_rgb(23 downto 0) => vga_pixel_rgb(23 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
