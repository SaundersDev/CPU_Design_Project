transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Master/Desktop/ECEI Year 3/ELEC 374/Phase_1/adderSubtractor.vhd}
vcom -93 -work work {C:/Users/Master/Desktop/ECEI Year 3/ELEC 374/Phase_1/fullAdder.vhd}

vcom -93 -work work {C:/Users/Master/Desktop/ECEI Year 3/ELEC 374/Phase_1/adderSubtractor_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  testFullAdder

add wave *
view structure
view signals
run 200 ns
