-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/18/2023 16:56:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ControlSystemUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlSystemUnit_vhd_vec_tst IS
END ControlSystemUnit_vhd_vec_tst;
ARCHITECTURE ControlSystemUnit_arch OF ControlSystemUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL en_1 : STD_LOGIC;
SIGNAL en_2 : STD_LOGIC;
SIGNAL en_3 : STD_LOGIC;
SIGNAL extraEn : STD_LOGIC;
SIGNAL freeze : STD_LOGIC;
SIGNAL freezeEnd : STD_LOGIC;
SIGNAL freezeStart : STD_LOGIC;
SIGNAL newPrg : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rstGlobal : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
COMPONENT ControlSystemUnit
	PORT (
	clock : IN STD_LOGIC;
	en_1 : BUFFER STD_LOGIC;
	en_2 : BUFFER STD_LOGIC;
	en_3 : BUFFER STD_LOGIC;
	extraEn : IN STD_LOGIC;
	freeze : IN STD_LOGIC;
	freezeEnd : IN STD_LOGIC;
	freezeStart : BUFFER STD_LOGIC;
	newPrg : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rstGlobal : BUFFER STD_LOGIC;
	start : IN STD_LOGIC;
	start_stop : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ControlSystemUnit
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	en_1 => en_1,
	en_2 => en_2,
	en_3 => en_3,
	extraEn => extraEn,
	freeze => freeze,
	freezeEnd => freezeEnd,
	freezeStart => freezeStart,
	newPrg => newPrg,
	reset => reset,
	rstGlobal => rstGlobal,
	start => start,
	start_stop => start_stop
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 40000 ps;
	start <= '1';
	WAIT FOR 10000 ps;
	start <= '0';
	WAIT FOR 30000 ps;
	start <= '1';
	WAIT FOR 10000 ps;
	start <= '0';
	WAIT FOR 30000 ps;
	start <= '1';
	WAIT FOR 10000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- extraEn
t_prcs_extraEn: PROCESS
BEGIN
	extraEn <= '0';
	WAIT FOR 160000 ps;
	extraEn <= '1';
	WAIT FOR 10000 ps;
	extraEn <= '0';
	WAIT FOR 220000 ps;
	extraEn <= '1';
	WAIT FOR 10000 ps;
	extraEn <= '0';
WAIT;
END PROCESS t_prcs_extraEn;

-- freeze
t_prcs_freeze: PROCESS
BEGIN
	freeze <= '0';
	WAIT FOR 190000 ps;
	freeze <= '1';
	WAIT FOR 10000 ps;
	freeze <= '0';
	WAIT FOR 80000 ps;
	freeze <= '1';
	WAIT FOR 10000 ps;
	freeze <= '0';
	WAIT FOR 20000 ps;
	freeze <= '1';
	WAIT FOR 10000 ps;
	freeze <= '0';
	WAIT FOR 30000 ps;
	freeze <= '1';
	WAIT FOR 10000 ps;
	freeze <= '0';
WAIT;
END PROCESS t_prcs_freeze;

-- freezeEnd
t_prcs_freezeEnd: PROCESS
BEGIN
	freezeEnd <= '0';
	WAIT FOR 200000 ps;
	freezeEnd <= '1';
	WAIT FOR 10000 ps;
	freezeEnd <= '0';
	WAIT FOR 180000 ps;
	freezeEnd <= '1';
	WAIT FOR 10000 ps;
	freezeEnd <= '0';
WAIT;
END PROCESS t_prcs_freezeEnd;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 200000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- newPrg
t_prcs_newPrg: PROCESS
BEGIN
	newPrg <= '0';
	WAIT FOR 240000 ps;
	newPrg <= '1';
	WAIT FOR 20000 ps;
	newPrg <= '0';
WAIT;
END PROCESS t_prcs_newPrg;
END ControlSystemUnit_arch;
