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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/24/2018 21:43:38"

-- 
-- Device: Altera EP3C16F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	thirtyTwoBitRippleCarryAdder IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(31 DOWNTO 0);
	Cout : OUT std_logic
	);
END thirtyTwoBitRippleCarryAdder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF thirtyTwoBitRippleCarryAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \U2|b2v_inst|Cout~1_combout\ : std_logic;
SIGNAL \U14|b2v_inst|Cout~1_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \U0|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \U0|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \U1|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \U2|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \U2|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \U2|b2v_inst|Cout~2_combout\ : std_logic;
SIGNAL \U2|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \U3|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \U3|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U4|b2v_inst|S~combout\ : std_logic;
SIGNAL \U4|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \U5|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \U5|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U6|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \U6|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U7|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \U7|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U8|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \U8|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U9|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \U10|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \U10|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \U10|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \U10|b2v_inst|Cout~1_combout\ : std_logic;
SIGNAL \U10|b2v_inst|Cout~2_combout\ : std_logic;
SIGNAL \U11|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \U11|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \U12|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \U12|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \U13|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \U14|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \U14|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \U14|b2v_inst|Cout~2_combout\ : std_logic;
SIGNAL \U14|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U15|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \U15|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \U16|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \U16|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \U17|b2v_inst|S~combout\ : std_logic;
SIGNAL \U17|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \U18|b2v_inst|S~combout\ : std_logic;
SIGNAL \U18|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \U19|b2v_inst|S~combout\ : std_logic;
SIGNAL \U19|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \U20|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \U20|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \U21|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \U22|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \U22|b2v_inst|S~combout\ : std_logic;
SIGNAL \U22|b2v_inst|Cout~1_combout\ : std_logic;
SIGNAL \U22|b2v_inst|Cout~2_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \U22|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \U23|b2v_inst|S~combout\ : std_logic;
SIGNAL \U23|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \U24|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \U24|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U25|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \U25|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \U26|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \U26|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \U27|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \U27|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \U28|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \U28|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U29|b2v_inst|S~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \U29|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U30|b2v_inst|S~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \U30|b2v_inst|Cout~0_combout\ : std_logic;
SIGNAL \U31|b2v_inst|S~combout\ : std_logic;
SIGNAL \U31|b2v_inst|Cout~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X23_Y1_N12
\U2|b2v_inst|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|b2v_inst|Cout~1_combout\ = (\A[2]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \U2|b2v_inst|Cout~1_combout\);

-- Location: LCCOMB_X8_Y1_N12
\U14|b2v_inst|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14|b2v_inst|Cout~1_combout\ = (\A[14]~input_o\) # (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \U14|b2v_inst|Cout~1_combout\);

