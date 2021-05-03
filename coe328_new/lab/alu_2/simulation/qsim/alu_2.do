onerror {quit -f}
vlib work
vlog -work work alu_2.vo
vlog -work work alu_2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.alu_2_vlg_vec_tst
vcd file -direction alu_2.msim.vcd
vcd add -internal alu_2_vlg_vec_tst/*
vcd add -internal alu_2_vlg_vec_tst/i1/*
add wave /*
run -all
