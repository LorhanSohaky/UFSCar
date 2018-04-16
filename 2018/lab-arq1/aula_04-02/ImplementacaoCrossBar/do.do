vlib work
vmap work
vlog *.v
vsim work.TCrossBar
add wave sim:/TCrossBar/dut/w
add wave sim:/TCrossBar/dut/Resetn
add wave sim:/TCrossBar/dut/Clock
add wave sim:/TCrossBar/dut/RinExt
add wave sim:/TCrossBar/dut/Extern
add wave -radix hexadecimal sim:/TCrossBar/dut/Data
add wave -radix hexadecimal sim:/TCrossBar/dut/R1
add wave -radix hexadecimal sim:/TCrossBar/dut/R2
add wave -radix hexadecimal sim:/TCrossBar/dut/R3
add wave -radix hexadecimal sim:/TCrossBar/dut/R4
add wave sim:/TCrossBar/dut/S

run 450 ns
wave zoom full
