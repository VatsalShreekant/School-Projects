onerror {exit -code 1}
vlib work
vlog -work work CPU_TEST_Sim.vo
vlog -work work CPU_TEST_Sim.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.CPU_TEST_Sim_vlg_vec_tst -voptargs="+acc"
vcd file -direction CPU_TEST_Sim.msim.vcd
vcd add -internal CPU_TEST_Sim_vlg_vec_tst/*
vcd add -internal CPU_TEST_Sim_vlg_vec_tst/i1/*
run -all
quit -f
