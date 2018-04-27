vlib work
vmap work
vlog *.sv
vsim work.testbench

add wave -radix hexadecimal sim:/testbench/dut/*
add wave -radix hexadecimal sim:/testbench/dut/mips/*
add wave -radix hexadecimal sim:/testbench/dut/mips/c/*
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/*

run 180ps
wave zoom full