transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/verilog {C:/altera/13.0sp1/verilog/projetoPessoal.v}

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/verilog {C:/altera/13.0sp1/verilog/projetoPessoal_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  projetoPessoal_TB

add wave *
view structure
view signals
run -all
