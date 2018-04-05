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

-- DATE "03/29/2018 10:38:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	conFF IS
    PORT (
	clk : IN std_logic;
	IRout : IN std_logic_vector(31 DOWNTO 0);
	BusMuxOut : IN std_logic_vector(31 DOWNTO 0);
	CONin : IN std_logic;
	CONout : OUT std_logic
	);
END conFF;

-- Design Ports Information
-- clk	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[8]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[9]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[11]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[12]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[13]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[14]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[16]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[17]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[18]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[21]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[25]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[26]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[27]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[28]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[29]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[30]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[31]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONin	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONout	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[31]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRout[20]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[28]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[16]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[17]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[18]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[19]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[8]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[11]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[12]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[13]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[29]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[30]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[20]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[21]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[22]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[23]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[24]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[25]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[26]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusMuxOut[27]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conFF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_IRout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BusMuxOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CONin : std_logic;
SIGNAL ww_CONout : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|process_0~7_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \IRout[0]~input_o\ : std_logic;
SIGNAL \IRout[1]~input_o\ : std_logic;
SIGNAL \IRout[2]~input_o\ : std_logic;
SIGNAL \IRout[3]~input_o\ : std_logic;
SIGNAL \IRout[4]~input_o\ : std_logic;
SIGNAL \IRout[5]~input_o\ : std_logic;
SIGNAL \IRout[6]~input_o\ : std_logic;
SIGNAL \IRout[7]~input_o\ : std_logic;
SIGNAL \IRout[8]~input_o\ : std_logic;
SIGNAL \IRout[9]~input_o\ : std_logic;
SIGNAL \IRout[10]~input_o\ : std_logic;
SIGNAL \IRout[11]~input_o\ : std_logic;
SIGNAL \IRout[12]~input_o\ : std_logic;
SIGNAL \IRout[13]~input_o\ : std_logic;
SIGNAL \IRout[14]~input_o\ : std_logic;
SIGNAL \IRout[15]~input_o\ : std_logic;
SIGNAL \IRout[16]~input_o\ : std_logic;
SIGNAL \IRout[17]~input_o\ : std_logic;
SIGNAL \IRout[18]~input_o\ : std_logic;
SIGNAL \IRout[21]~input_o\ : std_logic;
SIGNAL \IRout[22]~input_o\ : std_logic;
SIGNAL \IRout[23]~input_o\ : std_logic;
SIGNAL \IRout[24]~input_o\ : std_logic;
SIGNAL \IRout[25]~input_o\ : std_logic;
SIGNAL \IRout[26]~input_o\ : std_logic;
SIGNAL \IRout[27]~input_o\ : std_logic;
SIGNAL \IRout[28]~input_o\ : std_logic;
SIGNAL \IRout[29]~input_o\ : std_logic;
SIGNAL \IRout[30]~input_o\ : std_logic;
SIGNAL \IRout[31]~input_o\ : std_logic;
SIGNAL \CONin~input_o\ : std_logic;
SIGNAL \BusMuxOut[16]~input_o\ : std_logic;
SIGNAL \BusMuxOut[0]~input_o\ : std_logic;
SIGNAL \BusMuxOut[1]~input_o\ : std_logic;
SIGNAL \BusMuxOut[2]~input_o\ : std_logic;
SIGNAL \BusMuxOut[3]~input_o\ : std_logic;
SIGNAL \BusMuxOut[4]~input_o\ : std_logic;
SIGNAL \BusMuxOut[5]~input_o\ : std_logic;
SIGNAL \BusMuxOut[6]~input_o\ : std_logic;
SIGNAL \BusMuxOut[7]~input_o\ : std_logic;
SIGNAL \BusMuxOut[8]~input_o\ : std_logic;
SIGNAL \BusMuxOut[9]~input_o\ : std_logic;
SIGNAL \BusMuxOut[10]~input_o\ : std_logic;
SIGNAL \BusMuxOut[11]~input_o\ : std_logic;
SIGNAL \BusMuxOut[12]~input_o\ : std_logic;
SIGNAL \BusMuxOut[13]~input_o\ : std_logic;
SIGNAL \BusMuxOut[14]~input_o\ : std_logic;
SIGNAL \BusMuxOut[15]~input_o\ : std_logic;
SIGNAL \BusMuxOut[22]~input_o\ : std_logic;
SIGNAL \BusMuxOut[24]~input_o\ : std_logic;
SIGNAL \BusMuxOut[25]~input_o\ : std_logic;
SIGNAL \BusMuxOut[26]~input_o\ : std_logic;
SIGNAL \BusMuxOut[27]~input_o\ : std_logic;
SIGNAL \CONout~output_o\ : std_logic;
SIGNAL \BusMuxOut[30]~input_o\ : std_logic;
SIGNAL \BusMuxOut[29]~input_o\ : std_logic;
SIGNAL \BusMuxOut[21]~input_o\ : std_logic;
SIGNAL \BusMuxOut[20]~input_o\ : std_logic;
SIGNAL \BusMuxOut[23]~input_o\ : std_logic;
SIGNAL \U1|process_0~6_combout\ : std_logic;
SIGNAL \U1|conFFOutput~0_combout\ : std_logic;
SIGNAL \BusMuxOut[28]~input_o\ : std_logic;
SIGNAL \BusMuxOut[17]~input_o\ : std_logic;
SIGNAL \BusMuxOut[19]~input_o\ : std_logic;
SIGNAL \BusMuxOut[18]~input_o\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|conFFOutput~1_combout\ : std_logic;
SIGNAL \IRout[20]~input_o\ : std_logic;
SIGNAL \BusMuxOut[31]~input_o\ : std_logic;
SIGNAL \IRout[19]~input_o\ : std_logic;
SIGNAL \U1|conFFOutput~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_IRout <= IRout;
ww_BusMuxOut <= BusMuxOut;
ww_CONin <= CONin;
CONout <= ww_CONout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y14_N18
\U1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (\BusMuxOut[2]~input_o\) # ((\BusMuxOut[0]~input_o\) # ((\BusMuxOut[3]~input_o\) # (\BusMuxOut[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[2]~input_o\,
	datab => \BusMuxOut[0]~input_o\,
	datac => \BusMuxOut[3]~input_o\,
	datad => \BusMuxOut[1]~input_o\,
	combout => \U1|process_0~1_combout\);

