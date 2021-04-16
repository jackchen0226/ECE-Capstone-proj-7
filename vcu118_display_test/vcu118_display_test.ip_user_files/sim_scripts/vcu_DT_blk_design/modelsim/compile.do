vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_13
vlib modelsim_lib/msim/c_gate_bit_v12_0_6
vlib modelsim_lib/msim/xbip_counter_v3_0_6
vlib modelsim_lib/msim/c_counter_binary_v12_0_13
vlib modelsim_lib/msim/xlslice_v1_0_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_13 modelsim_lib/msim/c_addsub_v12_0_13
vmap c_gate_bit_v12_0_6 modelsim_lib/msim/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 modelsim_lib/msim/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_13 modelsim_lib/msim/c_counter_binary_v12_0_13
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_vga_core_0_0/sim/vcu_DT_blk_design_vga_core_0_0.v" \

vlog -work xlconstant_v1_1_6 -64 -incr "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_xlconstant_0_0/sim/vcu_DT_blk_design_xlconstant_0_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_13 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/cbe4/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_13 -64 -93 \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/23f1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_c_counter_binary_0_0/sim/vcu_DT_blk_design_c_counter_binary_0_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../vcu118_display_test.srcs/sources_1/bd/vcu_DT_blk_design/ipshared/c923" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_xlslice_0_0/sim/vcu_DT_blk_design_xlslice_0_0.v" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_xlslice_0_1/sim/vcu_DT_blk_design_xlslice_0_1.v" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_xlslice_1_0/sim/vcu_DT_blk_design_xlslice_1_0.v" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_xlslice_2_0/sim/vcu_DT_blk_design_xlslice_2_0.v" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_clk_wiz_0/vcu_DT_blk_design_clk_wiz_0_clk_wiz.v" \
"../../../bd/vcu_DT_blk_design/ip/vcu_DT_blk_design_clk_wiz_0/vcu_DT_blk_design_clk_wiz_0.v" \
"../../../bd/vcu_DT_blk_design/sim/vcu_DT_blk_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

