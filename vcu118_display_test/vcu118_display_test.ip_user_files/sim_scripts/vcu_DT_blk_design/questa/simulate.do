onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vcu_DT_blk_design_opt

do {wave.do}

view wave
view structure
view signals

do {vcu_DT_blk_design.udo}

run -all

quit -force
