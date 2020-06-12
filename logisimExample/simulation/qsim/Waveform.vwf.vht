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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/28/2020 15:23:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Block2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Block2_vhd_vec_tst IS
END Block2_vhd_vec_tst;
ARCHITECTURE Block2_arch OF Block2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL pin_name2 : STD_LOGIC;
SIGNAL pin_name3 : STD_LOGIC;
SIGNAL pin_name4 : STD_LOGIC;
COMPONENT Block2
	PORT (
	pin_name1 : IN STD_LOGIC;
	pin_name2 : IN STD_LOGIC;
	pin_name3 : OUT STD_LOGIC;
	pin_name4 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Block2
	PORT MAP (
-- list connections between master ports and signals
	pin_name1 => pin_name1,
	pin_name2 => pin_name2,
	pin_name3 => pin_name3,
	pin_name4 => pin_name4
	);

-- pin_name1
t_prcs_pin_name1: PROCESS
BEGIN
	pin_name1 <= '0';
	WAIT FOR 30000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 25000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 20000 ps;
	pin_name1 <= '0';
	WAIT FOR 20000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 20000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 30000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 15000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 30000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 15000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 35000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 5000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 5000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 10000 ps;
	pin_name1 <= '0';
	WAIT FOR 10000 ps;
	pin_name1 <= '1';
	WAIT FOR 25000 ps;
	pin_name1 <= '0';
WAIT;
END PROCESS t_prcs_pin_name1;

-- pin_name2
t_prcs_pin_name2: PROCESS
BEGIN
	pin_name2 <= '0';
	WAIT FOR 20000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 10000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 10000 ps;
	pin_name2 <= '0';
	WAIT FOR 20000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 15000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 15000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 15000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 30000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 10000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 20000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 15000 ps;
	pin_name2 <= '1';
	WAIT FOR 15000 ps;
	pin_name2 <= '0';
	WAIT FOR 20000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 10000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 15000 ps;
	pin_name2 <= '1';
	WAIT FOR 25000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
	WAIT FOR 10000 ps;
	pin_name2 <= '1';
	WAIT FOR 15000 ps;
	pin_name2 <= '0';
	WAIT FOR 5000 ps;
	pin_name2 <= '1';
	WAIT FOR 5000 ps;
	pin_name2 <= '0';
WAIT;
END PROCESS t_prcs_pin_name2;
END Block2_arch;
