connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty 210319A4333BA" && level==0} -index 0
fpga -file /home/rwegter/ECE-Capstone-proj-7/vivado_projects/frbuf_rd_test/frbuf_rd_test.sdk/ex_synth_wrapper_hw_platform_0/ex_synth_wrapper.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319A4333BA"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319A4333BA"} -index 0
dow /home/rwegter/ECE-Capstone-proj-7/vivado_projects/frbuf_rd_test/frbuf_rd_test.sdk/test_bsp_xv_frmbufrd_example_1/Debug/test_bsp_xv_frmbufrd_example_1.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319A4333BA"} -index 0
con
