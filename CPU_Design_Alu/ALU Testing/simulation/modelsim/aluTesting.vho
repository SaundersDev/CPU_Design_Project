-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/28/2018 14:41:45"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	control : IN std_logic_vector(12 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	C : OUT std_logic_vector(31 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- C[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[10]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_control : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(31 DOWNTO 0);
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \U1|S[0]~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \U6|U2|U1|S~combout\ : std_logic;
SIGNAL \U6|U1|U2|S~combout\ : std_logic;
SIGNAL \U6|U2|U1|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U1|Cout~1_combout\ : std_logic;
SIGNAL \U6|U2|U2|S~combout\ : std_logic;
SIGNAL \U6|U1|U2|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U2|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U3|S~combout\ : std_logic;
SIGNAL \U0|U3|Cout~0_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \U6|U2|U3|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U4|S~combout\ : std_logic;
SIGNAL \U6|U2|U4|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U5|S~combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \U6|U2|U6|S~combout\ : std_logic;
SIGNAL \U6|U2|U7|Cout~0_combout\ : std_logic;
SIGNAL \U0|U7|Cout~1_combout\ : std_logic;
SIGNAL \U0|U7|Cout~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \U6|U2|U9|Cout~0_combout\ : std_logic;
SIGNAL \U0|U10|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U10|Cout~0_combout\ : std_logic;
SIGNAL \U0|U11|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U14|Cout~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \U6|U2|U19|Cout~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \U0|U25|Cout~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \U6|U2|U25|Cout~0_combout\ : std_logic;
SIGNAL \U0|U26|Cout~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \U6|U1|U26|Cout~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \U6|U2|U28|Cout~0_combout\ : std_logic;
SIGNAL \U0|U29|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U29|Cout~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \control[5]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \C[8]~output_o\ : std_logic;
SIGNAL \C[9]~output_o\ : std_logic;
SIGNAL \C[10]~output_o\ : std_logic;
SIGNAL \C[11]~output_o\ : std_logic;
SIGNAL \C[12]~output_o\ : std_logic;
SIGNAL \C[13]~output_o\ : std_logic;
SIGNAL \C[14]~output_o\ : std_logic;
SIGNAL \C[15]~output_o\ : std_logic;
SIGNAL \C[16]~output_o\ : std_logic;
SIGNAL \C[17]~output_o\ : std_logic;
SIGNAL \C[18]~output_o\ : std_logic;
SIGNAL \C[19]~output_o\ : std_logic;
SIGNAL \C[20]~output_o\ : std_logic;
SIGNAL \C[21]~output_o\ : std_logic;
SIGNAL \C[22]~output_o\ : std_logic;
SIGNAL \C[23]~output_o\ : std_logic;
SIGNAL \C[24]~output_o\ : std_logic;
SIGNAL \C[25]~output_o\ : std_logic;
SIGNAL \C[26]~output_o\ : std_logic;
SIGNAL \C[27]~output_o\ : std_logic;
SIGNAL \C[28]~output_o\ : std_logic;
SIGNAL \C[29]~output_o\ : std_logic;
SIGNAL \C[30]~output_o\ : std_logic;
SIGNAL \C[31]~output_o\ : std_logic;
SIGNAL \control[11]~input_o\ : std_logic;
SIGNAL \control[6]~input_o\ : std_logic;
SIGNAL \control[12]~input_o\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \control[3]~input_o\ : std_logic;
SIGNAL \control[4]~input_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \control[8]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \control[9]~input_o\ : std_logic;
SIGNAL \control[7]~input_o\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \WideNor0~5_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \Selector31~4_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \Selector30~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Selector30~4_combout\ : std_logic;
SIGNAL \Selector30~5_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector29~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \U0|U1|Cout~0_combout\ : std_logic;
SIGNAL \U0|U2|Cout~0_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \Selector28~4_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \control[10]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~5_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~5_combout\ : std_logic;
SIGNAL \U0|U4|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \U6|U2|U7|S~0_combout\ : std_logic;
SIGNAL \U6|U1|U3|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U4|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U5|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U5|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U6|Cout~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \U0|U5|Cout~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \Selector24~6_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \U6|U2|U8|S~0_combout\ : std_logic;
SIGNAL \U6|U1|U6|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U7|Cout~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~6_combout\ : std_logic;
SIGNAL \U6|U2|U8|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U8|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U9|S~combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \U0|U7|Cout~0_combout\ : std_logic;
SIGNAL \U0|U8|Cout~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \U6|U1|U9|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U10|S~combout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \U0|U9|Cout~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~5_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \U6|U1|U10|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U11|S~combout\ : std_logic;
SIGNAL \Selector20~4_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~5_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \U6|U1|U11|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U11|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U12|S~combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \U6|U2|U13|S~0_combout\ : std_logic;
SIGNAL \U0|U12|Cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \U6|U1|U12|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U12|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U13|S~combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \U6|U2|U13|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U14|S~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \U0|U13|Cout~0_combout\ : std_logic;
SIGNAL \U0|U13|Cout~1_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \U6|U1|U13|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U14|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U15|S~combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \U0|U14|Cout~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \U0|U15|Cout~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \U6|U2|U16|S~0_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \U6|U2|U15|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U15|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U16|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U16|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U17|S~combout\ : std_logic;
SIGNAL \U0|U16|Cout~0_combout\ : std_logic;
SIGNAL \U0|U16|Cout~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \U6|U2|U17|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U17|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U18|S~combout\ : std_logic;
SIGNAL \U0|U17|Cout~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \U0|U18|Cout~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \U6|U2|U18|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U18|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U19|S~combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \U0|U19|Cout~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \U6|U1|U19|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U20|S~combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \U6|U2|U20|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U20|Cout~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \U6|U2|U21|S~combout\ : std_logic;
SIGNAL \U0|U20|Cout~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \U0|U21|Cout~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \U6|U1|U21|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U21|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U22|S~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \U0|U22|Cout~1_combout\ : std_logic;
SIGNAL \U0|U22|Cout~2_combout\ : std_logic;
SIGNAL \U0|U22|Cout~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \U6|U2|U23|S~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \U6|U2|U22|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U22|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U23|S~combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \U6|U1|U23|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U23|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U24|S~combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \U0|U23|Cout~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \U6|U1|U24|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U24|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U25|S~combout\ : std_logic;
SIGNAL \U0|U24|Cout~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \U6|U1|U25|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U26|S~combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \U6|U2|U26|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U27|S~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \U6|U2|U27|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U28|S~combout\ : std_logic;
SIGNAL \U0|U27|Cout~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \U0|U28|Cout~1_combout\ : std_logic;
SIGNAL \U0|U28|Cout~2_combout\ : std_logic;
SIGNAL \U0|U28|Cout~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \U6|U2|U29|S~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \U6|U1|U27|Cout~0_combout\ : std_logic;
SIGNAL \U6|U1|U28|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U29|S~combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \U6|U1|U29|Cout~0_combout\ : std_logic;
SIGNAL \U6|U2|U30|S~combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \U6|U2|U31|S~0_combout\ : std_logic;
SIGNAL \U6|U2|U31|S~1_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;

BEGIN

