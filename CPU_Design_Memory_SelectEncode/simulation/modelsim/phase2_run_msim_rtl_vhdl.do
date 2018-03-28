transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/conFFSubComponent1.vhd}

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/conFFSubComponent1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  conFFSubComponent1_tb

add wave *
view structure
view signals
run 100 ns
