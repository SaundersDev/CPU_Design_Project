onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath_tb/regOut_tb
add wave -noupdate /datapath_tb/HIin_tb
add wave -noupdate /datapath_tb/rotate_left_cs_tb
add wave -noupdate /datapath_tb/Yin_tb
add wave -noupdate /datapath_tb/LOin_tb
add wave -noupdate /datapath_tb/IncPC_tb
add wave -noupdate /datapath_tb/BAout_tb
add wave -noupdate /datapath_tb/PCout_tb
add wave -noupdate /datapath_tb/MDRout_tb
add wave -noupdate /datapath_tb/IOout_tb
add wave -noupdate /datapath_tb/div_cs_tb
add wave -noupdate /datapath_tb/Clock_tb
add wave -noupdate /datapath_tb/InPortout_tb
add wave -noupdate /datapath_tb/MARin_tb
add wave -noupdate /datapath_tb/mult_cs_tb
add wave -noupdate /datapath_tb/Zin_tb
add wave -noupdate /datapath_tb/HIout_tb
add wave -noupdate /datapath_tb/rotate_right_cs_tb
add wave -noupdate /datapath_tb/selGra_tb
add wave -noupdate /datapath_tb/selGrb_tb
add wave -noupdate /datapath_tb/selGrc_tb
add wave -noupdate /datapath_tb/selRin_tb
add wave -noupdate /datapath_tb/MDRin_tb
add wave -noupdate /datapath_tb/PCin_tb
add wave -noupdate /datapath_tb/Zhighout_tb
add wave -noupdate /datapath_tb/CON_to_control_tb
add wave -noupdate /datapath_tb/Zlowout_tb
add wave -noupdate /datapath_tb/Rout_from_control_tb
add wave -noupdate /datapath_tb/sub_cs_tb
add wave -noupdate /datapath_tb/Rin_from_control_tb
add wave -noupdate /datapath_tb/selRout_tb
add wave -noupdate /datapath_tb/readChannel_tb
add wave -noupdate /datapath_tb/or_cs_tb
add wave -noupdate /datapath_tb/add_cs_tb
add wave -noupdate /datapath_tb/IRin_tb
add wave -noupdate /datapath_tb/clr_tb
add wave -noupdate /datapath_tb/LOout_tb
add wave -noupdate /datapath_tb/IO_to_inPort_tb
add wave -noupdate /datapath_tb/shift_left_cs_tb
add wave -noupdate /datapath_tb/outPort_to_IO_tb
add wave -noupdate /datapath_tb/CON_in_tb
add wave -noupdate /datapath_tb/and_cs_tb
add wave -noupdate /datapath_tb/negate_cs_tb
add wave -noupdate /datapath_tb/shift_right_arithmetic_cs_tb
add wave -noupdate -radix hexadecimal /datapath_tb/busLine_tb
add wave -noupdate /datapath_tb/shift_right_logical_cs_tb
add wave -noupdate /datapath_tb/Cout_tb
add wave -noupdate /datapath_tb/not_cs_tb
add wave -noupdate /datapath_tb/IOin_tb
add wave -noupdate /datapath_tb/read_notWrite_tb
add wave -noupdate /datapath_tb/ram_complete_to_control_tb
add wave -noupdate /datapath_tb/Present_state
add wave -noupdate /datapath_tb/Present_instruction
add wave -noupdate /datapath_tb/alu
add wave -noupdate /datapath_tb/DUT0/PC/clk
add wave -noupdate /datapath_tb/DUT0/PC/clr
add wave -noupdate /datapath_tb/DUT0/PC/Rin
add wave -noupdate /datapath_tb/DUT0/PC/BusMuxOut
add wave -noupdate /datapath_tb/DUT0/PC/BusMuxIn
add wave -noupdate /datapath_tb/DUT0/IR/clk
add wave -noupdate /datapath_tb/DUT0/IR/clr
add wave -noupdate /datapath_tb/DUT0/IR/Rin
add wave -noupdate /datapath_tb/DUT0/IR/BusMuxOut
add wave -noupdate /datapath_tb/DUT0/IR/BusMuxIn
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/clk
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/clr
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BAout
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/Rin
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/datapath_register_file/BusMuxOut
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR0
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/datapath_register_file/BusMuxInR1
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR2
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR3
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR4
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR5
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR6
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR7
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR8
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR9
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR10
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR11
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR12
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR13
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR14
add wave -noupdate /datapath_tb/DUT0/datapath_register_file/BusMuxInR15
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Encoder/input
add wave -noupdate /datapath_tb/DUT0/Encoder/output
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R0
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R1
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R2
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R3
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R4
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R5
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R6
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R7
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R8
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R9
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R10
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R11
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R12
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R13
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R14
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_R15
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_HI
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_LO
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_Zhigh
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_Zlow
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_PC
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_MDR
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxIn_InPort
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/C_sign_extended
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/encoderSignal
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/Multiplexer/BusMuxOut
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/SelectEncode/IRin
add wave -noupdate -radix hexadecimal /datapath_tb/DUT0/SelectEncode/Gra
add wave -noupdate /datapath_tb/DUT0/SelectEncode/Grb
add wave -noupdate /datapath_tb/DUT0/SelectEncode/Grc
add wave -noupdate /datapath_tb/DUT0/SelectEncode/Rin
add wave -noupdate /datapath_tb/DUT0/SelectEncode/Rout
add wave -noupdate /datapath_tb/DUT0/SelectEncode/BAout
add wave -noupdate /datapath_tb/DUT0/SelectEncode/BusMuxOut
add wave -noupdate /datapath_tb/DUT0/SelectEncode/C_sign_extended
add wave -noupdate /datapath_tb/DUT0/SelectEncode/r0in_r15in_Decoded
add wave -noupdate /datapath_tb/DUT0/SelectEncode/r0out_r15out_Decoded
add wave -noupdate /datapath_tb/DUT0/SelectEncode/decoderInput
add wave -noupdate /datapath_tb/DUT0/SelectEncode/decoderOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {256250 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 341
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {198656 ps}
