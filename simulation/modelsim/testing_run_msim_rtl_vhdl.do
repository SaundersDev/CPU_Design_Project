transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/ELEC374/CPU_Design_Project_Testing/thirtyTwoBitRippleCarryAdder.vhd}
vcom -93 -work work {Z:/ELEC374/CPU_Design_Project_Testing/addersubtractor.vhd}
vcom -93 -work work {Z:/ELEC374/CPU_Design_Project_Testing/fulladder.vhd}

vcom -93 -work work {Z:/ELEC374/CPU_Design_Project_Testing/thirtyTwoBitRippleCarryAdder_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  thirtyTwoBitRippleCarryAdderTest

add wave *
view structure
view signals
run 200 ns
