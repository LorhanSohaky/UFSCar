vlib work
vmap work
vlog *.sv
vsim work.testbench

add wave -radix hexadecimal sim:/testbench/dut/clk
add wave -radix hexadecimal sim:/testbench/dut/reset

add wave -radix hexadecimal sim:/testbench/dut/pc
add wave -radix hexadecimal sim:/testbench/dut/mips/pcsrc
add wave -radix hexadecimal sim:/testbench/dut/instr
add wave -radix hexadecimal sim:/testbench/dut/mips/c/op
add wave -radix hexadecimal sim:/testbench/dut/mips/c/funct

add wave -radix hexadecimal sim:/testbench/dut/writedata
add wave -radix hexadecimal sim:/testbench/dut/dataadr
add wave -radix hexadecimal sim:/testbench/dut/memwrite
add wave -radix hexadecimal sim:/testbench/dut/readdata

add wave -radix hexadecimal sim:/testbench/dut/mips/regdst
add wave -radix hexadecimal sim:/testbench/dut/mips/regwrite

add wave -radix hexadecimal sim:/testbench/dut/mips/aluout
add wave -radix hexadecimal sim:/testbench/dut/mips/memtoreg
add wave -radix hexadecimal sim:/testbench/dut/mips/branch
add wave -radix hexadecimal sim:/testbench/dut/mips/zero
add wave -radix hexadecimal sim:/testbench/dut/mips/alusrc

add wave -radix hexadecimal sim:/testbench/dut/mips/jump
add wave -radix hexadecimal sim:/testbench/dut/mips/alucontrol
add wave -radix hexadecimal sim:/testbench/dut/mips/c/aluop
add wave -radix hexadecimal sim:/testbench/dut/mips/c/branch
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/writereg
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/pcnext
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/pcnextbr
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/pcplus4
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/pcbranch
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/signimm
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/signimmsh
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/srca
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/srcb
add wave -radix hexadecimal sim:/testbench/dut/mips/dp/result

run -a
