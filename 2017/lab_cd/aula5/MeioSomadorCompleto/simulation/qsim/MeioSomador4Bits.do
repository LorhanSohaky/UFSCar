onerror {quit -f}
vlib work
vlog -work work MeioSomador4Bits.vo
vlog -work work MeioSomador4Bits.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MeioSomador4Bits_vlg_vec_tst
vcd file -direction MeioSomador4Bits.msim.vcd
vcd add -internal MeioSomador4Bits_vlg_vec_tst/*
vcd add -internal MeioSomador4Bits_vlg_vec_tst/i1/*
add wave /*
run -all
