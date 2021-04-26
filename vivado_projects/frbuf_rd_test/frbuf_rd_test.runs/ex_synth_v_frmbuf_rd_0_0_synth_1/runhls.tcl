open_project ex_synth_v_frmbuf_rd_0_0
set_top v_frmbuf_rd
add_files -cflags " -I /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src " /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src/v_frmbuf_rd_config.h
add_files -cflags " -I /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src " /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src/v_frmbuf_rd.cpp
add_files -cflags " -I /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src " /home/rwegter/vivado_projects/v_frmbuf_rd_2_ex/v_frmbuf_rd_2_ex.srcs/sources_1/bd/ex_synth/ip/ex_synth_v_frmbuf_rd_0_0/src/v_frmbuf_rd.h

open_solution "prj"
set_part {xc7a35ticsg324-1l}
create_clock -period 12 -name ap_clk

                 
config_rtl -enable_axiFlushable

config_interface -input_reg_mode both -output_reg_mode both



config_rtl -prefix ex_synth_v_frmbuf_rd_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 2.1
exit
