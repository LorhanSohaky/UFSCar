transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {counter.vo}

vlog -vlog01compat -work work +incdir+C:/Users/740951/Downloads/RenomeiMe/Lorhan740951 {C:/Users/740951/Downloads/RenomeiMe/Lorhan740951/tcounter.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  tcounter

add wave *
view structure
view signals
run 500 ns
