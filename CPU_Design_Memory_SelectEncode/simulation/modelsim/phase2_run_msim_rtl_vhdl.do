transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/thirtyTwoBitRippleCarrySubtractor.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/thirtyTwoBitRippleCarryAdder.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/shiftRightArithmetic.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/shiftRight.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/shiftLeft.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/rotateRight.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/rotateLeft.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/orGate.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/notGate.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/negGate.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/fullAdder.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/encoder32bits.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/divider.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/booth_multiplier.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/andGate.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Main/multiplexer32bits.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/zRegister.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Alu/ALU/ALU.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/reg_32.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/multiplexerMDR.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/conFF.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/conFFSubComponent1.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/reg_Zero.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/andGate_32vs1.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/decoder4bits.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/flipFlop.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Main/datapath.vhd}
vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Main/registerFile.vhd}

vcom -93 -work work {C:/Users/Master/Documents/GitHub/CPU_Design_Project/CPU_Design_Memory_SelectEncode/../CPU_Design_Main/datapath_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  datapath_tb

add wave *
view structure
view signals
run 500 ns
