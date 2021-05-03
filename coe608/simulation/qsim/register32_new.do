onerror {quit -f}
vlib work
vlog -work work register32_new.vo
vlog -work work register32_new.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.register32_vlg_vec_tst
vcd file -direction register32_new.msim.vcd
vcd add -internal register32_vlg_vec_tst/*
vcd add -internal register32_vlg_vec_tst/i1/*
add wave /*
run -all