-- Location: LCCOMB_X1_Y14_N12
\U1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (\BusMuxOut[6]~input_o\) # ((\BusMuxOut[5]~input_o\) # ((\BusMuxOut[4]~input_o\) # (\BusMuxOut[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[6]~input_o\,
	datab => \BusMuxOut[5]~input_o\,
	datac => \BusMuxOut[4]~input_o\,
	datad => \BusMuxOut[7]~input_o\,
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X1_Y14_N22
\U1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (\BusMuxOut[11]~input_o\) # ((\BusMuxOut[8]~input_o\) # ((\BusMuxOut[10]~input_o\) # (\BusMuxOut[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[11]~input_o\,
	datab => \BusMuxOut[8]~input_o\,
	datac => \BusMuxOut[10]~input_o\,
	datad => \BusMuxOut[9]~input_o\,
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X1_Y14_N0
\U1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = (\BusMuxOut[15]~input_o\) # ((\BusMuxOut[12]~input_o\) # ((\BusMuxOut[14]~input_o\) # (\BusMuxOut[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[15]~input_o\,
	datab => \BusMuxOut[12]~input_o\,
	datac => \BusMuxOut[14]~input_o\,
	datad => \BusMuxOut[13]~input_o\,
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X1_Y14_N10
\U1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (\U1|process_0~2_combout\) # ((\U1|process_0~1_combout\) # ((\U1|process_0~3_combout\) # (\U1|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|process_0~1_combout\,
	datac => \U1|process_0~3_combout\,
	datad => \U1|process_0~4_combout\,
	combout => \U1|process_0~5_combout\);

