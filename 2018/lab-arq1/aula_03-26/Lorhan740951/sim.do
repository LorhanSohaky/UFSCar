vlib work
vmap work work
vlog *.v
vsim tcounter
add wave -radix decimal sim:/tcounter/*
run 500 ns
wave zoom full
