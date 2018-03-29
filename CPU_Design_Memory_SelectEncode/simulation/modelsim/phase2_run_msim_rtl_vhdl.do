transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Memory_SelectEncode/reg_32.vhd}
vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Memory_SelectEncode/multiplexerMDR.vhd}
vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Memory_SelectEncode/ram.vhd}
vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Main/memorySubsystem.vhd}
vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Main/regMAR.vhd}

vcom -93 -work work {C:/Users/14dph3/Desktop/CPU_Design_Project-Phase2/CPU_Design_Project-Phase2/CPU_Design_Memory_SelectEncode/../CPU_Design_Main/memorySubsystem_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  memorySubsystem_tb

add wave *
view structure
view signals
run 500 ns