-- Location: LCCOMB_X1_Y14_N6
\U1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~7_combout\ = (\BusMuxOut[26]~input_o\) # ((\BusMuxOut[27]~input_o\) # ((\BusMuxOut[25]~input_o\) # (\BusMuxOut[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[26]~input_o\,
	datab => \BusMuxOut[27]~input_o\,
	datac => \BusMuxOut[25]~input_o\,
	datad => \BusMuxOut[24]~input_o\,
	combout => \U1|process_0~7_combout\);

-- Location: IOIBUF_X0_Y11_N8
\BusMuxOut[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(16),
	o => \BusMuxOut[16]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\BusMuxOut[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(0),
	o => \BusMuxOut[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\BusMuxOut[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(1),
	o => \BusMuxOut[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\BusMuxOut[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(2),
	o => \BusMuxOut[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\BusMuxOut[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(3),
	o => \BusMuxOut[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\BusMuxOut[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(4),
	o => \BusMuxOut[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\BusMuxOut[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(5),
	o => \BusMuxOut[5]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\BusMuxOut[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(6),
	o => \BusMuxOut[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\BusMuxOut[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(7),
	o => \BusMuxOut[7]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\BusMuxOut[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(8),
	o => \BusMuxOut[8]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\BusMuxOut[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(9),
	o => \BusMuxOut[9]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\BusMuxOut[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(10),
	o => \BusMuxOut[10]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\BusMuxOut[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(11),
	o => \BusMuxOut[11]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\BusMuxOut[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(12),
	o => \BusMuxOut[12]~input_o\);

-- Location: IOIBUF_X41_Y14_N8
\BusMuxOut[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(13),
	o => \BusMuxOut[13]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\BusMuxOut[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(14),
	o => \BusMuxOut[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\BusMuxOut[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(15),
	o => \BusMuxOut[15]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\BusMuxOut[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(22),
	o => \BusMuxOut[22]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\BusMuxOut[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(24),
	o => \BusMuxOut[24]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\BusMuxOut[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(25),
	o => \BusMuxOut[25]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\BusMuxOut[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(26),
	o => \BusMuxOut[26]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\BusMuxOut[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(27),
	o => \BusMuxOut[27]~input_o\);

-- Location: IOOBUF_X14_Y0_N16
\CONout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|conFFOutput~2_combout\,
	devoe => ww_devoe,
	o => \CONout~output_o\);

-- Location: IOIBUF_X0_Y12_N1
\BusMuxOut[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(30),
	o => \BusMuxOut[30]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\BusMuxOut[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(29),
	o => \BusMuxOut[29]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\BusMuxOut[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(21),
	o => \BusMuxOut[21]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\BusMuxOut[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(20),
	o => \BusMuxOut[20]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\BusMuxOut[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(23),
	o => \BusMuxOut[23]~input_o\);

-- Location: LCCOMB_X1_Y14_N20
\U1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~6_combout\ = (\BusMuxOut[22]~input_o\) # ((\BusMuxOut[21]~input_o\) # ((\BusMuxOut[20]~input_o\) # (\BusMuxOut[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[22]~input_o\,
	datab => \BusMuxOut[21]~input_o\,
	datac => \BusMuxOut[20]~input_o\,
	datad => \BusMuxOut[23]~input_o\,
	combout => \U1|process_0~6_combout\);

-- Location: LCCOMB_X1_Y14_N24
\U1|conFFOutput~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|conFFOutput~0_combout\ = (\U1|process_0~7_combout\) # ((\BusMuxOut[30]~input_o\) # ((\BusMuxOut[29]~input_o\) # (\U1|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~7_combout\,
	datab => \BusMuxOut[30]~input_o\,
	datac => \BusMuxOut[29]~input_o\,
	datad => \U1|process_0~6_combout\,
	combout => \U1|conFFOutput~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\BusMuxOut[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(28),
	o => \BusMuxOut[28]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\BusMuxOut[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(17),
	o => \BusMuxOut[17]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\BusMuxOut[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(19),
	o => \BusMuxOut[19]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\BusMuxOut[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(18),
	o => \BusMuxOut[18]~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\U1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (\BusMuxOut[16]~input_o\) # ((\BusMuxOut[17]~input_o\) # ((\BusMuxOut[19]~input_o\) # (\BusMuxOut[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusMuxOut[16]~input_o\,
	datab => \BusMuxOut[17]~input_o\,
	datac => \BusMuxOut[19]~input_o\,
	datad => \BusMuxOut[18]~input_o\,
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\U1|conFFOutput~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|conFFOutput~1_combout\ = (\U1|process_0~5_combout\) # ((\U1|conFFOutput~0_combout\) # ((\BusMuxOut[28]~input_o\) # (\U1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~5_combout\,
	datab => \U1|conFFOutput~0_combout\,
	datac => \BusMuxOut[28]~input_o\,
	datad => \U1|process_0~0_combout\,
	combout => \U1|conFFOutput~1_combout\);

-- Location: IOIBUF_X14_Y0_N22
\IRout[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(20),
	o => \IRout[20]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\BusMuxOut[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusMuxOut(31),
	o => \BusMuxOut[31]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\IRout[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(19),
	o => \IRout[19]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\U1|conFFOutput~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|conFFOutput~2_combout\ = \IRout[19]~input_o\ $ (((!\BusMuxOut[31]~input_o\ & ((\IRout[20]~input_o\) # (!\U1|conFFOutput~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|conFFOutput~1_combout\,
	datab => \IRout[20]~input_o\,
	datac => \BusMuxOut[31]~input_o\,
	datad => \IRout[19]~input_o\,
	combout => \U1|conFFOutput~2_combout\);

-- Location: IOIBUF_X0_Y14_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\IRout[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(0),
	o => \IRout[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\IRout[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(1),
	o => \IRout[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\IRout[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(2),
	o => \IRout[2]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\IRout[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(3),
	o => \IRout[3]~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\IRout[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(4),
	o => \IRout[4]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\IRout[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(5),
	o => \IRout[5]~input_o\);

-- Location: IOIBUF_X41_Y12_N15
\IRout[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(6),
	o => \IRout[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\IRout[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(7),
	o => \IRout[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\IRout[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(8),
	o => \IRout[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\IRout[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(9),
	o => \IRout[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\IRout[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(10),
	o => \IRout[10]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\IRout[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(11),
	o => \IRout[11]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\IRout[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(12),
	o => \IRout[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\IRout[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(13),
	o => \IRout[13]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\IRout[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(14),
	o => \IRout[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\IRout[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(15),
	o => \IRout[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\IRout[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(16),
	o => \IRout[16]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\IRout[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(17),
	o => \IRout[17]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\IRout[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(18),
	o => \IRout[18]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\IRout[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(21),
	o => \IRout[21]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\IRout[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(22),
	o => \IRout[22]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\IRout[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(23),
	o => \IRout[23]~input_o\);

-- Location: IOIBUF_X11_Y29_N15
\IRout[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(24),
	o => \IRout[24]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\IRout[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(25),
	o => \IRout[25]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\IRout[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(26),
	o => \IRout[26]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\IRout[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(27),
	o => \IRout[27]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\IRout[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(28),
	o => \IRout[28]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\IRout[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(29),
	o => \IRout[29]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\IRout[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(30),
	o => \IRout[30]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\IRout[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRout(31),
	o => \IRout[31]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\CONin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CONin,
	o => \CONin~input_o\);

ww_CONout <= \CONout~output_o\;
END structure;


