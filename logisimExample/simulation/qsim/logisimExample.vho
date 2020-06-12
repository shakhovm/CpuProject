-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/28/2020 15:23:47"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block2 IS
    PORT (
	pin_name3 : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name2 : IN std_logic;
	pin_name4 : OUT std_logic
	);
END Block2;

-- Design Ports Information
-- pin_name3	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \pin_name1~input_o\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \inst|DEMUX_1|DemuxOut_1~0_combout\ : std_logic;
SIGNAL \inst|DEMUX_1|DemuxOut_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_pin_name1~input_o\ : std_logic;
SIGNAL \ALT_INV_pin_name2~input_o\ : std_logic;

BEGIN

pin_name3 <= ww_pin_name3;
ww_pin_name1 <= pin_name1;
ww_pin_name2 <= pin_name2;
pin_name4 <= ww_pin_name4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pin_name1~input_o\ <= NOT \pin_name1~input_o\;
\ALT_INV_pin_name2~input_o\ <= NOT \pin_name2~input_o\;

-- Location: IOOBUF_X4_Y0_N2
\pin_name3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DEMUX_1|DemuxOut_1~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name3);

-- Location: IOOBUF_X4_Y0_N36
\pin_name4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DEMUX_1|DemuxOut_0~0_combout\,
	devoe => ww_devoe,
	o => ww_pin_name4);

-- Location: IOIBUF_X4_Y0_N18
\pin_name1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => \pin_name1~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\pin_name2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => \pin_name2~input_o\);

-- Location: LABCELL_X4_Y1_N0
\inst|DEMUX_1|DemuxOut_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|DEMUX_1|DemuxOut_1~0_combout\ = ( \pin_name2~input_o\ & ( \pin_name1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pin_name1~input_o\,
	dataf => \ALT_INV_pin_name2~input_o\,
	combout => \inst|DEMUX_1|DemuxOut_1~0_combout\);

-- Location: LABCELL_X4_Y1_N9
\inst|DEMUX_1|DemuxOut_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|DEMUX_1|DemuxOut_0~0_combout\ = ( !\pin_name2~input_o\ & ( \pin_name1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pin_name1~input_o\,
	dataf => \ALT_INV_pin_name2~input_o\,
	combout => \inst|DEMUX_1|DemuxOut_0~0_combout\);

-- Location: MLABCELL_X72_Y28_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


