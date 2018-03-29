transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/selectAndEncodeLogic.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/decoder16bits.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/selectAndEncodeSubComponent1.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/selectAndEncodeSubComponent2.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/selectAndEncodeSubComponent3.vhd}

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/../CPU_Design_Main/datapath_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  datapath_tb

add wave *
view structure
view signals
run 500 ns