-- Location: IOIBUF_X7_Y0_N15
\A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOOBUF_X26_Y0_N23
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|b2v_inst|S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\S[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U10|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\S[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U11|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\S[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U12|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\S[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U13|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\S[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U14|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\S[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U15|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\S[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U16|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\S[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U17|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\S[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U18|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\S[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U19|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\S[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U20|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\S[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U21|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\S[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U22|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\S[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U23|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\S[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U24|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\S[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U25|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\S[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U26|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\S[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U27|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\S[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U28|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\S[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U29|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\S[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U30|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\S[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U31|b2v_inst|S~combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\Cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U31|b2v_inst|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X0_Y14_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\U0|b2v_inst|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|b2v_inst|S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \U0|b2v_inst|S~0_combout\);

-- Location: LCCOMB_X23_Y1_N2
\U0|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|b2v_inst|Cout~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \U0|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N4
\U1|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|b2v_inst|S~combout\ = \U0|b2v_inst|Cout~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|b2v_inst|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \U1|b2v_inst|S~combout\);

-- Location: IOIBUF_X23_Y0_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\U2|b2v_inst|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|b2v_inst|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \U2|b2v_inst|S~0_combout\);

-- Location: LCCOMB_X23_Y1_N0
\U2|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|b2v_inst|S~combout\ = \U2|b2v_inst|S~0_combout\ $ (((\U0|b2v_inst|Cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\U0|b2v_inst|Cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|b2v_inst|S~0_combout\,
	datab => \U0|b2v_inst|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \U2|b2v_inst|S~combout\);

-- Location: IOIBUF_X16_Y0_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N14
\U2|b2v_inst|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|b2v_inst|Cout~2_combout\ = (\U2|b2v_inst|Cout~1_combout\ & ((\U0|b2v_inst|Cout~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\U0|b2v_inst|Cout~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|b2v_inst|Cout~1_combout\,
	datab => \U0|b2v_inst|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \U2|b2v_inst|Cout~2_combout\);

-- Location: LCCOMB_X23_Y1_N26
\U2|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|b2v_inst|Cout~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \U2|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X26_Y0_N15
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N8
\U3|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|b2v_inst|S~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\U2|b2v_inst|Cout~2_combout\) # (\U2|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \U2|b2v_inst|Cout~2_combout\,
	datac => \U2|b2v_inst|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \U3|b2v_inst|S~combout\);

-- Location: IOIBUF_X16_Y0_N15
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\U3|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|b2v_inst|Cout~0_combout\ = (\A[3]~input_o\ & ((\U2|b2v_inst|Cout~2_combout\) # ((\U2|b2v_inst|Cout~0_combout\) # (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\U2|b2v_inst|Cout~2_combout\) # (\U2|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \U2|b2v_inst|Cout~2_combout\,
	datac => \U2|b2v_inst|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \U3|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X23_Y1_N20
\U4|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|b2v_inst|S~combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (\U3|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \U3|b2v_inst|Cout~0_combout\,
	combout => \U4|b2v_inst|S~combout\);

-- Location: LCCOMB_X23_Y1_N30
\U4|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|b2v_inst|Cout~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # (\U3|b2v_inst|Cout~0_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \U3|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \U3|b2v_inst|Cout~0_combout\,
	combout => \U4|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X23_Y1_N16
\U5|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|b2v_inst|S~combout\ = \U4|b2v_inst|Cout~0_combout\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|b2v_inst|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \U5|b2v_inst|S~combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\U5|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|b2v_inst|Cout~0_combout\ = (\U4|b2v_inst|Cout~0_combout\ & ((\B[5]~input_o\) # (\A[5]~input_o\))) # (!\U4|b2v_inst|Cout~0_combout\ & (\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|b2v_inst|Cout~0_combout\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \U5|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\U6|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|b2v_inst|S~combout\ = \A[6]~input_o\ $ (\B[6]~input_o\ $ (\U5|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \U5|b2v_inst|Cout~0_combout\,
	combout => \U6|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y20_N8
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X23_Y1_N22
\U6|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|b2v_inst|Cout~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\U5|b2v_inst|Cout~0_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \U5|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \U5|b2v_inst|Cout~0_combout\,
	combout => \U6|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\U7|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|b2v_inst|S~combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\U6|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => \U6|b2v_inst|Cout~0_combout\,
	combout => \U7|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y21_N22
\B[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y21_N2
\U7|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U7|b2v_inst|Cout~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # (\U6|b2v_inst|Cout~0_combout\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & \U6|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => \U6|b2v_inst|Cout~0_combout\,
	combout => \U7|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\U8|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U8|b2v_inst|S~combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\U7|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \U7|b2v_inst|Cout~0_combout\,
	combout => \U8|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y13_N22
\B[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y21_N6
\U8|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U8|b2v_inst|Cout~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # (\U7|b2v_inst|Cout~0_combout\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & \U7|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \U7|b2v_inst|Cout~0_combout\,
	combout => \U8|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\U9|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U9|b2v_inst|S~combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\U8|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \U8|b2v_inst|Cout~0_combout\,
	combout => \U9|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y22_N15
\A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\B[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y21_N10
\U10|b2v_inst|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10|b2v_inst|S~0_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U10|b2v_inst|S~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\U10|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10|b2v_inst|S~combout\ = \U10|b2v_inst|S~0_combout\ $ (((\B[9]~input_o\ & ((\A[9]~input_o\) # (\U8|b2v_inst|Cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \U8|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U10|b2v_inst|S~0_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \U8|b2v_inst|Cout~0_combout\,
	combout => \U10|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y21_N8
\B[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y21_N14
\U10|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10|b2v_inst|Cout~0_combout\ = (\A[10]~input_o\ & \B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U10|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\U10|b2v_inst|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10|b2v_inst|Cout~1_combout\ = (\A[10]~input_o\) # (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \U10|b2v_inst|Cout~1_combout\);

-- Location: LCCOMB_X1_Y21_N18
\U10|b2v_inst|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U10|b2v_inst|Cout~2_combout\ = (\U10|b2v_inst|Cout~1_combout\ & ((\B[9]~input_o\ & ((\A[9]~input_o\) # (\U8|b2v_inst|Cout~0_combout\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & \U8|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \U10|b2v_inst|Cout~1_combout\,
	datac => \A[9]~input_o\,
	datad => \U8|b2v_inst|Cout~0_combout\,
	combout => \U10|b2v_inst|Cout~2_combout\);

-- Location: LCCOMB_X1_Y21_N12
\U11|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U11|b2v_inst|S~combout\ = \B[11]~input_o\ $ (\A[11]~input_o\ $ (((\U10|b2v_inst|Cout~0_combout\) # (\U10|b2v_inst|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \U10|b2v_inst|Cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \U10|b2v_inst|Cout~2_combout\,
	combout => \U11|b2v_inst|S~combout\);

-- Location: IOIBUF_X9_Y0_N8
\B[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y21_N22
\U11|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U11|b2v_inst|Cout~0_combout\ = (\B[11]~input_o\ & ((\U10|b2v_inst|Cout~0_combout\) # ((\A[11]~input_o\) # (\U10|b2v_inst|Cout~2_combout\)))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\U10|b2v_inst|Cout~0_combout\) # (\U10|b2v_inst|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \U10|b2v_inst|Cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \U10|b2v_inst|Cout~2_combout\,
	combout => \U11|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\U12|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U12|b2v_inst|S~combout\ = \B[12]~input_o\ $ (\U11|b2v_inst|Cout~0_combout\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \U11|b2v_inst|Cout~0_combout\,
	datac => \A[12]~input_o\,
	combout => \U12|b2v_inst|S~combout\);

-- Location: IOIBUF_X9_Y0_N15
\B[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X8_Y1_N26
\U12|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U12|b2v_inst|Cout~0_combout\ = (\B[12]~input_o\ & ((\U11|b2v_inst|Cout~0_combout\) # (\A[12]~input_o\))) # (!\B[12]~input_o\ & (\U11|b2v_inst|Cout~0_combout\ & \A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \U11|b2v_inst|Cout~0_combout\,
	datac => \A[12]~input_o\,
	combout => \U12|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X9_Y0_N29
\A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X8_Y1_N28
\U13|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U13|b2v_inst|S~combout\ = \B[13]~input_o\ $ (\U12|b2v_inst|Cout~0_combout\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \U12|b2v_inst|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \U13|b2v_inst|S~combout\);

-- Location: IOIBUF_X9_Y0_N1
\B[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X8_Y1_N6
\U14|b2v_inst|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14|b2v_inst|S~0_combout\ = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \U14|b2v_inst|S~0_combout\);

-- Location: LCCOMB_X8_Y1_N24
\U14|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14|b2v_inst|S~combout\ = \U14|b2v_inst|S~0_combout\ $ (((\B[13]~input_o\ & ((\U12|b2v_inst|Cout~0_combout\) # (\A[13]~input_o\))) # (!\B[13]~input_o\ & (\U12|b2v_inst|Cout~0_combout\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|b2v_inst|S~0_combout\,
	datab => \B[13]~input_o\,
	datac => \U12|b2v_inst|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \U14|b2v_inst|S~combout\);

-- Location: IOIBUF_X5_Y0_N29
\B[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X8_Y1_N22
\U14|b2v_inst|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14|b2v_inst|Cout~2_combout\ = (\U14|b2v_inst|Cout~1_combout\ & ((\B[13]~input_o\ & ((\U12|b2v_inst|Cout~0_combout\) # (\A[13]~input_o\))) # (!\B[13]~input_o\ & (\U12|b2v_inst|Cout~0_combout\ & \A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U14|b2v_inst|Cout~1_combout\,
	datab => \B[13]~input_o\,
	datac => \U12|b2v_inst|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \U14|b2v_inst|Cout~2_combout\);

-- Location: LCCOMB_X8_Y1_N2
\U14|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U14|b2v_inst|Cout~0_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \U14|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X8_Y1_N8
\U15|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U15|b2v_inst|S~combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\U14|b2v_inst|Cout~2_combout\) # (\U14|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \U14|b2v_inst|Cout~2_combout\,
	datad => \U14|b2v_inst|Cout~0_combout\,
	combout => \U15|b2v_inst|S~combout\);

-- Location: IOIBUF_X28_Y0_N22
\B[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X8_Y1_N10
\U15|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U15|b2v_inst|Cout~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\U14|b2v_inst|Cout~2_combout\) # (\U14|b2v_inst|Cout~0_combout\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\U14|b2v_inst|Cout~2_combout\) # (\U14|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datac => \U14|b2v_inst|Cout~2_combout\,
	datad => \U14|b2v_inst|Cout~0_combout\,
	combout => \U15|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X32_Y0_N8
\A[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X31_Y1_N0
\U16|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U16|b2v_inst|S~combout\ = \B[16]~input_o\ $ (\U15|b2v_inst|Cout~0_combout\ $ (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \U15|b2v_inst|Cout~0_combout\,
	datac => \A[16]~input_o\,
	combout => \U16|b2v_inst|S~combout\);

-- Location: IOIBUF_X28_Y0_N29
\A[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X31_Y1_N2
\U16|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U16|b2v_inst|Cout~0_combout\ = (\B[16]~input_o\ & ((\U15|b2v_inst|Cout~0_combout\) # (\A[16]~input_o\))) # (!\B[16]~input_o\ & (\U15|b2v_inst|Cout~0_combout\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \U15|b2v_inst|Cout~0_combout\,
	datac => \A[16]~input_o\,
	combout => \U16|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X32_Y0_N29
\B[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X31_Y1_N4
\U17|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U17|b2v_inst|S~combout\ = \A[17]~input_o\ $ (\U16|b2v_inst|Cout~0_combout\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \U16|b2v_inst|Cout~0_combout\,
	datad => \B[17]~input_o\,
	combout => \U17|b2v_inst|S~combout\);

-- Location: LCCOMB_X31_Y1_N6
\U17|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U17|b2v_inst|Cout~0_combout\ = (\A[17]~input_o\ & ((\U16|b2v_inst|Cout~0_combout\) # (\B[17]~input_o\))) # (!\A[17]~input_o\ & (\U16|b2v_inst|Cout~0_combout\ & \B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \U16|b2v_inst|Cout~0_combout\,
	datad => \B[17]~input_o\,
	combout => \U17|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X35_Y0_N1
\A[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\B[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X31_Y1_N16
\U18|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U18|b2v_inst|S~combout\ = \U17|b2v_inst|Cout~0_combout\ $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U17|b2v_inst|Cout~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \U18|b2v_inst|S~combout\);

-- Location: LCCOMB_X31_Y1_N26
\U18|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U18|b2v_inst|Cout~0_combout\ = (\U17|b2v_inst|Cout~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (!\U17|b2v_inst|Cout~0_combout\ & (\A[18]~input_o\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U17|b2v_inst|Cout~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \U18|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X32_Y0_N15
\A[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\B[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X31_Y1_N28
\U19|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U19|b2v_inst|S~combout\ = \U18|b2v_inst|Cout~0_combout\ $ (\A[19]~input_o\ $ (\B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|b2v_inst|Cout~0_combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	combout => \U19|b2v_inst|S~combout\);

-- Location: LCCOMB_X31_Y1_N22
\U19|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U19|b2v_inst|Cout~0_combout\ = (\U18|b2v_inst|Cout~0_combout\ & ((\A[19]~input_o\) # (\B[19]~input_o\))) # (!\U18|b2v_inst|Cout~0_combout\ & (\A[19]~input_o\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U18|b2v_inst|Cout~0_combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	combout => \U19|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N22
\A[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\B[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X31_Y1_N24
\U20|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U20|b2v_inst|S~combout\ = \U19|b2v_inst|Cout~0_combout\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|b2v_inst|Cout~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	combout => \U20|b2v_inst|S~combout\);

-- Location: IOIBUF_X35_Y29_N1
\A[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X31_Y1_N10
\U20|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U20|b2v_inst|Cout~0_combout\ = (\U19|b2v_inst|Cout~0_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))) # (!\U19|b2v_inst|Cout~0_combout\ & (\A[20]~input_o\ & \B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U19|b2v_inst|Cout~0_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	combout => \U20|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X35_Y29_N8
\B[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X32_Y28_N8
\U21|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U21|b2v_inst|S~combout\ = \A[21]~input_o\ $ (\U20|b2v_inst|Cout~0_combout\ $ (\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \U20|b2v_inst|Cout~0_combout\,
	datad => \B[21]~input_o\,
	combout => \U21|b2v_inst|S~combout\);

-- Location: IOIBUF_X32_Y29_N15
\A[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\B[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X32_Y28_N18
\U22|b2v_inst|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U22|b2v_inst|S~0_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \U22|b2v_inst|S~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\U22|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U22|b2v_inst|S~combout\ = \U22|b2v_inst|S~0_combout\ $ (((\A[21]~input_o\ & ((\U20|b2v_inst|Cout~0_combout\) # (\B[21]~input_o\))) # (!\A[21]~input_o\ & (\U20|b2v_inst|Cout~0_combout\ & \B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \U22|b2v_inst|S~0_combout\,
	datac => \U20|b2v_inst|Cout~0_combout\,
	datad => \B[21]~input_o\,
	combout => \U22|b2v_inst|S~combout\);

-- Location: LCCOMB_X32_Y28_N24
\U22|b2v_inst|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U22|b2v_inst|Cout~1_combout\ = (\A[22]~input_o\) # (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \U22|b2v_inst|Cout~1_combout\);

-- Location: LCCOMB_X32_Y28_N10
\U22|b2v_inst|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U22|b2v_inst|Cout~2_combout\ = (\U22|b2v_inst|Cout~1_combout\ & ((\A[21]~input_o\ & ((\U20|b2v_inst|Cout~0_combout\) # (\B[21]~input_o\))) # (!\A[21]~input_o\ & (\U20|b2v_inst|Cout~0_combout\ & \B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \U22|b2v_inst|Cout~1_combout\,
	datac => \U20|b2v_inst|Cout~0_combout\,
	datad => \B[21]~input_o\,
	combout => \U22|b2v_inst|Cout~2_combout\);

-- Location: IOIBUF_X35_Y29_N29
\A[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X32_Y28_N30
\U22|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U22|b2v_inst|Cout~0_combout\ = (\A[22]~input_o\ & \B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[22]~input_o\,
	datad => \B[22]~input_o\,
	combout => \U22|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X37_Y29_N1
\B[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X32_Y28_N28
\U23|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U23|b2v_inst|S~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\U22|b2v_inst|Cout~2_combout\) # (\U22|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U22|b2v_inst|Cout~2_combout\,
	datab => \A[23]~input_o\,
	datac => \U22|b2v_inst|Cout~0_combout\,
	datad => \B[23]~input_o\,
	combout => \U23|b2v_inst|S~combout\);

-- Location: LCCOMB_X32_Y28_N6
\U23|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U23|b2v_inst|Cout~0_combout\ = (\A[23]~input_o\ & ((\U22|b2v_inst|Cout~2_combout\) # ((\U22|b2v_inst|Cout~0_combout\) # (\B[23]~input_o\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\U22|b2v_inst|Cout~2_combout\) # (\U22|b2v_inst|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U22|b2v_inst|Cout~2_combout\,
	datab => \A[23]~input_o\,
	datac => \U22|b2v_inst|Cout~0_combout\,
	datad => \B[23]~input_o\,
	combout => \U23|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X32_Y29_N22
\A[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X35_Y29_N15
\B[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X32_Y28_N0
\U24|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U24|b2v_inst|S~combout\ = \U23|b2v_inst|Cout~0_combout\ $ (\A[24]~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U23|b2v_inst|Cout~0_combout\,
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \U24|b2v_inst|S~combout\);

-- Location: IOIBUF_X32_Y29_N8
\B[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\A[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X32_Y28_N26
\U24|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U24|b2v_inst|Cout~0_combout\ = (\U23|b2v_inst|Cout~0_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\))) # (!\U23|b2v_inst|Cout~0_combout\ & (\A[24]~input_o\ & \B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U23|b2v_inst|Cout~0_combout\,
	datab => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \U24|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\U25|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U25|b2v_inst|S~combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\U24|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \U24|b2v_inst|Cout~0_combout\,
	combout => \U25|b2v_inst|S~combout\);

-- Location: IOIBUF_X37_Y29_N8
\A[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X32_Y28_N14
\U25|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U25|b2v_inst|Cout~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # (\U24|b2v_inst|Cout~0_combout\))) # (!\B[25]~input_o\ & (\A[25]~input_o\ & \U24|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \U24|b2v_inst|Cout~0_combout\,
	combout => \U25|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X30_Y29_N22
\B[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X32_Y28_N16
\U26|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U26|b2v_inst|S~combout\ = \A[26]~input_o\ $ (\U25|b2v_inst|Cout~0_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \U25|b2v_inst|Cout~0_combout\,
	datac => \B[26]~input_o\,
	combout => \U26|b2v_inst|S~combout\);

-- Location: IOIBUF_X35_Y29_N22
\A[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X32_Y28_N2
\U26|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U26|b2v_inst|Cout~0_combout\ = (\A[26]~input_o\ & ((\U25|b2v_inst|Cout~0_combout\) # (\B[26]~input_o\))) # (!\A[26]~input_o\ & (\U25|b2v_inst|Cout~0_combout\ & \B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \U25|b2v_inst|Cout~0_combout\,
	datac => \B[26]~input_o\,
	combout => \U26|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X32_Y29_N29
\B[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X32_Y28_N20
\U27|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U27|b2v_inst|S~combout\ = \A[27]~input_o\ $ (\U26|b2v_inst|Cout~0_combout\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \U26|b2v_inst|Cout~0_combout\,
	datac => \B[27]~input_o\,
	combout => \U27|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X32_Y28_N22
\U27|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U27|b2v_inst|Cout~0_combout\ = (\A[27]~input_o\ & ((\U26|b2v_inst|Cout~0_combout\) # (\B[27]~input_o\))) # (!\A[27]~input_o\ & (\U26|b2v_inst|Cout~0_combout\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \U26|b2v_inst|Cout~0_combout\,
	datac => \B[27]~input_o\,
	combout => \U27|b2v_inst|Cout~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\B[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\U28|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U28|b2v_inst|S~combout\ = \A[28]~input_o\ $ (\U27|b2v_inst|Cout~0_combout\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \U27|b2v_inst|Cout~0_combout\,
	datad => \B[28]~input_o\,
	combout => \U28|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y27_N22
\B[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\A[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y26_N2
\U28|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U28|b2v_inst|Cout~0_combout\ = (\A[28]~input_o\ & ((\U27|b2v_inst|Cout~0_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\U27|b2v_inst|Cout~0_combout\ & \B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \U27|b2v_inst|Cout~0_combout\,
	datad => \B[28]~input_o\,
	combout => \U28|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y26_N4
\U29|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U29|b2v_inst|S~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (\U28|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \U28|b2v_inst|Cout~0_combout\,
	combout => \U29|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y26_N1
\B[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\A[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X1_Y26_N6
\U29|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U29|b2v_inst|Cout~0_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\) # (\U28|b2v_inst|Cout~0_combout\))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & \U28|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \U28|b2v_inst|Cout~0_combout\,
	combout => \U29|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\U30|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U30|b2v_inst|S~combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (\U29|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \U29|b2v_inst|Cout~0_combout\,
	combout => \U30|b2v_inst|S~combout\);

-- Location: IOIBUF_X0_Y26_N15
\A[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\B[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y26_N10
\U30|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U30|b2v_inst|Cout~0_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # (\U29|b2v_inst|Cout~0_combout\))) # (!\B[30]~input_o\ & (\A[30]~input_o\ & \U29|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \U29|b2v_inst|Cout~0_combout\,
	combout => \U30|b2v_inst|Cout~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\U31|b2v_inst|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U31|b2v_inst|S~combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\U30|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \U30|b2v_inst|Cout~0_combout\,
	combout => \U31|b2v_inst|S~combout\);

-- Location: LCCOMB_X1_Y26_N30
\U31|b2v_inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U31|b2v_inst|Cout~0_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # (\U30|b2v_inst|Cout~0_combout\))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & \U30|b2v_inst|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \U30|b2v_inst|Cout~0_combout\,
	combout => \U31|b2v_inst|Cout~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