ww_control <= control;
ww_A <= A;
ww_B <= B;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X15_Y15_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\control[10]~input_o\ & (!\control[9]~input_o\ & (!\control[7]~input_o\ & !\control[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datac => \control[7]~input_o\,
	datad => \control[8]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y16_N6
\Equal11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!\control[0]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[0]~input_o\,
	datac => \Equal0~0_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X15_Y15_N18
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\control[10]~input_o\ & (!\control[9]~input_o\ & (!\control[7]~input_o\ & \control[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datac => \control[7]~input_o\,
	datad => \control[8]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X15_Y15_N20
\Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal8~0_combout\ & (!\control[0]~input_o\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \control[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X14_Y15_N2
\U1|S[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|S[0]~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \U1|S[0]~0_combout\);

-- Location: LCCOMB_X14_Y15_N12
\Selector31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\B[31]~input_o\ & ((\Equal8~1_combout\) # ((\U1|S[0]~0_combout\ & \Equal9~1_combout\)))) # (!\B[31]~input_o\ & (\U1|S[0]~0_combout\ & (\Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \U1|S[0]~0_combout\,
	datac => \Equal9~1_combout\,
	datad => \Equal8~1_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X15_Y15_N10
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\control[7]~input_o\ & (!\control[9]~input_o\ & !\control[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[7]~input_o\,
	datab => \control[9]~input_o\,
	datad => \control[10]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X14_Y15_N10
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\A[1]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X14_Y15_N4
\Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (!\WideNor0~0_combout\ & (\B[1]~input_o\ $ (\U1|S[0]~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \U1|S[0]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X14_Y15_N6
\U6|U2|U1|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U1|S~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\B[0]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U6|U2|U1|S~combout\);

-- Location: LCCOMB_X12_Y15_N12
\U6|U1|U2|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U2|S~combout\ = \B[2]~input_o\ $ (((\B[0]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \U6|U1|U2|S~combout\);

-- Location: LCCOMB_X14_Y15_N26
\U6|U2|U1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U6|U2|U1|Cout~0_combout\);

-- Location: LCCOMB_X14_Y15_N28
\U6|U2|U1|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U1|Cout~1_combout\ = ((\B[1]~input_o\) # (!\B[0]~input_o\)) # (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \U6|U2|U1|Cout~1_combout\);

-- Location: LCCOMB_X12_Y15_N22
\U6|U2|U2|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U2|S~combout\ = \U6|U1|U2|S~combout\ $ (\A[2]~input_o\ $ (((\U6|U2|U1|Cout~0_combout\) # (!\U6|U2|U1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U2|S~combout\,
	datab => \A[2]~input_o\,
	datac => \U6|U2|U1|Cout~1_combout\,
	datad => \U6|U2|U1|Cout~0_combout\,
	combout => \U6|U2|U2|S~combout\);

-- Location: LCCOMB_X12_Y15_N10
\U6|U1|U2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U2|Cout~0_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \U6|U1|U2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\U6|U2|U2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U2|Cout~0_combout\ = (\U6|U1|U2|S~combout\ & ((\A[2]~input_o\) # ((\U6|U2|U1|Cout~0_combout\) # (!\U6|U2|U1|Cout~1_combout\)))) # (!\U6|U1|U2|S~combout\ & (\A[2]~input_o\ & ((\U6|U2|U1|Cout~0_combout\) # (!\U6|U2|U1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U2|S~combout\,
	datab => \A[2]~input_o\,
	datac => \U6|U2|U1|Cout~1_combout\,
	datad => \U6|U2|U1|Cout~0_combout\,
	combout => \U6|U2|U2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N30
\U6|U2|U3|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U3|S~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\U6|U2|U2|Cout~0_combout\ $ (\U6|U1|U2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \U6|U2|U2|Cout~0_combout\,
	datad => \U6|U1|U2|Cout~0_combout\,
	combout => \U6|U2|U3|S~combout\);

-- Location: LCCOMB_X16_Y15_N26
\U0|U3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U3|Cout~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\U0|U2|Cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \U0|U2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \U0|U2|Cout~0_combout\,
	combout => \U0|U3|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N12
\Selector27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (!\WideNor0~0_combout\ & (\U0|U3|Cout~0_combout\ $ (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U3|Cout~0_combout\,
	datab => \WideNor0~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X12_Y15_N14
\U6|U2|U3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U3|Cout~0_combout\ = (\A[3]~input_o\ & ((\U6|U2|U2|Cout~0_combout\) # (\B[3]~input_o\ $ (\U6|U1|U2|Cout~0_combout\)))) # (!\A[3]~input_o\ & (\U6|U2|U2|Cout~0_combout\ & (\B[3]~input_o\ $ (\U6|U1|U2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \U6|U2|U2|Cout~0_combout\,
	datad => \U6|U1|U2|Cout~0_combout\,
	combout => \U6|U2|U3|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N22
\U6|U2|U4|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U4|S~combout\ = \U6|U2|U3|Cout~0_combout\ $ (\U6|U1|U3|Cout~0_combout\ $ (\B[4]~input_o\ $ (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U3|Cout~0_combout\,
	datab => \U6|U1|U3|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \U6|U2|U4|S~combout\);

-- Location: LCCOMB_X16_Y15_N18
\U6|U2|U4|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U4|Cout~0_combout\ = (\U6|U2|U3|Cout~0_combout\ & ((\A[4]~input_o\) # (\U6|U1|U3|Cout~0_combout\ $ (\B[4]~input_o\)))) # (!\U6|U2|U3|Cout~0_combout\ & (\A[4]~input_o\ & (\U6|U1|U3|Cout~0_combout\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U3|Cout~0_combout\,
	datab => \U6|U1|U3|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \U6|U2|U4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N4
\U6|U2|U5|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U5|S~combout\ = \U6|U2|U4|Cout~0_combout\ $ (\U6|U1|U4|Cout~0_combout\ $ (\B[5]~input_o\ $ (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U4|Cout~0_combout\,
	datab => \U6|U1|U4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \U6|U2|U5|S~combout\);

-- Location: LCCOMB_X16_Y15_N30
\Selector26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = (\Equal10~0_combout\ & ((\B[5]~input_o\) # ((\U6|U2|U5|S~combout\ & !\WideNor0~1_combout\)))) # (!\Equal10~0_combout\ & (\U6|U2|U5|S~combout\ & ((!\WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \U6|U2|U5|S~combout\,
	datac => \B[5]~input_o\,
	datad => \WideNor0~1_combout\,
	combout => \Selector26~3_combout\);

-- Location: LCCOMB_X15_Y15_N12
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Equal9~0_combout\ & ((\control[10]~input_o\ & (!\control[9]~input_o\)) # (!\control[10]~input_o\ & (\control[9]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\U6|U2|U6|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U6|S~combout\ = \A[6]~input_o\ $ (\U6|U2|U5|Cout~0_combout\ $ (\B[6]~input_o\ $ (\U6|U1|U5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \U6|U2|U5|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \U6|U1|U5|Cout~0_combout\,
	combout => \U6|U2|U6|S~combout\);

-- Location: LCCOMB_X23_Y16_N22
\U6|U2|U7|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U7|Cout~0_combout\ = (\U6|U2|U6|Cout~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\ $ (\U6|U1|U6|Cout~0_combout\)))) # (!\U6|U2|U6|Cout~0_combout\ & (\A[7]~input_o\ & (\B[7]~input_o\ $ (\U6|U1|U6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \U6|U2|U6|Cout~0_combout\,
	datac => \U6|U1|U6|Cout~0_combout\,
	datad => \A[7]~input_o\,
	combout => \U6|U2|U7|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N4
\U0|U7|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U7|Cout~1_combout\ = (\A[7]~input_o\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \U0|U7|Cout~1_combout\);

-- Location: LCCOMB_X19_Y15_N22
\U0|U7|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U7|Cout~2_combout\ = (\U0|U7|Cout~1_combout\ & ((\A[6]~input_o\ & ((\B[6]~input_o\) # (\U0|U5|Cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \U0|U5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \U0|U7|Cout~1_combout\,
	datac => \B[6]~input_o\,
	datad => \U0|U5|Cout~0_combout\,
	combout => \U0|U7|Cout~2_combout\);

-- Location: LCCOMB_X23_Y16_N6
\Selector23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (!\WideNor0~0_combout\ & (\U6|U2|U8|S~0_combout\ $ (((\U0|U7|Cout~2_combout\) # (\U0|U7|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \U6|U2|U8|S~0_combout\,
	datac => \U0|U7|Cout~2_combout\,
	datad => \U0|U7|Cout~0_combout\,
	combout => \Selector23~3_combout\);

-- Location: LCCOMB_X23_Y18_N30
\Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\A[9]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \B[9]~input_o\,
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X23_Y16_N14
\U6|U2|U9|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U9|Cout~0_combout\ = (\A[9]~input_o\ & ((\U6|U2|U8|Cout~0_combout\) # (\U6|U1|U8|Cout~0_combout\ $ (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\U6|U2|U8|Cout~0_combout\ & (\U6|U1|U8|Cout~0_combout\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \U6|U2|U8|Cout~0_combout\,
	datac => \U6|U1|U8|Cout~0_combout\,
	datad => \B[9]~input_o\,
	combout => \U6|U2|U9|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\U0|U10|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U10|Cout~0_combout\ = (\U0|U9|Cout~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\))) # (!\U0|U9|Cout~0_combout\ & (\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U9|Cout~0_combout\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \U0|U10|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N6
\U6|U2|U10|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U10|Cout~0_combout\ = (\U6|U2|U9|Cout~0_combout\ & ((\A[10]~input_o\) # (\U6|U1|U9|Cout~0_combout\ $ (\B[10]~input_o\)))) # (!\U6|U2|U9|Cout~0_combout\ & (\A[10]~input_o\ & (\U6|U1|U9|Cout~0_combout\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U9|Cout~0_combout\,
	datab => \U6|U1|U9|Cout~0_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U6|U2|U10|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N14
\U0|U11|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U11|Cout~0_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # (\U0|U10|Cout~0_combout\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & \U0|U10|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \U0|U10|Cout~0_combout\,
	combout => \U0|U11|Cout~0_combout\);

-- Location: LCCOMB_X16_Y16_N6
\U6|U1|U14|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U14|Cout~0_combout\ = (\U6|U1|U12|Cout~0_combout\) # ((\B[14]~input_o\) # (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U12|Cout~0_combout\,
	datac => \B[14]~input_o\,
	datad => \B[13]~input_o\,
	combout => \U6|U1|U14|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N12
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\WideNor0~1_combout\ & (\U6|U2|U15|Cout~0_combout\ $ (\U6|U2|U16|S~0_combout\ $ (\U6|U1|U15|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \U6|U2|U15|Cout~0_combout\,
	datac => \U6|U2|U16|S~0_combout\,
	datad => \U6|U1|U15|Cout~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X17_Y18_N10
\Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\WideNor0~4_combout\ & (\Equal10~0_combout\ & (\B[16]~input_o\))) # (!\WideNor0~4_combout\ & ((\B[15]~input_o\) # ((\Equal10~0_combout\ & \B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \Equal10~0_combout\,
	datac => \B[16]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Selector15~3_combout\);

-- Location: LCCOMB_X12_Y22_N26
\Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\B[18]~input_o\ & (((\B[20]~input_o\ & !\WideNor0~2_combout\)) # (!\WideNor0~4_combout\))) # (!\B[18]~input_o\ & (((\B[20]~input_o\ & !\WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \WideNor0~4_combout\,
	datac => \B[20]~input_o\,
	datad => \WideNor0~2_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X11_Y22_N22
\Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Equal10~0_combout\ & ((\A[20]~input_o\) # ((\B[20]~input_o\)))) # (!\Equal10~0_combout\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Equal9~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X11_Y22_N12
\U6|U2|U19|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U19|Cout~0_combout\ = (\U6|U2|U18|Cout~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\ $ (\U6|U1|U18|Cout~0_combout\)))) # (!\U6|U2|U18|Cout~0_combout\ & (\A[19]~input_o\ & (\B[19]~input_o\ $ (\U6|U1|U18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \U6|U2|U18|Cout~0_combout\,
	datac => \A[19]~input_o\,
	datad => \U6|U1|U18|Cout~0_combout\,
	combout => \U6|U2|U19|Cout~0_combout\);

-- Location: LCCOMB_X11_Y18_N10
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\B[24]~input_o\ & (((!\WideNor0~2_combout\ & \B[26]~input_o\)) # (!\WideNor0~4_combout\))) # (!\B[24]~input_o\ & (!\WideNor0~2_combout\ & (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \WideNor0~2_combout\,
	datac => \B[26]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X11_Y18_N12
\U0|U25|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U25|Cout~0_combout\ = (\A[25]~input_o\ & ((\U0|U24|Cout~0_combout\) # (\B[25]~input_o\))) # (!\A[25]~input_o\ & (\U0|U24|Cout~0_combout\ & \B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \U0|U24|Cout~0_combout\,
	datac => \B[25]~input_o\,
	combout => \U0|U25|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N4
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\WideNor0~4_combout\ & (\B[27]~input_o\ & (!\WideNor0~2_combout\))) # (!\WideNor0~4_combout\ & ((\B[25]~input_o\) # ((\B[27]~input_o\ & !\WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \B[27]~input_o\,
	datac => \WideNor0~2_combout\,
	datad => \B[25]~input_o\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X11_Y18_N22
\U6|U2|U25|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U25|Cout~0_combout\ = (\A[25]~input_o\ & ((\U6|U2|U24|Cout~0_combout\) # (\U6|U1|U24|Cout~0_combout\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\U6|U2|U24|Cout~0_combout\ & (\U6|U1|U24|Cout~0_combout\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \U6|U1|U24|Cout~0_combout\,
	datac => \B[25]~input_o\,
	datad => \U6|U2|U24|Cout~0_combout\,
	combout => \U6|U2|U25|Cout~0_combout\);

-- Location: LCCOMB_X11_Y18_N20
\U0|U26|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U26|Cout~0_combout\ = (\U0|U25|Cout~0_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (!\U0|U25|Cout~0_combout\ & (\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U25|Cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \U0|U26|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N10
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\A[27]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[27]~input_o\)))) # (!\A[27]~input_o\ & (((\B[27]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X14_Y18_N30
\U6|U1|U26|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U26|Cout~0_combout\ = (\B[25]~input_o\) # ((\B[26]~input_o\) # (\U6|U1|U24|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \B[26]~input_o\,
	datad => \U6|U1|U24|Cout~0_combout\,
	combout => \U6|U1|U26|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N14
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\B[29]~input_o\ & (((\B[27]~input_o\ & !\WideNor0~4_combout\)) # (!\WideNor0~2_combout\))) # (!\B[29]~input_o\ & (((\B[27]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \WideNor0~2_combout\,
	datac => \B[27]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X15_Y18_N30
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\A[29]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[29]~input_o\)))) # (!\A[29]~input_o\ & (((\B[29]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X15_Y18_N12
\U6|U2|U28|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U28|Cout~0_combout\ = (\A[28]~input_o\ & ((\U6|U2|U27|Cout~0_combout\) # (\U6|U1|U27|Cout~0_combout\ $ (\B[28]~input_o\)))) # (!\A[28]~input_o\ & (\U6|U2|U27|Cout~0_combout\ & (\U6|U1|U27|Cout~0_combout\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U27|Cout~0_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \U6|U2|U27|Cout~0_combout\,
	combout => \U6|U2|U28|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N2
\U0|U29|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U29|Cout~0_combout\ = (\B[29]~input_o\ & ((\U0|U28|Cout~2_combout\) # ((\U0|U28|Cout~0_combout\) # (\A[29]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\U0|U28|Cout~2_combout\) # (\U0|U28|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U28|Cout~2_combout\,
	datab => \B[29]~input_o\,
	datac => \U0|U28|Cout~0_combout\,
	datad => \A[29]~input_o\,
	combout => \U0|U29|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N14
\U6|U2|U29|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U29|Cout~0_combout\ = (\U6|U2|U28|Cout~0_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\ $ (\U6|U1|U28|Cout~0_combout\)))) # (!\U6|U2|U28|Cout~0_combout\ & (\A[29]~input_o\ & (\B[29]~input_o\ $ (\U6|U1|U28|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U28|Cout~0_combout\,
	datab => \B[29]~input_o\,
	datac => \U6|U1|U28|Cout~0_combout\,
	datad => \A[29]~input_o\,
	combout => \U6|U2|U29|Cout~0_combout\);

-- Location: LCCOMB_X15_Y16_N30
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\control[5]~input_o\ & (!\control[4]~input_o\ & (!\control[2]~input_o\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[5]~input_o\,
	datab => \control[4]~input_o\,
	datac => \control[2]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X15_Y15_N24
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Equal5~0_combout\) # ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal9~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X15_Y15_N26
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Equal10~0_combout\ & ((\A[31]~input_o\) # ((\B[31]~input_o\ & \Selector0~2_combout\)))) # (!\Equal10~0_combout\ & (\B[31]~input_o\ & ((\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \B[31]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~3_combout\);

-- Location: IOIBUF_X0_Y12_N22
\control[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(5),
	o => \control[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\A[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOOBUF_X11_Y29_N9
\C[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector31~4_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\C[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector30~5_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\C[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector29~5_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\C[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector28~5_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\C[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector27~5_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\C[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector26~5_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\C[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector25~5_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\C[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector24~6_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\C[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector23~6_combout\,
	devoe => ww_devoe,
	o => \C[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\C[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector22~5_combout\,
	devoe => ww_devoe,
	o => \C[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\C[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector21~5_combout\,
	devoe => ww_devoe,
	o => \C[10]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\C[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector20~5_combout\,
	devoe => ww_devoe,
	o => \C[11]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\C[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector19~5_combout\,
	devoe => ww_devoe,
	o => \C[12]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\C[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector18~4_combout\,
	devoe => ww_devoe,
	o => \C[13]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\C[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector17~5_combout\,
	devoe => ww_devoe,
	o => \C[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\C[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector16~5_combout\,
	devoe => ww_devoe,
	o => \C[15]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\C[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector15~5_combout\,
	devoe => ww_devoe,
	o => \C[16]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\C[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector14~4_combout\,
	devoe => ww_devoe,
	o => \C[17]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\C[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector13~4_combout\,
	devoe => ww_devoe,
	o => \C[18]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\C[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector12~4_combout\,
	devoe => ww_devoe,
	o => \C[19]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\C[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector11~4_combout\,
	devoe => ww_devoe,
	o => \C[20]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\C[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector10~4_combout\,
	devoe => ww_devoe,
	o => \C[21]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\C[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~4_combout\,
	devoe => ww_devoe,
	o => \C[22]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\C[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~4_combout\,
	devoe => ww_devoe,
	o => \C[23]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\C[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~4_combout\,
	devoe => ww_devoe,
	o => \C[24]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\C[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~4_combout\,
	devoe => ww_devoe,
	o => \C[25]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\C[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~4_combout\,
	devoe => ww_devoe,
	o => \C[26]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\C[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~4_combout\,
	devoe => ww_devoe,
	o => \C[27]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\C[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~4_combout\,
	devoe => ww_devoe,
	o => \C[28]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\C[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~4_combout\,
	devoe => ww_devoe,
	o => \C[29]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\C[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector1~4_combout\,
	devoe => ww_devoe,
	o => \C[30]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\C[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector0~6_combout\,
	devoe => ww_devoe,
	o => \C[31]~output_o\);

-- Location: IOIBUF_X14_Y0_N22
\control[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(11),
	o => \control[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\control[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(6),
	o => \control[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\control[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(12),
	o => \control[12]~input_o\);

-- Location: LCCOMB_X15_Y16_N26
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal11~0_combout\ & (!\control[11]~input_o\ & (\control[6]~input_o\ & !\control[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \control[11]~input_o\,
	datac => \control[6]~input_o\,
	datad => \control[12]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: IOIBUF_X11_Y0_N8
\control[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\control[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(4),
	o => \control[4]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\control[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: LCCOMB_X15_Y16_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\control[5]~input_o\ & (!\control[4]~input_o\ & !\control[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[5]~input_o\,
	datab => \control[4]~input_o\,
	datac => \control[2]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\control[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: LCCOMB_X15_Y16_N18
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\control[3]~input_o\ & (\Equal3~0_combout\ & !\control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[3]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \control[1]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X16_Y16_N0
\WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (!\Equal8~1_combout\ & ((!\Equal6~0_combout\) # (!\Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X15_Y16_N2
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal1~0_combout\ & (!\control[3]~input_o\ & (!\control[2]~input_o\ & !\control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \control[3]~input_o\,
	datac => \control[2]~input_o\,
	datad => \control[1]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\control[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(8),
	o => \control[8]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\control[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: LCCOMB_X15_Y16_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\control[12]~input_o\ & (!\control[11]~input_o\ & (!\control[6]~input_o\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[12]~input_o\,
	datab => \control[11]~input_o\,
	datac => \control[6]~input_o\,
	datad => \Equal6~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y15_N4
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal7~0_combout\ & (!\control[8]~input_o\ & (!\control[0]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \control[8]~input_o\,
	datac => \control[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X15_Y16_N12
\WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!\Equal7~1_combout\ & ((\control[5]~input_o\ $ (!\control[4]~input_o\)) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[5]~input_o\,
	datab => \Equal4~1_combout\,
	datac => \control[4]~input_o\,
	datad => \Equal7~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X15_Y16_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\control[6]~input_o\ & !\control[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control[6]~input_o\,
	datad => \control[12]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y16_N16
\Equal11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (\Equal11~0_combout\ & (\control[11]~input_o\ & (\Equal0~2_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \control[11]~input_o\,
	datac => \Equal0~2_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal11~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\control[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(9),
	o => \control[9]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\control[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(7),
	o => \control[7]~input_o\);

-- Location: LCCOMB_X15_Y15_N6
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\control[0]~input_o\ & (!\control[8]~input_o\ & (!\control[7]~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[0]~input_o\,
	datab => \control[8]~input_o\,
	datac => \control[7]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X15_Y15_N14
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\control[10]~input_o\ & (!\control[9]~input_o\ & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X15_Y16_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal11~0_combout\ & (!\control[11]~input_o\ & (!\control[6]~input_o\ & !\control[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \control[11]~input_o\,
	datac => \control[6]~input_o\,
	datad => \control[12]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X15_Y16_N8
\WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ((\control[3]~input_o\ $ (!\control[1]~input_o\)) # (!\Equal1~0_combout\)) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \control[3]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \control[1]~input_o\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = ((\Equal11~1_combout\) # ((\Equal10~0_combout\) # (!\WideNor0~1_combout\))) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Equal11~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y18_N18
\WideNor0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~5_combout\ = (\Equal9~1_combout\) # (((\WideNor0~3_combout\) # (!\WideNor0~2_combout\)) # (!\WideNor0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \WideNor0~4_combout\,
	datac => \WideNor0~2_combout\,
	datad => \WideNor0~3_combout\,
	combout => \WideNor0~5_combout\);

-- Location: IOIBUF_X0_Y20_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X15_Y16_N10
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\control[3]~input_o\ & (\Equal1~0_combout\ & !\control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[3]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \control[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X15_Y16_N4
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\control[5]~input_o\ & (!\control[4]~input_o\ & (\control[2]~input_o\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[5]~input_o\,
	datab => \control[4]~input_o\,
	datac => \control[2]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X15_Y16_N22
\WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Equal2~0_combout\ & (((!\Equal0~1_combout\) # (!\control[0]~input_o\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \control[0]~input_o\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X14_Y15_N8
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\WideNor0~1_combout\ & (!\WideNor0~0_combout\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))) # (!\WideNor0~1_combout\ & (\A[0]~input_o\ $ ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \WideNor0~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: IOIBUF_X0_Y12_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X14_Y15_N30
\Selector31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector31~1_combout\) # ((\Selector31~0_combout\) # ((\B[1]~input_o\ & !\WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~1_combout\,
	datab => \Selector31~0_combout\,
	datac => \B[1]~input_o\,
	datad => \WideNor0~2_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X14_Y15_N24
\Selector31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = (\Selector31~2_combout\) # ((\Equal10~0_combout\ & ((\A[0]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Selector31~2_combout\,
	datad => \Equal10~0_combout\,
	combout => \Selector31~3_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Selector31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~4_combout\ = (\Selector31~3_combout\) # ((!\WideNor0~5_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector31~3_combout\,
	datac => \B[0]~input_o\,
	combout => \Selector31~4_combout\);

-- Location: LCCOMB_X14_Y15_N0
\Selector30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\U6|U2|U1|S~combout\ & (((\B[1]~input_o\ & \Equal10~0_combout\)) # (!\WideNor0~1_combout\))) # (!\U6|U2|U1|S~combout\ & (((\B[1]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U1|S~combout\,
	datab => \WideNor0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector30~2_combout\);

-- Location: LCCOMB_X14_Y15_N18
\Selector30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~3_combout\ = (\Selector30~1_combout\) # ((\Selector30~2_combout\) # ((\B[0]~input_o\ & !\WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~1_combout\,
	datab => \Selector30~2_combout\,
	datac => \B[0]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector30~3_combout\);

-- Location: IOIBUF_X0_Y13_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X14_Y15_N20
\Selector30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~4_combout\ = (\Selector30~0_combout\) # ((\Selector30~3_combout\) # ((\B[2]~input_o\ & !\WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector30~0_combout\,
	datab => \Selector30~3_combout\,
	datac => \B[2]~input_o\,
	datad => \WideNor0~2_combout\,
	combout => \Selector30~4_combout\);

-- Location: LCCOMB_X14_Y15_N14
\Selector30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~5_combout\ = (\Selector30~4_combout\) # ((!\WideNor0~5_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector30~4_combout\,
	datac => \B[1]~input_o\,
	combout => \Selector30~5_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Selector29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (\U6|U2|U2|S~combout\ & (((\Equal10~0_combout\ & \B[2]~input_o\)) # (!\WideNor0~1_combout\))) # (!\U6|U2|U2|S~combout\ & (\Equal10~0_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U2|S~combout\,
	datab => \Equal10~0_combout\,
	datac => \B[2]~input_o\,
	datad => \WideNor0~1_combout\,
	combout => \Selector29~3_combout\);

-- Location: IOIBUF_X0_Y9_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X12_Y15_N2
\Selector29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (!\WideNor0~0_combout\ & (\U0|U1|Cout~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X12_Y15_N18
\Selector29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~4_combout\ = (\Selector29~3_combout\) # ((\Selector29~2_combout\) # ((!\WideNor0~4_combout\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \Selector29~3_combout\,
	datac => \B[1]~input_o\,
	datad => \Selector29~2_combout\,
	combout => \Selector29~4_combout\);

-- Location: IOIBUF_X0_Y13_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X15_Y15_N8
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Equal9~0_combout\ & ((\control[10]~input_o\ & (!\control[9]~input_o\)) # (!\control[10]~input_o\ & (\control[9]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\Selector29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\WideNor0~2_combout\ & (((\Selector29~0_combout\ & \A[2]~input_o\)))) # (!\WideNor0~2_combout\ & ((\B[3]~input_o\) # ((\Selector29~0_combout\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[3]~input_o\,
	datac => \Selector29~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X12_Y15_N20
\Selector29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~5_combout\ = (\Selector29~4_combout\) # ((\Selector29~1_combout\) # ((!\B[2]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~4_combout\,
	datab => \Selector29~1_combout\,
	datac => \B[2]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector29~5_combout\);

-- Location: IOIBUF_X0_Y12_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X14_Y15_N16
\U0|U1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U1|Cout~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U0|U1|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\U0|U2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U2|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\U0|U1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \U0|U1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \U0|U1|Cout~0_combout\,
	combout => \U0|U2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\Selector28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (!\WideNor0~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\U0|U2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \U0|U2|Cout~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X12_Y15_N8
\Selector28~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\U6|U2|U3|S~combout\ & (((\Equal10~0_combout\ & \B[3]~input_o\)) # (!\WideNor0~1_combout\))) # (!\U6|U2|U3|S~combout\ & (\Equal10~0_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U3|S~combout\,
	datab => \Equal10~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Selector28~3_combout\);

-- Location: LCCOMB_X12_Y15_N26
\Selector28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~4_combout\ = (\Selector28~2_combout\) # ((\Selector28~3_combout\) # ((!\WideNor0~4_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \Selector28~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Selector28~3_combout\,
	combout => \Selector28~4_combout\);

-- Location: IOIBUF_X19_Y0_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\control[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(10),
	o => \control[10]~input_o\);

-- Location: LCCOMB_X15_Y15_N2
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Equal9~0_combout\ & ((\control[10]~input_o\ & ((!\control[9]~input_o\))) # (!\control[10]~input_o\ & (\B[3]~input_o\ & \control[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \B[3]~input_o\,
	datac => \control[10]~input_o\,
	datad => \control[9]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X16_Y15_N8
\Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\WideNor0~2_combout\ & (((\A[3]~input_o\ & \Selector28~0_combout\)))) # (!\WideNor0~2_combout\ & ((\B[4]~input_o\) # ((\A[3]~input_o\ & \Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X12_Y15_N28
\Selector28~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~5_combout\ = (\Selector28~4_combout\) # ((\Selector28~1_combout\) # ((!\B[3]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~4_combout\,
	datab => \Selector28~1_combout\,
	datac => \B[3]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector28~5_combout\);

-- Location: LCCOMB_X16_Y15_N24
\Selector27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\U6|U2|U4|S~combout\ & (((\B[4]~input_o\ & \Equal10~0_combout\)) # (!\WideNor0~1_combout\))) # (!\U6|U2|U4|S~combout\ & (((\B[4]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U4|S~combout\,
	datab => \WideNor0~1_combout\,
	datac => \B[4]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector27~3_combout\);

-- Location: LCCOMB_X16_Y15_N2
\Selector27~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (\Selector27~2_combout\) # ((\Selector27~3_combout\) # ((\B[3]~input_o\ & !\WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~2_combout\,
	datab => \Selector27~3_combout\,
	datac => \B[3]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector27~4_combout\);

-- Location: IOIBUF_X26_Y29_N8
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X15_Y15_N16
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!\control[10]~input_o\ & (\control[9]~input_o\ & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[10]~input_o\,
	datab => \control[9]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Equal9~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X16_Y16_N2
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\A[4]~input_o\ & ((\Equal10~0_combout\) # ((\B[4]~input_o\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \A[4]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X16_Y16_N12
\Selector27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector27~0_combout\) # ((!\WideNor0~2_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datac => \B[5]~input_o\,
	datad => \Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X16_Y16_N22
\Selector27~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~5_combout\ = (\Selector27~4_combout\) # ((\Selector27~1_combout\) # ((!\B[4]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Selector27~4_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector27~1_combout\,
	combout => \Selector27~5_combout\);

-- Location: LCCOMB_X16_Y15_N28
\U0|U4|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U4|Cout~0_combout\ = (\U0|U3|Cout~0_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) # (!\U0|U3|Cout~0_combout\ & (\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U3|Cout~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \U0|U4|Cout~0_combout\);

-- Location: IOIBUF_X28_Y29_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X16_Y15_N14
\Selector26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (!\WideNor0~0_combout\ & (\U0|U4|Cout~0_combout\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \U0|U4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Selector26~2_combout\);

-- Location: LCCOMB_X16_Y15_N0
\Selector26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = (\Selector26~3_combout\) # ((\Selector26~2_combout\) # ((\B[4]~input_o\ & !\WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~3_combout\,
	datab => \Selector26~2_combout\,
	datac => \B[4]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector26~4_combout\);

-- Location: LCCOMB_X26_Y19_N0
\Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\A[5]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal9~1_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Selector26~0_combout\);

-- Location: IOIBUF_X26_Y29_N15
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X26_Y19_N2
\Selector26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\Selector26~0_combout\) # ((!\WideNor0~2_combout\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector26~0_combout\,
	datac => \WideNor0~2_combout\,
	datad => \B[6]~input_o\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X26_Y19_N4
\Selector26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = (\Selector26~4_combout\) # ((\Selector26~1_combout\) # ((!\WideNor0~5_combout\ & !\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~4_combout\,
	datab => \Selector26~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \B[5]~input_o\,
	combout => \Selector26~5_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Selector25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\U6|U2|U6|S~combout\ & (((\B[6]~input_o\ & \Equal10~0_combout\)) # (!\WideNor0~1_combout\))) # (!\U6|U2|U6|S~combout\ & (((\B[6]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U6|S~combout\,
	datab => \WideNor0~1_combout\,
	datac => \B[6]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector25~3_combout\);

-- Location: IOIBUF_X19_Y0_N8
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X19_Y15_N2
\Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (!\WideNor0~0_combout\ & (\U0|U5|Cout~0_combout\ $ (\B[6]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U5|Cout~0_combout\,
	datab => \WideNor0~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X19_Y15_N26
\Selector25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (\Selector25~3_combout\) # ((\Selector25~2_combout\) # ((\B[5]~input_o\ & !\WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Selector25~3_combout\,
	datac => \WideNor0~4_combout\,
	datad => \Selector25~2_combout\,
	combout => \Selector25~4_combout\);

-- Location: IOIBUF_X19_Y0_N22
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X19_Y15_N0
\Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\Selector25~0_combout\ & ((\A[6]~input_o\) # ((\B[7]~input_o\ & !\WideNor0~2_combout\)))) # (!\Selector25~0_combout\ & (\B[7]~input_o\ & (!\WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \B[7]~input_o\,
	datac => \WideNor0~2_combout\,
	datad => \A[6]~input_o\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X19_Y15_N20
\Selector25~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = (\Selector25~4_combout\) # ((\Selector25~1_combout\) # ((!\B[6]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~4_combout\,
	datab => \Selector25~1_combout\,
	datac => \B[6]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector25~5_combout\);

-- Location: IOIBUF_X23_Y0_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X23_Y16_N8
\U6|U2|U7|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U7|S~0_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \U6|U2|U7|S~0_combout\);

-- Location: LCCOMB_X14_Y15_N22
\U6|U1|U3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U3|Cout~0_combout\ = (\B[1]~input_o\) # ((\B[0]~input_o\) # ((\B[2]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \U6|U1|U3|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N16
\U6|U1|U4|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U4|Cout~0_combout\ = (\B[4]~input_o\) # (\U6|U1|U3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \U6|U1|U3|Cout~0_combout\,
	combout => \U6|U1|U4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y15_N20
\U6|U2|U5|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U5|Cout~0_combout\ = (\U6|U2|U4|Cout~0_combout\ & ((\A[5]~input_o\) # (\U6|U1|U4|Cout~0_combout\ $ (\B[5]~input_o\)))) # (!\U6|U2|U4|Cout~0_combout\ & (\A[5]~input_o\ & (\U6|U1|U4|Cout~0_combout\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U4|Cout~0_combout\,
	datab => \U6|U1|U4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \U6|U2|U5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N12
\U6|U1|U5|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U5|Cout~0_combout\ = (\B[5]~input_o\) # ((\U6|U1|U3|Cout~0_combout\) # (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \U6|U1|U3|Cout~0_combout\,
	datac => \B[4]~input_o\,
	combout => \U6|U1|U5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N6
\U6|U2|U6|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U6|Cout~0_combout\ = (\A[6]~input_o\ & ((\U6|U2|U5|Cout~0_combout\) # (\B[6]~input_o\ $ (\U6|U1|U5|Cout~0_combout\)))) # (!\A[6]~input_o\ & (\U6|U2|U5|Cout~0_combout\ & (\B[6]~input_o\ $ (\U6|U1|U5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \U6|U2|U5|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \U6|U1|U5|Cout~0_combout\,
	combout => \U6|U2|U6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\WideNor0~1_combout\ & (\U6|U1|U6|Cout~0_combout\ $ (\U6|U2|U7|S~0_combout\ $ (\U6|U2|U6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U6|Cout~0_combout\,
	datab => \WideNor0~1_combout\,
	datac => \U6|U2|U7|S~0_combout\,
	datad => \U6|U2|U6|Cout~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\Selector24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\WideNor0~4_combout\ & (\B[7]~input_o\ & ((\Equal10~0_combout\)))) # (!\WideNor0~4_combout\ & ((\B[6]~input_o\) # ((\B[7]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector24~3_combout\);

-- Location: IOIBUF_X23_Y29_N22
\B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X19_Y15_N10
\Selector24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\A[7]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal10~0_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X19_Y15_N14
\Selector24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (\Selector24~3_combout\) # ((\Selector24~2_combout\) # ((!\WideNor0~2_combout\ & \B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \Selector24~3_combout\,
	datac => \B[8]~input_o\,
	datad => \Selector24~2_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X16_Y15_N10
\U0|U5|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U5|Cout~0_combout\ = (\U0|U4|Cout~0_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\U0|U4|Cout~0_combout\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U4|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \U0|U5|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N24
\Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = \B[7]~input_o\ $ (((\A[6]~input_o\ & ((\B[6]~input_o\) # (\U0|U5|Cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \U0|U5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \U0|U5|Cout~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X19_Y15_N8
\Selector24~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\Selector24~4_combout\) # ((!\WideNor0~0_combout\ & (\A[7]~input_o\ $ (\Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Selector24~4_combout\,
	datac => \A[7]~input_o\,
	datad => \Selector24~1_combout\,
	combout => \Selector24~5_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Selector24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector24~6_combout\ = (\Selector24~0_combout\) # ((\Selector24~5_combout\) # ((!\B[7]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \B[7]~input_o\,
	datac => \Selector24~5_combout\,
	datad => \WideNor0~5_combout\,
	combout => \Selector24~6_combout\);

-- Location: IOIBUF_X41_Y14_N8
\A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X23_Y16_N0
\Selector23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (\A[8]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal10~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Selector23~4_combout\);

-- Location: IOIBUF_X23_Y29_N29
\B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X23_Y16_N2
\Selector23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (\Selector23~3_combout\) # ((\Selector23~4_combout\) # ((!\WideNor0~2_combout\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~3_combout\,
	datab => \Selector23~4_combout\,
	datac => \WideNor0~2_combout\,
	datad => \B[9]~input_o\,
	combout => \Selector23~5_combout\);

-- Location: LCCOMB_X16_Y16_N16
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\B[7]~input_o\ & ((\Equal8~1_combout\) # ((\Equal6~1_combout\ & \Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \B[7]~input_o\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\U6|U2|U8|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U8|S~0_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \U6|U2|U8|S~0_combout\);

-- Location: LCCOMB_X16_Y15_N6
\U6|U1|U6|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U6|Cout~0_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\) # ((\B[6]~input_o\) # (\U6|U1|U3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[6]~input_o\,
	datad => \U6|U1|U3|Cout~0_combout\,
	combout => \U6|U1|U6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N28
\U6|U1|U7|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U7|Cout~0_combout\ = (\U6|U1|U6|Cout~0_combout\) # (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|U1|U6|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \U6|U1|U7|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (!\WideNor0~1_combout\ & (\U6|U2|U7|Cout~0_combout\ $ (\U6|U2|U8|S~0_combout\ $ (\U6|U1|U7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U7|Cout~0_combout\,
	datab => \U6|U2|U8|S~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \U6|U1|U7|Cout~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X16_Y16_N18
\Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Selector23~0_combout\) # ((\Selector23~1_combout\) # ((\B[8]~input_o\ & \Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \Selector23~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \Selector23~1_combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X16_Y16_N4
\Selector23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~6_combout\ = (\Selector23~5_combout\) # ((\Selector23~2_combout\) # ((!\WideNor0~5_combout\ & !\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector23~5_combout\,
	datac => \B[8]~input_o\,
	datad => \Selector23~2_combout\,
	combout => \Selector23~6_combout\);

-- Location: LCCOMB_X23_Y16_N16
\U6|U2|U8|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U8|Cout~0_combout\ = (\U6|U2|U7|Cout~0_combout\ & ((\A[8]~input_o\) # (\U6|U1|U7|Cout~0_combout\ $ (\B[8]~input_o\)))) # (!\U6|U2|U7|Cout~0_combout\ & (\A[8]~input_o\ & (\U6|U1|U7|Cout~0_combout\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U7|Cout~0_combout\,
	datab => \U6|U1|U7|Cout~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \U6|U2|U8|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\U6|U1|U8|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U8|Cout~0_combout\ = (\B[7]~input_o\) # ((\U6|U1|U6|Cout~0_combout\) # (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \U6|U1|U6|Cout~0_combout\,
	datad => \B[8]~input_o\,
	combout => \U6|U1|U8|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\U6|U2|U9|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U9|S~combout\ = \A[9]~input_o\ $ (\U6|U2|U8|Cout~0_combout\ $ (\U6|U1|U8|Cout~0_combout\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \U6|U2|U8|Cout~0_combout\,
	datac => \U6|U1|U8|Cout~0_combout\,
	datad => \B[9]~input_o\,
	combout => \U6|U2|U9|S~combout\);

-- Location: LCCOMB_X23_Y18_N2
\Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\WideNor0~1_combout\ & (((\Equal10~0_combout\ & \B[9]~input_o\)))) # (!\WideNor0~1_combout\ & ((\U6|U2|U9|S~combout\) # ((\Equal10~0_combout\ & \B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \U6|U2|U9|S~combout\,
	datac => \Equal10~0_combout\,
	datad => \B[9]~input_o\,
	combout => \Selector22~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Selector22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = (\Selector22~3_combout\) # ((!\WideNor0~4_combout\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~4_combout\,
	datac => \B[8]~input_o\,
	datad => \Selector22~3_combout\,
	combout => \Selector22~4_combout\);

-- Location: IOIBUF_X23_Y29_N8
\A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X23_Y16_N20
\U0|U7|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U7|Cout~0_combout\ = (\B[7]~input_o\ & \A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \U0|U7|Cout~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\U0|U8|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U8|Cout~0_combout\ = (\A[8]~input_o\ & ((\U0|U7|Cout~2_combout\) # ((\U0|U7|Cout~0_combout\) # (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\U0|U7|Cout~2_combout\) # (\U0|U7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U7|Cout~2_combout\,
	datab => \U0|U7|Cout~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \U0|U8|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\WideNor0~0_combout\ & (\B[9]~input_o\ $ (\A[9]~input_o\ $ (\U0|U8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \U0|U8|Cout~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: IOIBUF_X41_Y18_N1
\B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X23_Y18_N8
\Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (\Selector22~1_combout\) # ((\Selector22~0_combout\) # ((\B[10]~input_o\ & !\WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~1_combout\,
	datab => \Selector22~0_combout\,
	datac => \B[10]~input_o\,
	datad => \WideNor0~2_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Selector22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = (\Selector22~4_combout\) # ((\Selector22~2_combout\) # ((!\WideNor0~5_combout\ & !\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector22~4_combout\,
	datac => \Selector22~2_combout\,
	datad => \B[9]~input_o\,
	combout => \Selector22~5_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\B[10]~input_o\ & ((\Equal10~0_combout\) # ((!\WideNor0~4_combout\ & \B[9]~input_o\)))) # (!\B[10]~input_o\ & (!\WideNor0~4_combout\ & ((\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \WideNor0~4_combout\,
	datac => \Equal10~0_combout\,
	datad => \B[9]~input_o\,
	combout => \Selector21~3_combout\);

-- Location: IOIBUF_X41_Y18_N22
\A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X23_Y18_N20
\Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\A[10]~input_o\ & ((\Equal10~0_combout\) # ((\B[10]~input_o\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \A[10]~input_o\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (\Selector21~1_combout\) # ((\B[11]~input_o\ & !\WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Selector21~1_combout\,
	datac => \WideNor0~2_combout\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X23_Y16_N4
\U6|U1|U9|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U9|Cout~0_combout\ = (\B[7]~input_o\) # ((\B[8]~input_o\) # ((\U6|U1|U6|Cout~0_combout\) # (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \B[8]~input_o\,
	datac => \U6|U1|U6|Cout~0_combout\,
	datad => \B[9]~input_o\,
	combout => \U6|U1|U9|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\U6|U2|U10|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U10|S~combout\ = \U6|U2|U9|Cout~0_combout\ $ (\U6|U1|U9|Cout~0_combout\ $ (\A[10]~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U9|Cout~0_combout\,
	datab => \U6|U1|U9|Cout~0_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U6|U2|U10|S~combout\);

-- Location: LCCOMB_X23_Y18_N26
\Selector21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = (\Selector21~3_combout\) # ((\Selector21~2_combout\) # ((!\WideNor0~1_combout\ & \U6|U2|U10|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Selector21~3_combout\,
	datac => \Selector21~2_combout\,
	datad => \U6|U2|U10|S~combout\,
	combout => \Selector21~4_combout\);

-- Location: LCCOMB_X23_Y18_N0
\U0|U9|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U9|Cout~0_combout\ = (\U0|U8|Cout~0_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) # (!\U0|U8|Cout~0_combout\ & (\A[9]~input_o\ & \B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U8|Cout~0_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \U0|U9|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\WideNor0~0_combout\ & (\B[10]~input_o\ $ (\U0|U9|Cout~0_combout\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \U0|U9|Cout~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \A[10]~input_o\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Selector21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~5_combout\ = (\Selector21~4_combout\) # ((\Selector21~0_combout\) # ((!\WideNor0~5_combout\ & !\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~4_combout\,
	datab => \WideNor0~5_combout\,
	datac => \B[10]~input_o\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~5_combout\);

-- Location: IOIBUF_X41_Y19_N22
\B[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X26_Y18_N22
\Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\A[11]~input_o\ & ((\Equal10~0_combout\) # ((\B[11]~input_o\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Equal10~0_combout\,
	datac => \Equal9~1_combout\,
	datad => \A[11]~input_o\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\Selector20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = (\Selector20~1_combout\) # ((!\WideNor0~2_combout\ & \B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[12]~input_o\,
	datac => \Selector20~1_combout\,
	combout => \Selector20~2_combout\);

-- Location: IOIBUF_X41_Y18_N15
\B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X26_Y18_N18
\Selector20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = (\WideNor0~4_combout\ & (\Equal10~0_combout\ & (\B[11]~input_o\))) # (!\WideNor0~4_combout\ & ((\B[10]~input_o\) # ((\Equal10~0_combout\ & \B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \Equal10~0_combout\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Selector20~3_combout\);

-- Location: LCCOMB_X26_Y18_N28
\U6|U1|U10|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U10|Cout~0_combout\ = (\U6|U1|U9|Cout~0_combout\) # (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|U1|U9|Cout~0_combout\,
	datad => \B[10]~input_o\,
	combout => \U6|U1|U10|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\U6|U2|U11|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U11|S~combout\ = \U6|U2|U10|Cout~0_combout\ $ (\U6|U1|U10|Cout~0_combout\ $ (\B[11]~input_o\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U10|Cout~0_combout\,
	datab => \U6|U1|U10|Cout~0_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \U6|U2|U11|S~combout\);

-- Location: LCCOMB_X26_Y18_N10
\Selector20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~4_combout\ = (\Selector20~2_combout\) # ((\Selector20~3_combout\) # ((!\WideNor0~1_combout\ & \U6|U2|U11|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Selector20~2_combout\,
	datac => \Selector20~3_combout\,
	datad => \U6|U2|U11|S~combout\,
	combout => \Selector20~4_combout\);

-- Location: LCCOMB_X26_Y18_N20
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\WideNor0~0_combout\ & (\U0|U10|Cout~0_combout\ $ (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U10|Cout~0_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Selector20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~5_combout\ = (\Selector20~4_combout\) # ((\Selector20~0_combout\) # ((!\B[11]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~4_combout\,
	datab => \Selector20~0_combout\,
	datac => \B[11]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector20~5_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\A[12]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \B[12]~input_o\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X26_Y18_N12
\Selector19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\B[11]~input_o\ & (((\Equal10~0_combout\ & \B[12]~input_o\)) # (!\WideNor0~4_combout\))) # (!\B[11]~input_o\ & (\Equal10~0_combout\ & (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Equal10~0_combout\,
	datac => \B[12]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector19~3_combout\);

-- Location: IOIBUF_X41_Y20_N15
\B[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X26_Y18_N0
\U6|U1|U11|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U11|Cout~0_combout\ = (\U6|U1|U9|Cout~0_combout\) # ((\B[11]~input_o\) # (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|U1|U9|Cout~0_combout\,
	datac => \B[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U6|U1|U11|Cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\U6|U2|U11|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U11|Cout~0_combout\ = (\U6|U2|U10|Cout~0_combout\ & ((\A[11]~input_o\) # (\U6|U1|U10|Cout~0_combout\ $ (\B[11]~input_o\)))) # (!\U6|U2|U10|Cout~0_combout\ & (\A[11]~input_o\ & (\U6|U1|U10|Cout~0_combout\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U10|Cout~0_combout\,
	datab => \U6|U1|U10|Cout~0_combout\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \U6|U2|U11|Cout~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\U6|U2|U12|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U12|S~combout\ = \A[12]~input_o\ $ (\U6|U1|U11|Cout~0_combout\ $ (\U6|U2|U11|Cout~0_combout\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \U6|U1|U11|Cout~0_combout\,
	datac => \U6|U2|U11|Cout~0_combout\,
	datad => \B[12]~input_o\,
	combout => \U6|U2|U12|S~combout\);

-- Location: LCCOMB_X26_Y19_N10
\Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\WideNor0~1_combout\ & (!\WideNor0~2_combout\ & (\B[13]~input_o\))) # (!\WideNor0~1_combout\ & ((\U6|U2|U12|S~combout\) # ((!\WideNor0~2_combout\ & \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \WideNor0~2_combout\,
	datac => \B[13]~input_o\,
	datad => \U6|U2|U12|S~combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X26_Y19_N22
\Selector19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\Selector19~2_combout\) # ((\Selector19~3_combout\) # (\Selector19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~2_combout\,
	datac => \Selector19~3_combout\,
	datad => \Selector19~1_combout\,
	combout => \Selector19~4_combout\);

-- Location: IOIBUF_X26_Y29_N29
\A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X26_Y19_N6
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\WideNor0~0_combout\ & (\U0|U11|Cout~0_combout\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U11|Cout~0_combout\,
	datab => \B[12]~input_o\,
	datac => \WideNor0~0_combout\,
	datad => \A[12]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\Selector19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (\Selector19~4_combout\) # ((\Selector19~0_combout\) # ((!\WideNor0~5_combout\ & !\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \B[12]~input_o\,
	datac => \Selector19~4_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~5_combout\);

-- Location: IOIBUF_X41_Y20_N1
\A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X26_Y19_N16
\U6|U2|U13|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U13|S~0_combout\ = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \U6|U2|U13|S~0_combout\);

-- Location: LCCOMB_X26_Y19_N14
\U0|U12|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U12|Cout~0_combout\ = (\U0|U11|Cout~0_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) # (!\U0|U11|Cout~0_combout\ & (\B[12]~input_o\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U11|Cout~0_combout\,
	datab => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \U0|U12|Cout~0_combout\);

-- Location: IOIBUF_X21_Y0_N22
\B[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X26_Y18_N30
\U6|U1|U12|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U12|Cout~0_combout\ = (\B[11]~input_o\) # ((\U6|U1|U9|Cout~0_combout\) # ((\B[12]~input_o\) # (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \U6|U1|U9|Cout~0_combout\,
	datac => \B[12]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U6|U1|U12|Cout~0_combout\);

-- Location: LCCOMB_X26_Y19_N18
\U6|U2|U12|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U12|Cout~0_combout\ = (\A[12]~input_o\ & ((\U6|U2|U11|Cout~0_combout\) # (\U6|U1|U11|Cout~0_combout\ $ (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\U6|U2|U11|Cout~0_combout\ & (\U6|U1|U11|Cout~0_combout\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \U6|U1|U11|Cout~0_combout\,
	datac => \U6|U2|U11|Cout~0_combout\,
	datad => \B[12]~input_o\,
	combout => \U6|U2|U12|Cout~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\U6|U2|U13|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U13|S~combout\ = \B[13]~input_o\ $ (\U6|U1|U12|Cout~0_combout\ $ (\U6|U2|U12|Cout~0_combout\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \U6|U1|U12|Cout~0_combout\,
	datac => \U6|U2|U12|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \U6|U2|U13|S~combout\);

-- Location: LCCOMB_X24_Y18_N26
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\WideNor0~4_combout\ & (!\WideNor0~1_combout\ & ((\U6|U2|U13|S~combout\)))) # (!\WideNor0~4_combout\ & ((\B[12]~input_o\) # ((!\WideNor0~1_combout\ & \U6|U2|U13|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \WideNor0~1_combout\,
	datac => \B[12]~input_o\,
	datad => \U6|U2|U13|S~combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\A[13]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \A[13]~input_o\,
	datac => \Equal9~1_combout\,
	datad => \B[13]~input_o\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~0_combout\) # ((\Selector18~1_combout\) # ((!\WideNor0~2_combout\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[14]~input_o\,
	datac => \Selector18~0_combout\,
	datad => \Selector18~1_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X26_Y19_N12
\Selector18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (\Selector18~2_combout\) # ((\B[13]~input_o\ & ((\Equal10~0_combout\))) # (!\B[13]~input_o\ & (!\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector18~2_combout\,
	datac => \B[13]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X26_Y19_N26
\Selector18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (\Selector18~3_combout\) # ((!\WideNor0~0_combout\ & (\U6|U2|U13|S~0_combout\ $ (\U0|U12|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \U6|U2|U13|S~0_combout\,
	datac => \U0|U12|Cout~0_combout\,
	datad => \Selector18~3_combout\,
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Equal10~0_combout\ & ((\B[14]~input_o\) # ((!\WideNor0~4_combout\ & \B[13]~input_o\)))) # (!\Equal10~0_combout\ & (((!\WideNor0~4_combout\ & \B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \B[14]~input_o\,
	datac => \WideNor0~4_combout\,
	datad => \B[13]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: IOIBUF_X21_Y0_N15
\A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X24_Y18_N18
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\A[14]~input_o\ & ((\Equal10~0_combout\) # ((\B[14]~input_o\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \B[14]~input_o\,
	datac => \Equal9~1_combout\,
	datad => \A[14]~input_o\,
	combout => \Selector17~2_combout\);

-- Location: IOIBUF_X41_Y17_N1
\B[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X24_Y18_N22
\U6|U2|U13|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U13|Cout~0_combout\ = (\U6|U2|U12|Cout~0_combout\ & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\U6|U1|U12|Cout~0_combout\)))) # (!\U6|U2|U12|Cout~0_combout\ & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\U6|U1|U12|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \U6|U1|U12|Cout~0_combout\,
	datac => \U6|U2|U12|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \U6|U2|U13|Cout~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\U6|U2|U14|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U14|S~0_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \U6|U2|U14|S~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (!\WideNor0~1_combout\ & (\U6|U1|U13|Cout~0_combout\ $ (\U6|U2|U13|Cout~0_combout\ $ (\U6|U2|U14|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U13|Cout~0_combout\,
	datab => \WideNor0~1_combout\,
	datac => \U6|U2|U13|Cout~0_combout\,
	datad => \U6|U2|U14|S~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X24_Y18_N28
\Selector17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector17~2_combout\) # ((\Selector17~1_combout\) # ((!\WideNor0~2_combout\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \Selector17~2_combout\,
	datac => \B[15]~input_o\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Selector17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = (\Selector17~0_combout\) # ((\Selector17~3_combout\) # ((!\B[14]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \WideNor0~5_combout\,
	datac => \Selector17~0_combout\,
	datad => \Selector17~3_combout\,
	combout => \Selector17~4_combout\);

-- Location: LCCOMB_X26_Y19_N28
\U0|U13|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U13|Cout~0_combout\ = (\U0|U11|Cout~0_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) # (!\U0|U11|Cout~0_combout\ & (\B[12]~input_o\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U11|Cout~0_combout\,
	datab => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \U0|U13|Cout~0_combout\);

-- Location: LCCOMB_X26_Y19_N30
\U0|U13|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U13|Cout~1_combout\ = (\A[13]~input_o\ & ((\U0|U13|Cout~0_combout\) # (\B[13]~input_o\))) # (!\A[13]~input_o\ & (\U0|U13|Cout~0_combout\ & \B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \U0|U13|Cout~0_combout\,
	datac => \B[13]~input_o\,
	combout => \U0|U13|Cout~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Selector17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = (\Selector17~4_combout\) # ((!\WideNor0~0_combout\ & (\U0|U13|Cout~1_combout\ $ (\U6|U2|U14|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~4_combout\,
	datab => \WideNor0~0_combout\,
	datac => \U0|U13|Cout~1_combout\,
	datad => \U6|U2|U14|S~0_combout\,
	combout => \Selector17~5_combout\);

-- Location: IOIBUF_X21_Y29_N1
\A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X24_Y18_N12
\U6|U1|U13|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U13|Cout~0_combout\ = (\U6|U1|U12|Cout~0_combout\) # (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|U1|U12|Cout~0_combout\,
	datad => \B[13]~input_o\,
	combout => \U6|U1|U13|Cout~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\U6|U2|U14|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U14|Cout~0_combout\ = (\A[14]~input_o\ & ((\U6|U2|U13|Cout~0_combout\) # (\B[14]~input_o\ $ (\U6|U1|U13|Cout~0_combout\)))) # (!\A[14]~input_o\ & (\U6|U2|U13|Cout~0_combout\ & (\B[14]~input_o\ $ (\U6|U1|U13|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \U6|U2|U13|Cout~0_combout\,
	datad => \U6|U1|U13|Cout~0_combout\,
	combout => \U6|U2|U14|Cout~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\U6|U2|U15|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U15|S~combout\ = \U6|U1|U14|Cout~0_combout\ $ (\A[15]~input_o\ $ (\B[15]~input_o\ $ (\U6|U2|U14|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U14|Cout~0_combout\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \U6|U2|U14|Cout~0_combout\,
	combout => \U6|U2|U15|S~combout\);

-- Location: LCCOMB_X16_Y16_N10
\Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\WideNor0~5_combout\ & (\U6|U2|U15|S~combout\ & ((!\WideNor0~1_combout\)))) # (!\WideNor0~5_combout\ & (((\U6|U2|U15|S~combout\ & !\WideNor0~1_combout\)) # (!\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \U6|U2|U15|S~combout\,
	datac => \B[15]~input_o\,
	datad => \WideNor0~1_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X16_Y16_N8
\Selector16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\B[14]~input_o\ & (((\Equal10~0_combout\ & \B[15]~input_o\)) # (!\WideNor0~4_combout\))) # (!\B[14]~input_o\ & (\Equal10~0_combout\ & (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \Equal10~0_combout\,
	datac => \B[15]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\A[15]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \Equal10~0_combout\,
	datac => \B[15]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Selector16~2_combout\);

-- Location: IOIBUF_X21_Y0_N8
\B[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X16_Y16_N30
\Selector16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector16~2_combout\) # ((!\WideNor0~2_combout\ & \B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \Selector16~2_combout\,
	datac => \B[16]~input_o\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X24_Y18_N2
\U0|U14|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U14|Cout~0_combout\ = (\A[14]~input_o\ & ((\U0|U13|Cout~1_combout\) # (\B[14]~input_o\))) # (!\A[14]~input_o\ & (\U0|U13|Cout~1_combout\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \U0|U13|Cout~1_combout\,
	datad => \B[14]~input_o\,
	combout => \U0|U14|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N16
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\WideNor0~0_combout\ & (\A[15]~input_o\ $ (\U0|U14|Cout~0_combout\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \A[15]~input_o\,
	datac => \U0|U14|Cout~0_combout\,
	datad => \B[15]~input_o\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X16_Y16_N26
\Selector16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = (\Selector16~1_combout\) # ((\Selector16~4_combout\) # ((\Selector16~3_combout\) # (\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~1_combout\,
	datab => \Selector16~4_combout\,
	datac => \Selector16~3_combout\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~5_combout\);

-- Location: LCCOMB_X17_Y18_N30
\U0|U15|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U15|Cout~0_combout\ = (\U0|U14|Cout~0_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # (!\U0|U14|Cout~0_combout\ & (\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U14|Cout~0_combout\,
	datab => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \U0|U15|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N14
\Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\A[16]~input_o\ & ((\Equal10~0_combout\) # ((\B[16]~input_o\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Equal10~0_combout\,
	datac => \B[16]~input_o\,
	datad => \Equal9~1_combout\,
	combout => \Selector15~1_combout\);

-- Location: IOIBUF_X9_Y29_N29
\B[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X17_Y18_N0
\Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Selector15~0_combout\) # ((\Selector15~1_combout\) # ((!\WideNor0~2_combout\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \WideNor0~2_combout\,
	datac => \Selector15~1_combout\,
	datad => \B[17]~input_o\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X17_Y18_N20
\Selector15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Selector15~3_combout\) # ((\Selector15~2_combout\) # ((!\B[16]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~3_combout\,
	datab => \Selector15~2_combout\,
	datac => \B[16]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector15~4_combout\);

-- Location: IOIBUF_X21_Y0_N1
\A[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X17_Y18_N26
\U6|U2|U16|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U16|S~0_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	combout => \U6|U2|U16|S~0_combout\);

-- Location: LCCOMB_X17_Y18_N8
\Selector15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = (\Selector15~4_combout\) # ((!\WideNor0~0_combout\ & (\U0|U15|Cout~0_combout\ $ (\U6|U2|U16|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U15|Cout~0_combout\,
	datab => \Selector15~4_combout\,
	datac => \U6|U2|U16|S~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \Selector15~5_combout\);

-- Location: LCCOMB_X16_Y16_N20
\U6|U2|U15|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U15|Cout~0_combout\ = (\A[15]~input_o\ & ((\U6|U2|U14|Cout~0_combout\) # (\U6|U1|U14|Cout~0_combout\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\U6|U2|U14|Cout~0_combout\ & (\U6|U1|U14|Cout~0_combout\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U14|Cout~0_combout\,
	datab => \A[15]~input_o\,
	datac => \B[15]~input_o\,
	datad => \U6|U2|U14|Cout~0_combout\,
	combout => \U6|U2|U15|Cout~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\U6|U1|U15|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U15|Cout~0_combout\ = (\B[13]~input_o\) # ((\B[14]~input_o\) # ((\B[15]~input_o\) # (\U6|U1|U12|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[15]~input_o\,
	datad => \U6|U1|U12|Cout~0_combout\,
	combout => \U6|U1|U15|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N24
\U6|U2|U16|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U16|Cout~0_combout\ = (\A[16]~input_o\ & ((\U6|U2|U15|Cout~0_combout\) # (\B[16]~input_o\ $ (\U6|U1|U15|Cout~0_combout\)))) # (!\A[16]~input_o\ & (\U6|U2|U15|Cout~0_combout\ & (\B[16]~input_o\ $ (\U6|U1|U15|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \U6|U2|U15|Cout~0_combout\,
	datac => \B[16]~input_o\,
	datad => \U6|U1|U15|Cout~0_combout\,
	combout => \U6|U2|U16|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\U6|U1|U16|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U16|Cout~0_combout\ = (\B[16]~input_o\) # (\U6|U1|U15|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[16]~input_o\,
	datad => \U6|U1|U15|Cout~0_combout\,
	combout => \U6|U1|U16|Cout~0_combout\);

-- Location: LCCOMB_X16_Y18_N22
\U6|U2|U17|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U17|S~combout\ = \A[17]~input_o\ $ (\U6|U2|U16|Cout~0_combout\ $ (\B[17]~input_o\ $ (\U6|U1|U16|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \U6|U2|U16|Cout~0_combout\,
	datac => \B[17]~input_o\,
	datad => \U6|U1|U16|Cout~0_combout\,
	combout => \U6|U2|U17|S~combout\);

-- Location: LCCOMB_X17_Y18_N18
\U0|U16|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U16|Cout~0_combout\ = (\U0|U14|Cout~0_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # (!\U0|U14|Cout~0_combout\ & (\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U14|Cout~0_combout\,
	datab => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \U0|U16|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N4
\U0|U16|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U16|Cout~1_combout\ = (\B[16]~input_o\ & ((\U0|U16|Cout~0_combout\) # (\A[16]~input_o\))) # (!\B[16]~input_o\ & (\U0|U16|Cout~0_combout\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \U0|U16|Cout~0_combout\,
	datac => \A[16]~input_o\,
	combout => \U0|U16|Cout~1_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\WideNor0~0_combout\ & (\A[17]~input_o\ $ (\B[17]~input_o\ $ (\U0|U16|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \WideNor0~0_combout\,
	datac => \B[17]~input_o\,
	datad => \U0|U16|Cout~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: IOIBUF_X9_Y29_N1
\B[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X12_Y22_N8
\Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\WideNor0~2_combout\ & (\B[16]~input_o\ & (!\WideNor0~4_combout\))) # (!\WideNor0~2_combout\ & ((\B[18]~input_o\) # ((\B[16]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[16]~input_o\,
	datac => \WideNor0~4_combout\,
	datad => \B[18]~input_o\,
	combout => \Selector14~1_combout\);

-- Location: IOIBUF_X16_Y29_N22
\A[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X16_Y18_N10
\Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Equal10~0_combout\ & (((\B[17]~input_o\) # (\A[17]~input_o\)))) # (!\Equal10~0_combout\ & (\Equal9~1_combout\ & (\B[17]~input_o\ & \A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal9~1_combout\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X16_Y18_N12
\Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~1_combout\) # ((\Selector14~2_combout\) # ((!\B[17]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \Selector14~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector14~2_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCCOMB_X16_Y18_N16
\Selector14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = (\Selector14~0_combout\) # ((\Selector14~3_combout\) # ((\U6|U2|U17|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U17|S~combout\,
	datab => \Selector14~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \Selector14~3_combout\,
	combout => \Selector14~4_combout\);

-- Location: IOIBUF_X11_Y29_N15
\A[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X16_Y18_N20
\U6|U2|U17|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U17|Cout~0_combout\ = (\A[17]~input_o\ & ((\U6|U2|U16|Cout~0_combout\) # (\B[17]~input_o\ $ (\U6|U1|U16|Cout~0_combout\)))) # (!\A[17]~input_o\ & (\U6|U2|U16|Cout~0_combout\ & (\B[17]~input_o\ $ (\U6|U1|U16|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \U6|U2|U16|Cout~0_combout\,
	datac => \B[17]~input_o\,
	datad => \U6|U1|U16|Cout~0_combout\,
	combout => \U6|U2|U17|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N2
\U6|U1|U17|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U17|Cout~0_combout\ = (\B[17]~input_o\) # ((\B[16]~input_o\) # (\U6|U1|U15|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \U6|U1|U15|Cout~0_combout\,
	combout => \U6|U1|U17|Cout~0_combout\);

-- Location: LCCOMB_X12_Y22_N10
\U6|U2|U18|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U18|S~combout\ = \B[18]~input_o\ $ (\A[18]~input_o\ $ (\U6|U2|U17|Cout~0_combout\ $ (\U6|U1|U17|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \U6|U2|U17|Cout~0_combout\,
	datad => \U6|U1|U17|Cout~0_combout\,
	combout => \U6|U2|U18|S~combout\);

-- Location: LCCOMB_X16_Y18_N18
\U0|U17|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U17|Cout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # (\U0|U16|Cout~1_combout\))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & \U0|U16|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \U0|U16|Cout~1_combout\,
	combout => \U0|U17|Cout~0_combout\);

-- Location: LCCOMB_X12_Y22_N18
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\WideNor0~0_combout\ & (\B[18]~input_o\ $ (\A[18]~input_o\ $ (\U0|U17|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \WideNor0~0_combout\,
	datad => \U0|U17|Cout~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X12_Y22_N14
\Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\B[18]~input_o\ & ((\Equal10~0_combout\) # ((\A[18]~input_o\ & \Equal9~1_combout\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & ((\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \Equal9~1_combout\,
	datad => \Equal10~0_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X12_Y22_N12
\Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\B[19]~input_o\ & (((!\WideNor0~4_combout\ & \B[17]~input_o\)) # (!\WideNor0~2_combout\))) # (!\B[19]~input_o\ & (!\WideNor0~4_combout\ & (\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \WideNor0~4_combout\,
	datac => \B[17]~input_o\,
	datad => \WideNor0~2_combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X12_Y22_N0
\Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\) # ((\Selector13~1_combout\) # ((!\B[18]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \Selector13~2_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X12_Y22_N4
\Selector13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\Selector13~0_combout\) # ((\Selector13~3_combout\) # ((\U6|U2|U18|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U18|S~combout\,
	datab => \Selector13~0_combout\,
	datac => \Selector13~3_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector13~4_combout\);

-- Location: IOIBUF_X11_Y29_N29
\A[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X12_Y22_N20
\Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\B[19]~input_o\ & ((\Equal10~0_combout\) # ((\A[19]~input_o\ & \Equal9~1_combout\)))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & ((\Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \Equal9~1_combout\,
	datad => \Equal10~0_combout\,
	combout => \Selector12~2_combout\);

-- Location: IOIBUF_X0_Y22_N1
\B[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X12_Y22_N22
\Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~1_combout\) # ((\Selector12~2_combout\) # ((!\WideNor0~5_combout\ & !\B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~1_combout\,
	datab => \Selector12~2_combout\,
	datac => \WideNor0~5_combout\,
	datad => \B[19]~input_o\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X12_Y22_N6
\U0|U18|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U18|Cout~0_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # (\U0|U17|Cout~0_combout\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & \U0|U17|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => \U0|U17|Cout~0_combout\,
	combout => \U0|U18|Cout~0_combout\);

-- Location: LCCOMB_X12_Y22_N16
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\WideNor0~0_combout\ & (\B[19]~input_o\ $ (\A[19]~input_o\ $ (\U0|U18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \WideNor0~0_combout\,
	datac => \A[19]~input_o\,
	datad => \U0|U18|Cout~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\U6|U2|U18|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U18|Cout~0_combout\ = (\A[18]~input_o\ & ((\U6|U2|U17|Cout~0_combout\) # (\B[18]~input_o\ $ (\U6|U1|U17|Cout~0_combout\)))) # (!\A[18]~input_o\ & (\U6|U2|U17|Cout~0_combout\ & (\B[18]~input_o\ $ (\U6|U1|U17|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \U6|U2|U17|Cout~0_combout\,
	datad => \U6|U1|U17|Cout~0_combout\,
	combout => \U6|U2|U18|Cout~0_combout\);

-- Location: LCCOMB_X17_Y18_N28
\U6|U1|U18|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U18|Cout~0_combout\ = (\B[16]~input_o\) # ((\B[17]~input_o\) # ((\B[18]~input_o\) # (\U6|U1|U15|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[18]~input_o\,
	datad => \U6|U1|U15|Cout~0_combout\,
	combout => \U6|U1|U18|Cout~0_combout\);

-- Location: LCCOMB_X11_Y22_N16
\U6|U2|U19|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U19|S~combout\ = \B[19]~input_o\ $ (\U6|U2|U18|Cout~0_combout\ $ (\A[19]~input_o\ $ (\U6|U1|U18|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \U6|U2|U18|Cout~0_combout\,
	datac => \A[19]~input_o\,
	datad => \U6|U1|U18|Cout~0_combout\,
	combout => \U6|U2|U19|S~combout\);

-- Location: LCCOMB_X12_Y22_N2
\Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Selector12~3_combout\) # ((\Selector12~0_combout\) # ((\U6|U2|U19|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~3_combout\,
	datab => \Selector12~0_combout\,
	datac => \U6|U2|U19|S~combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector12~4_combout\);

-- Location: IOIBUF_X7_Y29_N22
\A[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\B[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X12_Y22_N28
\U0|U19|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U19|Cout~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # (\U0|U18|Cout~0_combout\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & \U0|U18|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \U0|U18|Cout~0_combout\,
	combout => \U0|U19|Cout~0_combout\);

-- Location: LCCOMB_X11_Y22_N10
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\WideNor0~0_combout\ & (\A[20]~input_o\ $ (\B[20]~input_o\ $ (\U0|U19|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \U0|U19|Cout~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\B[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X11_Y22_N4
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\B[19]~input_o\ & (((!\WideNor0~2_combout\ & \B[21]~input_o\)) # (!\WideNor0~4_combout\))) # (!\B[19]~input_o\ & (!\WideNor0~2_combout\ & (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \WideNor0~2_combout\,
	datac => \B[21]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X11_Y22_N24
\Selector11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~2_combout\) # ((\Selector11~1_combout\) # ((!\WideNor0~5_combout\ & !\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datab => \Selector11~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \B[20]~input_o\,
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X11_Y22_N18
\U6|U1|U19|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U19|Cout~0_combout\ = (\B[19]~input_o\) # (\U6|U1|U18|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datad => \U6|U1|U18|Cout~0_combout\,
	combout => \U6|U1|U19|Cout~0_combout\);

-- Location: LCCOMB_X11_Y22_N6
\U6|U2|U20|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U20|S~combout\ = \U6|U2|U19|Cout~0_combout\ $ (\A[20]~input_o\ $ (\B[20]~input_o\ $ (\U6|U1|U19|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U19|Cout~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \U6|U1|U19|Cout~0_combout\,
	combout => \U6|U2|U20|S~combout\);

-- Location: LCCOMB_X11_Y22_N0
\Selector11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (\Selector11~0_combout\) # ((\Selector11~3_combout\) # ((\U6|U2|U20|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \Selector11~3_combout\,
	datac => \U6|U2|U20|S~combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X11_Y22_N8
\U6|U2|U20|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U20|Cout~0_combout\ = (\U6|U2|U19|Cout~0_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\ $ (\U6|U1|U19|Cout~0_combout\)))) # (!\U6|U2|U19|Cout~0_combout\ & (\A[20]~input_o\ & (\B[20]~input_o\ $ (\U6|U1|U19|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U19|Cout~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \U6|U1|U19|Cout~0_combout\,
	combout => \U6|U2|U20|Cout~0_combout\);

-- Location: LCCOMB_X11_Y22_N30
\U6|U1|U20|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U20|Cout~0_combout\ = (\B[19]~input_o\) # ((\B[20]~input_o\) # (\U6|U1|U18|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \B[20]~input_o\,
	datad => \U6|U1|U18|Cout~0_combout\,
	combout => \U6|U1|U20|Cout~0_combout\);

-- Location: IOIBUF_X0_Y24_N15
\A[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X11_Y21_N12
\U6|U2|U21|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U21|S~combout\ = \B[21]~input_o\ $ (\U6|U2|U20|Cout~0_combout\ $ (\U6|U1|U20|Cout~0_combout\ $ (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \U6|U2|U20|Cout~0_combout\,
	datac => \U6|U1|U20|Cout~0_combout\,
	datad => \A[21]~input_o\,
	combout => \U6|U2|U21|S~combout\);

-- Location: LCCOMB_X11_Y22_N2
\U0|U20|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U20|Cout~0_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # (\U0|U19|Cout~0_combout\))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & \U0|U19|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \U0|U19|Cout~0_combout\,
	combout => \U0|U20|Cout~0_combout\);

-- Location: LCCOMB_X11_Y21_N8
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\WideNor0~0_combout\ & (\B[21]~input_o\ $ (\U0|U20|Cout~0_combout\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \U0|U20|Cout~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \A[21]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\B[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X12_Y22_N30
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\WideNor0~2_combout\ & (\B[20]~input_o\ & (!\WideNor0~4_combout\))) # (!\WideNor0~2_combout\ & ((\B[22]~input_o\) # ((\B[20]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[20]~input_o\,
	datac => \WideNor0~4_combout\,
	datad => \B[22]~input_o\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X11_Y22_N28
\Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Equal10~0_combout\ & ((\A[21]~input_o\) # ((\B[21]~input_o\)))) # (!\Equal10~0_combout\ & (\A[21]~input_o\ & (\B[21]~input_o\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \Equal9~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X11_Y21_N2
\Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~1_combout\) # ((\Selector10~2_combout\) # ((!\B[21]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \Selector10~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X11_Y21_N14
\Selector10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\Selector10~0_combout\) # ((\Selector10~3_combout\) # ((\U6|U2|U21|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U21|S~combout\,
	datab => \Selector10~0_combout\,
	datac => \WideNor0~1_combout\,
	datad => \Selector10~3_combout\,
	combout => \Selector10~4_combout\);

-- Location: LCCOMB_X11_Y21_N24
\U0|U21|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U21|Cout~0_combout\ = (\B[21]~input_o\ & ((\U0|U20|Cout~0_combout\) # (\A[21]~input_o\))) # (!\B[21]~input_o\ & (\U0|U20|Cout~0_combout\ & \A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \U0|U20|Cout~0_combout\,
	datad => \A[21]~input_o\,
	combout => \U0|U21|Cout~0_combout\);

-- Location: LCCOMB_X11_Y21_N10
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\WideNor0~0_combout\ & (\A[22]~input_o\ $ (\U0|U21|Cout~0_combout\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \U0|U21|Cout~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \B[22]~input_o\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X11_Y22_N26
\U6|U1|U21|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U21|Cout~0_combout\ = (\B[19]~input_o\) # ((\B[20]~input_o\) # ((\B[21]~input_o\) # (\U6|U1|U18|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[21]~input_o\,
	datad => \U6|U1|U18|Cout~0_combout\,
	combout => \U6|U1|U21|Cout~0_combout\);

-- Location: LCCOMB_X11_Y21_N26
\U6|U2|U21|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U21|Cout~0_combout\ = (\U6|U2|U20|Cout~0_combout\ & ((\A[21]~input_o\) # (\B[21]~input_o\ $ (\U6|U1|U20|Cout~0_combout\)))) # (!\U6|U2|U20|Cout~0_combout\ & (\A[21]~input_o\ & (\B[21]~input_o\ $ (\U6|U1|U20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \U6|U2|U20|Cout~0_combout\,
	datac => \U6|U1|U20|Cout~0_combout\,
	datad => \A[21]~input_o\,
	combout => \U6|U2|U21|Cout~0_combout\);

-- Location: LCCOMB_X11_Y21_N28
\U6|U2|U22|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U22|S~combout\ = \A[22]~input_o\ $ (\U6|U1|U21|Cout~0_combout\ $ (\U6|U2|U21|Cout~0_combout\ $ (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \U6|U1|U21|Cout~0_combout\,
	datac => \U6|U2|U21|Cout~0_combout\,
	datad => \B[22]~input_o\,
	combout => \U6|U2|U22|S~combout\);

-- Location: IOIBUF_X0_Y24_N1
\B[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X11_Y21_N4
\Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\WideNor0~2_combout\ & (((\B[21]~input_o\ & !\WideNor0~4_combout\)))) # (!\WideNor0~2_combout\ & ((\B[23]~input_o\) # ((\B[21]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[23]~input_o\,
	datac => \B[21]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X11_Y21_N6
\Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\A[22]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[22]~input_o\)))) # (!\A[22]~input_o\ & (((\Equal10~0_combout\ & \B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \B[22]~input_o\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X11_Y21_N0
\Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector9~1_combout\) # ((\Selector9~2_combout\) # ((!\B[22]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Selector9~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: LCCOMB_X11_Y21_N22
\Selector9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\Selector9~0_combout\) # ((\Selector9~3_combout\) # ((\U6|U2|U22|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \U6|U2|U22|S~combout\,
	datac => \WideNor0~1_combout\,
	datad => \Selector9~3_combout\,
	combout => \Selector9~4_combout\);

-- Location: IOIBUF_X5_Y29_N22
\A[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X11_Y21_N18
\U0|U22|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U22|Cout~1_combout\ = (\B[22]~input_o\) # (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \U0|U22|Cout~1_combout\);

-- Location: LCCOMB_X11_Y21_N20
\U0|U22|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U22|Cout~2_combout\ = (\U0|U22|Cout~1_combout\ & ((\A[21]~input_o\ & ((\B[21]~input_o\) # (\U0|U20|Cout~0_combout\))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & \U0|U20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \U0|U22|Cout~1_combout\,
	datac => \B[21]~input_o\,
	datad => \U0|U20|Cout~0_combout\,
	combout => \U0|U22|Cout~2_combout\);

-- Location: LCCOMB_X11_Y21_N16
\U0|U22|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U22|Cout~0_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \U0|U22|Cout~0_combout\);

-- Location: IOIBUF_X11_Y29_N1
\A[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X12_Y21_N0
\U6|U2|U23|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U23|S~0_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \U6|U2|U23|S~0_combout\);

-- Location: LCCOMB_X12_Y21_N26
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\WideNor0~0_combout\ & (\U6|U2|U23|S~0_combout\ $ (((\U0|U22|Cout~2_combout\) # (\U0|U22|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \U0|U22|Cout~2_combout\,
	datac => \U0|U22|Cout~0_combout\,
	datad => \U6|U2|U23|S~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X11_Y21_N30
\U6|U2|U22|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U22|Cout~0_combout\ = (\A[22]~input_o\ & ((\U6|U2|U21|Cout~0_combout\) # (\U6|U1|U21|Cout~0_combout\ $ (\B[22]~input_o\)))) # (!\A[22]~input_o\ & (\U6|U2|U21|Cout~0_combout\ & (\U6|U1|U21|Cout~0_combout\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \U6|U1|U21|Cout~0_combout\,
	datac => \U6|U2|U21|Cout~0_combout\,
	datad => \B[22]~input_o\,
	combout => \U6|U2|U22|Cout~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\U6|U1|U22|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U22|Cout~0_combout\ = (\B[22]~input_o\) # (\U6|U1|U21|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \U6|U1|U21|Cout~0_combout\,
	combout => \U6|U1|U22|Cout~0_combout\);

-- Location: LCCOMB_X12_Y21_N16
\U6|U2|U23|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U23|S~combout\ = \B[23]~input_o\ $ (\U6|U2|U22|Cout~0_combout\ $ (\U6|U1|U22|Cout~0_combout\ $ (\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \U6|U2|U22|Cout~0_combout\,
	datac => \U6|U1|U22|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \U6|U2|U23|S~combout\);

-- Location: LCCOMB_X12_Y21_N28
\Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\A[23]~input_o\ & ((\Equal10~0_combout\) # ((\B[23]~input_o\ & \Equal9~1_combout\)))) # (!\A[23]~input_o\ & (\Equal10~0_combout\ & (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \Equal10~0_combout\,
	datac => \B[23]~input_o\,
	datad => \Equal9~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: IOIBUF_X0_Y23_N8
\B[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X14_Y18_N26
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\B[22]~input_o\ & (((!\WideNor0~2_combout\ & \B[24]~input_o\)) # (!\WideNor0~4_combout\))) # (!\B[22]~input_o\ & (!\WideNor0~2_combout\ & (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \WideNor0~2_combout\,
	datac => \B[24]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X12_Y21_N22
\Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~2_combout\) # ((\Selector8~1_combout\) # ((!\B[23]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Selector8~2_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X12_Y21_N2
\Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (\Selector8~0_combout\) # ((\Selector8~3_combout\) # ((\U6|U2|U23|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \U6|U2|U23|S~combout\,
	datac => \Selector8~3_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector8~4_combout\);

-- Location: IOIBUF_X0_Y21_N15
\A[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X11_Y22_N20
\U6|U1|U23|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U23|Cout~0_combout\ = (\B[23]~input_o\) # ((\U6|U1|U21|Cout~0_combout\) # (\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datac => \U6|U1|U21|Cout~0_combout\,
	datad => \B[22]~input_o\,
	combout => \U6|U1|U23|Cout~0_combout\);

-- Location: LCCOMB_X12_Y21_N6
\U6|U2|U23|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U23|Cout~0_combout\ = (\U6|U2|U22|Cout~0_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\ $ (\U6|U1|U22|Cout~0_combout\)))) # (!\U6|U2|U22|Cout~0_combout\ & (\A[23]~input_o\ & (\B[23]~input_o\ $ (\U6|U1|U22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \U6|U2|U22|Cout~0_combout\,
	datac => \U6|U1|U22|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \U6|U2|U23|Cout~0_combout\);

-- Location: LCCOMB_X12_Y21_N24
\U6|U2|U24|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U24|S~combout\ = \B[24]~input_o\ $ (\A[24]~input_o\ $ (\U6|U1|U23|Cout~0_combout\ $ (\U6|U2|U23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \U6|U1|U23|Cout~0_combout\,
	datad => \U6|U2|U23|Cout~0_combout\,
	combout => \U6|U2|U24|S~combout\);

-- Location: IOIBUF_X9_Y29_N22
\B[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X12_Y21_N8
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\WideNor0~2_combout\ & (((\B[23]~input_o\ & !\WideNor0~4_combout\)))) # (!\WideNor0~2_combout\ & ((\B[25]~input_o\) # ((\B[23]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \B[25]~input_o\,
	datac => \B[23]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X12_Y21_N18
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\B[24]~input_o\ & ((\Equal10~0_combout\) # ((\A[24]~input_o\ & \Equal9~1_combout\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \Equal10~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X12_Y21_N4
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~1_combout\) # ((\Selector7~2_combout\) # ((!\B[24]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \Selector7~1_combout\,
	datac => \WideNor0~5_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X12_Y21_N20
\U0|U23|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U23|Cout~0_combout\ = (\B[23]~input_o\ & ((\U0|U22|Cout~2_combout\) # ((\U0|U22|Cout~0_combout\) # (\A[23]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & ((\U0|U22|Cout~2_combout\) # (\U0|U22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \U0|U22|Cout~2_combout\,
	datac => \U0|U22|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \U0|U23|Cout~0_combout\);

-- Location: LCCOMB_X12_Y21_N14
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\WideNor0~0_combout\ & (\B[24]~input_o\ $ (\U0|U23|Cout~0_combout\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \U0|U23|Cout~0_combout\,
	datac => \A[24]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X12_Y21_N10
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector7~3_combout\) # ((\Selector7~0_combout\) # ((\U6|U2|U24|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U24|S~combout\,
	datab => \Selector7~3_combout\,
	datac => \Selector7~0_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X11_Y18_N4
\Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\A[25]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[25]~input_o\)))) # (!\A[25]~input_o\ & (((\B[25]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Equal9~1_combout\,
	datac => \B[25]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X11_Y18_N6
\Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~1_combout\) # ((\Selector6~2_combout\) # ((!\B[25]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Selector6~2_combout\,
	datac => \B[25]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X11_Y22_N14
\U6|U1|U24|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U24|Cout~0_combout\ = (\B[23]~input_o\) # ((\B[24]~input_o\) # ((\U6|U1|U21|Cout~0_combout\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \B[24]~input_o\,
	datac => \U6|U1|U21|Cout~0_combout\,
	datad => \B[22]~input_o\,
	combout => \U6|U1|U24|Cout~0_combout\);

-- Location: LCCOMB_X12_Y21_N30
\U6|U2|U24|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U24|Cout~0_combout\ = (\A[24]~input_o\ & ((\U6|U2|U23|Cout~0_combout\) # (\B[24]~input_o\ $ (\U6|U1|U23|Cout~0_combout\)))) # (!\A[24]~input_o\ & (\U6|U2|U23|Cout~0_combout\ & (\B[24]~input_o\ $ (\U6|U1|U23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \U6|U1|U23|Cout~0_combout\,
	datad => \U6|U2|U23|Cout~0_combout\,
	combout => \U6|U2|U24|Cout~0_combout\);

-- Location: LCCOMB_X11_Y18_N8
\U6|U2|U25|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U25|S~combout\ = \A[25]~input_o\ $ (\U6|U1|U24|Cout~0_combout\ $ (\B[25]~input_o\ $ (\U6|U2|U24|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \U6|U1|U24|Cout~0_combout\,
	datac => \B[25]~input_o\,
	datad => \U6|U2|U24|Cout~0_combout\,
	combout => \U6|U2|U25|S~combout\);

-- Location: LCCOMB_X12_Y21_N12
\U0|U24|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U24|Cout~0_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # (\U0|U23|Cout~0_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & \U0|U23|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => \U0|U23|Cout~0_combout\,
	combout => \U0|U24|Cout~0_combout\);

-- Location: LCCOMB_X11_Y18_N16
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\WideNor0~0_combout\ & (\A[25]~input_o\ $ (\U0|U24|Cout~0_combout\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \U0|U24|Cout~0_combout\,
	datac => \B[25]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X11_Y18_N2
\Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\Selector6~3_combout\) # ((\Selector6~0_combout\) # ((\U6|U2|U25|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~3_combout\,
	datab => \U6|U2|U25|S~combout\,
	datac => \WideNor0~1_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~4_combout\);

-- Location: IOIBUF_X11_Y29_N22
\A[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\B[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X11_Y18_N30
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\WideNor0~0_combout\ & (\U0|U25|Cout~0_combout\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U25|Cout~0_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X11_Y18_N24
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Equal10~0_combout\ & ((\A[26]~input_o\) # ((\B[26]~input_o\)))) # (!\Equal10~0_combout\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \Equal9~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X11_Y18_N18
\Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~1_combout\) # ((\Selector5~2_combout\) # ((!\B[26]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector5~2_combout\,
	datac => \B[26]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X11_Y18_N28
\U6|U1|U25|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U25|Cout~0_combout\ = (\U6|U1|U24|Cout~0_combout\) # (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|U1|U24|Cout~0_combout\,
	datac => \B[25]~input_o\,
	combout => \U6|U1|U25|Cout~0_combout\);

-- Location: LCCOMB_X11_Y18_N0
\U6|U2|U26|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U26|S~combout\ = \U6|U2|U25|Cout~0_combout\ $ (\U6|U1|U25|Cout~0_combout\ $ (\B[26]~input_o\ $ (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U25|Cout~0_combout\,
	datab => \U6|U1|U25|Cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \U6|U2|U26|S~combout\);

-- Location: LCCOMB_X11_Y18_N26
\Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Selector5~0_combout\) # ((\Selector5~3_combout\) # ((!\WideNor0~1_combout\ & \U6|U2|U26|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~3_combout\,
	datac => \WideNor0~1_combout\,
	datad => \U6|U2|U26|S~combout\,
	combout => \Selector5~4_combout\);

-- Location: IOIBUF_X14_Y29_N1
\B[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\A[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X11_Y18_N14
\U6|U2|U26|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U26|Cout~0_combout\ = (\U6|U2|U25|Cout~0_combout\ & ((\A[26]~input_o\) # (\U6|U1|U25|Cout~0_combout\ $ (\B[26]~input_o\)))) # (!\U6|U2|U25|Cout~0_combout\ & (\A[26]~input_o\ & (\U6|U1|U25|Cout~0_combout\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U25|Cout~0_combout\,
	datab => \U6|U1|U25|Cout~0_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \U6|U2|U26|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\U6|U2|U27|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U27|S~combout\ = \U6|U1|U26|Cout~0_combout\ $ (\B[27]~input_o\ $ (\A[27]~input_o\ $ (\U6|U2|U26|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U26|Cout~0_combout\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \U6|U2|U26|Cout~0_combout\,
	combout => \U6|U2|U27|S~combout\);

-- Location: LCCOMB_X14_Y18_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\WideNor0~0_combout\ & (\U0|U26|Cout~0_combout\ $ (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U26|Cout~0_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \WideNor0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X14_Y18_N16
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\B[28]~input_o\ & (((\B[26]~input_o\ & !\WideNor0~4_combout\)) # (!\WideNor0~2_combout\))) # (!\B[28]~input_o\ & (\B[26]~input_o\ & ((!\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \B[26]~input_o\,
	datac => \WideNor0~2_combout\,
	datad => \WideNor0~4_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X14_Y18_N28
\Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\Selector4~2_combout\) # ((\Selector4~1_combout\) # ((!\B[27]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \B[27]~input_o\,
	datac => \WideNor0~5_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X14_Y18_N18
\Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\Selector4~0_combout\) # ((\Selector4~3_combout\) # ((!\WideNor0~1_combout\ & \U6|U2|U27|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \U6|U2|U27|S~combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector4~3_combout\,
	combout => \Selector4~4_combout\);

-- Location: IOIBUF_X0_Y10_N22
\A[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\B[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X14_Y18_N2
\U6|U2|U27|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U27|Cout~0_combout\ = (\A[27]~input_o\ & ((\U6|U2|U26|Cout~0_combout\) # (\U6|U1|U26|Cout~0_combout\ $ (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\U6|U2|U26|Cout~0_combout\ & (\U6|U1|U26|Cout~0_combout\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U26|Cout~0_combout\,
	datab => \B[27]~input_o\,
	datac => \A[27]~input_o\,
	datad => \U6|U2|U26|Cout~0_combout\,
	combout => \U6|U2|U27|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N22
\U6|U2|U28|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U28|S~combout\ = \U6|U1|U27|Cout~0_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\ $ (\U6|U2|U27|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U27|Cout~0_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \U6|U2|U27|Cout~0_combout\,
	combout => \U6|U2|U28|S~combout\);

-- Location: LCCOMB_X14_Y18_N12
\U0|U27|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U27|Cout~0_combout\ = (\U0|U26|Cout~0_combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\))) # (!\U0|U26|Cout~0_combout\ & (\A[27]~input_o\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U26|Cout~0_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	combout => \U0|U27|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N24
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\WideNor0~0_combout\ & (\B[28]~input_o\ $ (\A[28]~input_o\ $ (\U0|U27|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \WideNor0~0_combout\,
	datad => \U0|U27|Cout~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X15_Y18_N10
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\A[28]~input_o\ & ((\Equal10~0_combout\) # ((\Equal9~1_combout\ & \B[28]~input_o\)))) # (!\A[28]~input_o\ & (((\B[28]~input_o\ & \Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \Equal10~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X15_Y18_N4
\Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~1_combout\) # ((\Selector3~2_combout\) # ((!\WideNor0~5_combout\ & !\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \WideNor0~5_combout\,
	datac => \B[28]~input_o\,
	datad => \Selector3~2_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X15_Y18_N16
\Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~0_combout\) # ((\Selector3~3_combout\) # ((\U6|U2|U28|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U28|S~combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector3~3_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X15_Y15_N22
\U0|U28|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U28|Cout~1_combout\ = (\B[28]~input_o\) # (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \U0|U28|Cout~1_combout\);

-- Location: LCCOMB_X14_Y18_N20
\U0|U28|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U28|Cout~2_combout\ = (\U0|U28|Cout~1_combout\ & ((\U0|U26|Cout~0_combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\))) # (!\U0|U26|Cout~0_combout\ & (\A[27]~input_o\ & \B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U26|Cout~0_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \U0|U28|Cout~1_combout\,
	combout => \U0|U28|Cout~2_combout\);

-- Location: LCCOMB_X15_Y16_N20
\U0|U28|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|U28|Cout~0_combout\ = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \U0|U28|Cout~0_combout\);

-- Location: IOIBUF_X14_Y29_N8
\B[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\A[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X15_Y18_N18
\U6|U2|U29|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U29|S~0_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \U6|U2|U29|S~0_combout\);

-- Location: LCCOMB_X15_Y18_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\WideNor0~0_combout\ & (\U6|U2|U29|S~0_combout\ $ (((\U0|U28|Cout~2_combout\) # (\U0|U28|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \U0|U28|Cout~2_combout\,
	datac => \U0|U28|Cout~0_combout\,
	datad => \U6|U2|U29|S~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X21_Y29_N8
\B[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X17_Y18_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\WideNor0~4_combout\ & (((!\WideNor0~2_combout\ & \B[30]~input_o\)))) # (!\WideNor0~4_combout\ & ((\B[28]~input_o\) # ((!\WideNor0~2_combout\ & \B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \B[28]~input_o\,
	datac => \WideNor0~2_combout\,
	datad => \B[30]~input_o\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X15_Y18_N8
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\) # ((\Selector2~1_combout\) # ((!\B[29]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \Selector2~1_combout\,
	datac => \B[29]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X14_Y18_N8
\U6|U1|U27|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U27|Cout~0_combout\ = (\U6|U1|U24|Cout~0_combout\) # ((\B[26]~input_o\) # ((\B[27]~input_o\) # (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U24|Cout~0_combout\,
	datab => \B[26]~input_o\,
	datac => \B[27]~input_o\,
	datad => \B[25]~input_o\,
	combout => \U6|U1|U27|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N26
\U6|U1|U28|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U28|Cout~0_combout\ = (\B[28]~input_o\) # (\U6|U1|U27|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[28]~input_o\,
	datad => \U6|U1|U27|Cout~0_combout\,
	combout => \U6|U1|U28|Cout~0_combout\);

-- Location: LCCOMB_X15_Y18_N6
\U6|U2|U29|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U29|S~combout\ = \U6|U2|U28|Cout~0_combout\ $ (\B[29]~input_o\ $ (\U6|U1|U28|Cout~0_combout\ $ (\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U28|Cout~0_combout\,
	datab => \B[29]~input_o\,
	datac => \U6|U1|U28|Cout~0_combout\,
	datad => \A[29]~input_o\,
	combout => \U6|U2|U29|S~combout\);

-- Location: LCCOMB_X15_Y18_N0
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~0_combout\) # ((\Selector2~3_combout\) # ((!\WideNor0~1_combout\ & \U6|U2|U29|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~1_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector2~3_combout\,
	datad => \U6|U2|U29|S~combout\,
	combout => \Selector2~4_combout\);

-- Location: IOIBUF_X16_Y29_N15
\A[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X16_Y18_N30
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\WideNor0~0_combout\ & (\U0|U29|Cout~0_combout\ $ (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U29|Cout~0_combout\,
	datab => \WideNor0~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X15_Y18_N20
\U6|U1|U29|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U1|U29|Cout~0_combout\ = (\U6|U1|U27|Cout~0_combout\) # ((\B[29]~input_o\) # (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U1|U27|Cout~0_combout\,
	datab => \B[29]~input_o\,
	datac => \B[28]~input_o\,
	combout => \U6|U1|U29|Cout~0_combout\);

-- Location: LCCOMB_X16_Y18_N4
\U6|U2|U30|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U30|S~combout\ = \U6|U2|U29|Cout~0_combout\ $ (\U6|U1|U29|Cout~0_combout\ $ (\A[30]~input_o\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U29|Cout~0_combout\,
	datab => \U6|U1|U29|Cout~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \U6|U2|U30|S~combout\);

-- Location: LCCOMB_X16_Y18_N8
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Equal10~0_combout\ & (((\A[30]~input_o\) # (\B[30]~input_o\)))) # (!\Equal10~0_combout\ & (\Equal9~1_combout\ & (\A[30]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal9~1_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X14_Y18_N6
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\B[31]~input_o\ & (((\B[29]~input_o\ & !\WideNor0~4_combout\)) # (!\WideNor0~2_combout\))) # (!\B[31]~input_o\ & (((\B[29]~input_o\ & !\WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \WideNor0~2_combout\,
	datac => \B[29]~input_o\,
	datad => \WideNor0~4_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X16_Y18_N26
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~2_combout\) # ((\Selector1~1_combout\) # ((!\WideNor0~5_combout\ & !\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \Selector1~2_combout\,
	datac => \Selector1~1_combout\,
	datad => \B[30]~input_o\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X16_Y18_N14
\Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~0_combout\) # ((\Selector1~3_combout\) # ((\U6|U2|U30|S~combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \U6|U2|U30|S~combout\,
	datac => \Selector1~3_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X15_Y15_N28
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\B[0]~input_o\ & ((\Equal7~1_combout\) # ((!\WideNor0~4_combout\ & \B[30]~input_o\)))) # (!\B[0]~input_o\ & (!\WideNor0~4_combout\ & ((\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \WideNor0~4_combout\,
	datac => \Equal7~1_combout\,
	datad => \B[30]~input_o\,
	combout => \Selector0~4_combout\);

-- Location: IOIBUF_X0_Y13_N8
\B[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X15_Y15_N30
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~3_combout\) # ((\Selector0~4_combout\) # ((!\B[31]~input_o\ & !\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~4_combout\,
	datac => \B[31]~input_o\,
	datad => \WideNor0~5_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X16_Y18_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\U0|U29|Cout~0_combout\ & ((\A[30]~input_o\) # (\B[30]~input_o\))) # (!\U0|U29|Cout~0_combout\ & (\A[30]~input_o\ & \B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U29|Cout~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X16_Y29_N29
\A[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X16_Y18_N2
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\WideNor0~0_combout\ & (\Selector0~0_combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \Selector0~0_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X16_Y18_N28
\U6|U2|U31|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U31|S~0_combout\ = (\U6|U2|U29|Cout~0_combout\ & ((\U6|U1|U29|Cout~0_combout\ & (!\A[30]~input_o\ & \B[30]~input_o\)) # (!\U6|U1|U29|Cout~0_combout\ & (\A[30]~input_o\ & !\B[30]~input_o\)))) # (!\U6|U2|U29|Cout~0_combout\ & 
-- ((\U6|U1|U29|Cout~0_combout\ & ((\B[30]~input_o\) # (!\A[30]~input_o\))) # (!\U6|U1|U29|Cout~0_combout\ & (!\A[30]~input_o\ & \B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|U2|U29|Cout~0_combout\,
	datab => \U6|U1|U29|Cout~0_combout\,
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \U6|U2|U31|S~0_combout\);

-- Location: LCCOMB_X16_Y18_N6
\U6|U2|U31|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|U2|U31|S~1_combout\ = \U6|U2|U31|S~0_combout\ $ (\B[31]~input_o\ $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|U2|U31|S~0_combout\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \U6|U2|U31|S~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector0~5_combout\) # ((\Selector0~1_combout\) # ((\U6|U2|U31|S~1_combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~5_combout\,
	datab => \Selector0~1_combout\,
	datac => \U6|U2|U31|S~1_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector0~6_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_C(8) <= \C[8]~output_o\;

ww_C(9) <= \C[9]~output_o\;

ww_C(10) <= \C[10]~output_o\;

ww_C(11) <= \C[11]~output_o\;

ww_C(12) <= \C[12]~output_o\;

ww_C(13) <= \C[13]~output_o\;

ww_C(14) <= \C[14]~output_o\;

ww_C(15) <= \C[15]~output_o\;

ww_C(16) <= \C[16]~output_o\;

ww_C(17) <= \C[17]~output_o\;

ww_C(18) <= \C[18]~output_o\;

ww_C(19) <= \C[19]~output_o\;

ww_C(20) <= \C[20]~output_o\;

ww_C(21) <= \C[21]~output_o\;

ww_C(22) <= \C[22]~output_o\;

ww_C(23) <= \C[23]~output_o\;

ww_C(24) <= \C[24]~output_o\;

ww_C(25) <= \C[25]~output_o\;

ww_C(26) <= \C[26]~output_o\;

ww_C(27) <= \C[27]~output_o\;

ww_C(28) <= \C[28]~output_o\;

ww_C(29) <= \C[29]~output_o\;

ww_C(30) <= \C[30]~output_o\;

ww_C(31) <= \C[31]~output_o\;
END structure;


