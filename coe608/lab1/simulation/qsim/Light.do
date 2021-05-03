onerror {quit -f}
vlib work
vlog -work work Light.vo
vlog -work work Light.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.light_vlg_vec_tst
vcd file -direction Light.msim.vcd
vcd add -internal light_vlg_vec_tst/*
vcd add -internal light_vlg_vec_tst/i1/*
add wave /*
run -all
