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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/25/2023 20:05:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BreadMaker IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END BreadMaker;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BreadMaker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst12|Add0~17\ : std_logic;
SIGNAL \inst12|Add0~18_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst12|Add0~19\ : std_logic;
SIGNAL \inst12|Add0~20_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst12|Add0~21\ : std_logic;
SIGNAL \inst12|Add0~22_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst12|Add0~23\ : std_logic;
SIGNAL \inst12|Add0~24_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst12|Add0~25\ : std_logic;
SIGNAL \inst12|Add0~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst12|Add0~27\ : std_logic;
SIGNAL \inst12|Add0~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst12|Add0~29\ : std_logic;
SIGNAL \inst12|Add0~30_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst12|Add0~31\ : std_logic;
SIGNAL \inst12|Add0~32_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst12|Add0~33\ : std_logic;
SIGNAL \inst12|Add0~34_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|Add0~35\ : std_logic;
SIGNAL \inst12|Add0~37\ : std_logic;
SIGNAL \inst12|Add0~38_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst12|Add0~36_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~10_combout\ : std_logic;
SIGNAL \inst1asd|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst1asd|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst1asd|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1asd|s_previousIn~q\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1asd|Add0~11\ : std_logic;
SIGNAL \inst1asd|Add0~12_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst1asd|Add0~17\ : std_logic;
SIGNAL \inst1asd|Add0~18_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1asd|Add0~19\ : std_logic;
SIGNAL \inst1asd|Add0~20_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1asd|Add0~21\ : std_logic;
SIGNAL \inst1asd|Add0~22_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst1asd|Add0~23\ : std_logic;
SIGNAL \inst1asd|Add0~24_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst1asd|Add0~25\ : std_logic;
SIGNAL \inst1asd|Add0~26_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1asd|Add0~27\ : std_logic;
SIGNAL \inst1asd|Add0~28_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst1asd|Add0~29\ : std_logic;
SIGNAL \inst1asd|Add0~30_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1asd|Add0~31\ : std_logic;
SIGNAL \inst1asd|Add0~32_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1asd|Add0~33\ : std_logic;
SIGNAL \inst1asd|Add0~34_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst1asd|Add0~35\ : std_logic;
SIGNAL \inst1asd|Add0~36_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst1asd|Add0~37\ : std_logic;
SIGNAL \inst1asd|Add0~38_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst1asd|Add0~39\ : std_logic;
SIGNAL \inst1asd|Add0~40_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst1asd|Add0~41\ : std_logic;
SIGNAL \inst1asd|Add0~42_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1asd|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst1asd|Add0~13\ : std_logic;
SIGNAL \inst1asd|Add0~14_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1asd|Add0~15\ : std_logic;
SIGNAL \inst1asd|Add0~16_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[0]~29_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst1asd|Add0~43\ : std_logic;
SIGNAL \inst1asd|Add0~44_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt[0]~5_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst1asd|Add0~1\ : std_logic;
SIGNAL \inst1asd|Add0~2_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1asd|Add0~3\ : std_logic;
SIGNAL \inst1asd|Add0~4_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1asd|Add0~5\ : std_logic;
SIGNAL \inst1asd|Add0~6_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1asd|Add0~7\ : std_logic;
SIGNAL \inst1asd|Add0~8_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1asd|Add0~9\ : std_logic;
SIGNAL \inst1asd|Add0~10_combout\ : std_logic;
SIGNAL \inst1asd|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst1asd|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|rstGlobal~0_combout\ : std_logic;
SIGNAL \inst|start_stop~0_combout\ : std_logic;
SIGNAL \inst1|s_currentState~15_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TInit~q\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|s_currentState~16_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TAmmassar~q\ : std_logic;
SIGNAL \inst1|Selector13~0_combout\ : std_logic;
SIGNAL \inst1|s_currentState~13_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TExtra~q\ : std_logic;
SIGNAL \inst1|sync_proc~6_combout\ : std_logic;
SIGNAL \inst1|s_stateChanged~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~5_combout\ : std_logic;
SIGNAL \inst1|s_currentState~14_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TLevedar~q\ : std_logic;
SIGNAL \inst1|s_stateChanged~1_combout\ : std_logic;
SIGNAL \inst1|s_stateChanged~2_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~16\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~17_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~27_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~18\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~19_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~20\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~21_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~22\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~23_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~24\ : std_logic;
SIGNAL \inst4|Counter|s_count[7]~25_combout\ : std_logic;
SIGNAL \inst1|Selector8~3_combout\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|Selector11~1_combout\ : std_logic;
SIGNAL \inst1|s_stateChanged~3_combout\ : std_logic;
SIGNAL \inst1|s_stateChanged~q\ : std_logic;
SIGNAL \inst9|s_count~13_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|dataOut~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[0]~29_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[0]~5_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst13|Add0~17\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst13|Add0~19\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst13|Add0~21\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst13|Add0~23\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst13|Add0~25\ : std_logic;
SIGNAL \inst13|Add0~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst13|Add0~27\ : std_logic;
SIGNAL \inst13|Add0~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst13|Add0~29\ : std_logic;
SIGNAL \inst13|Add0~30_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst13|Add0~31\ : std_logic;
SIGNAL \inst13|Add0~32_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst13|Add0~33\ : std_logic;
SIGNAL \inst13|Add0~34_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst13|Add0~35\ : std_logic;
SIGNAL \inst13|Add0~36_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst13|Add0~37\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|reg_fstate.Menu~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Menu~1_combout\ : std_logic;
SIGNAL \inst|fstate.Menu~q\ : std_logic;
SIGNAL \inst|reg_fstate.Timer~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Timer~1_combout\ : std_logic;
SIGNAL \inst|fstate.Timer~q\ : std_logic;
SIGNAL \inst2|dataOut[0]~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|dataOut~0_combout\ : std_logic;
SIGNAL \inst1|addr[2]~0_combout\ : std_logic;
SIGNAL \inst9|s_count~14_combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~33_combout\ : std_logic;
SIGNAL \inst11|s_counter[26]~95_combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~34\ : std_logic;
SIGNAL \inst11|s_counter[1]~35_combout\ : std_logic;
SIGNAL \inst11|s_counter[1]~36\ : std_logic;
SIGNAL \inst11|s_counter[2]~37_combout\ : std_logic;
SIGNAL \inst11|s_counter[2]~38\ : std_logic;
SIGNAL \inst11|s_counter[3]~39_combout\ : std_logic;
SIGNAL \inst11|s_counter[3]~40\ : std_logic;
SIGNAL \inst11|s_counter[4]~41_combout\ : std_logic;
SIGNAL \inst11|s_counter[4]~42\ : std_logic;
SIGNAL \inst11|s_counter[5]~43_combout\ : std_logic;
SIGNAL \inst11|s_counter[5]~44\ : std_logic;
SIGNAL \inst11|s_counter[6]~45_combout\ : std_logic;
SIGNAL \inst11|s_counter[6]~46\ : std_logic;
SIGNAL \inst11|s_counter[7]~47_combout\ : std_logic;
SIGNAL \inst11|s_counter[7]~48\ : std_logic;
SIGNAL \inst11|s_counter[8]~49_combout\ : std_logic;
SIGNAL \inst11|s_counter[8]~50\ : std_logic;
SIGNAL \inst11|s_counter[9]~51_combout\ : std_logic;
SIGNAL \inst11|s_counter[9]~52\ : std_logic;
SIGNAL \inst11|s_counter[10]~53_combout\ : std_logic;
SIGNAL \inst11|s_counter[10]~54\ : std_logic;
SIGNAL \inst11|s_counter[11]~55_combout\ : std_logic;
SIGNAL \inst11|s_counter[11]~56\ : std_logic;
SIGNAL \inst11|s_counter[12]~57_combout\ : std_logic;
SIGNAL \inst11|s_counter[12]~58\ : std_logic;
SIGNAL \inst11|s_counter[13]~59_combout\ : std_logic;
SIGNAL \inst11|s_counter[13]~60\ : std_logic;
SIGNAL \inst11|s_counter[14]~61_combout\ : std_logic;
SIGNAL \inst11|s_counter[14]~62\ : std_logic;
SIGNAL \inst11|s_counter[15]~63_combout\ : std_logic;
SIGNAL \inst11|s_counter[15]~64\ : std_logic;
SIGNAL \inst11|s_counter[16]~65_combout\ : std_logic;
SIGNAL \inst11|s_counter[16]~66\ : std_logic;
SIGNAL \inst11|s_counter[17]~67_combout\ : std_logic;
SIGNAL \inst11|s_counter[17]~68\ : std_logic;
SIGNAL \inst11|s_counter[18]~69_combout\ : std_logic;
SIGNAL \inst11|s_counter[18]~70\ : std_logic;
SIGNAL \inst11|s_counter[19]~71_combout\ : std_logic;
SIGNAL \inst11|s_counter[19]~72\ : std_logic;
SIGNAL \inst11|s_counter[20]~73_combout\ : std_logic;
SIGNAL \inst11|s_counter[20]~74\ : std_logic;
SIGNAL \inst11|s_counter[21]~75_combout\ : std_logic;
SIGNAL \inst11|s_counter[21]~76\ : std_logic;
SIGNAL \inst11|s_counter[22]~77_combout\ : std_logic;
SIGNAL \inst11|s_counter[22]~78\ : std_logic;
SIGNAL \inst11|s_counter[23]~79_combout\ : std_logic;
SIGNAL \inst11|Equal0~6_combout\ : std_logic;
SIGNAL \inst11|s_counter[23]~80\ : std_logic;
SIGNAL \inst11|s_counter[24]~81_combout\ : std_logic;
SIGNAL \inst11|s_counter[24]~82\ : std_logic;
SIGNAL \inst11|s_counter[25]~83_combout\ : std_logic;
SIGNAL \inst11|s_counter[25]~84\ : std_logic;
SIGNAL \inst11|s_counter[26]~85_combout\ : std_logic;
SIGNAL \inst11|s_counter[26]~86\ : std_logic;
SIGNAL \inst11|s_counter[27]~87_combout\ : std_logic;
SIGNAL \inst11|s_counter[27]~88\ : std_logic;
SIGNAL \inst11|s_counter[28]~89_combout\ : std_logic;
SIGNAL \inst11|s_counter[28]~90\ : std_logic;
SIGNAL \inst11|s_counter[29]~91_combout\ : std_logic;
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|s_counter[29]~92\ : std_logic;
SIGNAL \inst11|s_counter[30]~93_combout\ : std_logic;
SIGNAL \inst11|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|pulse~2_combout\ : std_logic;
SIGNAL \inst11|pulse~q\ : std_logic;
SIGNAL \inst1|WideOr8~combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst9|s_count~22_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|s_count~24_combout\ : std_logic;
SIGNAL \inst9|s_count~25_combout\ : std_logic;
SIGNAL \inst9|s_count[0]~16_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|s_count[1]~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|s_count~15_combout\ : std_logic;
SIGNAL \inst9|s_count~19_combout\ : std_logic;
SIGNAL \inst9|s_count~20_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|s_count~21_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst9|s_count~17_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|s_count~23_combout\ : std_logic;
SIGNAL \inst9|s_count~29_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|s_count~18_combout\ : std_logic;
SIGNAL \inst9|s_count~26_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|s_count~27_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|s_count~28_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~q\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.TimeProcess~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.TimeProcess~1_combout\ : std_logic;
SIGNAL \inst|fstate.TimeProcess~q\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~32_combout\ : std_logic;
SIGNAL \inst5|s_count[2]~40\ : std_logic;
SIGNAL \inst5|s_count[3]~41_combout\ : std_logic;
SIGNAL \inst5|s_count[31]~34_combout\ : std_logic;
SIGNAL \inst5|s_count[31]~36_combout\ : std_logic;
SIGNAL \inst5|s_count[3]~42\ : std_logic;
SIGNAL \inst5|s_count[4]~43_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~44\ : std_logic;
SIGNAL \inst5|s_count[5]~45_combout\ : std_logic;
SIGNAL \inst5|s_count[5]~46\ : std_logic;
SIGNAL \inst5|s_count[6]~47_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~48\ : std_logic;
SIGNAL \inst5|s_count[7]~49_combout\ : std_logic;
SIGNAL \inst5|s_count[7]~50\ : std_logic;
SIGNAL \inst5|s_count[8]~51_combout\ : std_logic;
SIGNAL \inst5|s_count[8]~52\ : std_logic;
SIGNAL \inst5|s_count[9]~53_combout\ : std_logic;
SIGNAL \inst5|s_count[9]~54\ : std_logic;
SIGNAL \inst5|s_count[10]~55_combout\ : std_logic;
SIGNAL \inst5|s_count[10]~56\ : std_logic;
SIGNAL \inst5|s_count[11]~57_combout\ : std_logic;
SIGNAL \inst5|s_count[11]~58\ : std_logic;
SIGNAL \inst5|s_count[12]~59_combout\ : std_logic;
SIGNAL \inst5|s_count[12]~60\ : std_logic;
SIGNAL \inst5|s_count[13]~61_combout\ : std_logic;
SIGNAL \inst5|s_count[13]~62\ : std_logic;
SIGNAL \inst5|s_count[14]~63_combout\ : std_logic;
SIGNAL \inst5|s_count[14]~64\ : std_logic;
SIGNAL \inst5|s_count[15]~65_combout\ : std_logic;
SIGNAL \inst5|s_count[15]~66\ : std_logic;
SIGNAL \inst5|s_count[16]~67_combout\ : std_logic;
SIGNAL \inst5|s_count[16]~68\ : std_logic;
SIGNAL \inst5|s_count[17]~69_combout\ : std_logic;
SIGNAL \inst5|s_count[17]~70\ : std_logic;
SIGNAL \inst5|s_count[18]~71_combout\ : std_logic;
SIGNAL \inst5|s_count[18]~72\ : std_logic;
SIGNAL \inst5|s_count[19]~73_combout\ : std_logic;
SIGNAL \inst5|s_count[19]~74\ : std_logic;
SIGNAL \inst5|s_count[20]~75_combout\ : std_logic;
SIGNAL \inst5|s_count[20]~76\ : std_logic;
SIGNAL \inst5|s_count[21]~77_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|s_count[21]~78\ : std_logic;
SIGNAL \inst5|s_count[22]~79_combout\ : std_logic;
SIGNAL \inst5|s_count[22]~80\ : std_logic;
SIGNAL \inst5|s_count[23]~81_combout\ : std_logic;
SIGNAL \inst5|s_count[23]~82\ : std_logic;
SIGNAL \inst5|s_count[24]~83_combout\ : std_logic;
SIGNAL \inst5|s_count[24]~84\ : std_logic;
SIGNAL \inst5|s_count[25]~85_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|s_count[25]~86\ : std_logic;
SIGNAL \inst5|s_count[26]~87_combout\ : std_logic;
SIGNAL \inst5|s_count[26]~88\ : std_logic;
SIGNAL \inst5|s_count[27]~89_combout\ : std_logic;
SIGNAL \inst5|s_count[27]~90\ : std_logic;
SIGNAL \inst5|s_count[28]~91_combout\ : std_logic;
SIGNAL \inst5|s_count[28]~92\ : std_logic;
SIGNAL \inst5|s_count[29]~93_combout\ : std_logic;
SIGNAL \inst5|s_count[29]~94\ : std_logic;
SIGNAL \inst5|s_count[30]~95_combout\ : std_logic;
SIGNAL \inst5|s_count[30]~96\ : std_logic;
SIGNAL \inst5|s_count[31]~97_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|s_count[31]~35_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~33\ : std_logic;
SIGNAL \inst5|s_count[1]~37_combout\ : std_logic;
SIGNAL \inst5|s_count[1]~38\ : std_logic;
SIGNAL \inst5|s_count[2]~39_combout\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|s_result~0_combout\ : std_logic;
SIGNAL \inst5|s_result~q\ : std_logic;
SIGNAL \inst|reg_fstate.Stop~0_combout\ : std_logic;
SIGNAL \inst|fstate.Stop~q\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~3_combout\ : std_logic;
SIGNAL \inst|fstate.StartPrg~q\ : std_logic;
SIGNAL \inst|reg_fstate.Extra~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Extra~1_combout\ : std_logic;
SIGNAL \inst|fstate.Extra~q\ : std_logic;
SIGNAL \inst4|s_reset~0_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~12_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~11\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~13_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~14\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~15_combout\ : std_logic;
SIGNAL \inst1|Selector8~2_combout\ : std_logic;
SIGNAL \inst1|Selector8~4_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Init~0_combout\ : std_logic;
SIGNAL \inst|fstate.Init~q\ : std_logic;
SIGNAL \inst1|s_currentState~17_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TCozer~q\ : std_logic;
SIGNAL \inst1|s_currentState~12_combout\ : std_logic;
SIGNAL \inst1|s_currentState.TFim~q\ : std_logic;
SIGNAL \inst1|timeVal~0_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~15_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~14_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~13_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~53_combout\ : std_logic;
SIGNAL \inst6|outBCD~47_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|outBCD~7_combout\ : std_logic;
SIGNAL \inst6|outBCD~6_combout\ : std_logic;
SIGNAL \inst6|outBCD~5_combout\ : std_logic;
SIGNAL \inst6|outBCD~50_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~49_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~55_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~56_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~51_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~48_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~52_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~43_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~42_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~41_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~54_combout\ : std_logic;
SIGNAL \inst14|decOut_n[6]~29_combout\ : std_logic;
SIGNAL \inst14|decOut_n~30_combout\ : std_logic;
SIGNAL \inst14|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \inst14|decOut_n[6]~28_combout\ : std_logic;
SIGNAL \inst14|decOut_n[6]~32_combout\ : std_logic;
SIGNAL \inst14|decOut_n~33_combout\ : std_logic;
SIGNAL \inst14|decOut_n~41_combout\ : std_logic;
SIGNAL \inst14|decOut_n~17_combout\ : std_logic;
SIGNAL \inst14|decOut_n~16_combout\ : std_logic;
SIGNAL \inst14|decOut_n~15_combout\ : std_logic;
SIGNAL \inst14|decOut_n~14_combout\ : std_logic;
SIGNAL \inst14|decOut_n~11_combout\ : std_logic;
SIGNAL \inst14|decOut_n~44_combout\ : std_logic;
SIGNAL \inst14|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \inst14|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \inst14|decOut_n~36_combout\ : std_logic;
SIGNAL \inst14|decOut_n~42_combout\ : std_logic;
SIGNAL \inst14|decOut_n~43_combout\ : std_logic;
SIGNAL \inst14|decOut_n~37_combout\ : std_logic;
SIGNAL \inst14|decOut_n~38_combout\ : std_logic;
SIGNAL \inst14|decOut_n~39_combout\ : std_logic;
SIGNAL \inst14|decOut_n~40_combout\ : std_logic;
SIGNAL \inst15|decOut_n[6]~23_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_combout\ : std_logic;
SIGNAL \inst6|outBCD2[1]~18_combout\ : std_logic;
SIGNAL \inst6|outBCD2[1]~23_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~11_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~10_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~9_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~22_combout\ : std_logic;
SIGNAL \inst15|decOut_n~18_combout\ : std_logic;
SIGNAL \inst15|decOut_n~19_combout\ : std_logic;
SIGNAL \inst15|decOut_n~20_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~9_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~24_combout\ : std_logic;
SIGNAL \inst6|outBCD~46_combout\ : std_logic;
SIGNAL \inst15|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \inst15|decOut_n[0]~22_combout\ : std_logic;
SIGNAL \inst1|stOut~0_combout\ : std_logic;
SIGNAL \inst9|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst11|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|stOut\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|dataOut\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1asd|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst1|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_stOut~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX1 <= ww_HEX1;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst1|ALT_INV_WideOr8~combout\ <= NOT \inst1|WideOr8~combout\;
\inst1|ALT_INV_stOut~0_combout\ <= NOT \inst1|stOut~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n[6]~32_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~41_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~44_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n[3]~35_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~42_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~38_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~40_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[6]~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~18_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~19_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~20_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[2]~24_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[1]~21_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[0]~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_stOut~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|stOut\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X109_Y52_N10
\inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = \inst12|s_debounceCnt\(0) $ (VCC)
-- \inst12|Add0~1\ = CARRY(\inst12|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst12|Add0~0_combout\,
	cout => \inst12|Add0~1\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X108_Y52_N24
\inst12|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \inst12|s_dirtyIn~0_combout\);

-- Location: FF_X108_Y52_N25
\inst12|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_dirtyIn~q\);

-- Location: FF_X110_Y52_N27
\inst12|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst12|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_previousIn~q\);

-- Location: LCCOMB_X109_Y52_N12
\inst12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~2_combout\ = (\inst12|s_debounceCnt\(1) & (\inst12|Add0~1\ & VCC)) # (!\inst12|s_debounceCnt\(1) & (!\inst12|Add0~1\))
-- \inst12|Add0~3\ = CARRY((!\inst12|s_debounceCnt\(1) & !\inst12|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst12|Add0~1\,
	combout => \inst12|Add0~2_combout\,
	cout => \inst12|Add0~3\);

-- Location: LCCOMB_X108_Y52_N8
\inst12|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~20_combout\ = (\inst12|Add0~2_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~2_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y52_N9
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~20_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y52_N14
\inst12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~4_combout\ = (\inst12|s_debounceCnt\(2) & ((GND) # (!\inst12|Add0~3\))) # (!\inst12|s_debounceCnt\(2) & (\inst12|Add0~3\ $ (GND)))
-- \inst12|Add0~5\ = CARRY((\inst12|s_debounceCnt\(2)) # (!\inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst12|Add0~3\,
	combout => \inst12|Add0~4_combout\,
	cout => \inst12|Add0~5\);

-- Location: LCCOMB_X108_Y52_N22
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~4_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y52_N23
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y52_N16
\inst12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~6_combout\ = (\inst12|s_debounceCnt\(3) & (\inst12|Add0~5\ & VCC)) # (!\inst12|s_debounceCnt\(3) & (!\inst12|Add0~5\))
-- \inst12|Add0~7\ = CARRY((!\inst12|s_debounceCnt\(3) & !\inst12|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst12|Add0~5\,
	combout => \inst12|Add0~6_combout\,
	cout => \inst12|Add0~7\);

-- Location: LCCOMB_X108_Y52_N12
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~6_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~6_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y52_N13
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X109_Y52_N18
\inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|s_debounceCnt\(4) & ((GND) # (!\inst12|Add0~7\))) # (!\inst12|s_debounceCnt\(4) & (\inst12|Add0~7\ $ (GND)))
-- \inst12|Add0~9\ = CARRY((\inst12|s_debounceCnt\(4)) # (!\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X108_Y52_N2
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|Add0~8_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~8_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X108_Y52_N3
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X109_Y52_N20
\inst12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~10_combout\ = (\inst12|s_debounceCnt\(5) & (\inst12|Add0~9\ & VCC)) # (!\inst12|s_debounceCnt\(5) & (!\inst12|Add0~9\))
-- \inst12|Add0~11\ = CARRY((!\inst12|s_debounceCnt\(5) & !\inst12|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst12|Add0~9\,
	combout => \inst12|Add0~10_combout\,
	cout => \inst12|Add0~11\);

-- Location: LCCOMB_X108_Y52_N16
\inst12|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~27_combout\ = (\inst12|Add0~10_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~10_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y52_N17
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~27_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X108_Y52_N28
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(3) & (!\inst12|s_debounceCnt\(1) & (!\inst12|s_debounceCnt\(2) & !\inst12|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(3),
	datab => \inst12|s_debounceCnt\(1),
	datac => \inst12|s_debounceCnt\(2),
	datad => \inst12|s_debounceCnt\(4),
	combout => \inst12|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X109_Y52_N22
\inst12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~12_combout\ = (\inst12|s_debounceCnt\(6) & ((GND) # (!\inst12|Add0~11\))) # (!\inst12|s_debounceCnt\(6) & (\inst12|Add0~11\ $ (GND)))
-- \inst12|Add0~13\ = CARRY((\inst12|s_debounceCnt\(6)) # (!\inst12|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst12|Add0~11\,
	combout => \inst12|Add0~12_combout\,
	cout => \inst12|Add0~13\);

-- Location: LCCOMB_X109_Y52_N4
\inst12|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~0_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_dirtyIn~q\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X108_Y52_N14
\inst12|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~1_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~12_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~1_combout\);

-- Location: FF_X108_Y52_N15
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~1_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X109_Y52_N24
\inst12|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~14_combout\ = (\inst12|s_debounceCnt\(7) & (\inst12|Add0~13\ & VCC)) # (!\inst12|s_debounceCnt\(7) & (!\inst12|Add0~13\))
-- \inst12|Add0~15\ = CARRY((!\inst12|s_debounceCnt\(7) & !\inst12|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst12|Add0~13\,
	combout => \inst12|Add0~14_combout\,
	cout => \inst12|Add0~15\);

-- Location: LCCOMB_X109_Y52_N0
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|s_debounceCnt[0]~4_combout\ & \inst12|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	datad => \inst12|Add0~14_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X109_Y52_N1
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X109_Y52_N26
\inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~16_combout\ = (\inst12|s_debounceCnt\(8) & ((GND) # (!\inst12|Add0~15\))) # (!\inst12|s_debounceCnt\(8) & (\inst12|Add0~15\ $ (GND)))
-- \inst12|Add0~17\ = CARRY((\inst12|s_debounceCnt\(8)) # (!\inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst12|Add0~15\,
	combout => \inst12|Add0~16_combout\,
	cout => \inst12|Add0~17\);

-- Location: LCCOMB_X109_Y52_N6
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[0]~0_combout\,
	datad => \inst12|Add0~16_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X109_Y52_N7
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X109_Y52_N28
\inst12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~18_combout\ = (\inst12|s_debounceCnt\(9) & (\inst12|Add0~17\ & VCC)) # (!\inst12|s_debounceCnt\(9) & (!\inst12|Add0~17\))
-- \inst12|Add0~19\ = CARRY((!\inst12|s_debounceCnt\(9) & !\inst12|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst12|Add0~17\,
	combout => \inst12|Add0~18_combout\,
	cout => \inst12|Add0~19\);

-- Location: LCCOMB_X109_Y52_N8
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[0]~0_combout\,
	datad => \inst12|Add0~18_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y52_N9
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y52_N30
\inst12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~20_combout\ = (\inst12|s_debounceCnt\(10) & ((GND) # (!\inst12|Add0~19\))) # (!\inst12|s_debounceCnt\(10) & (\inst12|Add0~19\ $ (GND)))
-- \inst12|Add0~21\ = CARRY((\inst12|s_debounceCnt\(10)) # (!\inst12|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst12|Add0~19\,
	combout => \inst12|Add0~20_combout\,
	cout => \inst12|Add0~21\);

-- Location: LCCOMB_X110_Y52_N4
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|Add0~20_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~20_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X110_Y52_N5
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y51_N0
\inst12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~22_combout\ = (\inst12|s_debounceCnt\(11) & (\inst12|Add0~21\ & VCC)) # (!\inst12|s_debounceCnt\(11) & (!\inst12|Add0~21\))
-- \inst12|Add0~23\ = CARRY((!\inst12|s_debounceCnt\(11) & !\inst12|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst12|Add0~21\,
	combout => \inst12|Add0~22_combout\,
	cout => \inst12|Add0~23\);

-- Location: LCCOMB_X109_Y52_N2
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[0]~0_combout\,
	datad => \inst12|Add0~22_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X109_Y52_N3
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y51_N2
\inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~24_combout\ = (\inst12|s_debounceCnt\(12) & ((GND) # (!\inst12|Add0~23\))) # (!\inst12|s_debounceCnt\(12) & (\inst12|Add0~23\ $ (GND)))
-- \inst12|Add0~25\ = CARRY((\inst12|s_debounceCnt\(12)) # (!\inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst12|Add0~23\,
	combout => \inst12|Add0~24_combout\,
	cout => \inst12|Add0~25\);

-- Location: LCCOMB_X110_Y52_N20
\inst12|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~10_combout\ = (\inst12|Add0~24_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~24_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~10_combout\);

-- Location: FF_X110_Y52_N21
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~10_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X109_Y51_N4
\inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~26_combout\ = (\inst12|s_debounceCnt\(13) & (\inst12|Add0~25\ & VCC)) # (!\inst12|s_debounceCnt\(13) & (!\inst12|Add0~25\))
-- \inst12|Add0~27\ = CARRY((!\inst12|s_debounceCnt\(13) & !\inst12|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst12|Add0~25\,
	combout => \inst12|Add0~26_combout\,
	cout => \inst12|Add0~27\);

-- Location: LCCOMB_X110_Y52_N30
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|Add0~26_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~26_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X110_Y52_N31
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X109_Y51_N6
\inst12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~28_combout\ = (\inst12|s_debounceCnt\(14) & ((GND) # (!\inst12|Add0~27\))) # (!\inst12|s_debounceCnt\(14) & (\inst12|Add0~27\ $ (GND)))
-- \inst12|Add0~29\ = CARRY((\inst12|s_debounceCnt\(14)) # (!\inst12|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst12|Add0~27\,
	combout => \inst12|Add0~28_combout\,
	cout => \inst12|Add0~29\);

-- Location: LCCOMB_X108_Y52_N4
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X108_Y52_N5
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X109_Y51_N8
\inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~30_combout\ = (\inst12|s_debounceCnt\(15) & (\inst12|Add0~29\ & VCC)) # (!\inst12|s_debounceCnt\(15) & (!\inst12|Add0~29\))
-- \inst12|Add0~31\ = CARRY((!\inst12|s_debounceCnt\(15) & !\inst12|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst12|Add0~29\,
	combout => \inst12|Add0~30_combout\,
	cout => \inst12|Add0~31\);

-- Location: LCCOMB_X111_Y52_N0
\inst12|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~5_combout\ = (\inst12|s_debounceCnt[0]~4_combout\ & \inst12|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	datad => \inst12|Add0~30_combout\,
	combout => \inst12|s_debounceCnt~5_combout\);

-- Location: FF_X111_Y52_N1
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~5_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X109_Y51_N10
\inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~32_combout\ = (\inst12|s_debounceCnt\(16) & ((GND) # (!\inst12|Add0~31\))) # (!\inst12|s_debounceCnt\(16) & (\inst12|Add0~31\ $ (GND)))
-- \inst12|Add0~33\ = CARRY((\inst12|s_debounceCnt\(16)) # (!\inst12|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst12|Add0~31\,
	combout => \inst12|Add0~32_combout\,
	cout => \inst12|Add0~33\);

-- Location: LCCOMB_X110_Y52_N8
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|s_debounceCnt[0]~4_combout\ & \inst12|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt[0]~4_combout\,
	datad => \inst12|Add0~32_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X110_Y52_N9
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y51_N12
\inst12|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~34_combout\ = (\inst12|s_debounceCnt\(17) & (\inst12|Add0~33\ & VCC)) # (!\inst12|s_debounceCnt\(17) & (!\inst12|Add0~33\))
-- \inst12|Add0~35\ = CARRY((!\inst12|s_debounceCnt\(17) & !\inst12|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst12|Add0~33\,
	combout => \inst12|Add0~34_combout\,
	cout => \inst12|Add0~35\);

-- Location: LCCOMB_X110_Y52_N6
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|Add0~34_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~34_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y52_N7
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y52_N6
\inst12|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~0_combout\ = (!\inst12|s_debounceCnt\(6) & (!\inst12|s_debounceCnt\(15) & (!\inst12|s_debounceCnt\(17) & !\inst12|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(6),
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(17),
	datad => \inst12|s_debounceCnt\(16),
	combout => \inst12|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X110_Y52_N14
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(7) & (!\inst12|s_debounceCnt\(10) & (!\inst12|s_debounceCnt\(8) & !\inst12|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(7),
	datab => \inst12|s_debounceCnt\(10),
	datac => \inst12|s_debounceCnt\(8),
	datad => \inst12|s_debounceCnt\(9),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X109_Y51_N14
\inst12|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~36_combout\ = (\inst12|s_debounceCnt\(18) & ((GND) # (!\inst12|Add0~35\))) # (!\inst12|s_debounceCnt\(18) & (\inst12|Add0~35\ $ (GND)))
-- \inst12|Add0~37\ = CARRY((\inst12|s_debounceCnt\(18)) # (!\inst12|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst12|Add0~35\,
	combout => \inst12|Add0~36_combout\,
	cout => \inst12|Add0~37\);

-- Location: LCCOMB_X109_Y51_N16
\inst12|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~38_combout\ = (\inst12|s_debounceCnt\(19) & (\inst12|Add0~37\ & VCC)) # (!\inst12|s_debounceCnt\(19) & (!\inst12|Add0~37\))
-- \inst12|Add0~39\ = CARRY((!\inst12|s_debounceCnt\(19) & !\inst12|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst12|Add0~37\,
	combout => \inst12|Add0~38_combout\,
	cout => \inst12|Add0~39\);

-- Location: LCCOMB_X108_Y52_N20
\inst12|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~19_combout\ = (\inst12|s_debounceCnt[0]~3_combout\ & (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt[0]~3_combout\,
	datac => \inst12|Add0~38_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt[19]~19_combout\);

-- Location: FF_X108_Y52_N21
\inst12|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(19));

-- Location: LCCOMB_X108_Y52_N30
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(11) & (!\inst12|s_debounceCnt\(19) & (!\inst12|s_debounceCnt\(14) & !\inst12|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datab => \inst12|s_debounceCnt\(19),
	datac => \inst12|s_debounceCnt\(14),
	datad => \inst12|s_debounceCnt\(18),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y51_N18
\inst12|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~40_combout\ = (\inst12|s_debounceCnt\(20) & ((GND) # (!\inst12|Add0~39\))) # (!\inst12|s_debounceCnt\(20) & (\inst12|Add0~39\ $ (GND)))
-- \inst12|Add0~41\ = CARRY((\inst12|s_debounceCnt\(20)) # (!\inst12|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst12|Add0~39\,
	combout => \inst12|Add0~40_combout\,
	cout => \inst12|Add0~41\);

-- Location: LCCOMB_X109_Y51_N28
\inst12|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~8_combout\ = (\inst12|Add0~40_combout\ & (\inst12|s_debounceCnt[0]~3_combout\ & \inst12|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~40_combout\,
	datac => \inst12|s_debounceCnt[0]~3_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt[20]~8_combout\);

-- Location: FF_X109_Y51_N29
\inst12|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y51_N20
\inst12|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~42_combout\ = (\inst12|s_debounceCnt\(21) & (\inst12|Add0~41\ & VCC)) # (!\inst12|s_debounceCnt\(21) & (!\inst12|Add0~41\))
-- \inst12|Add0~43\ = CARRY((!\inst12|s_debounceCnt\(21) & !\inst12|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst12|Add0~41\,
	combout => \inst12|Add0~42_combout\,
	cout => \inst12|Add0~43\);

-- Location: LCCOMB_X109_Y51_N30
\inst12|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~9_combout\ = (\inst12|Add0~42_combout\ & (\inst12|s_debounceCnt[0]~3_combout\ & \inst12|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~42_combout\,
	datac => \inst12|s_debounceCnt[0]~3_combout\,
	datad => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt[21]~9_combout\);

-- Location: FF_X109_Y51_N31
\inst12|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y51_N24
\inst12|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~1_combout\ = (!\inst12|s_debounceCnt\(21) & (!\inst12|s_debounceCnt\(20) & (!\inst12|s_debounceCnt\(12) & !\inst12|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(21),
	datab => \inst12|s_debounceCnt\(20),
	datac => \inst12|s_debounceCnt\(12),
	datad => \inst12|s_debounceCnt\(13),
	combout => \inst12|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X110_Y52_N12
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (\inst12|s_pulsedOut~0_combout\ & (\inst12|s_pulsedOut~2_combout\ & (\inst12|s_pulsedOut~3_combout\ & \inst12|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~0_combout\,
	datab => \inst12|s_pulsedOut~2_combout\,
	datac => \inst12|s_pulsedOut~3_combout\,
	datad => \inst12|s_pulsedOut~1_combout\,
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X110_Y52_N2
\inst12|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~2_combout\ = (\inst12|s_debounceCnt\(0)) # ((\inst12|s_debounceCnt\(5)) # ((!\inst12|s_pulsedOut~4_combout\) # (!\inst12|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(5),
	datac => \inst12|s_pulsedOut~5_combout\,
	datad => \inst12|s_pulsedOut~4_combout\,
	combout => \inst12|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X110_Y52_N26
\inst12|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~3_combout\ = ((\inst12|s_debounceCnt\(22)) # ((\inst12|s_debounceCnt[0]~2_combout\) # (!\inst12|s_previousIn~q\))) # (!\inst12|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[0]~2_combout\,
	combout => \inst12|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X108_Y52_N18
\inst12|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~18_combout\ = (\inst12|s_debounceCnt[0]~3_combout\ & (\inst12|s_debounceCnt[0]~0_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt[0]~3_combout\,
	datac => \inst12|Add0~36_combout\,
	datad => \inst12|s_debounceCnt[0]~0_combout\,
	combout => \inst12|s_debounceCnt[18]~18_combout\);

-- Location: FF_X108_Y52_N19
\inst12|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y51_N26
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (!\inst12|s_debounceCnt\(21) & !\inst12|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt\(21),
	datad => \inst12|s_debounceCnt\(20),
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y52_N4
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(15)) # ((\inst12|s_debounceCnt\(17)) # (\inst12|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(17),
	datad => \inst12|s_debounceCnt\(16),
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y52_N26
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(0)) # ((\inst12|s_debounceCnt\(5)) # (!\inst12|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(5),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_pulsedOut~5_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y52_N10
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (\inst12|s_debounceCnt\(9) & (\inst12|s_debounceCnt\(8) & ((\inst12|s_debounceCnt\(7)) # (\inst12|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(9),
	datab => \inst12|s_debounceCnt\(8),
	datac => \inst12|s_debounceCnt\(7),
	datad => \inst12|LessThan0~1_combout\,
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y52_N28
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(12)) # ((\inst12|s_debounceCnt\(11) & ((\inst12|s_debounceCnt\(10)) # (\inst12|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datab => \inst12|s_debounceCnt\(12),
	datac => \inst12|s_debounceCnt\(10),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y52_N18
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|LessThan0~0_combout\) # ((\inst12|s_debounceCnt\(14) & ((\inst12|s_debounceCnt\(13)) # (\inst12|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan0~0_combout\,
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(13),
	datad => \inst12|LessThan0~3_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y52_N24
\inst12|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~6_combout\ = ((\inst12|s_debounceCnt\(18) & (\inst12|s_debounceCnt\(19) & \inst12|LessThan0~4_combout\))) # (!\inst12|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(18),
	datab => \inst12|s_debounceCnt\(19),
	datac => \inst12|LessThan0~5_combout\,
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y52_N22
\inst12|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~25_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~6_combout\)))) # (!\inst12|s_debounceCnt\(22) & (((\inst12|s_debounceCnt[0]~2_combout\)) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|LessThan0~6_combout\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_debounceCnt[0]~2_combout\,
	combout => \inst12|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X109_Y51_N22
\inst12|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~44_combout\ = \inst12|Add0~43\ $ (\inst12|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|s_debounceCnt\(22),
	cin => \inst12|Add0~43\,
	combout => \inst12|Add0~44_combout\);

-- Location: LCCOMB_X110_Y52_N16
\inst12|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~26_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_debounceCnt[22]~25_combout\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt[22]~25_combout\,
	datad => \inst12|Add0~44_combout\,
	combout => \inst12|s_debounceCnt[22]~26_combout\);

-- Location: FF_X110_Y52_N17
\inst12|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y52_N0
\inst12|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[0]~4_combout\ = (\inst12|s_previousIn~q\ & (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_dirtyIn~q\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X108_Y52_N6
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|Add0~0_combout\ & \inst12|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~0_combout\,
	datac => \inst12|s_debounceCnt[0]~4_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y52_N7
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y52_N10
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (\inst12|s_debounceCnt\(0) & (\inst12|s_dirtyIn~q\ & (\inst12|s_previousIn~q\ & !\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt\(22),
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X108_Y52_N0
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (\inst12|s_pulsedOut~6_combout\ & (\inst12|s_pulsedOut~5_combout\ & (\inst12|s_pulsedOut~4_combout\ & !\inst12|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~6_combout\,
	datab => \inst12|s_pulsedOut~5_combout\,
	datac => \inst12|s_pulsedOut~4_combout\,
	datad => \inst12|s_debounceCnt\(5),
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: FF_X108_Y52_N1
\inst12|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_pulsedOut~q\);

-- Location: LCCOMB_X105_Y57_N8
\inst4|Counter|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~10_combout\ = (\inst12|s_pulsedOut~q\ & (\inst4|Counter|s_count\(0) $ (VCC))) # (!\inst12|s_pulsedOut~q\ & (\inst4|Counter|s_count\(0) & VCC))
-- \inst4|Counter|s_count[0]~11\ = CARRY((\inst12|s_pulsedOut~q\ & \inst4|Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst4|Counter|s_count\(0),
	datad => VCC,
	combout => \inst4|Counter|s_count[0]~10_combout\,
	cout => \inst4|Counter|s_count[0]~11\);

-- Location: LCCOMB_X109_Y56_N10
\inst1asd|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~0_combout\ = \inst1asd|s_debounceCnt\(0) $ (VCC)
-- \inst1asd|Add0~1\ = CARRY(\inst1asd|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst1asd|Add0~0_combout\,
	cout => \inst1asd|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y56_N4
\inst1asd|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst1asd|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y56_N5
\inst1asd|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_dirtyIn~q\);

-- Location: FF_X108_Y56_N29
\inst1asd|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1asd|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_previousIn~q\);

-- Location: LCCOMB_X108_Y56_N10
\inst1asd|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~7_combout\ = (!\inst1asd|s_debounceCnt\(2) & (!\inst1asd|s_debounceCnt\(4) & (!\inst1asd|s_debounceCnt\(3) & !\inst1asd|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(2),
	datab => \inst1asd|s_debounceCnt\(4),
	datac => \inst1asd|s_debounceCnt\(3),
	datad => \inst1asd|s_debounceCnt\(1),
	combout => \inst1asd|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X109_Y56_N20
\inst1asd|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~10_combout\ = (\inst1asd|s_debounceCnt\(5) & (\inst1asd|Add0~9\ & VCC)) # (!\inst1asd|s_debounceCnt\(5) & (!\inst1asd|Add0~9\))
-- \inst1asd|Add0~11\ = CARRY((!\inst1asd|s_debounceCnt\(5) & !\inst1asd|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst1asd|Add0~9\,
	combout => \inst1asd|Add0~10_combout\,
	cout => \inst1asd|Add0~11\);

-- Location: LCCOMB_X109_Y56_N22
\inst1asd|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~12_combout\ = (\inst1asd|s_debounceCnt\(6) & ((GND) # (!\inst1asd|Add0~11\))) # (!\inst1asd|s_debounceCnt\(6) & (\inst1asd|Add0~11\ $ (GND)))
-- \inst1asd|Add0~13\ = CARRY((\inst1asd|s_debounceCnt\(6)) # (!\inst1asd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst1asd|Add0~11\,
	combout => \inst1asd|Add0~12_combout\,
	cout => \inst1asd|Add0~13\);

-- Location: LCCOMB_X108_Y56_N28
\inst1asd|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[0]~4_combout\ = (\inst1asd|s_debounceCnt\(22)) # (((\inst1asd|s_debounceCnt[0]~29_combout\) # (!\inst1asd|s_previousIn~q\)) # (!\inst1asd|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(22),
	datab => \inst1asd|s_dirtyIn~q\,
	datac => \inst1asd|s_previousIn~q\,
	datad => \inst1asd|s_debounceCnt[0]~29_combout\,
	combout => \inst1asd|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X109_Y56_N26
\inst1asd|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~16_combout\ = (\inst1asd|s_debounceCnt\(8) & ((GND) # (!\inst1asd|Add0~15\))) # (!\inst1asd|s_debounceCnt\(8) & (\inst1asd|Add0~15\ $ (GND)))
-- \inst1asd|Add0~17\ = CARRY((\inst1asd|s_debounceCnt\(8)) # (!\inst1asd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst1asd|Add0~15\,
	combout => \inst1asd|Add0~16_combout\,
	cout => \inst1asd|Add0~17\);

-- Location: LCCOMB_X109_Y56_N28
\inst1asd|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~18_combout\ = (\inst1asd|s_debounceCnt\(9) & (\inst1asd|Add0~17\ & VCC)) # (!\inst1asd|s_debounceCnt\(9) & (!\inst1asd|Add0~17\))
-- \inst1asd|Add0~19\ = CARRY((!\inst1asd|s_debounceCnt\(9) & !\inst1asd|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1asd|Add0~17\,
	combout => \inst1asd|Add0~18_combout\,
	cout => \inst1asd|Add0~19\);

-- Location: LCCOMB_X109_Y56_N8
\inst1asd|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~15_combout\ = (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~18_combout\) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|Add0~18_combout\,
	datac => \inst1asd|s_previousIn~q\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y56_N9
\inst1asd|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~15_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y56_N30
\inst1asd|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~20_combout\ = (\inst1asd|s_debounceCnt\(10) & ((GND) # (!\inst1asd|Add0~19\))) # (!\inst1asd|s_debounceCnt\(10) & (\inst1asd|Add0~19\ $ (GND)))
-- \inst1asd|Add0~21\ = CARRY((\inst1asd|s_debounceCnt\(10)) # (!\inst1asd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst1asd|Add0~19\,
	combout => \inst1asd|Add0~20_combout\,
	cout => \inst1asd|Add0~21\);

-- Location: LCCOMB_X110_Y56_N4
\inst1asd|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~16_combout\ = (\inst1asd|Add0~20_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|Add0~20_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~16_combout\);

-- Location: FF_X110_Y56_N5
\inst1asd|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~16_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y55_N0
\inst1asd|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~22_combout\ = (\inst1asd|s_debounceCnt\(11) & (\inst1asd|Add0~21\ & VCC)) # (!\inst1asd|s_debounceCnt\(11) & (!\inst1asd|Add0~21\))
-- \inst1asd|Add0~23\ = CARRY((!\inst1asd|s_debounceCnt\(11) & !\inst1asd|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1asd|Add0~21\,
	combout => \inst1asd|Add0~22_combout\,
	cout => \inst1asd|Add0~23\);

-- Location: LCCOMB_X110_Y56_N26
\inst1asd|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~17_combout\ = (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~22_combout\) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datac => \inst1asd|Add0~22_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt~17_combout\);

-- Location: FF_X110_Y56_N27
\inst1asd|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~17_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y55_N2
\inst1asd|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~24_combout\ = (\inst1asd|s_debounceCnt\(12) & ((GND) # (!\inst1asd|Add0~23\))) # (!\inst1asd|s_debounceCnt\(12) & (\inst1asd|Add0~23\ $ (GND)))
-- \inst1asd|Add0~25\ = CARRY((\inst1asd|s_debounceCnt\(12)) # (!\inst1asd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1asd|Add0~23\,
	combout => \inst1asd|Add0~24_combout\,
	cout => \inst1asd|Add0~25\);

-- Location: LCCOMB_X110_Y56_N14
\inst1asd|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~11_combout\ = (\inst1asd|Add0~24_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~24_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~11_combout\);

-- Location: FF_X110_Y56_N15
\inst1asd|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~11_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(12));

-- Location: LCCOMB_X109_Y55_N4
\inst1asd|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~26_combout\ = (\inst1asd|s_debounceCnt\(13) & (\inst1asd|Add0~25\ & VCC)) # (!\inst1asd|s_debounceCnt\(13) & (!\inst1asd|Add0~25\))
-- \inst1asd|Add0~27\ = CARRY((!\inst1asd|s_debounceCnt\(13) & !\inst1asd|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1asd|Add0~25\,
	combout => \inst1asd|Add0~26_combout\,
	cout => \inst1asd|Add0~27\);

-- Location: LCCOMB_X110_Y56_N0
\inst1asd|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~12_combout\ = (\inst1asd|Add0~26_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~26_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~12_combout\);

-- Location: FF_X110_Y56_N1
\inst1asd|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~12_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(13));

-- Location: LCCOMB_X109_Y55_N6
\inst1asd|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~28_combout\ = (\inst1asd|s_debounceCnt\(14) & ((GND) # (!\inst1asd|Add0~27\))) # (!\inst1asd|s_debounceCnt\(14) & (\inst1asd|Add0~27\ $ (GND)))
-- \inst1asd|Add0~29\ = CARRY((\inst1asd|s_debounceCnt\(14)) # (!\inst1asd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst1asd|Add0~27\,
	combout => \inst1asd|Add0~28_combout\,
	cout => \inst1asd|Add0~29\);

-- Location: LCCOMB_X108_Y56_N30
\inst1asd|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~18_combout\ = (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~28_combout\) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datac => \inst1asd|Add0~28_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt~18_combout\);

-- Location: FF_X108_Y56_N31
\inst1asd|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~18_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(14));

-- Location: LCCOMB_X109_Y55_N8
\inst1asd|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~30_combout\ = (\inst1asd|s_debounceCnt\(15) & (\inst1asd|Add0~29\ & VCC)) # (!\inst1asd|s_debounceCnt\(15) & (!\inst1asd|Add0~29\))
-- \inst1asd|Add0~31\ = CARRY((!\inst1asd|s_debounceCnt\(15) & !\inst1asd|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1asd|Add0~29\,
	combout => \inst1asd|Add0~30_combout\,
	cout => \inst1asd|Add0~31\);

-- Location: LCCOMB_X108_Y56_N20
\inst1asd|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~6_combout\ = (\inst1asd|Add0~30_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~30_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~6_combout\);

-- Location: FF_X108_Y56_N21
\inst1asd|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~6_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(15));

-- Location: LCCOMB_X109_Y55_N10
\inst1asd|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~32_combout\ = (\inst1asd|s_debounceCnt\(16) & ((GND) # (!\inst1asd|Add0~31\))) # (!\inst1asd|s_debounceCnt\(16) & (\inst1asd|Add0~31\ $ (GND)))
-- \inst1asd|Add0~33\ = CARRY((\inst1asd|s_debounceCnt\(16)) # (!\inst1asd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1asd|Add0~31\,
	combout => \inst1asd|Add0~32_combout\,
	cout => \inst1asd|Add0~33\);

-- Location: LCCOMB_X109_Y55_N28
\inst1asd|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~7_combout\ = (\inst1asd|Add0~32_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|Add0~32_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y55_N29
\inst1asd|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~7_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y55_N12
\inst1asd|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~34_combout\ = (\inst1asd|s_debounceCnt\(17) & (\inst1asd|Add0~33\ & VCC)) # (!\inst1asd|s_debounceCnt\(17) & (!\inst1asd|Add0~33\))
-- \inst1asd|Add0~35\ = CARRY((!\inst1asd|s_debounceCnt\(17) & !\inst1asd|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst1asd|Add0~33\,
	combout => \inst1asd|Add0~34_combout\,
	cout => \inst1asd|Add0~35\);

-- Location: LCCOMB_X109_Y55_N30
\inst1asd|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~8_combout\ = (\inst1asd|Add0~34_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|Add0~34_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~8_combout\);

-- Location: FF_X109_Y55_N31
\inst1asd|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~8_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(17));

-- Location: LCCOMB_X109_Y55_N14
\inst1asd|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~36_combout\ = (\inst1asd|s_debounceCnt\(18) & ((GND) # (!\inst1asd|Add0~35\))) # (!\inst1asd|s_debounceCnt\(18) & (\inst1asd|Add0~35\ $ (GND)))
-- \inst1asd|Add0~37\ = CARRY((\inst1asd|s_debounceCnt\(18)) # (!\inst1asd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1asd|Add0~35\,
	combout => \inst1asd|Add0~36_combout\,
	cout => \inst1asd|Add0~37\);

-- Location: LCCOMB_X109_Y56_N4
\inst1asd|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[18]~19_combout\ = (\inst1asd|s_debounceCnt[0]~4_combout\ & (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~36_combout\) # (!\inst1asd|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datab => \inst1asd|s_debounceCnt[0]~4_combout\,
	datac => \inst1asd|Add0~36_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt[18]~19_combout\);

-- Location: FF_X109_Y56_N5
\inst1asd|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y55_N16
\inst1asd|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~38_combout\ = (\inst1asd|s_debounceCnt\(19) & (\inst1asd|Add0~37\ & VCC)) # (!\inst1asd|s_debounceCnt\(19) & (!\inst1asd|Add0~37\))
-- \inst1asd|Add0~39\ = CARRY((!\inst1asd|s_debounceCnt\(19) & !\inst1asd|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1asd|Add0~37\,
	combout => \inst1asd|Add0~38_combout\,
	cout => \inst1asd|Add0~39\);

-- Location: LCCOMB_X108_Y56_N0
\inst1asd|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[19]~20_combout\ = (\inst1asd|s_debounceCnt[0]~4_combout\ & (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~38_combout\) # (!\inst1asd|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datab => \inst1asd|s_debounceCnt[0]~4_combout\,
	datac => \inst1asd|Add0~38_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt[19]~20_combout\);

-- Location: FF_X108_Y56_N1
\inst1asd|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(19));

-- Location: LCCOMB_X109_Y55_N18
\inst1asd|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~40_combout\ = (\inst1asd|s_debounceCnt\(20) & ((GND) # (!\inst1asd|Add0~39\))) # (!\inst1asd|s_debounceCnt\(20) & (\inst1asd|Add0~39\ $ (GND)))
-- \inst1asd|Add0~41\ = CARRY((\inst1asd|s_debounceCnt\(20)) # (!\inst1asd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1asd|Add0~39\,
	combout => \inst1asd|Add0~40_combout\,
	cout => \inst1asd|Add0~41\);

-- Location: LCCOMB_X110_Y56_N8
\inst1asd|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[20]~9_combout\ = (\inst1asd|s_debounceCnt[0]~4_combout\ & (\inst1asd|Add0~40_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt[0]~4_combout\,
	datac => \inst1asd|Add0~40_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt[20]~9_combout\);

-- Location: FF_X110_Y56_N9
\inst1asd|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y55_N20
\inst1asd|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~42_combout\ = (\inst1asd|s_debounceCnt\(21) & (\inst1asd|Add0~41\ & VCC)) # (!\inst1asd|s_debounceCnt\(21) & (!\inst1asd|Add0~41\))
-- \inst1asd|Add0~43\ = CARRY((!\inst1asd|s_debounceCnt\(21) & !\inst1asd|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst1asd|Add0~41\,
	combout => \inst1asd|Add0~42_combout\,
	cout => \inst1asd|Add0~43\);

-- Location: LCCOMB_X108_Y56_N18
\inst1asd|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[21]~10_combout\ = (\inst1asd|s_debounceCnt[0]~4_combout\ & (\inst1asd|Add0~42_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt[0]~4_combout\,
	datac => \inst1asd|Add0~42_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt[21]~10_combout\);

-- Location: FF_X108_Y56_N19
\inst1asd|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y55_N26
\inst1asd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~0_combout\ = (!\inst1asd|s_debounceCnt\(16) & (!\inst1asd|s_debounceCnt\(17) & !\inst1asd|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(16),
	datac => \inst1asd|s_debounceCnt\(17),
	datad => \inst1asd|s_debounceCnt\(15),
	combout => \inst1asd|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y56_N26
\inst1asd|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~8_combout\ = (!\inst1asd|s_debounceCnt\(5) & \inst1asd|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|s_debounceCnt\(5),
	datad => \inst1asd|s_pulsedOut~7_combout\,
	combout => \inst1asd|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X110_Y56_N16
\inst1asd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~1_combout\ = (\inst1asd|s_debounceCnt\(7)) # ((\inst1asd|s_debounceCnt\(6) & ((\inst1asd|s_debounceCnt\(0)) # (!\inst1asd|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(7),
	datab => \inst1asd|s_debounceCnt\(0),
	datac => \inst1asd|s_debounceCnt\(6),
	datad => \inst1asd|s_pulsedOut~8_combout\,
	combout => \inst1asd|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y56_N10
\inst1asd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~2_combout\ = (\inst1asd|s_debounceCnt\(10)) # ((\inst1asd|s_debounceCnt\(9) & (\inst1asd|s_debounceCnt\(8) & \inst1asd|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(9),
	datab => \inst1asd|s_debounceCnt\(8),
	datac => \inst1asd|s_debounceCnt\(10),
	datad => \inst1asd|LessThan0~1_combout\,
	combout => \inst1asd|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y56_N28
\inst1asd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~3_combout\ = (\inst1asd|s_debounceCnt\(13)) # ((\inst1asd|s_debounceCnt\(12)) # ((\inst1asd|s_debounceCnt\(11) & \inst1asd|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(11),
	datab => \inst1asd|s_debounceCnt\(13),
	datac => \inst1asd|s_debounceCnt\(12),
	datad => \inst1asd|LessThan0~2_combout\,
	combout => \inst1asd|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y56_N6
\inst1asd|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~4_combout\ = (\inst1asd|s_debounceCnt\(19) & (((\inst1asd|s_debounceCnt\(14) & \inst1asd|LessThan0~3_combout\)) # (!\inst1asd|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(14),
	datab => \inst1asd|s_debounceCnt\(19),
	datac => \inst1asd|LessThan0~0_combout\,
	datad => \inst1asd|LessThan0~3_combout\,
	combout => \inst1asd|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y56_N12
\inst1asd|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|LessThan0~5_combout\ = (\inst1asd|s_debounceCnt\(20)) # ((\inst1asd|s_debounceCnt\(21)) # ((\inst1asd|s_debounceCnt\(18) & \inst1asd|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(20),
	datab => \inst1asd|s_debounceCnt\(21),
	datac => \inst1asd|s_debounceCnt\(18),
	datad => \inst1asd|LessThan0~4_combout\,
	combout => \inst1asd|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y56_N2
\inst1asd|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[0]~2_combout\ = (\inst1asd|s_dirtyIn~q\ & ((!\inst1asd|LessThan0~5_combout\) # (!\inst1asd|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_dirtyIn~q\,
	datab => \inst1asd|s_debounceCnt\(22),
	datad => \inst1asd|LessThan0~5_combout\,
	combout => \inst1asd|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X109_Y56_N0
\inst1asd|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~3_combout\ = (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~12_combout\) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datac => \inst1asd|Add0~12_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt~3_combout\);

-- Location: FF_X109_Y56_N1
\inst1asd|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~3_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(6));

-- Location: LCCOMB_X109_Y56_N24
\inst1asd|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~14_combout\ = (\inst1asd|s_debounceCnt\(7) & (\inst1asd|Add0~13\ & VCC)) # (!\inst1asd|s_debounceCnt\(7) & (!\inst1asd|Add0~13\))
-- \inst1asd|Add0~15\ = CARRY((!\inst1asd|s_debounceCnt\(7) & !\inst1asd|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst1asd|Add0~13\,
	combout => \inst1asd|Add0~14_combout\,
	cout => \inst1asd|Add0~15\);

-- Location: LCCOMB_X110_Y56_N30
\inst1asd|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~13_combout\ = (\inst1asd|Add0~14_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~14_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y56_N31
\inst1asd|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~13_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(7));

-- Location: LCCOMB_X109_Y56_N6
\inst1asd|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~14_combout\ = (\inst1asd|s_debounceCnt[0]~2_combout\ & ((\inst1asd|Add0~16_combout\) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datac => \inst1asd|Add0~16_combout\,
	datad => \inst1asd|s_debounceCnt[0]~2_combout\,
	combout => \inst1asd|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y56_N7
\inst1asd|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~14_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(8));

-- Location: LCCOMB_X109_Y56_N2
\inst1asd|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~4_combout\ = (!\inst1asd|s_debounceCnt\(8) & (!\inst1asd|s_debounceCnt\(9) & (!\inst1asd|s_debounceCnt\(7) & !\inst1asd|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(8),
	datab => \inst1asd|s_debounceCnt\(9),
	datac => \inst1asd|s_debounceCnt\(7),
	datad => \inst1asd|s_debounceCnt\(10),
	combout => \inst1asd|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X108_Y56_N24
\inst1asd|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~3_combout\ = (!\inst1asd|s_debounceCnt\(21) & (!\inst1asd|s_debounceCnt\(20) & (!\inst1asd|s_debounceCnt\(13) & !\inst1asd|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(21),
	datab => \inst1asd|s_debounceCnt\(20),
	datac => \inst1asd|s_debounceCnt\(13),
	datad => \inst1asd|s_debounceCnt\(12),
	combout => \inst1asd|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X108_Y56_N14
\inst1asd|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~5_combout\ = (!\inst1asd|s_debounceCnt\(19) & (!\inst1asd|s_debounceCnt\(18) & (!\inst1asd|s_debounceCnt\(14) & !\inst1asd|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(19),
	datab => \inst1asd|s_debounceCnt\(18),
	datac => \inst1asd|s_debounceCnt\(14),
	datad => \inst1asd|s_debounceCnt\(11),
	combout => \inst1asd|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X109_Y55_N24
\inst1asd|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~2_combout\ = (!\inst1asd|s_debounceCnt\(17) & (!\inst1asd|s_debounceCnt\(16) & (!\inst1asd|s_debounceCnt\(6) & !\inst1asd|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(17),
	datab => \inst1asd|s_debounceCnt\(16),
	datac => \inst1asd|s_debounceCnt\(6),
	datad => \inst1asd|s_debounceCnt\(15),
	combout => \inst1asd|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y56_N16
\inst1asd|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~6_combout\ = (\inst1asd|s_pulsedOut~4_combout\ & (\inst1asd|s_pulsedOut~3_combout\ & (\inst1asd|s_pulsedOut~5_combout\ & \inst1asd|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~4_combout\,
	datab => \inst1asd|s_pulsedOut~3_combout\,
	datac => \inst1asd|s_pulsedOut~5_combout\,
	datad => \inst1asd|s_pulsedOut~2_combout\,
	combout => \inst1asd|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X108_Y56_N2
\inst1asd|s_debounceCnt[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[0]~29_combout\ = ((\inst1asd|s_debounceCnt\(5)) # ((\inst1asd|s_debounceCnt\(0)) # (!\inst1asd|s_pulsedOut~6_combout\))) # (!\inst1asd|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~7_combout\,
	datab => \inst1asd|s_debounceCnt\(5),
	datac => \inst1asd|s_debounceCnt\(0),
	datad => \inst1asd|s_pulsedOut~6_combout\,
	combout => \inst1asd|s_debounceCnt[0]~29_combout\);

-- Location: LCCOMB_X110_Y56_N22
\inst1asd|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[22]~27_combout\ = (\inst1asd|s_debounceCnt\(22) & (((!\inst1asd|LessThan0~5_combout\)))) # (!\inst1asd|s_debounceCnt\(22) & (((\inst1asd|s_debounceCnt[0]~29_combout\)) # (!\inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_previousIn~q\,
	datab => \inst1asd|s_debounceCnt\(22),
	datac => \inst1asd|s_debounceCnt[0]~29_combout\,
	datad => \inst1asd|LessThan0~5_combout\,
	combout => \inst1asd|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X109_Y55_N22
\inst1asd|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~44_combout\ = \inst1asd|s_debounceCnt\(22) $ (\inst1asd|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(22),
	cin => \inst1asd|Add0~43\,
	combout => \inst1asd|Add0~44_combout\);

-- Location: LCCOMB_X110_Y56_N18
\inst1asd|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[22]~28_combout\ = (\inst1asd|s_dirtyIn~q\ & (\inst1asd|s_debounceCnt[22]~27_combout\ & ((\inst1asd|Add0~44_combout\) # (!\inst1asd|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_dirtyIn~q\,
	datab => \inst1asd|s_previousIn~q\,
	datac => \inst1asd|s_debounceCnt[22]~27_combout\,
	datad => \inst1asd|Add0~44_combout\,
	combout => \inst1asd|s_debounceCnt[22]~28_combout\);

-- Location: FF_X110_Y56_N19
\inst1asd|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y56_N20
\inst1asd|s_debounceCnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt[0]~5_combout\ = (\inst1asd|s_dirtyIn~q\ & (\inst1asd|s_previousIn~q\ & ((!\inst1asd|LessThan0~5_combout\) # (!\inst1asd|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_dirtyIn~q\,
	datab => \inst1asd|s_debounceCnt\(22),
	datac => \inst1asd|s_previousIn~q\,
	datad => \inst1asd|LessThan0~5_combout\,
	combout => \inst1asd|s_debounceCnt[0]~5_combout\);

-- Location: LCCOMB_X110_Y56_N24
\inst1asd|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~26_combout\ = (\inst1asd|Add0~0_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~0_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~26_combout\);

-- Location: FF_X110_Y56_N25
\inst1asd|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~26_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y56_N12
\inst1asd|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~2_combout\ = (\inst1asd|s_debounceCnt\(1) & (\inst1asd|Add0~1\ & VCC)) # (!\inst1asd|s_debounceCnt\(1) & (!\inst1asd|Add0~1\))
-- \inst1asd|Add0~3\ = CARRY((!\inst1asd|s_debounceCnt\(1) & !\inst1asd|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1asd|Add0~1\,
	combout => \inst1asd|Add0~2_combout\,
	cout => \inst1asd|Add0~3\);

-- Location: LCCOMB_X108_Y56_N6
\inst1asd|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~21_combout\ = (\inst1asd|Add0~2_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~2_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y56_N7
\inst1asd|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~21_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y56_N14
\inst1asd|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~4_combout\ = (\inst1asd|s_debounceCnt\(2) & ((GND) # (!\inst1asd|Add0~3\))) # (!\inst1asd|s_debounceCnt\(2) & (\inst1asd|Add0~3\ $ (GND)))
-- \inst1asd|Add0~5\ = CARRY((\inst1asd|s_debounceCnt\(2)) # (!\inst1asd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1asd|Add0~3\,
	combout => \inst1asd|Add0~4_combout\,
	cout => \inst1asd|Add0~5\);

-- Location: LCCOMB_X108_Y56_N12
\inst1asd|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~22_combout\ = (\inst1asd|Add0~4_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|Add0~4_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y56_N13
\inst1asd|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~22_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y56_N16
\inst1asd|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~6_combout\ = (\inst1asd|s_debounceCnt\(3) & (\inst1asd|Add0~5\ & VCC)) # (!\inst1asd|s_debounceCnt\(3) & (!\inst1asd|Add0~5\))
-- \inst1asd|Add0~7\ = CARRY((!\inst1asd|s_debounceCnt\(3) & !\inst1asd|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1asd|Add0~5\,
	combout => \inst1asd|Add0~6_combout\,
	cout => \inst1asd|Add0~7\);

-- Location: LCCOMB_X108_Y56_N22
\inst1asd|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~23_combout\ = (\inst1asd|Add0~6_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|Add0~6_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~23_combout\);

-- Location: FF_X108_Y56_N23
\inst1asd|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~23_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(3));

-- Location: LCCOMB_X109_Y56_N18
\inst1asd|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|Add0~8_combout\ = (\inst1asd|s_debounceCnt\(4) & ((GND) # (!\inst1asd|Add0~7\))) # (!\inst1asd|s_debounceCnt\(4) & (\inst1asd|Add0~7\ $ (GND)))
-- \inst1asd|Add0~9\ = CARRY((\inst1asd|s_debounceCnt\(4)) # (!\inst1asd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1asd|Add0~7\,
	combout => \inst1asd|Add0~8_combout\,
	cout => \inst1asd|Add0~9\);

-- Location: LCCOMB_X108_Y56_N8
\inst1asd|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~24_combout\ = (\inst1asd|Add0~8_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|Add0~8_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y56_N9
\inst1asd|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~24_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y56_N4
\inst1asd|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_debounceCnt~25_combout\ = (\inst1asd|Add0~10_combout\ & \inst1asd|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|Add0~10_combout\,
	datad => \inst1asd|s_debounceCnt[0]~5_combout\,
	combout => \inst1asd|s_debounceCnt~25_combout\);

-- Location: FF_X108_Y56_N5
\inst1asd|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_debounceCnt~25_combout\,
	ena => \inst1asd|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_debounceCnt\(5));

-- Location: LCCOMB_X107_Y56_N12
\inst1asd|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~9_combout\ = (\inst1asd|s_debounceCnt\(0) & (\inst1asd|s_dirtyIn~q\ & (!\inst1asd|s_debounceCnt\(22) & \inst1asd|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(0),
	datab => \inst1asd|s_dirtyIn~q\,
	datac => \inst1asd|s_debounceCnt\(22),
	datad => \inst1asd|s_previousIn~q\,
	combout => \inst1asd|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X103_Y56_N0
\inst1asd|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1asd|s_pulsedOut~10_combout\ = (!\inst1asd|s_debounceCnt\(5) & (\inst1asd|s_pulsedOut~7_combout\ & (\inst1asd|s_pulsedOut~6_combout\ & \inst1asd|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_debounceCnt\(5),
	datab => \inst1asd|s_pulsedOut~7_combout\,
	datac => \inst1asd|s_pulsedOut~6_combout\,
	datad => \inst1asd|s_pulsedOut~9_combout\,
	combout => \inst1asd|s_pulsedOut~10_combout\);

-- Location: FF_X103_Y56_N1
\inst1asd|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1asd|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1asd|s_pulsedOut~q\);

-- Location: LCCOMB_X102_Y56_N0
\inst|rstGlobal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rstGlobal~0_combout\ = (!\inst1asd|s_pulsedOut~q\ & !\inst|fstate.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1asd|s_pulsedOut~q\,
	datad => \inst|fstate.Init~q\,
	combout => \inst|rstGlobal~0_combout\);

-- Location: LCCOMB_X101_Y57_N14
\inst|start_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|start_stop~0_combout\ = (\inst|fstate.StartPrg~q\ & !\inst1asd|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.StartPrg~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst|start_stop~0_combout\);

-- Location: LCCOMB_X101_Y57_N18
\inst1|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~15_combout\ = (!\inst1|Selector8~4_combout\ & (!\inst|rstGlobal~0_combout\ & ((\inst|start_stop~0_combout\) # (\inst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~4_combout\,
	datab => \inst|start_stop~0_combout\,
	datac => \inst1|s_currentState.TInit~q\,
	datad => \inst|rstGlobal~0_combout\,
	combout => \inst1|s_currentState~15_combout\);

-- Location: FF_X101_Y57_N19
\inst1|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TInit~q\);

-- Location: LCCOMB_X102_Y57_N28
\inst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = (\inst9|s_cntZero~q\ & (!\inst1|s_currentState.TInit~q\ & ((\inst|start_stop~0_combout\)))) # (!\inst9|s_cntZero~q\ & ((\inst1|s_currentState.TAmmassar~q\) # ((!\inst1|s_currentState.TInit~q\ & \inst|start_stop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|s_currentState.TInit~q\,
	datac => \inst1|s_currentState.TAmmassar~q\,
	datad => \inst|start_stop~0_combout\,
	combout => \inst1|Selector9~0_combout\);

-- Location: LCCOMB_X102_Y57_N12
\inst1|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~16_combout\ = (\inst1|Selector9~0_combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst1|Selector9~0_combout\,
	combout => \inst1|s_currentState~16_combout\);

-- Location: FF_X102_Y57_N13
\inst1|s_currentState.TAmmassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TAmmassar~q\);

-- Location: LCCOMB_X101_Y56_N28
\inst1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector13~0_combout\ = (\inst1|s_currentState.TExtra~q\ & ((\inst1asd|s_pulsedOut~q\) # (!\inst|fstate.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.StartPrg~q\,
	datab => \inst1|s_currentState.TExtra~q\,
	datac => \inst1asd|s_pulsedOut~q\,
	combout => \inst1|Selector13~0_combout\);

-- Location: LCCOMB_X101_Y56_N16
\inst1|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~13_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst1|Selector13~0_combout\) # ((\inst9|s_cntZero~q\ & \inst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|Selector13~0_combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst1|s_currentState.TFim~q\,
	combout => \inst1|s_currentState~13_combout\);

-- Location: FF_X101_Y56_N17
\inst1|s_currentState.TExtra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TExtra~q\);

-- Location: LCCOMB_X101_Y57_N16
\inst1|sync_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sync_proc~6_combout\ = (\inst1|s_currentState.TExtra~q\ & (\inst|start_stop~0_combout\ & ((!\inst1|s_currentState.TFim~q\) # (!\inst9|s_cntZero~q\)))) # (!\inst1|s_currentState.TExtra~q\ & (\inst9|s_cntZero~q\ & (\inst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|s_currentState.TFim~q\,
	datac => \inst|start_stop~0_combout\,
	datad => \inst1|s_currentState.TExtra~q\,
	combout => \inst1|sync_proc~6_combout\);

-- Location: LCCOMB_X101_Y57_N10
\inst1|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stateChanged~0_combout\ = (\inst1|sync_proc~6_combout\) # ((\inst9|s_cntZero~q\ & (\inst1|s_currentState.TFim~q\ $ (\inst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|s_currentState.TFim~q\,
	datac => \inst1|s_currentState.TCozer~q\,
	datad => \inst1|sync_proc~6_combout\,
	combout => \inst1|s_stateChanged~0_combout\);

-- Location: LCCOMB_X101_Y57_N8
\inst1|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~5_combout\ = (\inst1|Selector8~4_combout\) # ((!\inst1|s_currentState.TInit~q\ & ((\inst1asd|s_pulsedOut~q\) # (!\inst|fstate.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TInit~q\,
	datab => \inst|fstate.StartPrg~q\,
	datac => \inst1|Selector8~4_combout\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst1|Selector8~5_combout\);

-- Location: LCCOMB_X102_Y57_N14
\inst1|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~14_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_cntZero~q\ & (\inst1|s_currentState.TAmmassar~q\)) # (!\inst9|s_cntZero~q\ & ((\inst1|s_currentState.TLevedar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \inst1|s_currentState.TLevedar~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst1|s_currentState~14_combout\);

-- Location: FF_X102_Y57_N15
\inst1|s_currentState.TLevedar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TLevedar~q\);

-- Location: LCCOMB_X102_Y57_N24
\inst1|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stateChanged~1_combout\ = (\inst1|s_currentState.TAmmassar~q\ & (((\inst9|s_cntZero~q\ & !\inst1|s_currentState.TLevedar~q\)) # (!\inst1|Selector9~0_combout\))) # (!\inst1|s_currentState.TAmmassar~q\ & ((\inst1|Selector9~0_combout\) # 
-- ((\inst9|s_cntZero~q\ & \inst1|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|s_currentState.TLevedar~q\,
	datac => \inst1|s_currentState.TAmmassar~q\,
	datad => \inst1|Selector9~0_combout\,
	combout => \inst1|s_stateChanged~1_combout\);

-- Location: LCCOMB_X101_Y57_N24
\inst1|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stateChanged~2_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst1|s_stateChanged~1_combout\) # (\inst1|s_currentState.TInit~q\ $ (!\inst1|Selector8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TInit~q\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \inst1|Selector8~5_combout\,
	datad => \inst1|s_stateChanged~1_combout\,
	combout => \inst1|s_stateChanged~2_combout\);

-- Location: LCCOMB_X105_Y57_N12
\inst4|Counter|s_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[2]~15_combout\ = (\inst4|Counter|s_count\(2) & (\inst4|Counter|s_count[1]~14\ $ (GND))) # (!\inst4|Counter|s_count\(2) & (!\inst4|Counter|s_count[1]~14\ & VCC))
-- \inst4|Counter|s_count[2]~16\ = CARRY((\inst4|Counter|s_count\(2) & !\inst4|Counter|s_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(2),
	datad => VCC,
	cin => \inst4|Counter|s_count[1]~14\,
	combout => \inst4|Counter|s_count[2]~15_combout\,
	cout => \inst4|Counter|s_count[2]~16\);

-- Location: LCCOMB_X105_Y57_N14
\inst4|Counter|s_count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[3]~17_combout\ = (\inst4|Counter|s_count\(3) & (!\inst4|Counter|s_count[2]~16\)) # (!\inst4|Counter|s_count\(3) & ((\inst4|Counter|s_count[2]~16\) # (GND)))
-- \inst4|Counter|s_count[3]~18\ = CARRY((!\inst4|Counter|s_count[2]~16\) # (!\inst4|Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(3),
	datad => VCC,
	cin => \inst4|Counter|s_count[2]~16\,
	combout => \inst4|Counter|s_count[3]~17_combout\,
	cout => \inst4|Counter|s_count[3]~18\);

-- Location: LCCOMB_X105_Y57_N24
\inst4|Counter|s_count[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~27_combout\ = (\inst4|s_reset~0_combout\) # ((!\inst1asd|s_pulsedOut~q\ & ((\inst|fstate.Extra~q\) # (!\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~q\,
	datab => \inst|fstate.Init~q\,
	datac => \inst|fstate.Extra~q\,
	datad => \inst4|s_reset~0_combout\,
	combout => \inst4|Counter|s_count[0]~27_combout\);

-- Location: FF_X105_Y57_N15
\inst4|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[3]~17_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(3));

-- Location: LCCOMB_X105_Y57_N16
\inst4|Counter|s_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[4]~19_combout\ = (\inst4|Counter|s_count\(4) & (\inst4|Counter|s_count[3]~18\ $ (GND))) # (!\inst4|Counter|s_count\(4) & (!\inst4|Counter|s_count[3]~18\ & VCC))
-- \inst4|Counter|s_count[4]~20\ = CARRY((\inst4|Counter|s_count\(4) & !\inst4|Counter|s_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(4),
	datad => VCC,
	cin => \inst4|Counter|s_count[3]~18\,
	combout => \inst4|Counter|s_count[4]~19_combout\,
	cout => \inst4|Counter|s_count[4]~20\);

-- Location: FF_X105_Y57_N17
\inst4|Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[4]~19_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(4));

-- Location: LCCOMB_X105_Y57_N18
\inst4|Counter|s_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[5]~21_combout\ = (\inst4|Counter|s_count\(5) & (!\inst4|Counter|s_count[4]~20\)) # (!\inst4|Counter|s_count\(5) & ((\inst4|Counter|s_count[4]~20\) # (GND)))
-- \inst4|Counter|s_count[5]~22\ = CARRY((!\inst4|Counter|s_count[4]~20\) # (!\inst4|Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(5),
	datad => VCC,
	cin => \inst4|Counter|s_count[4]~20\,
	combout => \inst4|Counter|s_count[5]~21_combout\,
	cout => \inst4|Counter|s_count[5]~22\);

-- Location: FF_X105_Y57_N19
\inst4|Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[5]~21_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(5));

-- Location: LCCOMB_X105_Y57_N20
\inst4|Counter|s_count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[6]~23_combout\ = (\inst4|Counter|s_count\(6) & (\inst4|Counter|s_count[5]~22\ $ (GND))) # (!\inst4|Counter|s_count\(6) & (!\inst4|Counter|s_count[5]~22\ & VCC))
-- \inst4|Counter|s_count[6]~24\ = CARRY((\inst4|Counter|s_count\(6) & !\inst4|Counter|s_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(6),
	datad => VCC,
	cin => \inst4|Counter|s_count[5]~22\,
	combout => \inst4|Counter|s_count[6]~23_combout\,
	cout => \inst4|Counter|s_count[6]~24\);

-- Location: FF_X105_Y57_N21
\inst4|Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[6]~23_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(6));

-- Location: LCCOMB_X105_Y57_N22
\inst4|Counter|s_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[7]~25_combout\ = \inst4|Counter|s_count\(7) $ (\inst4|Counter|s_count[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(7),
	cin => \inst4|Counter|s_count[6]~24\,
	combout => \inst4|Counter|s_count[7]~25_combout\);

-- Location: FF_X105_Y57_N23
\inst4|Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[7]~25_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(7));

-- Location: LCCOMB_X105_Y57_N30
\inst1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~3_combout\ = (!\inst4|Counter|s_count\(6) & (!\inst4|Counter|s_count\(5) & (!\inst4|Counter|s_count\(7) & !\inst4|Counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(6),
	datab => \inst4|Counter|s_count\(5),
	datac => \inst4|Counter|s_count\(7),
	datad => \inst4|Counter|s_count\(4),
	combout => \inst1|Selector8~3_combout\);

-- Location: LCCOMB_X101_Y57_N12
\inst1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = (\inst1|s_currentState.TExtra~q\ & (\inst|start_stop~0_combout\ & ((!\inst1|Selector8~3_combout\) # (!\inst1|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst1|s_currentState.TExtra~q\,
	datac => \inst|start_stop~0_combout\,
	datad => \inst1|Selector8~3_combout\,
	combout => \inst1|Selector11~0_combout\);

-- Location: LCCOMB_X102_Y57_N22
\inst1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector11~1_combout\ = (\inst1|Selector11~0_combout\) # ((\inst9|s_cntZero~q\ & ((\inst1|s_currentState.TLevedar~q\))) # (!\inst9|s_cntZero~q\ & (\inst1|s_currentState.TCozer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst1|s_currentState.TCozer~q\,
	datac => \inst1|s_currentState.TLevedar~q\,
	datad => \inst1|Selector11~0_combout\,
	combout => \inst1|Selector11~1_combout\);

-- Location: LCCOMB_X101_Y57_N6
\inst1|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_stateChanged~3_combout\ = (!\inst1|s_stateChanged~0_combout\ & (!\inst1|s_stateChanged~2_combout\ & (\inst1|s_currentState.TCozer~q\ $ (!\inst1|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_stateChanged~0_combout\,
	datab => \inst1|s_stateChanged~2_combout\,
	datac => \inst1|s_currentState.TCozer~q\,
	datad => \inst1|Selector11~1_combout\,
	combout => \inst1|s_stateChanged~3_combout\);

-- Location: FF_X101_Y57_N7
\inst1|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_stateChanged~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_stateChanged~q\);

-- Location: LCCOMB_X103_Y57_N24
\inst9|s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~13_combout\ = (\inst1|s_currentState.TInit~q\ & !\inst1|s_stateChanged~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TInit~q\,
	datac => \inst1|s_stateChanged~q\,
	combout => \inst9|s_count~13_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X103_Y53_N22
\inst2|dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut~2_combout\ = (\SW[1]~input_o\ & ((\inst|fstate.Init~q\) # (\inst1asd|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datac => \SW[1]~input_o\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst2|dataOut~2_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X80_Y47_N6
\inst3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \inst3|s_dirtyIn~0_combout\);

-- Location: FF_X80_Y47_N7
\inst3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_dirtyIn~q\);

-- Location: FF_X81_Y47_N27
\inst3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_previousIn~q\);

-- Location: LCCOMB_X82_Y47_N18
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_debounceCnt\(4) & ((GND) # (!\inst3|Add0~7\))) # (!\inst3|s_debounceCnt\(4) & (\inst3|Add0~7\ $ (GND)))
-- \inst3|Add0~9\ = CARRY((\inst3|s_debounceCnt\(4)) # (!\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X82_Y47_N20
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_debounceCnt\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst3|s_debounceCnt\(5) & (!\inst3|Add0~9\))
-- \inst3|Add0~11\ = CARRY((!\inst3|s_debounceCnt\(5) & !\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X82_Y47_N8
\inst3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~25_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~25_combout\);

-- Location: FF_X82_Y47_N9
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~25_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X82_Y47_N22
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_debounceCnt\(6) & ((GND) # (!\inst3|Add0~11\))) # (!\inst3|s_debounceCnt\(6) & (\inst3|Add0~11\ $ (GND)))
-- \inst3|Add0~13\ = CARRY((\inst3|s_debounceCnt\(6)) # (!\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X82_Y47_N30
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_debounceCnt\(10) & ((GND) # (!\inst3|Add0~19\))) # (!\inst3|s_debounceCnt\(10) & (\inst3|Add0~19\ $ (GND)))
-- \inst3|Add0~21\ = CARRY((\inst3|s_debounceCnt\(10)) # (!\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X82_Y46_N0
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_debounceCnt\(11) & (\inst3|Add0~21\ & VCC)) # (!\inst3|s_debounceCnt\(11) & (!\inst3|Add0~21\))
-- \inst3|Add0~23\ = CARRY((!\inst3|s_debounceCnt\(11) & !\inst3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X83_Y47_N30
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X83_Y47_N31
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X82_Y46_N2
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|s_debounceCnt\(12) & ((GND) # (!\inst3|Add0~23\))) # (!\inst3|s_debounceCnt\(12) & (\inst3|Add0~23\ $ (GND)))
-- \inst3|Add0~25\ = CARRY((\inst3|s_debounceCnt\(12)) # (!\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X83_Y47_N26
\inst3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~11_combout\ = (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~24_combout\,
	datac => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~11_combout\);

-- Location: FF_X83_Y47_N27
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~11_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X82_Y46_N4
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_debounceCnt\(13) & (\inst3|Add0~25\ & VCC)) # (!\inst3|s_debounceCnt\(13) & (!\inst3|Add0~25\))
-- \inst3|Add0~27\ = CARRY((!\inst3|s_debounceCnt\(13) & !\inst3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X83_Y47_N16
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|s_debounceCnt[0]~5_combout\ & \inst3|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[0]~5_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X83_Y47_N17
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X82_Y46_N6
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_debounceCnt\(14) & ((GND) # (!\inst3|Add0~27\))) # (!\inst3|s_debounceCnt\(14) & (\inst3|Add0~27\ $ (GND)))
-- \inst3|Add0~29\ = CARRY((\inst3|s_debounceCnt\(14)) # (!\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X81_Y47_N12
\inst3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~18_combout\ = (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~28_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt~18_combout\);

-- Location: FF_X81_Y47_N13
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~18_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X82_Y46_N8
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_debounceCnt\(15) & (\inst3|Add0~29\ & VCC)) # (!\inst3|s_debounceCnt\(15) & (!\inst3|Add0~29\))
-- \inst3|Add0~31\ = CARRY((!\inst3|s_debounceCnt\(15) & !\inst3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X82_Y46_N24
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|Add0~30_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~30_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X82_Y46_N25
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X82_Y46_N10
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_debounceCnt\(16) & ((GND) # (!\inst3|Add0~31\))) # (!\inst3|s_debounceCnt\(16) & (\inst3|Add0~31\ $ (GND)))
-- \inst3|Add0~33\ = CARRY((\inst3|s_debounceCnt\(16)) # (!\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X81_Y47_N8
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|Add0~32_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~32_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X81_Y47_N9
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X82_Y46_N12
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_debounceCnt\(17) & (\inst3|Add0~33\ & VCC)) # (!\inst3|s_debounceCnt\(17) & (!\inst3|Add0~33\))
-- \inst3|Add0~35\ = CARRY((!\inst3|s_debounceCnt\(17) & !\inst3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X81_Y47_N14
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X81_Y47_N15
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X82_Y46_N14
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_debounceCnt\(18) & ((GND) # (!\inst3|Add0~35\))) # (!\inst3|s_debounceCnt\(18) & (\inst3|Add0~35\ $ (GND)))
-- \inst3|Add0~37\ = CARRY((\inst3|s_debounceCnt\(18)) # (!\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X81_Y47_N30
\inst3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~19_combout\ = (\inst3|s_debounceCnt[0]~4_combout\ & (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt[0]~4_combout\,
	datac => \inst3|Add0~36_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X81_Y47_N31
\inst3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(18));

-- Location: LCCOMB_X82_Y46_N16
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|Add0~37\ & VCC)) # (!\inst3|s_debounceCnt\(19) & (!\inst3|Add0~37\))
-- \inst3|Add0~39\ = CARRY((!\inst3|s_debounceCnt\(19) & !\inst3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X81_Y47_N20
\inst3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~20_combout\ = (\inst3|s_debounceCnt[0]~4_combout\ & (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~38_combout\,
	datac => \inst3|s_debounceCnt[0]~4_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X81_Y47_N21
\inst3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(19));

-- Location: LCCOMB_X82_Y46_N18
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_debounceCnt\(20) & ((GND) # (!\inst3|Add0~39\))) # (!\inst3|s_debounceCnt\(20) & (\inst3|Add0~39\ $ (GND)))
-- \inst3|Add0~41\ = CARRY((\inst3|s_debounceCnt\(20)) # (!\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X82_Y46_N30
\inst3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~9_combout\ = (\inst3|s_debounceCnt[0]~4_combout\ & (\inst3|Add0~40_combout\ & \inst3|s_debounceCnt[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[0]~4_combout\,
	datac => \inst3|Add0~40_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X82_Y46_N31
\inst3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(20));

-- Location: LCCOMB_X81_Y47_N26
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_debounceCnt\(15) & (!\inst3|s_debounceCnt\(16) & !\inst3|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(15),
	datab => \inst3|s_debounceCnt\(16),
	datad => \inst3|s_debounceCnt\(17),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y47_N18
\inst3|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~8_combout\ = (!\inst3|s_debounceCnt\(5) & \inst3|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt\(5),
	datad => \inst3|s_pulsedOut~7_combout\,
	combout => \inst3|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X83_Y47_N10
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(7)) # ((\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(7),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_debounceCnt\(6),
	datad => \inst3|s_pulsedOut~8_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y47_N0
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|s_debounceCnt\(10)) # ((\inst3|s_debounceCnt\(8) & (\inst3|s_debounceCnt\(9) & \inst3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(8),
	datab => \inst3|s_debounceCnt\(10),
	datac => \inst3|s_debounceCnt\(9),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X83_Y47_N2
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(11) & \inst3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datab => \inst3|s_debounceCnt\(13),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X83_Y47_N24
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(19) & (((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~3_combout\)) # (!\inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(14),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|LessThan0~0_combout\,
	datad => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X83_Y47_N6
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(20)) # ((\inst3|s_debounceCnt\(21)) # ((\inst3|s_debounceCnt\(18) & \inst3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(21),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X83_Y47_N28
\inst3|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[0]~2_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X83_Y47_N4
\inst3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~3_combout\ = (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~12_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt~3_combout\);

-- Location: FF_X83_Y47_N5
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~3_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X82_Y47_N24
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_debounceCnt\(7) & (\inst3|Add0~13\ & VCC)) # (!\inst3|s_debounceCnt\(7) & (!\inst3|Add0~13\))
-- \inst3|Add0~15\ = CARRY((!\inst3|s_debounceCnt\(7) & !\inst3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X82_Y47_N4
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|Add0~14_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~14_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y47_N5
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X82_Y47_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_debounceCnt\(8) & ((GND) # (!\inst3|Add0~15\))) # (!\inst3|s_debounceCnt\(8) & (\inst3|Add0~15\ $ (GND)))
-- \inst3|Add0~17\ = CARRY((\inst3|s_debounceCnt\(8)) # (!\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X81_Y47_N6
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X81_Y47_N7
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X82_Y47_N28
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_debounceCnt\(9) & (\inst3|Add0~17\ & VCC)) # (!\inst3|s_debounceCnt\(9) & (!\inst3|Add0~17\))
-- \inst3|Add0~19\ = CARRY((!\inst3|s_debounceCnt\(9) & !\inst3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X81_Y47_N4
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|s_debounceCnt[0]~2_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~18_combout\,
	datad => \inst3|s_debounceCnt[0]~2_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X81_Y47_N5
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X82_Y47_N6
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X82_Y47_N7
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y47_N22
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (!\inst3|s_debounceCnt\(10) & (!\inst3|s_debounceCnt\(9) & (!\inst3|s_debounceCnt\(8) & !\inst3|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(10),
	datab => \inst3|s_debounceCnt\(9),
	datac => \inst3|s_debounceCnt\(8),
	datad => \inst3|s_debounceCnt\(7),
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X81_Y47_N24
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(15) & (!\inst3|s_debounceCnt\(16) & (!\inst3|s_debounceCnt\(6) & !\inst3|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(15),
	datab => \inst3|s_debounceCnt\(16),
	datac => \inst3|s_debounceCnt\(6),
	datad => \inst3|s_debounceCnt\(17),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y46_N26
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(20) & (!\inst3|s_debounceCnt\(21) & (!\inst3|s_debounceCnt\(13) & !\inst3|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datab => \inst3|s_debounceCnt\(21),
	datac => \inst3|s_debounceCnt\(13),
	datad => \inst3|s_debounceCnt\(12),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X81_Y47_N10
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(18) & (!\inst3|s_debounceCnt\(19) & (!\inst3|s_debounceCnt\(11) & !\inst3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|s_debounceCnt\(11),
	datad => \inst3|s_debounceCnt\(14),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X81_Y47_N0
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_pulsedOut~4_combout\ & (\inst3|s_pulsedOut~2_combout\ & (\inst3|s_pulsedOut~3_combout\ & \inst3|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~4_combout\,
	datab => \inst3|s_pulsedOut~2_combout\,
	datac => \inst3|s_pulsedOut~3_combout\,
	datad => \inst3|s_pulsedOut~5_combout\,
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X81_Y47_N18
\inst3|s_debounceCnt[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[0]~29_combout\ = (\inst3|s_debounceCnt\(0)) # ((\inst3|s_debounceCnt\(5)) # ((!\inst3|s_pulsedOut~6_combout\) # (!\inst3|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(0),
	datab => \inst3|s_debounceCnt\(5),
	datac => \inst3|s_pulsedOut~7_combout\,
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_debounceCnt[0]~29_combout\);

-- Location: LCCOMB_X81_Y47_N2
\inst3|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[0]~4_combout\ = ((\inst3|s_debounceCnt\(22)) # ((\inst3|s_debounceCnt[0]~29_combout\) # (!\inst3|s_previousIn~q\))) # (!\inst3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[0]~29_combout\,
	combout => \inst3|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X82_Y46_N20
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_debounceCnt\(21) & (\inst3|Add0~41\ & VCC)) # (!\inst3|s_debounceCnt\(21) & (!\inst3|Add0~41\))
-- \inst3|Add0~43\ = CARRY((!\inst3|s_debounceCnt\(21) & !\inst3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X82_Y46_N28
\inst3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~10_combout\ = (\inst3|s_debounceCnt[0]~4_combout\ & (\inst3|Add0~42_combout\ & \inst3|s_debounceCnt[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[0]~4_combout\,
	datac => \inst3|Add0~42_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X82_Y46_N29
\inst3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(21));

-- Location: LCCOMB_X82_Y46_N22
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = \inst3|Add0~43\ $ (\inst3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_debounceCnt\(22),
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\);

-- Location: LCCOMB_X81_Y47_N16
\inst3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~27_combout\ = (\inst3|s_debounceCnt\(22) & (((!\inst3|LessThan0~5_combout\)))) # (!\inst3|s_debounceCnt\(22) & (((\inst3|s_debounceCnt[0]~29_combout\)) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_debounceCnt[0]~29_combout\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X81_Y47_N28
\inst3|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~28_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_debounceCnt[22]~27_combout\ & ((\inst3|Add0~44_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~44_combout\,
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|s_debounceCnt[22]~27_combout\,
	combout => \inst3|s_debounceCnt[22]~28_combout\);

-- Location: FF_X81_Y47_N29
\inst3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(22));

-- Location: LCCOMB_X83_Y47_N14
\inst3|s_debounceCnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[0]~5_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[0]~5_combout\);

-- Location: LCCOMB_X82_Y47_N10
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_debounceCnt\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X83_Y47_N20
\inst3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~26_combout\ = (\inst3|s_debounceCnt[0]~5_combout\ & \inst3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[0]~5_combout\,
	datad => \inst3|Add0~0_combout\,
	combout => \inst3|s_debounceCnt~26_combout\);

-- Location: FF_X83_Y47_N21
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~26_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X82_Y47_N12
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_debounceCnt\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst3|s_debounceCnt\(1) & (!\inst3|Add0~1\))
-- \inst3|Add0~3\ = CARRY((!\inst3|s_debounceCnt\(1) & !\inst3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X82_Y47_N0
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X82_Y47_N1
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X82_Y47_N14
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_debounceCnt\(2) & ((GND) # (!\inst3|Add0~3\))) # (!\inst3|s_debounceCnt\(2) & (\inst3|Add0~3\ $ (GND)))
-- \inst3|Add0~5\ = CARRY((\inst3|s_debounceCnt\(2)) # (!\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X82_Y47_N2
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X82_Y47_N3
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X82_Y47_N16
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_debounceCnt\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst3|s_debounceCnt\(3) & (!\inst3|Add0~5\))
-- \inst3|Add0~7\ = CARRY((!\inst3|s_debounceCnt\(3) & !\inst3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X83_Y47_N8
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~6_combout\,
	datac => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X83_Y47_N9
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X83_Y47_N22
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|s_debounceCnt[0]~5_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X83_Y47_N23
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X83_Y47_N12
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(4) & (!\inst3|s_debounceCnt\(3) & (!\inst3|s_debounceCnt\(1) & !\inst3|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(4),
	datab => \inst3|s_debounceCnt\(3),
	datac => \inst3|s_debounceCnt\(1),
	datad => \inst3|s_debounceCnt\(2),
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X80_Y47_N28
\inst3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~9_combout\ = (\inst3|s_dirtyIn~q\ & (!\inst3|s_debounceCnt\(22) & (\inst3|s_debounceCnt\(0) & \inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_previousIn~q\,
	combout => \inst3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X80_Y47_N8
\inst3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~10_combout\ = (\inst3|s_pulsedOut~7_combout\ & (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~6_combout\ & \inst3|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~7_combout\,
	datab => \inst3|s_debounceCnt\(5),
	datac => \inst3|s_pulsedOut~6_combout\,
	datad => \inst3|s_pulsedOut~9_combout\,
	combout => \inst3|s_pulsedOut~10_combout\);

-- Location: FF_X80_Y47_N9
\inst3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X92_Y46_N24
\inst13|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \inst13|s_dirtyIn~0_combout\);

-- Location: FF_X92_Y46_N25
\inst13|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_dirtyIn~q\);

-- Location: FF_X92_Y46_N31
\inst13|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst13|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_previousIn~q\);

-- Location: LCCOMB_X90_Y46_N10
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|s_debounceCnt\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: LCCOMB_X91_Y46_N26
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~0_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X91_Y46_N27
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X90_Y46_N12
\inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|s_debounceCnt\(1) & (\inst13|Add0~1\ & VCC)) # (!\inst13|s_debounceCnt\(1) & (!\inst13|Add0~1\))
-- \inst13|Add0~3\ = CARRY((!\inst13|s_debounceCnt\(1) & !\inst13|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: LCCOMB_X90_Y46_N14
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|s_debounceCnt\(2) & ((GND) # (!\inst13|Add0~3\))) # (!\inst13|s_debounceCnt\(2) & (\inst13|Add0~3\ $ (GND)))
-- \inst13|Add0~5\ = CARRY((\inst13|s_debounceCnt\(2)) # (!\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X91_Y46_N20
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~4_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X91_Y46_N21
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X90_Y46_N16
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|s_debounceCnt\(3) & (\inst13|Add0~5\ & VCC)) # (!\inst13|s_debounceCnt\(3) & (!\inst13|Add0~5\))
-- \inst13|Add0~7\ = CARRY((!\inst13|s_debounceCnt\(3) & !\inst13|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X90_Y46_N8
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|Add0~6_combout\ & \inst13|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~6_combout\,
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X90_Y46_N9
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X90_Y46_N18
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|s_debounceCnt\(4) & ((GND) # (!\inst13|Add0~7\))) # (!\inst13|s_debounceCnt\(4) & (\inst13|Add0~7\ $ (GND)))
-- \inst13|Add0~9\ = CARRY((\inst13|s_debounceCnt\(4)) # (!\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X91_Y46_N22
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~8_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X91_Y46_N23
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X90_Y46_N20
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|s_debounceCnt\(5) & (\inst13|Add0~9\ & VCC)) # (!\inst13|s_debounceCnt\(5) & (!\inst13|Add0~9\))
-- \inst13|Add0~11\ = CARRY((!\inst13|s_debounceCnt\(5) & !\inst13|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: LCCOMB_X91_Y46_N4
\inst13|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~27_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~10_combout\,
	combout => \inst13|s_debounceCnt~27_combout\);

-- Location: FF_X91_Y46_N5
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~27_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X90_Y46_N22
\inst13|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = (\inst13|s_debounceCnt\(6) & ((GND) # (!\inst13|Add0~11\))) # (!\inst13|s_debounceCnt\(6) & (\inst13|Add0~11\ $ (GND)))
-- \inst13|Add0~13\ = CARRY((\inst13|s_debounceCnt\(6)) # (!\inst13|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

-- Location: LCCOMB_X92_Y46_N18
\inst13|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~0_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datac => \inst13|LessThan0~6_combout\,
	datad => \inst13|s_dirtyIn~q\,
	combout => \inst13|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X92_Y46_N26
\inst13|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~1_combout\ = (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~12_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt~1_combout\);

-- Location: FF_X92_Y46_N27
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~1_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X90_Y46_N24
\inst13|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst13|s_debounceCnt\(7) & (\inst13|Add0~13\ & VCC)) # (!\inst13|s_debounceCnt\(7) & (!\inst13|Add0~13\))
-- \inst13|Add0~15\ = CARRY((!\inst13|s_debounceCnt\(7) & !\inst13|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

-- Location: LCCOMB_X91_Y46_N14
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~14_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X91_Y46_N15
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X90_Y46_N26
\inst13|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|s_debounceCnt\(8) & ((GND) # (!\inst13|Add0~15\))) # (!\inst13|s_debounceCnt\(8) & (\inst13|Add0~15\ $ (GND)))
-- \inst13|Add0~17\ = CARRY((\inst13|s_debounceCnt\(8)) # (!\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: LCCOMB_X92_Y46_N8
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~16_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X92_Y46_N9
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X90_Y46_N28
\inst13|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = (\inst13|s_debounceCnt\(9) & (\inst13|Add0~17\ & VCC)) # (!\inst13|s_debounceCnt\(9) & (!\inst13|Add0~17\))
-- \inst13|Add0~19\ = CARRY((!\inst13|s_debounceCnt\(9) & !\inst13|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst13|Add0~17\,
	combout => \inst13|Add0~18_combout\,
	cout => \inst13|Add0~19\);

-- Location: LCCOMB_X92_Y46_N22
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X92_Y46_N23
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X90_Y46_N30
\inst13|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|s_debounceCnt\(10) & ((GND) # (!\inst13|Add0~19\))) # (!\inst13|s_debounceCnt\(10) & (\inst13|Add0~19\ $ (GND)))
-- \inst13|Add0~21\ = CARRY((\inst13|s_debounceCnt\(10)) # (!\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: LCCOMB_X91_Y46_N8
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~20_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X91_Y46_N9
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X90_Y45_N0
\inst13|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = (\inst13|s_debounceCnt\(11) & (\inst13|Add0~21\ & VCC)) # (!\inst13|s_debounceCnt\(11) & (!\inst13|Add0~21\))
-- \inst13|Add0~23\ = CARRY((!\inst13|s_debounceCnt\(11) & !\inst13|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst13|Add0~21\,
	combout => \inst13|Add0~22_combout\,
	cout => \inst13|Add0~23\);

-- Location: LCCOMB_X92_Y46_N12
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~22_combout\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X92_Y46_N13
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X90_Y45_N2
\inst13|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = (\inst13|s_debounceCnt\(12) & ((GND) # (!\inst13|Add0~23\))) # (!\inst13|s_debounceCnt\(12) & (\inst13|Add0~23\ $ (GND)))
-- \inst13|Add0~25\ = CARRY((\inst13|s_debounceCnt\(12)) # (!\inst13|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\,
	cout => \inst13|Add0~25\);

-- Location: LCCOMB_X91_Y45_N16
\inst13|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~10_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~24_combout\,
	combout => \inst13|s_debounceCnt~10_combout\);

-- Location: FF_X91_Y45_N17
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~10_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X90_Y45_N4
\inst13|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~26_combout\ = (\inst13|s_debounceCnt\(13) & (\inst13|Add0~25\ & VCC)) # (!\inst13|s_debounceCnt\(13) & (!\inst13|Add0~25\))
-- \inst13|Add0~27\ = CARRY((!\inst13|s_debounceCnt\(13) & !\inst13|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst13|Add0~25\,
	combout => \inst13|Add0~26_combout\,
	cout => \inst13|Add0~27\);

-- Location: LCCOMB_X91_Y46_N24
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~26_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X91_Y46_N25
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X90_Y45_N6
\inst13|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~28_combout\ = (\inst13|s_debounceCnt\(14) & ((GND) # (!\inst13|Add0~27\))) # (!\inst13|s_debounceCnt\(14) & (\inst13|Add0~27\ $ (GND)))
-- \inst13|Add0~29\ = CARRY((\inst13|s_debounceCnt\(14)) # (!\inst13|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst13|Add0~27\,
	combout => \inst13|Add0~28_combout\,
	cout => \inst13|Add0~29\);

-- Location: LCCOMB_X92_Y46_N20
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~28_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X92_Y46_N21
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X90_Y45_N8
\inst13|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~30_combout\ = (\inst13|s_debounceCnt\(15) & (\inst13|Add0~29\ & VCC)) # (!\inst13|s_debounceCnt\(15) & (!\inst13|Add0~29\))
-- \inst13|Add0~31\ = CARRY((!\inst13|s_debounceCnt\(15) & !\inst13|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst13|Add0~29\,
	combout => \inst13|Add0~30_combout\,
	cout => \inst13|Add0~31\);

-- Location: LCCOMB_X90_Y45_N24
\inst13|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~5_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~30_combout\,
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	combout => \inst13|s_debounceCnt~5_combout\);

-- Location: FF_X90_Y45_N25
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~5_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X90_Y45_N10
\inst13|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~32_combout\ = (\inst13|s_debounceCnt\(16) & ((GND) # (!\inst13|Add0~31\))) # (!\inst13|s_debounceCnt\(16) & (\inst13|Add0~31\ $ (GND)))
-- \inst13|Add0~33\ = CARRY((\inst13|s_debounceCnt\(16)) # (!\inst13|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst13|Add0~31\,
	combout => \inst13|Add0~32_combout\,
	cout => \inst13|Add0~33\);

-- Location: LCCOMB_X90_Y45_N26
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~32_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X90_Y45_N27
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X90_Y45_N12
\inst13|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~34_combout\ = (\inst13|s_debounceCnt\(17) & (\inst13|Add0~33\ & VCC)) # (!\inst13|s_debounceCnt\(17) & (!\inst13|Add0~33\))
-- \inst13|Add0~35\ = CARRY((!\inst13|s_debounceCnt\(17) & !\inst13|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst13|Add0~33\,
	combout => \inst13|Add0~34_combout\,
	cout => \inst13|Add0~35\);

-- Location: LCCOMB_X90_Y45_N28
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~34_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X90_Y45_N29
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X90_Y45_N14
\inst13|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~36_combout\ = (\inst13|s_debounceCnt\(18) & ((GND) # (!\inst13|Add0~35\))) # (!\inst13|s_debounceCnt\(18) & (\inst13|Add0~35\ $ (GND)))
-- \inst13|Add0~37\ = CARRY((\inst13|s_debounceCnt\(18)) # (!\inst13|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst13|Add0~35\,
	combout => \inst13|Add0~36_combout\,
	cout => \inst13|Add0~37\);

-- Location: LCCOMB_X92_Y46_N14
\inst13|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~18_combout\ = (\inst13|s_debounceCnt[0]~3_combout\ & (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~3_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~36_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt[18]~18_combout\);

-- Location: FF_X92_Y46_N15
\inst13|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(18));

-- Location: LCCOMB_X90_Y45_N16
\inst13|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~38_combout\ = (\inst13|s_debounceCnt\(19) & (\inst13|Add0~37\ & VCC)) # (!\inst13|s_debounceCnt\(19) & (!\inst13|Add0~37\))
-- \inst13|Add0~39\ = CARRY((!\inst13|s_debounceCnt\(19) & !\inst13|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst13|Add0~37\,
	combout => \inst13|Add0~38_combout\,
	cout => \inst13|Add0~39\);

-- Location: LCCOMB_X90_Y45_N18
\inst13|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~40_combout\ = (\inst13|s_debounceCnt\(20) & ((GND) # (!\inst13|Add0~39\))) # (!\inst13|s_debounceCnt\(20) & (\inst13|Add0~39\ $ (GND)))
-- \inst13|Add0~41\ = CARRY((\inst13|s_debounceCnt\(20)) # (!\inst13|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst13|Add0~39\,
	combout => \inst13|Add0~40_combout\,
	cout => \inst13|Add0~41\);

-- Location: LCCOMB_X91_Y45_N22
\inst13|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~8_combout\ = (\inst13|s_debounceCnt[0]~3_combout\ & (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[0]~3_combout\,
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~40_combout\,
	combout => \inst13|s_debounceCnt[20]~8_combout\);

-- Location: FF_X91_Y45_N23
\inst13|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(20));

-- Location: LCCOMB_X90_Y45_N20
\inst13|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~42_combout\ = (\inst13|s_debounceCnt\(21) & (\inst13|Add0~41\ & VCC)) # (!\inst13|s_debounceCnt\(21) & (!\inst13|Add0~41\))
-- \inst13|Add0~43\ = CARRY((!\inst13|s_debounceCnt\(21) & !\inst13|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst13|Add0~41\,
	combout => \inst13|Add0~42_combout\,
	cout => \inst13|Add0~43\);

-- Location: LCCOMB_X90_Y45_N30
\inst13|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~9_combout\ = (\inst13|s_debounceCnt[0]~3_combout\ & (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[0]~3_combout\,
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~42_combout\,
	combout => \inst13|s_debounceCnt[21]~9_combout\);

-- Location: FF_X90_Y45_N31
\inst13|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(21));

-- Location: LCCOMB_X91_Y45_N26
\inst13|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~1_combout\ = (!\inst13|s_debounceCnt\(20) & (!\inst13|s_debounceCnt\(12) & (!\inst13|s_debounceCnt\(13) & !\inst13|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datab => \inst13|s_debounceCnt\(12),
	datac => \inst13|s_debounceCnt\(13),
	datad => \inst13|s_debounceCnt\(21),
	combout => \inst13|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X91_Y45_N8
\inst13|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~0_combout\ = (!\inst13|s_debounceCnt\(16) & (!\inst13|s_debounceCnt\(15) & (!\inst13|s_debounceCnt\(6) & !\inst13|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(16),
	datab => \inst13|s_debounceCnt\(15),
	datac => \inst13|s_debounceCnt\(6),
	datad => \inst13|s_debounceCnt\(17),
	combout => \inst13|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X91_Y45_N4
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(9) & (!\inst13|s_debounceCnt\(10) & (!\inst13|s_debounceCnt\(7) & !\inst13|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(10),
	datac => \inst13|s_debounceCnt\(7),
	datad => \inst13|s_debounceCnt\(8),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X92_Y46_N16
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(11) & (!\inst13|s_debounceCnt\(14) & (!\inst13|s_debounceCnt\(18) & !\inst13|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|s_debounceCnt\(14),
	datac => \inst13|s_debounceCnt\(18),
	datad => \inst13|s_debounceCnt\(19),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X91_Y45_N2
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (\inst13|s_pulsedOut~1_combout\ & (\inst13|s_pulsedOut~0_combout\ & (\inst13|s_pulsedOut~2_combout\ & \inst13|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~1_combout\,
	datab => \inst13|s_pulsedOut~0_combout\,
	datac => \inst13|s_pulsedOut~2_combout\,
	datad => \inst13|s_pulsedOut~3_combout\,
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X92_Y46_N10
\inst13|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~2_combout\ = (\inst13|s_debounceCnt\(0)) # (((\inst13|s_debounceCnt\(5)) # (!\inst13|s_pulsedOut~4_combout\)) # (!\inst13|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_pulsedOut~5_combout\,
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~4_combout\,
	combout => \inst13|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X92_Y46_N30
\inst13|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~3_combout\ = (\inst13|s_debounceCnt\(22)) # (((\inst13|s_debounceCnt[0]~2_combout\) # (!\inst13|s_previousIn~q\)) # (!\inst13|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X92_Y46_N0
\inst13|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~19_combout\ = (\inst13|s_debounceCnt[0]~3_combout\ & (\inst13|s_debounceCnt[0]~0_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~3_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~38_combout\,
	datad => \inst13|s_debounceCnt[0]~0_combout\,
	combout => \inst13|s_debounceCnt[19]~19_combout\);

-- Location: FF_X92_Y46_N1
\inst13|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(19));

-- Location: LCCOMB_X91_Y45_N0
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (!\inst13|s_debounceCnt\(20) & !\inst13|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt\(20),
	datad => \inst13|s_debounceCnt\(21),
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X91_Y46_N6
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (\inst13|s_debounceCnt\(6) & ((\inst13|s_debounceCnt\(0)) # ((\inst13|s_debounceCnt\(5)) # (!\inst13|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_debounceCnt\(6),
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~5_combout\,
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X91_Y46_N0
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(9) & ((\inst13|s_debounceCnt\(7)) # (\inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datac => \inst13|s_debounceCnt\(7),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X91_Y46_N18
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (\inst13|s_debounceCnt\(11) & ((\inst13|s_debounceCnt\(10)) # ((\inst13|s_debounceCnt\(8) & \inst13|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|s_debounceCnt\(10),
	datac => \inst13|s_debounceCnt\(8),
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X91_Y46_N28
\inst13|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~3_combout\ = (\inst13|s_debounceCnt\(14) & ((\inst13|s_debounceCnt\(12)) # ((\inst13|s_debounceCnt\(13)) # (\inst13|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(14),
	datab => \inst13|s_debounceCnt\(12),
	datac => \inst13|s_debounceCnt\(13),
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|LessThan0~3_combout\);

-- Location: LCCOMB_X91_Y46_N2
\inst13|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~4_combout\ = (\inst13|s_debounceCnt\(15)) # ((\inst13|s_debounceCnt\(16)) # ((\inst13|s_debounceCnt\(17)) # (\inst13|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(15),
	datab => \inst13|s_debounceCnt\(16),
	datac => \inst13|s_debounceCnt\(17),
	datad => \inst13|LessThan0~3_combout\,
	combout => \inst13|LessThan0~4_combout\);

-- Location: LCCOMB_X91_Y46_N16
\inst13|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~6_combout\ = ((\inst13|s_debounceCnt\(19) & (\inst13|s_debounceCnt\(18) & \inst13|LessThan0~4_combout\))) # (!\inst13|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(19),
	datab => \inst13|s_debounceCnt\(18),
	datac => \inst13|LessThan0~5_combout\,
	datad => \inst13|LessThan0~4_combout\,
	combout => \inst13|LessThan0~6_combout\);

-- Location: LCCOMB_X92_Y46_N4
\inst13|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~25_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~6_combout\)))) # (!\inst13|s_debounceCnt\(22) & (((\inst13|s_debounceCnt[0]~2_combout\)) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|LessThan0~6_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X90_Y45_N22
\inst13|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~44_combout\ = \inst13|Add0~43\ $ (\inst13|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|s_debounceCnt\(22),
	cin => \inst13|Add0~43\,
	combout => \inst13|Add0~44_combout\);

-- Location: LCCOMB_X92_Y46_N6
\inst13|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~26_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt[22]~25_combout\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt[22]~25_combout\,
	datad => \inst13|Add0~44_combout\,
	combout => \inst13|s_debounceCnt[22]~26_combout\);

-- Location: FF_X92_Y46_N7
\inst13|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(22));

-- Location: LCCOMB_X91_Y46_N30
\inst13|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~4_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X91_Y46_N10
\inst13|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~20_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & \inst13|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~4_combout\,
	datad => \inst13|Add0~2_combout\,
	combout => \inst13|s_debounceCnt~20_combout\);

-- Location: FF_X91_Y46_N11
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~20_combout\,
	ena => \inst13|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X91_Y46_N12
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(1) & (!\inst13|s_debounceCnt\(2) & (!\inst13|s_debounceCnt\(4) & !\inst13|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(1),
	datab => \inst13|s_debounceCnt\(2),
	datac => \inst13|s_debounceCnt\(4),
	datad => \inst13|s_debounceCnt\(3),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X92_Y46_N2
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_debounceCnt\(0) & (\inst13|s_dirtyIn~q\ & (\inst13|s_previousIn~q\ & !\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt\(22),
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X92_Y46_N28
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (\inst13|s_pulsedOut~5_combout\ & (\inst13|s_pulsedOut~4_combout\ & (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~5_combout\,
	datab => \inst13|s_pulsedOut~4_combout\,
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: FF_X92_Y46_N29
\inst13|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_pulsedOut~q\);

-- Location: LCCOMB_X103_Y53_N12
\inst|reg_fstate.Menu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Menu~0_combout\ = ((!\inst3|s_pulsedOut~q\ & (!\inst13|s_pulsedOut~q\ & \inst|fstate.Menu~q\))) # (!\inst|fstate.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~q\,
	datab => \inst13|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst|fstate.Menu~q\,
	combout => \inst|reg_fstate.Menu~0_combout\);

-- Location: LCCOMB_X103_Y53_N6
\inst|reg_fstate.Menu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Menu~1_combout\ = (!\inst1asd|s_pulsedOut~q\ & \inst|reg_fstate.Menu~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datad => \inst|reg_fstate.Menu~0_combout\,
	combout => \inst|reg_fstate.Menu~1_combout\);

-- Location: FF_X103_Y53_N7
\inst|fstate.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Menu~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Menu~q\);

-- Location: LCCOMB_X103_Y53_N18
\inst|reg_fstate.Timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Timer~0_combout\ = (\inst|fstate.Timer~q\ & (((\inst13|s_pulsedOut~q\) # (!\inst3|s_pulsedOut~q\)))) # (!\inst|fstate.Timer~q\ & (\inst|fstate.Menu~q\ & (\inst13|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Menu~q\,
	datab => \inst|fstate.Timer~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Timer~0_combout\);

-- Location: LCCOMB_X103_Y53_N24
\inst|reg_fstate.Timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Timer~1_combout\ = (!\inst1asd|s_pulsedOut~q\ & \inst|reg_fstate.Timer~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datad => \inst|reg_fstate.Timer~0_combout\,
	combout => \inst|reg_fstate.Timer~1_combout\);

-- Location: FF_X103_Y53_N25
\inst|fstate.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Timer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Timer~q\);

-- Location: LCCOMB_X103_Y53_N30
\inst2|dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~1_combout\ = (!\inst1asd|s_pulsedOut~q\ & ((\inst|fstate.Menu~q\) # ((\inst|fstate.Timer~q\) # (!\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Menu~q\,
	datab => \inst|fstate.Timer~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst2|dataOut[0]~1_combout\);

-- Location: FF_X103_Y53_N23
\inst2|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|dataOut~2_combout\,
	ena => \inst2|dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataOut\(1));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X103_Y53_N28
\inst2|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut~0_combout\ = (\SW[0]~input_o\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \SW[0]~input_o\,
	combout => \inst2|dataOut~0_combout\);

-- Location: FF_X103_Y53_N29
\inst2|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|dataOut~0_combout\,
	ena => \inst2|dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataOut\(0));

-- Location: LCCOMB_X103_Y53_N4
\inst1|addr[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|addr[2]~0_combout\ = (!\inst2|dataOut\(1) & \inst2|dataOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dataOut\(1),
	datad => \inst2|dataOut\(0),
	combout => \inst1|addr[2]~0_combout\);

-- Location: LCCOMB_X103_Y57_N26
\inst9|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~14_combout\ = (\inst9|s_count~13_combout\ & ((\inst1|s_currentState.TAmmassar~q\ & (!\inst1|s_currentState.TLevedar~q\ & \inst1|addr[2]~0_combout\)) # (!\inst1|s_currentState.TAmmassar~q\ & (\inst1|s_currentState.TLevedar~q\ & 
-- !\inst1|addr[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datab => \inst9|s_count~13_combout\,
	datac => \inst1|s_currentState.TLevedar~q\,
	datad => \inst1|addr[2]~0_combout\,
	combout => \inst9|s_count~14_combout\);

-- Location: LCCOMB_X102_Y57_N4
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (!\inst1|s_currentState.TInit~q\) # (!\inst1|s_stateChanged~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_stateChanged~q\,
	datad => \inst1|s_currentState.TInit~q\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X100_Y57_N2
\inst11|s_counter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[0]~33_combout\ = \inst11|s_counter\(0) $ (VCC)
-- \inst11|s_counter[0]~34\ = CARRY(\inst11|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(0),
	datad => VCC,
	combout => \inst11|s_counter[0]~33_combout\,
	cout => \inst11|s_counter[0]~34\);

-- Location: LCCOMB_X101_Y56_N0
\inst11|s_counter[26]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[26]~95_combout\ = ((!\inst1asd|s_pulsedOut~q\ & !\inst|fstate.Init~q\)) # (!\inst11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|s_counter[26]~95_combout\);

-- Location: FF_X100_Y57_N3
\inst11|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[0]~33_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(0));

-- Location: LCCOMB_X100_Y57_N4
\inst11|s_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[1]~35_combout\ = (\inst11|s_counter\(1) & (!\inst11|s_counter[0]~34\)) # (!\inst11|s_counter\(1) & ((\inst11|s_counter[0]~34\) # (GND)))
-- \inst11|s_counter[1]~36\ = CARRY((!\inst11|s_counter[0]~34\) # (!\inst11|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(1),
	datad => VCC,
	cin => \inst11|s_counter[0]~34\,
	combout => \inst11|s_counter[1]~35_combout\,
	cout => \inst11|s_counter[1]~36\);

-- Location: FF_X100_Y57_N5
\inst11|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[1]~35_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(1));

-- Location: LCCOMB_X100_Y57_N6
\inst11|s_counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[2]~37_combout\ = (\inst11|s_counter\(2) & (\inst11|s_counter[1]~36\ $ (GND))) # (!\inst11|s_counter\(2) & (!\inst11|s_counter[1]~36\ & VCC))
-- \inst11|s_counter[2]~38\ = CARRY((\inst11|s_counter\(2) & !\inst11|s_counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(2),
	datad => VCC,
	cin => \inst11|s_counter[1]~36\,
	combout => \inst11|s_counter[2]~37_combout\,
	cout => \inst11|s_counter[2]~38\);

-- Location: FF_X100_Y57_N7
\inst11|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[2]~37_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(2));

-- Location: LCCOMB_X100_Y57_N8
\inst11|s_counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[3]~39_combout\ = (\inst11|s_counter\(3) & (!\inst11|s_counter[2]~38\)) # (!\inst11|s_counter\(3) & ((\inst11|s_counter[2]~38\) # (GND)))
-- \inst11|s_counter[3]~40\ = CARRY((!\inst11|s_counter[2]~38\) # (!\inst11|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(3),
	datad => VCC,
	cin => \inst11|s_counter[2]~38\,
	combout => \inst11|s_counter[3]~39_combout\,
	cout => \inst11|s_counter[3]~40\);

-- Location: FF_X100_Y57_N9
\inst11|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[3]~39_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(3));

-- Location: LCCOMB_X100_Y57_N10
\inst11|s_counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[4]~41_combout\ = (\inst11|s_counter\(4) & (\inst11|s_counter[3]~40\ $ (GND))) # (!\inst11|s_counter\(4) & (!\inst11|s_counter[3]~40\ & VCC))
-- \inst11|s_counter[4]~42\ = CARRY((\inst11|s_counter\(4) & !\inst11|s_counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(4),
	datad => VCC,
	cin => \inst11|s_counter[3]~40\,
	combout => \inst11|s_counter[4]~41_combout\,
	cout => \inst11|s_counter[4]~42\);

-- Location: FF_X100_Y57_N11
\inst11|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[4]~41_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(4));

-- Location: LCCOMB_X100_Y57_N12
\inst11|s_counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[5]~43_combout\ = (\inst11|s_counter\(5) & (!\inst11|s_counter[4]~42\)) # (!\inst11|s_counter\(5) & ((\inst11|s_counter[4]~42\) # (GND)))
-- \inst11|s_counter[5]~44\ = CARRY((!\inst11|s_counter[4]~42\) # (!\inst11|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(5),
	datad => VCC,
	cin => \inst11|s_counter[4]~42\,
	combout => \inst11|s_counter[5]~43_combout\,
	cout => \inst11|s_counter[5]~44\);

-- Location: FF_X100_Y57_N13
\inst11|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[5]~43_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(5));

-- Location: LCCOMB_X100_Y57_N14
\inst11|s_counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[6]~45_combout\ = (\inst11|s_counter\(6) & (\inst11|s_counter[5]~44\ $ (GND))) # (!\inst11|s_counter\(6) & (!\inst11|s_counter[5]~44\ & VCC))
-- \inst11|s_counter[6]~46\ = CARRY((\inst11|s_counter\(6) & !\inst11|s_counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(6),
	datad => VCC,
	cin => \inst11|s_counter[5]~44\,
	combout => \inst11|s_counter[6]~45_combout\,
	cout => \inst11|s_counter[6]~46\);

-- Location: FF_X100_Y57_N15
\inst11|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[6]~45_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(6));

-- Location: LCCOMB_X100_Y57_N16
\inst11|s_counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[7]~47_combout\ = (\inst11|s_counter\(7) & (!\inst11|s_counter[6]~46\)) # (!\inst11|s_counter\(7) & ((\inst11|s_counter[6]~46\) # (GND)))
-- \inst11|s_counter[7]~48\ = CARRY((!\inst11|s_counter[6]~46\) # (!\inst11|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(7),
	datad => VCC,
	cin => \inst11|s_counter[6]~46\,
	combout => \inst11|s_counter[7]~47_combout\,
	cout => \inst11|s_counter[7]~48\);

-- Location: FF_X100_Y57_N17
\inst11|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[7]~47_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(7));

-- Location: LCCOMB_X100_Y57_N18
\inst11|s_counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[8]~49_combout\ = (\inst11|s_counter\(8) & (\inst11|s_counter[7]~48\ $ (GND))) # (!\inst11|s_counter\(8) & (!\inst11|s_counter[7]~48\ & VCC))
-- \inst11|s_counter[8]~50\ = CARRY((\inst11|s_counter\(8) & !\inst11|s_counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(8),
	datad => VCC,
	cin => \inst11|s_counter[7]~48\,
	combout => \inst11|s_counter[8]~49_combout\,
	cout => \inst11|s_counter[8]~50\);

-- Location: FF_X100_Y57_N19
\inst11|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[8]~49_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(8));

-- Location: LCCOMB_X100_Y57_N20
\inst11|s_counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[9]~51_combout\ = (\inst11|s_counter\(9) & (!\inst11|s_counter[8]~50\)) # (!\inst11|s_counter\(9) & ((\inst11|s_counter[8]~50\) # (GND)))
-- \inst11|s_counter[9]~52\ = CARRY((!\inst11|s_counter[8]~50\) # (!\inst11|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(9),
	datad => VCC,
	cin => \inst11|s_counter[8]~50\,
	combout => \inst11|s_counter[9]~51_combout\,
	cout => \inst11|s_counter[9]~52\);

-- Location: FF_X100_Y57_N21
\inst11|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[9]~51_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(9));

-- Location: LCCOMB_X100_Y57_N22
\inst11|s_counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[10]~53_combout\ = (\inst11|s_counter\(10) & (\inst11|s_counter[9]~52\ $ (GND))) # (!\inst11|s_counter\(10) & (!\inst11|s_counter[9]~52\ & VCC))
-- \inst11|s_counter[10]~54\ = CARRY((\inst11|s_counter\(10) & !\inst11|s_counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(10),
	datad => VCC,
	cin => \inst11|s_counter[9]~52\,
	combout => \inst11|s_counter[10]~53_combout\,
	cout => \inst11|s_counter[10]~54\);

-- Location: FF_X100_Y57_N23
\inst11|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[10]~53_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(10));

-- Location: LCCOMB_X100_Y57_N24
\inst11|s_counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[11]~55_combout\ = (\inst11|s_counter\(11) & (!\inst11|s_counter[10]~54\)) # (!\inst11|s_counter\(11) & ((\inst11|s_counter[10]~54\) # (GND)))
-- \inst11|s_counter[11]~56\ = CARRY((!\inst11|s_counter[10]~54\) # (!\inst11|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(11),
	datad => VCC,
	cin => \inst11|s_counter[10]~54\,
	combout => \inst11|s_counter[11]~55_combout\,
	cout => \inst11|s_counter[11]~56\);

-- Location: FF_X100_Y57_N25
\inst11|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[11]~55_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(11));

-- Location: LCCOMB_X100_Y57_N26
\inst11|s_counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[12]~57_combout\ = (\inst11|s_counter\(12) & (\inst11|s_counter[11]~56\ $ (GND))) # (!\inst11|s_counter\(12) & (!\inst11|s_counter[11]~56\ & VCC))
-- \inst11|s_counter[12]~58\ = CARRY((\inst11|s_counter\(12) & !\inst11|s_counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(12),
	datad => VCC,
	cin => \inst11|s_counter[11]~56\,
	combout => \inst11|s_counter[12]~57_combout\,
	cout => \inst11|s_counter[12]~58\);

-- Location: FF_X100_Y57_N27
\inst11|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[12]~57_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(12));

-- Location: LCCOMB_X100_Y57_N28
\inst11|s_counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[13]~59_combout\ = (\inst11|s_counter\(13) & (!\inst11|s_counter[12]~58\)) # (!\inst11|s_counter\(13) & ((\inst11|s_counter[12]~58\) # (GND)))
-- \inst11|s_counter[13]~60\ = CARRY((!\inst11|s_counter[12]~58\) # (!\inst11|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(13),
	datad => VCC,
	cin => \inst11|s_counter[12]~58\,
	combout => \inst11|s_counter[13]~59_combout\,
	cout => \inst11|s_counter[13]~60\);

-- Location: FF_X100_Y57_N29
\inst11|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[13]~59_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(13));

-- Location: LCCOMB_X100_Y57_N30
\inst11|s_counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[14]~61_combout\ = (\inst11|s_counter\(14) & (\inst11|s_counter[13]~60\ $ (GND))) # (!\inst11|s_counter\(14) & (!\inst11|s_counter[13]~60\ & VCC))
-- \inst11|s_counter[14]~62\ = CARRY((\inst11|s_counter\(14) & !\inst11|s_counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(14),
	datad => VCC,
	cin => \inst11|s_counter[13]~60\,
	combout => \inst11|s_counter[14]~61_combout\,
	cout => \inst11|s_counter[14]~62\);

-- Location: FF_X100_Y57_N31
\inst11|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[14]~61_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(14));

-- Location: LCCOMB_X100_Y56_N0
\inst11|s_counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[15]~63_combout\ = (\inst11|s_counter\(15) & (!\inst11|s_counter[14]~62\)) # (!\inst11|s_counter\(15) & ((\inst11|s_counter[14]~62\) # (GND)))
-- \inst11|s_counter[15]~64\ = CARRY((!\inst11|s_counter[14]~62\) # (!\inst11|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(15),
	datad => VCC,
	cin => \inst11|s_counter[14]~62\,
	combout => \inst11|s_counter[15]~63_combout\,
	cout => \inst11|s_counter[15]~64\);

-- Location: FF_X100_Y56_N1
\inst11|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[15]~63_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(15));

-- Location: LCCOMB_X100_Y56_N2
\inst11|s_counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[16]~65_combout\ = (\inst11|s_counter\(16) & (\inst11|s_counter[15]~64\ $ (GND))) # (!\inst11|s_counter\(16) & (!\inst11|s_counter[15]~64\ & VCC))
-- \inst11|s_counter[16]~66\ = CARRY((\inst11|s_counter\(16) & !\inst11|s_counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(16),
	datad => VCC,
	cin => \inst11|s_counter[15]~64\,
	combout => \inst11|s_counter[16]~65_combout\,
	cout => \inst11|s_counter[16]~66\);

-- Location: FF_X100_Y56_N3
\inst11|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[16]~65_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(16));

-- Location: LCCOMB_X100_Y56_N4
\inst11|s_counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[17]~67_combout\ = (\inst11|s_counter\(17) & (!\inst11|s_counter[16]~66\)) # (!\inst11|s_counter\(17) & ((\inst11|s_counter[16]~66\) # (GND)))
-- \inst11|s_counter[17]~68\ = CARRY((!\inst11|s_counter[16]~66\) # (!\inst11|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(17),
	datad => VCC,
	cin => \inst11|s_counter[16]~66\,
	combout => \inst11|s_counter[17]~67_combout\,
	cout => \inst11|s_counter[17]~68\);

-- Location: FF_X100_Y56_N5
\inst11|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[17]~67_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(17));

-- Location: LCCOMB_X100_Y56_N6
\inst11|s_counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[18]~69_combout\ = (\inst11|s_counter\(18) & (\inst11|s_counter[17]~68\ $ (GND))) # (!\inst11|s_counter\(18) & (!\inst11|s_counter[17]~68\ & VCC))
-- \inst11|s_counter[18]~70\ = CARRY((\inst11|s_counter\(18) & !\inst11|s_counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(18),
	datad => VCC,
	cin => \inst11|s_counter[17]~68\,
	combout => \inst11|s_counter[18]~69_combout\,
	cout => \inst11|s_counter[18]~70\);

-- Location: FF_X100_Y56_N7
\inst11|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[18]~69_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(18));

-- Location: LCCOMB_X100_Y56_N8
\inst11|s_counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[19]~71_combout\ = (\inst11|s_counter\(19) & (!\inst11|s_counter[18]~70\)) # (!\inst11|s_counter\(19) & ((\inst11|s_counter[18]~70\) # (GND)))
-- \inst11|s_counter[19]~72\ = CARRY((!\inst11|s_counter[18]~70\) # (!\inst11|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(19),
	datad => VCC,
	cin => \inst11|s_counter[18]~70\,
	combout => \inst11|s_counter[19]~71_combout\,
	cout => \inst11|s_counter[19]~72\);

-- Location: FF_X100_Y56_N9
\inst11|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[19]~71_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(19));

-- Location: LCCOMB_X100_Y56_N10
\inst11|s_counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[20]~73_combout\ = (\inst11|s_counter\(20) & (\inst11|s_counter[19]~72\ $ (GND))) # (!\inst11|s_counter\(20) & (!\inst11|s_counter[19]~72\ & VCC))
-- \inst11|s_counter[20]~74\ = CARRY((\inst11|s_counter\(20) & !\inst11|s_counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(20),
	datad => VCC,
	cin => \inst11|s_counter[19]~72\,
	combout => \inst11|s_counter[20]~73_combout\,
	cout => \inst11|s_counter[20]~74\);

-- Location: FF_X100_Y56_N11
\inst11|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[20]~73_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(20));

-- Location: LCCOMB_X100_Y56_N12
\inst11|s_counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[21]~75_combout\ = (\inst11|s_counter\(21) & (!\inst11|s_counter[20]~74\)) # (!\inst11|s_counter\(21) & ((\inst11|s_counter[20]~74\) # (GND)))
-- \inst11|s_counter[21]~76\ = CARRY((!\inst11|s_counter[20]~74\) # (!\inst11|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(21),
	datad => VCC,
	cin => \inst11|s_counter[20]~74\,
	combout => \inst11|s_counter[21]~75_combout\,
	cout => \inst11|s_counter[21]~76\);

-- Location: FF_X100_Y56_N13
\inst11|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[21]~75_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(21));

-- Location: LCCOMB_X100_Y56_N14
\inst11|s_counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[22]~77_combout\ = (\inst11|s_counter\(22) & (\inst11|s_counter[21]~76\ $ (GND))) # (!\inst11|s_counter\(22) & (!\inst11|s_counter[21]~76\ & VCC))
-- \inst11|s_counter[22]~78\ = CARRY((\inst11|s_counter\(22) & !\inst11|s_counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(22),
	datad => VCC,
	cin => \inst11|s_counter[21]~76\,
	combout => \inst11|s_counter[22]~77_combout\,
	cout => \inst11|s_counter[22]~78\);

-- Location: FF_X100_Y56_N15
\inst11|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[22]~77_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(22));

-- Location: LCCOMB_X100_Y56_N16
\inst11|s_counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[23]~79_combout\ = (\inst11|s_counter\(23) & (!\inst11|s_counter[22]~78\)) # (!\inst11|s_counter\(23) & ((\inst11|s_counter[22]~78\) # (GND)))
-- \inst11|s_counter[23]~80\ = CARRY((!\inst11|s_counter[22]~78\) # (!\inst11|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(23),
	datad => VCC,
	cin => \inst11|s_counter[22]~78\,
	combout => \inst11|s_counter[23]~79_combout\,
	cout => \inst11|s_counter[23]~80\);

-- Location: FF_X100_Y56_N17
\inst11|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[23]~79_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(23));

-- Location: LCCOMB_X101_Y56_N12
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (\inst11|s_counter\(21)) # ((\inst11|s_counter\(22)) # ((\inst11|s_counter\(23)) # (\inst11|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(21),
	datab => \inst11|s_counter\(22),
	datac => \inst11|s_counter\(23),
	datad => \inst11|s_counter\(20),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y56_N18
\inst11|s_counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[24]~81_combout\ = (\inst11|s_counter\(24) & (\inst11|s_counter[23]~80\ $ (GND))) # (!\inst11|s_counter\(24) & (!\inst11|s_counter[23]~80\ & VCC))
-- \inst11|s_counter[24]~82\ = CARRY((\inst11|s_counter\(24) & !\inst11|s_counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(24),
	datad => VCC,
	cin => \inst11|s_counter[23]~80\,
	combout => \inst11|s_counter[24]~81_combout\,
	cout => \inst11|s_counter[24]~82\);

-- Location: FF_X100_Y56_N19
\inst11|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[24]~81_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(24));

-- Location: LCCOMB_X100_Y56_N20
\inst11|s_counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[25]~83_combout\ = (\inst11|s_counter\(25) & (!\inst11|s_counter[24]~82\)) # (!\inst11|s_counter\(25) & ((\inst11|s_counter[24]~82\) # (GND)))
-- \inst11|s_counter[25]~84\ = CARRY((!\inst11|s_counter[24]~82\) # (!\inst11|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(25),
	datad => VCC,
	cin => \inst11|s_counter[24]~82\,
	combout => \inst11|s_counter[25]~83_combout\,
	cout => \inst11|s_counter[25]~84\);

-- Location: FF_X100_Y56_N21
\inst11|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[25]~83_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(25));

-- Location: LCCOMB_X100_Y56_N22
\inst11|s_counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[26]~85_combout\ = (\inst11|s_counter\(26) & (\inst11|s_counter[25]~84\ $ (GND))) # (!\inst11|s_counter\(26) & (!\inst11|s_counter[25]~84\ & VCC))
-- \inst11|s_counter[26]~86\ = CARRY((\inst11|s_counter\(26) & !\inst11|s_counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(26),
	datad => VCC,
	cin => \inst11|s_counter[25]~84\,
	combout => \inst11|s_counter[26]~85_combout\,
	cout => \inst11|s_counter[26]~86\);

-- Location: FF_X100_Y56_N23
\inst11|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[26]~85_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(26));

-- Location: LCCOMB_X100_Y56_N24
\inst11|s_counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[27]~87_combout\ = (\inst11|s_counter\(27) & (!\inst11|s_counter[26]~86\)) # (!\inst11|s_counter\(27) & ((\inst11|s_counter[26]~86\) # (GND)))
-- \inst11|s_counter[27]~88\ = CARRY((!\inst11|s_counter[26]~86\) # (!\inst11|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(27),
	datad => VCC,
	cin => \inst11|s_counter[26]~86\,
	combout => \inst11|s_counter[27]~87_combout\,
	cout => \inst11|s_counter[27]~88\);

-- Location: FF_X100_Y56_N25
\inst11|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[27]~87_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(27));

-- Location: LCCOMB_X100_Y56_N26
\inst11|s_counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[28]~89_combout\ = (\inst11|s_counter\(28) & (\inst11|s_counter[27]~88\ $ (GND))) # (!\inst11|s_counter\(28) & (!\inst11|s_counter[27]~88\ & VCC))
-- \inst11|s_counter[28]~90\ = CARRY((\inst11|s_counter\(28) & !\inst11|s_counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(28),
	datad => VCC,
	cin => \inst11|s_counter[27]~88\,
	combout => \inst11|s_counter[28]~89_combout\,
	cout => \inst11|s_counter[28]~90\);

-- Location: FF_X100_Y56_N27
\inst11|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[28]~89_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(28));

-- Location: LCCOMB_X100_Y56_N28
\inst11|s_counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[29]~91_combout\ = (\inst11|s_counter\(29) & (!\inst11|s_counter[28]~90\)) # (!\inst11|s_counter\(29) & ((\inst11|s_counter[28]~90\) # (GND)))
-- \inst11|s_counter[29]~92\ = CARRY((!\inst11|s_counter[28]~90\) # (!\inst11|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(29),
	datad => VCC,
	cin => \inst11|s_counter[28]~90\,
	combout => \inst11|s_counter[29]~91_combout\,
	cout => \inst11|s_counter[29]~92\);

-- Location: FF_X100_Y56_N29
\inst11|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[29]~91_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(29));

-- Location: LCCOMB_X101_Y56_N30
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (\inst11|s_counter\(27)) # ((\inst11|s_counter\(25)) # ((\inst11|s_counter\(24)) # (\inst11|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(27),
	datab => \inst11|s_counter\(25),
	datac => \inst11|s_counter\(24),
	datad => \inst11|s_counter\(26),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y56_N30
\inst11|s_counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[30]~93_combout\ = \inst11|s_counter\(30) $ (!\inst11|s_counter[29]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(30),
	cin => \inst11|s_counter[29]~92\,
	combout => \inst11|s_counter[30]~93_combout\);

-- Location: FF_X100_Y56_N31
\inst11|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[30]~93_combout\,
	sclr => \inst11|s_counter[26]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(30));

-- Location: LCCOMB_X101_Y56_N20
\inst11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~8_combout\ = (\inst11|s_counter\(28)) # ((\inst11|s_counter\(29)) # ((\inst11|Equal0~7_combout\) # (\inst11|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(28),
	datab => \inst11|s_counter\(29),
	datac => \inst11|Equal0~7_combout\,
	datad => \inst11|s_counter\(30),
	combout => \inst11|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y56_N26
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (\inst11|s_counter\(19)) # ((\inst11|s_counter\(18)) # ((\inst11|s_counter\(17)) # (\inst11|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(19),
	datab => \inst11|s_counter\(18),
	datac => \inst11|s_counter\(17),
	datad => \inst11|s_counter\(16),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y57_N0
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (\inst11|s_counter\(10)) # ((\inst11|s_counter\(9)) # ((\inst11|s_counter\(11)) # (\inst11|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(10),
	datab => \inst11|s_counter\(9),
	datac => \inst11|s_counter\(11),
	datad => \inst11|s_counter\(8),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y56_N18
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (\inst11|s_counter\(15)) # ((\inst11|s_counter\(14)) # ((\inst11|s_counter\(12)) # (\inst11|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(15),
	datab => \inst11|s_counter\(14),
	datac => \inst11|s_counter\(12),
	datad => \inst11|s_counter\(13),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X101_Y57_N30
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (\inst11|s_counter\(3)) # ((\inst11|s_counter\(2)) # ((!\inst11|s_counter\(0)) # (!\inst11|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(3),
	datab => \inst11|s_counter\(2),
	datac => \inst11|s_counter\(1),
	datad => \inst11|s_counter\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y57_N20
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (\inst11|s_counter\(5)) # ((\inst11|s_counter\(4)) # ((\inst11|s_counter\(7)) # (\inst11|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(5),
	datab => \inst11|s_counter\(4),
	datac => \inst11|s_counter\(7),
	datad => \inst11|s_counter\(6),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y56_N24
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~2_combout\) # ((\inst11|Equal0~3_combout\) # ((\inst11|Equal0~0_combout\) # (\inst11|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~2_combout\,
	datab => \inst11|Equal0~3_combout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|Equal0~1_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y56_N10
\inst11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~9_combout\ = (\inst11|Equal0~6_combout\) # ((\inst11|Equal0~8_combout\) # ((\inst11|Equal0~5_combout\) # (\inst11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~6_combout\,
	datab => \inst11|Equal0~8_combout\,
	datac => \inst11|Equal0~5_combout\,
	datad => \inst11|Equal0~4_combout\,
	combout => \inst11|Equal0~9_combout\);

-- Location: LCCOMB_X101_Y56_N14
\inst11|pulse~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pulse~2_combout\ = (!\inst11|Equal0~9_combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|pulse~2_combout\);

-- Location: FF_X101_Y56_N15
\inst11|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pulse~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pulse~q\);

-- Location: LCCOMB_X102_Y57_N26
\inst1|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr8~combout\ = ((\inst1|s_currentState.TExtra~q\) # (\inst1|s_currentState.TFim~q\)) # (!\inst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_currentState.TInit~q\,
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst1|s_currentState.TFim~q\,
	combout => \inst1|WideOr8~combout\);

-- Location: LCCOMB_X102_Y57_N8
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst11|pulse~q\ & ((\inst9|s_cntZero~q\) # ((\inst1|WideOr8~combout\) # (\inst|start_stop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pulse~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \inst1|WideOr8~combout\,
	datad => \inst|start_stop~0_combout\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X102_Y57_N16
\inst9|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~22_combout\ = (\inst9|Equal0~3_combout\) # (!\inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10~0_combout\,
	datad => \inst9|Equal0~3_combout\,
	combout => \inst9|s_count~22_combout\);

-- Location: LCCOMB_X103_Y58_N12
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|s_count\(0) $ (VCC)
-- \inst9|Add0~1\ = CARRY(\inst9|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(0),
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

-- Location: LCCOMB_X103_Y57_N18
\inst9|s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~24_combout\ = (\inst1|s_stateChanged~q\ & (((\inst9|Add0~0_combout\)))) # (!\inst1|s_stateChanged~q\ & (\inst1|addr[2]~0_combout\ & ((\inst1|s_currentState.TAmmassar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|addr[2]~0_combout\,
	datab => \inst1|s_stateChanged~q\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst1|s_currentState.TAmmassar~q\,
	combout => \inst9|s_count~24_combout\);

-- Location: LCCOMB_X103_Y57_N2
\inst9|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~25_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst1|s_currentState.TInit~q\ & ((\inst9|s_count~24_combout\))) # (!\inst1|s_currentState.TInit~q\ & (\inst1|addr[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|addr[2]~0_combout\,
	datab => \inst1|s_currentState.TInit~q\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|s_count~24_combout\,
	combout => \inst9|s_count~25_combout\);

-- Location: LCCOMB_X102_Y57_N18
\inst9|s_count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[0]~16_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst8~combout\) # ((\inst10~0_combout\ & !\inst9|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rstGlobal~0_combout\,
	datab => \inst10~0_combout\,
	datac => \inst8~combout\,
	datad => \inst9|Equal0~3_combout\,
	combout => \inst9|s_count[0]~16_combout\);

-- Location: FF_X103_Y57_N3
\inst9|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~25_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(0));

-- Location: LCCOMB_X103_Y58_N14
\inst9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|s_count\(1) & (\inst9|Add0~1\ & VCC)) # (!\inst9|s_count\(1) & (!\inst9|Add0~1\))
-- \inst9|Add0~3\ = CARRY((!\inst9|s_count\(1) & !\inst9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCCOMB_X102_Y57_N0
\inst9|s_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[1]~0_combout\ = (\inst9|s_count~22_combout\ & (\inst9|s_count\(1))) # (!\inst9|s_count~22_combout\ & ((\inst9|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count~22_combout\,
	datac => \inst9|s_count\(1),
	datad => \inst9|Add0~2_combout\,
	combout => \inst9|s_count[1]~0_combout\);

-- Location: LCCOMB_X102_Y57_N30
\inst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (!\inst1|s_currentState.TExtra~q\ & (\inst1|s_currentState.TInit~q\ & !\inst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TExtra~q\,
	datab => \inst1|s_currentState.TInit~q\,
	datac => \inst1|s_currentState.TLevedar~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: FF_X102_Y57_N1
\inst9|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[1]~0_combout\,
	asdata => \inst1|Selector6~0_combout\,
	sclr => \inst|rstGlobal~0_combout\,
	sload => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(1));

-- Location: LCCOMB_X103_Y58_N16
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|s_count\(2) & ((GND) # (!\inst9|Add0~3\))) # (!\inst9|s_count\(2) & (\inst9|Add0~3\ $ (GND)))
-- \inst9|Add0~5\ = CARRY((\inst9|s_count\(2)) # (!\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X103_Y57_N4
\inst9|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~15_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_count~14_combout\) # ((!\inst8~combout\ & \inst9|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~14_combout\,
	datab => \inst8~combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|Add0~4_combout\,
	combout => \inst9|s_count~15_combout\);

-- Location: FF_X103_Y57_N5
\inst9|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~15_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(2));

-- Location: LCCOMB_X103_Y57_N16
\inst9|s_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~19_combout\ = (\inst1|s_currentState.TAmmassar~q\) # ((\inst1|s_currentState.TCozer~q\ & !\inst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datab => \inst1|s_currentState.TCozer~q\,
	datad => \inst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~19_combout\);

-- Location: LCCOMB_X103_Y57_N30
\inst9|s_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~20_combout\ = (\inst1|s_currentState.TInit~q\ & (\inst9|s_count~19_combout\ $ (((!\inst1|s_currentState.TLevedar~q\) # (!\inst1|addr[2]~0_combout\))))) # (!\inst1|s_currentState.TInit~q\ & (\inst1|addr[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|addr[2]~0_combout\,
	datab => \inst9|s_count~19_combout\,
	datac => \inst1|s_currentState.TInit~q\,
	datad => \inst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~20_combout\);

-- Location: LCCOMB_X103_Y58_N18
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|s_count\(3) & (\inst9|Add0~5\ & VCC)) # (!\inst9|s_count\(3) & (!\inst9|Add0~5\))
-- \inst9|Add0~7\ = CARRY((!\inst9|s_count\(3) & !\inst9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X103_Y57_N14
\inst9|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~21_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst8~combout\ & (!\inst9|s_count~20_combout\)) # (!\inst8~combout\ & ((\inst9|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~20_combout\,
	datab => \inst8~combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|s_count~21_combout\);

-- Location: FF_X103_Y57_N15
\inst9|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~21_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(3));

-- Location: LCCOMB_X103_Y59_N26
\inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (!\inst9|s_count\(2) & (!\inst9|s_count\(1) & !\inst9|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X103_Y57_N12
\inst9|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~17_combout\ = ((\inst1|s_currentState.TAmmassar~q\ & (!\inst1|s_stateChanged~q\ & \inst1|s_currentState.TLevedar~q\))) # (!\inst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datab => \inst1|s_stateChanged~q\,
	datac => \inst1|s_currentState.TInit~q\,
	datad => \inst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~17_combout\);

-- Location: LCCOMB_X103_Y58_N20
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|s_count\(4) & ((GND) # (!\inst9|Add0~7\))) # (!\inst9|s_count\(4) & (\inst9|Add0~7\ $ (GND)))
-- \inst9|Add0~9\ = CARRY((\inst9|s_count\(4)) # (!\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(4),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X103_Y57_N20
\inst9|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~23_combout\ = (\inst9|s_count~17_combout\ & (((!\inst8~combout\ & \inst9|Add0~8_combout\)) # (!\inst1|addr[2]~0_combout\))) # (!\inst9|s_count~17_combout\ & (!\inst8~combout\ & (\inst9|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~17_combout\,
	datab => \inst8~combout\,
	datac => \inst9|Add0~8_combout\,
	datad => \inst1|addr[2]~0_combout\,
	combout => \inst9|s_count~23_combout\);

-- Location: LCCOMB_X103_Y57_N0
\inst9|s_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~29_combout\ = (\inst9|s_count~23_combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst9|s_count~23_combout\,
	combout => \inst9|s_count~29_combout\);

-- Location: FF_X103_Y57_N1
\inst9|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~29_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(4));

-- Location: LCCOMB_X103_Y58_N22
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|s_count\(5) & (\inst9|Add0~9\ & VCC)) # (!\inst9|s_count\(5) & (!\inst9|Add0~9\))
-- \inst9|Add0~11\ = CARRY((!\inst9|s_count\(5) & !\inst9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X103_Y57_N6
\inst9|s_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~18_combout\ = (\inst1|addr[2]~0_combout\ & ((\inst9|s_count~17_combout\) # ((!\inst8~combout\ & \inst9|Add0~10_combout\)))) # (!\inst1|addr[2]~0_combout\ & (!\inst8~combout\ & (\inst9|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|addr[2]~0_combout\,
	datab => \inst8~combout\,
	datac => \inst9|Add0~10_combout\,
	datad => \inst9|s_count~17_combout\,
	combout => \inst9|s_count~18_combout\);

-- Location: LCCOMB_X103_Y57_N10
\inst9|s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~26_combout\ = (\inst9|s_count~18_combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst9|s_count~18_combout\,
	combout => \inst9|s_count~26_combout\);

-- Location: FF_X103_Y57_N11
\inst9|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~26_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(5));

-- Location: LCCOMB_X103_Y58_N24
\inst9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|s_count\(6) & ((GND) # (!\inst9|Add0~11\))) # (!\inst9|s_count\(6) & (\inst9|Add0~11\ $ (GND)))
-- \inst9|Add0~13\ = CARRY((\inst9|s_count\(6)) # (!\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X103_Y57_N28
\inst9|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~27_combout\ = (!\inst8~combout\ & (\inst9|Add0~12_combout\ & ((\inst|fstate.Init~q\) # (\inst1asd|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datab => \inst8~combout\,
	datac => \inst9|Add0~12_combout\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst9|s_count~27_combout\);

-- Location: FF_X103_Y57_N29
\inst9|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~27_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(6));

-- Location: LCCOMB_X103_Y58_N26
\inst9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = \inst9|Add0~13\ $ (!\inst9|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|s_count\(7),
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\);

-- Location: LCCOMB_X102_Y57_N2
\inst9|s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~28_combout\ = (!\inst8~combout\ & (\inst9|Add0~14_combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~q\,
	datab => \inst8~combout\,
	datac => \inst|fstate.Init~q\,
	datad => \inst9|Add0~14_combout\,
	combout => \inst9|s_count~28_combout\);

-- Location: FF_X102_Y57_N3
\inst9|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~28_combout\,
	ena => \inst9|s_count[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(7));

-- Location: LCCOMB_X103_Y59_N28
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & !\inst9|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst9|s_count\(5),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y59_N0
\inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (\inst9|Equal0~2_combout\ & (!\inst9|s_count\(4) & (!\inst9|s_count\(0) & \inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~2_combout\,
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(0),
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y57_N10
\inst9|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~4_combout\ = (\inst9|s_cntZero~q\ & (((\inst9|Equal0~3_combout\ & \inst10~0_combout\)) # (!\inst11|pulse~q\))) # (!\inst9|s_cntZero~q\ & (\inst9|Equal0~3_combout\ & (\inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst9|Equal0~3_combout\,
	datac => \inst10~0_combout\,
	datad => \inst11|pulse~q\,
	combout => \inst9|s_cntZero~4_combout\);

-- Location: LCCOMB_X102_Y57_N6
\inst9|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~5_combout\ = (\inst9|s_cntZero~4_combout\ & (!\inst8~combout\ & ((\inst1asd|s_pulsedOut~q\) # (\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~4_combout\,
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst8~combout\,
	combout => \inst9|s_cntZero~5_combout\);

-- Location: FF_X102_Y57_N7
\inst9|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_cntZero~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_cntZero~q\);

-- Location: LCCOMB_X101_Y57_N22
\inst|reg_fstate.StartPrg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~2_combout\ = (\inst|fstate.StartPrg~q\ & (!\inst3|s_pulsedOut~q\ & ((!\inst1|s_currentState.TFim~q\) # (!\inst9|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst|fstate.StartPrg~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst1|s_currentState.TFim~q\,
	combout => \inst|reg_fstate.StartPrg~2_combout\);

-- Location: LCCOMB_X103_Y53_N16
\inst|reg_fstate.TimeProcess~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.TimeProcess~0_combout\ = (\inst|fstate.Timer~q\ & (!\inst13|s_pulsedOut~q\ & \inst3|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Timer~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst|reg_fstate.TimeProcess~0_combout\);

-- Location: LCCOMB_X102_Y53_N22
\inst|reg_fstate.TimeProcess~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.TimeProcess~1_combout\ = (!\inst1asd|s_pulsedOut~q\ & ((\inst|reg_fstate.TimeProcess~0_combout\) # ((!\inst5|s_result~q\ & \inst|fstate.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst|reg_fstate.TimeProcess~0_combout\,
	combout => \inst|reg_fstate.TimeProcess~1_combout\);

-- Location: FF_X102_Y53_N23
\inst|fstate.TimeProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.TimeProcess~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.TimeProcess~q\);

-- Location: LCCOMB_X102_Y53_N30
\inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\inst11|pulse~q\ & (!\inst1asd|s_pulsedOut~q\ & ((\inst|fstate.Timer~q\) # (\inst|fstate.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pulse~q\,
	datab => \inst|fstate.Timer~q\,
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X101_Y54_N0
\inst5|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[0]~32_combout\ = \inst5|s_count\(0) $ (VCC)
-- \inst5|s_count[0]~33\ = CARRY(\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(0),
	datad => VCC,
	combout => \inst5|s_count[0]~32_combout\,
	cout => \inst5|s_count[0]~33\);

-- Location: LCCOMB_X101_Y54_N4
\inst5|s_count[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[2]~39_combout\ = (\inst5|s_count\(2) & (\inst5|s_count[1]~38\ $ (GND))) # (!\inst5|s_count\(2) & (!\inst5|s_count[1]~38\ & VCC))
-- \inst5|s_count[2]~40\ = CARRY((\inst5|s_count\(2) & !\inst5|s_count[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(2),
	datad => VCC,
	cin => \inst5|s_count[1]~38\,
	combout => \inst5|s_count[2]~39_combout\,
	cout => \inst5|s_count[2]~40\);

-- Location: LCCOMB_X101_Y54_N6
\inst5|s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[3]~41_combout\ = (\inst5|s_count\(3) & (!\inst5|s_count[2]~40\)) # (!\inst5|s_count\(3) & ((\inst5|s_count[2]~40\) # (GND)))
-- \inst5|s_count[3]~42\ = CARRY((!\inst5|s_count[2]~40\) # (!\inst5|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datad => VCC,
	cin => \inst5|s_count[2]~40\,
	combout => \inst5|s_count[3]~41_combout\,
	cout => \inst5|s_count[3]~42\);

-- Location: LCCOMB_X102_Y53_N20
\inst5|s_count[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~34_combout\ = (\inst1asd|s_pulsedOut~q\) # (!\inst|fstate.TimeProcess~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst5|s_count[31]~34_combout\);

-- Location: LCCOMB_X102_Y53_N26
\inst5|s_count[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~36_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst7~0_combout\ & ((!\inst5|Equal0~10_combout\) # (!\inst5|s_count[31]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rstGlobal~0_combout\,
	datab => \inst5|s_count[31]~34_combout\,
	datac => \inst7~0_combout\,
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|s_count[31]~36_combout\);

-- Location: FF_X101_Y54_N7
\inst5|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[3]~41_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(3));

-- Location: LCCOMB_X101_Y54_N8
\inst5|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~43_combout\ = (\inst5|s_count\(4) & (\inst5|s_count[3]~42\ $ (GND))) # (!\inst5|s_count\(4) & (!\inst5|s_count[3]~42\ & VCC))
-- \inst5|s_count[4]~44\ = CARRY((\inst5|s_count\(4) & !\inst5|s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(4),
	datad => VCC,
	cin => \inst5|s_count[3]~42\,
	combout => \inst5|s_count[4]~43_combout\,
	cout => \inst5|s_count[4]~44\);

-- Location: FF_X101_Y54_N9
\inst5|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[4]~43_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(4));

-- Location: LCCOMB_X101_Y54_N10
\inst5|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[5]~45_combout\ = (\inst5|s_count\(5) & (!\inst5|s_count[4]~44\)) # (!\inst5|s_count\(5) & ((\inst5|s_count[4]~44\) # (GND)))
-- \inst5|s_count[5]~46\ = CARRY((!\inst5|s_count[4]~44\) # (!\inst5|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datad => VCC,
	cin => \inst5|s_count[4]~44\,
	combout => \inst5|s_count[5]~45_combout\,
	cout => \inst5|s_count[5]~46\);

-- Location: FF_X101_Y54_N11
\inst5|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[5]~45_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(5));

-- Location: LCCOMB_X101_Y54_N12
\inst5|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~47_combout\ = (\inst5|s_count\(6) & (\inst5|s_count[5]~46\ $ (GND))) # (!\inst5|s_count\(6) & (!\inst5|s_count[5]~46\ & VCC))
-- \inst5|s_count[6]~48\ = CARRY((\inst5|s_count\(6) & !\inst5|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datad => VCC,
	cin => \inst5|s_count[5]~46\,
	combout => \inst5|s_count[6]~47_combout\,
	cout => \inst5|s_count[6]~48\);

-- Location: FF_X101_Y54_N13
\inst5|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[6]~47_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(6));

-- Location: LCCOMB_X101_Y54_N14
\inst5|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[7]~49_combout\ = (\inst5|s_count\(7) & (!\inst5|s_count[6]~48\)) # (!\inst5|s_count\(7) & ((\inst5|s_count[6]~48\) # (GND)))
-- \inst5|s_count[7]~50\ = CARRY((!\inst5|s_count[6]~48\) # (!\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(7),
	datad => VCC,
	cin => \inst5|s_count[6]~48\,
	combout => \inst5|s_count[7]~49_combout\,
	cout => \inst5|s_count[7]~50\);

-- Location: FF_X101_Y54_N15
\inst5|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[7]~49_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(7));

-- Location: LCCOMB_X101_Y54_N16
\inst5|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[8]~51_combout\ = (\inst5|s_count\(8) & (\inst5|s_count[7]~50\ $ (GND))) # (!\inst5|s_count\(8) & (!\inst5|s_count[7]~50\ & VCC))
-- \inst5|s_count[8]~52\ = CARRY((\inst5|s_count\(8) & !\inst5|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(8),
	datad => VCC,
	cin => \inst5|s_count[7]~50\,
	combout => \inst5|s_count[8]~51_combout\,
	cout => \inst5|s_count[8]~52\);

-- Location: FF_X101_Y54_N17
\inst5|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[8]~51_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(8));

-- Location: LCCOMB_X101_Y54_N18
\inst5|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[9]~53_combout\ = (\inst5|s_count\(9) & (!\inst5|s_count[8]~52\)) # (!\inst5|s_count\(9) & ((\inst5|s_count[8]~52\) # (GND)))
-- \inst5|s_count[9]~54\ = CARRY((!\inst5|s_count[8]~52\) # (!\inst5|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(9),
	datad => VCC,
	cin => \inst5|s_count[8]~52\,
	combout => \inst5|s_count[9]~53_combout\,
	cout => \inst5|s_count[9]~54\);

-- Location: FF_X101_Y54_N19
\inst5|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[9]~53_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(9));

-- Location: LCCOMB_X101_Y54_N20
\inst5|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[10]~55_combout\ = (\inst5|s_count\(10) & (\inst5|s_count[9]~54\ $ (GND))) # (!\inst5|s_count\(10) & (!\inst5|s_count[9]~54\ & VCC))
-- \inst5|s_count[10]~56\ = CARRY((\inst5|s_count\(10) & !\inst5|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(10),
	datad => VCC,
	cin => \inst5|s_count[9]~54\,
	combout => \inst5|s_count[10]~55_combout\,
	cout => \inst5|s_count[10]~56\);

-- Location: FF_X102_Y54_N9
\inst5|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[10]~55_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(10));

-- Location: LCCOMB_X101_Y54_N22
\inst5|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[11]~57_combout\ = (\inst5|s_count\(11) & (!\inst5|s_count[10]~56\)) # (!\inst5|s_count\(11) & ((\inst5|s_count[10]~56\) # (GND)))
-- \inst5|s_count[11]~58\ = CARRY((!\inst5|s_count[10]~56\) # (!\inst5|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datad => VCC,
	cin => \inst5|s_count[10]~56\,
	combout => \inst5|s_count[11]~57_combout\,
	cout => \inst5|s_count[11]~58\);

-- Location: FF_X102_Y54_N7
\inst5|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[11]~57_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(11));

-- Location: LCCOMB_X101_Y54_N24
\inst5|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[12]~59_combout\ = (\inst5|s_count\(12) & (\inst5|s_count[11]~58\ $ (GND))) # (!\inst5|s_count\(12) & (!\inst5|s_count[11]~58\ & VCC))
-- \inst5|s_count[12]~60\ = CARRY((\inst5|s_count\(12) & !\inst5|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(12),
	datad => VCC,
	cin => \inst5|s_count[11]~58\,
	combout => \inst5|s_count[12]~59_combout\,
	cout => \inst5|s_count[12]~60\);

-- Location: FF_X102_Y54_N17
\inst5|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[12]~59_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(12));

-- Location: LCCOMB_X101_Y54_N26
\inst5|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[13]~61_combout\ = (\inst5|s_count\(13) & (!\inst5|s_count[12]~60\)) # (!\inst5|s_count\(13) & ((\inst5|s_count[12]~60\) # (GND)))
-- \inst5|s_count[13]~62\ = CARRY((!\inst5|s_count[12]~60\) # (!\inst5|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(13),
	datad => VCC,
	cin => \inst5|s_count[12]~60\,
	combout => \inst5|s_count[13]~61_combout\,
	cout => \inst5|s_count[13]~62\);

-- Location: FF_X102_Y54_N23
\inst5|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[13]~61_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(13));

-- Location: LCCOMB_X101_Y54_N28
\inst5|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[14]~63_combout\ = (\inst5|s_count\(14) & (\inst5|s_count[13]~62\ $ (GND))) # (!\inst5|s_count\(14) & (!\inst5|s_count[13]~62\ & VCC))
-- \inst5|s_count[14]~64\ = CARRY((\inst5|s_count\(14) & !\inst5|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(14),
	datad => VCC,
	cin => \inst5|s_count[13]~62\,
	combout => \inst5|s_count[14]~63_combout\,
	cout => \inst5|s_count[14]~64\);

-- Location: FF_X102_Y54_N5
\inst5|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[14]~63_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(14));

-- Location: LCCOMB_X101_Y54_N30
\inst5|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[15]~65_combout\ = (\inst5|s_count\(15) & (!\inst5|s_count[14]~64\)) # (!\inst5|s_count\(15) & ((\inst5|s_count[14]~64\) # (GND)))
-- \inst5|s_count[15]~66\ = CARRY((!\inst5|s_count[14]~64\) # (!\inst5|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(15),
	datad => VCC,
	cin => \inst5|s_count[14]~64\,
	combout => \inst5|s_count[15]~65_combout\,
	cout => \inst5|s_count[15]~66\);

-- Location: FF_X102_Y54_N31
\inst5|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[15]~65_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(15));

-- Location: LCCOMB_X101_Y53_N0
\inst5|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[16]~67_combout\ = (\inst5|s_count\(16) & (\inst5|s_count[15]~66\ $ (GND))) # (!\inst5|s_count\(16) & (!\inst5|s_count[15]~66\ & VCC))
-- \inst5|s_count[16]~68\ = CARRY((\inst5|s_count\(16) & !\inst5|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(16),
	datad => VCC,
	cin => \inst5|s_count[15]~66\,
	combout => \inst5|s_count[16]~67_combout\,
	cout => \inst5|s_count[16]~68\);

-- Location: FF_X102_Y54_N29
\inst5|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[16]~67_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(16));

-- Location: LCCOMB_X101_Y53_N2
\inst5|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[17]~69_combout\ = (\inst5|s_count\(17) & (!\inst5|s_count[16]~68\)) # (!\inst5|s_count\(17) & ((\inst5|s_count[16]~68\) # (GND)))
-- \inst5|s_count[17]~70\ = CARRY((!\inst5|s_count[16]~68\) # (!\inst5|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(17),
	datad => VCC,
	cin => \inst5|s_count[16]~68\,
	combout => \inst5|s_count[17]~69_combout\,
	cout => \inst5|s_count[17]~70\);

-- Location: FF_X102_Y54_N19
\inst5|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count[17]~69_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	sload => VCC,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(17));

-- Location: LCCOMB_X101_Y53_N4
\inst5|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[18]~71_combout\ = (\inst5|s_count\(18) & (\inst5|s_count[17]~70\ $ (GND))) # (!\inst5|s_count\(18) & (!\inst5|s_count[17]~70\ & VCC))
-- \inst5|s_count[18]~72\ = CARRY((\inst5|s_count\(18) & !\inst5|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(18),
	datad => VCC,
	cin => \inst5|s_count[17]~70\,
	combout => \inst5|s_count[18]~71_combout\,
	cout => \inst5|s_count[18]~72\);

-- Location: FF_X101_Y53_N5
\inst5|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[18]~71_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(18));

-- Location: LCCOMB_X101_Y53_N6
\inst5|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[19]~73_combout\ = (\inst5|s_count\(19) & (!\inst5|s_count[18]~72\)) # (!\inst5|s_count\(19) & ((\inst5|s_count[18]~72\) # (GND)))
-- \inst5|s_count[19]~74\ = CARRY((!\inst5|s_count[18]~72\) # (!\inst5|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(19),
	datad => VCC,
	cin => \inst5|s_count[18]~72\,
	combout => \inst5|s_count[19]~73_combout\,
	cout => \inst5|s_count[19]~74\);

-- Location: FF_X101_Y53_N7
\inst5|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[19]~73_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(19));

-- Location: LCCOMB_X101_Y53_N8
\inst5|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[20]~75_combout\ = (\inst5|s_count\(20) & (\inst5|s_count[19]~74\ $ (GND))) # (!\inst5|s_count\(20) & (!\inst5|s_count[19]~74\ & VCC))
-- \inst5|s_count[20]~76\ = CARRY((\inst5|s_count\(20) & !\inst5|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(20),
	datad => VCC,
	cin => \inst5|s_count[19]~74\,
	combout => \inst5|s_count[20]~75_combout\,
	cout => \inst5|s_count[20]~76\);

-- Location: FF_X101_Y53_N9
\inst5|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[20]~75_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(20));

-- Location: LCCOMB_X101_Y53_N10
\inst5|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[21]~77_combout\ = (\inst5|s_count\(21) & (!\inst5|s_count[20]~76\)) # (!\inst5|s_count\(21) & ((\inst5|s_count[20]~76\) # (GND)))
-- \inst5|s_count[21]~78\ = CARRY((!\inst5|s_count[20]~76\) # (!\inst5|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(21),
	datad => VCC,
	cin => \inst5|s_count[20]~76\,
	combout => \inst5|s_count[21]~77_combout\,
	cout => \inst5|s_count[21]~78\);

-- Location: FF_X101_Y53_N11
\inst5|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[21]~77_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(21));

-- Location: LCCOMB_X102_Y53_N10
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|s_count\(21) & (!\inst5|s_count\(19) & (!\inst5|s_count\(18) & !\inst5|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(21),
	datab => \inst5|s_count\(19),
	datac => \inst5|s_count\(18),
	datad => \inst5|s_count\(20),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y53_N12
\inst5|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[22]~79_combout\ = (\inst5|s_count\(22) & (\inst5|s_count[21]~78\ $ (GND))) # (!\inst5|s_count\(22) & (!\inst5|s_count[21]~78\ & VCC))
-- \inst5|s_count[22]~80\ = CARRY((\inst5|s_count\(22) & !\inst5|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(22),
	datad => VCC,
	cin => \inst5|s_count[21]~78\,
	combout => \inst5|s_count[22]~79_combout\,
	cout => \inst5|s_count[22]~80\);

-- Location: FF_X101_Y53_N13
\inst5|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[22]~79_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(22));

-- Location: LCCOMB_X101_Y53_N14
\inst5|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[23]~81_combout\ = (\inst5|s_count\(23) & (!\inst5|s_count[22]~80\)) # (!\inst5|s_count\(23) & ((\inst5|s_count[22]~80\) # (GND)))
-- \inst5|s_count[23]~82\ = CARRY((!\inst5|s_count[22]~80\) # (!\inst5|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(23),
	datad => VCC,
	cin => \inst5|s_count[22]~80\,
	combout => \inst5|s_count[23]~81_combout\,
	cout => \inst5|s_count[23]~82\);

-- Location: FF_X101_Y53_N15
\inst5|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[23]~81_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(23));

-- Location: LCCOMB_X101_Y53_N16
\inst5|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[24]~83_combout\ = (\inst5|s_count\(24) & (\inst5|s_count[23]~82\ $ (GND))) # (!\inst5|s_count\(24) & (!\inst5|s_count[23]~82\ & VCC))
-- \inst5|s_count[24]~84\ = CARRY((\inst5|s_count\(24) & !\inst5|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(24),
	datad => VCC,
	cin => \inst5|s_count[23]~82\,
	combout => \inst5|s_count[24]~83_combout\,
	cout => \inst5|s_count[24]~84\);

-- Location: FF_X101_Y53_N17
\inst5|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[24]~83_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(24));

-- Location: LCCOMB_X101_Y53_N18
\inst5|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[25]~85_combout\ = (\inst5|s_count\(25) & (!\inst5|s_count[24]~84\)) # (!\inst5|s_count\(25) & ((\inst5|s_count[24]~84\) # (GND)))
-- \inst5|s_count[25]~86\ = CARRY((!\inst5|s_count[24]~84\) # (!\inst5|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(25),
	datad => VCC,
	cin => \inst5|s_count[24]~84\,
	combout => \inst5|s_count[25]~85_combout\,
	cout => \inst5|s_count[25]~86\);

-- Location: FF_X101_Y53_N19
\inst5|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[25]~85_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(25));

-- Location: LCCOMB_X102_Y53_N24
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|s_count\(23) & (!\inst5|s_count\(25) & (!\inst5|s_count\(24) & !\inst5|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(23),
	datab => \inst5|s_count\(25),
	datac => \inst5|s_count\(24),
	datad => \inst5|s_count\(22),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X101_Y53_N20
\inst5|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[26]~87_combout\ = (\inst5|s_count\(26) & (\inst5|s_count[25]~86\ $ (GND))) # (!\inst5|s_count\(26) & (!\inst5|s_count[25]~86\ & VCC))
-- \inst5|s_count[26]~88\ = CARRY((\inst5|s_count\(26) & !\inst5|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(26),
	datad => VCC,
	cin => \inst5|s_count[25]~86\,
	combout => \inst5|s_count[26]~87_combout\,
	cout => \inst5|s_count[26]~88\);

-- Location: FF_X101_Y53_N21
\inst5|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[26]~87_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(26));

-- Location: LCCOMB_X101_Y53_N22
\inst5|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[27]~89_combout\ = (\inst5|s_count\(27) & (!\inst5|s_count[26]~88\)) # (!\inst5|s_count\(27) & ((\inst5|s_count[26]~88\) # (GND)))
-- \inst5|s_count[27]~90\ = CARRY((!\inst5|s_count[26]~88\) # (!\inst5|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(27),
	datad => VCC,
	cin => \inst5|s_count[26]~88\,
	combout => \inst5|s_count[27]~89_combout\,
	cout => \inst5|s_count[27]~90\);

-- Location: FF_X101_Y53_N23
\inst5|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[27]~89_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(27));

-- Location: LCCOMB_X101_Y53_N24
\inst5|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[28]~91_combout\ = (\inst5|s_count\(28) & (\inst5|s_count[27]~90\ $ (GND))) # (!\inst5|s_count\(28) & (!\inst5|s_count[27]~90\ & VCC))
-- \inst5|s_count[28]~92\ = CARRY((\inst5|s_count\(28) & !\inst5|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(28),
	datad => VCC,
	cin => \inst5|s_count[27]~90\,
	combout => \inst5|s_count[28]~91_combout\,
	cout => \inst5|s_count[28]~92\);

-- Location: FF_X101_Y53_N25
\inst5|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[28]~91_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(28));

-- Location: LCCOMB_X101_Y53_N26
\inst5|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[29]~93_combout\ = (\inst5|s_count\(29) & (!\inst5|s_count[28]~92\)) # (!\inst5|s_count\(29) & ((\inst5|s_count[28]~92\) # (GND)))
-- \inst5|s_count[29]~94\ = CARRY((!\inst5|s_count[28]~92\) # (!\inst5|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(29),
	datad => VCC,
	cin => \inst5|s_count[28]~92\,
	combout => \inst5|s_count[29]~93_combout\,
	cout => \inst5|s_count[29]~94\);

-- Location: FF_X101_Y53_N27
\inst5|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[29]~93_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(29));

-- Location: LCCOMB_X101_Y53_N28
\inst5|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[30]~95_combout\ = (\inst5|s_count\(30) & (\inst5|s_count[29]~94\ $ (GND))) # (!\inst5|s_count\(30) & (!\inst5|s_count[29]~94\ & VCC))
-- \inst5|s_count[30]~96\ = CARRY((\inst5|s_count\(30) & !\inst5|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(30),
	datad => VCC,
	cin => \inst5|s_count[29]~94\,
	combout => \inst5|s_count[30]~95_combout\,
	cout => \inst5|s_count[30]~96\);

-- Location: FF_X101_Y53_N29
\inst5|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[30]~95_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(30));

-- Location: LCCOMB_X101_Y53_N30
\inst5|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~97_combout\ = \inst5|s_count\(31) $ (\inst5|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(31),
	cin => \inst5|s_count[30]~96\,
	combout => \inst5|s_count[31]~97_combout\);

-- Location: FF_X101_Y53_N31
\inst5|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[31]~97_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(31));

-- Location: LCCOMB_X102_Y53_N14
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|s_count\(29) & (!\inst5|s_count\(27) & (!\inst5|s_count\(28) & !\inst5|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(29),
	datab => \inst5|s_count\(27),
	datac => \inst5|s_count\(28),
	datad => \inst5|s_count\(26),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X102_Y53_N8
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|s_count\(31) & (\inst5|Equal0~7_combout\ & !\inst5|s_count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(31),
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|s_count\(30),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X102_Y54_N12
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|s_count\(11) & (!\inst5|s_count\(10) & (!\inst5|s_count\(13) & !\inst5|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datab => \inst5|s_count\(10),
	datac => \inst5|s_count\(13),
	datad => \inst5|s_count\(12),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X102_Y54_N2
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|s_count\(15) & (!\inst5|s_count\(17) & (!\inst5|s_count\(14) & !\inst5|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(15),
	datab => \inst5|s_count\(17),
	datac => \inst5|s_count\(14),
	datad => \inst5|s_count\(16),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y54_N26
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(9) & (!\inst5|s_count\(8) & !\inst5|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(9),
	datac => \inst5|s_count\(8),
	datad => \inst5|s_count\(6),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y54_N24
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|s_count\(5) & (!\inst5|s_count\(3) & (!\inst5|s_count\(0) & !\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(4),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y54_N20
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~2_combout\ & (\inst5|Equal0~3_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~2_combout\,
	datab => \inst5|Equal0~3_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X102_Y53_N2
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~5_combout\ & (\inst5|Equal0~6_combout\ & (\inst5|Equal0~8_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~5_combout\,
	datab => \inst5|Equal0~6_combout\,
	datac => \inst5|Equal0~8_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y53_N18
\inst5|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (!\inst5|s_count\(2) & (!\inst5|s_count\(1) & \inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(1),
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X102_Y53_N0
\inst5|s_count[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~35_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst5|Equal0~10_combout\ & (\inst5|s_count[31]~34_combout\)) # (!\inst5|Equal0~10_combout\ & ((\inst5|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rstGlobal~0_combout\,
	datab => \inst5|Equal0~10_combout\,
	datac => \inst5|s_count[31]~34_combout\,
	datad => \inst5|Equal1~0_combout\,
	combout => \inst5|s_count[31]~35_combout\);

-- Location: FF_X101_Y54_N1
\inst5|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[0]~32_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(0));

-- Location: LCCOMB_X101_Y54_N2
\inst5|s_count[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[1]~37_combout\ = (\inst5|s_count\(1) & (!\inst5|s_count[0]~33\)) # (!\inst5|s_count\(1) & ((\inst5|s_count[0]~33\) # (GND)))
-- \inst5|s_count[1]~38\ = CARRY((!\inst5|s_count[0]~33\) # (!\inst5|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datad => VCC,
	cin => \inst5|s_count[0]~33\,
	combout => \inst5|s_count[1]~37_combout\,
	cout => \inst5|s_count[1]~38\);

-- Location: FF_X101_Y54_N3
\inst5|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[1]~37_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(1));

-- Location: FF_X101_Y54_N5
\inst5|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[2]~39_combout\,
	sclr => \inst5|s_count[31]~35_combout\,
	ena => \inst5|s_count[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(2));

-- Location: LCCOMB_X102_Y53_N16
\inst5|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(1) & \inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(1),
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|Equal1~0_combout\);

-- Location: LCCOMB_X102_Y53_N12
\inst5|s_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~0_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst7~0_combout\ & (\inst5|Equal1~0_combout\)) # (!\inst7~0_combout\ & ((\inst5|s_result~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	datab => \inst5|Equal1~0_combout\,
	datac => \inst5|s_result~q\,
	datad => \inst|rstGlobal~0_combout\,
	combout => \inst5|s_result~0_combout\);

-- Location: FF_X102_Y53_N13
\inst5|s_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_result~q\);

-- Location: LCCOMB_X102_Y53_N28
\inst|reg_fstate.Stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Stop~0_combout\ = (!\inst1asd|s_pulsedOut~q\ & ((\inst3|s_pulsedOut~q\ & (\inst|fstate.StartPrg~q\)) # (!\inst3|s_pulsedOut~q\ & ((\inst|fstate.Stop~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.StartPrg~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|fstate.Stop~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Stop~0_combout\);

-- Location: FF_X102_Y53_N29
\inst|fstate.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Stop~q\);

-- Location: LCCOMB_X102_Y53_N6
\inst|reg_fstate.StartPrg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~0_combout\ = (\inst|fstate.Stop~q\) # ((\inst|fstate.Extra~q\) # ((!\inst13|s_pulsedOut~q\ & \inst|fstate.Menu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst|fstate.Stop~q\,
	datac => \inst|fstate.Extra~q\,
	datad => \inst|fstate.Menu~q\,
	combout => \inst|reg_fstate.StartPrg~0_combout\);

-- Location: LCCOMB_X102_Y53_N4
\inst|reg_fstate.StartPrg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~1_combout\ = (\inst5|s_result~q\ & ((\inst|fstate.TimeProcess~q\) # ((\inst3|s_pulsedOut~q\ & \inst|reg_fstate.StartPrg~0_combout\)))) # (!\inst5|s_result~q\ & (\inst3|s_pulsedOut~q\ & ((\inst|reg_fstate.StartPrg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst|reg_fstate.StartPrg~0_combout\,
	combout => \inst|reg_fstate.StartPrg~1_combout\);

-- Location: LCCOMB_X101_Y57_N0
\inst|reg_fstate.StartPrg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~3_combout\ = (!\inst1asd|s_pulsedOut~q\ & ((\inst|reg_fstate.StartPrg~1_combout\) # ((!\inst1|Selector8~4_combout\ & \inst|reg_fstate.StartPrg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~4_combout\,
	datab => \inst1asd|s_pulsedOut~q\,
	datac => \inst|reg_fstate.StartPrg~2_combout\,
	datad => \inst|reg_fstate.StartPrg~1_combout\,
	combout => \inst|reg_fstate.StartPrg~3_combout\);

-- Location: FF_X101_Y57_N1
\inst|fstate.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.StartPrg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.StartPrg~q\);

-- Location: LCCOMB_X101_Y56_N22
\inst|reg_fstate.Extra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Extra~0_combout\ = (\inst|fstate.Extra~q\) # ((\inst|fstate.StartPrg~q\ & (\inst9|s_cntZero~q\ & \inst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.StartPrg~q\,
	datab => \inst|fstate.Extra~q\,
	datac => \inst9|s_cntZero~q\,
	datad => \inst1|s_currentState.TFim~q\,
	combout => \inst|reg_fstate.Extra~0_combout\);

-- Location: LCCOMB_X101_Y56_N8
\inst|reg_fstate.Extra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Extra~1_combout\ = (\inst|reg_fstate.Extra~0_combout\ & (!\inst1asd|s_pulsedOut~q\ & !\inst3|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg_fstate.Extra~0_combout\,
	datac => \inst1asd|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Extra~1_combout\);

-- Location: FF_X101_Y56_N9
\inst|fstate.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Extra~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Extra~q\);

-- Location: LCCOMB_X105_Y57_N0
\inst4|s_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_reset~0_combout\ = (!\inst1|s_currentState.TExtra~q\ & (!\inst1|s_currentState.TFim~q\ & ((\inst1asd|s_pulsedOut~q\) # (!\inst|fstate.Extra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1asd|s_pulsedOut~q\,
	datab => \inst|fstate.Extra~q\,
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst1|s_currentState.TFim~q\,
	combout => \inst4|s_reset~0_combout\);

-- Location: LCCOMB_X105_Y57_N26
\inst4|Counter|s_count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~12_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst4|s_reset~0_combout\) # ((\inst4|Counter|s_count\(2) & \inst4|Counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(2),
	datab => \inst4|Counter|s_count\(0),
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst4|s_reset~0_combout\,
	combout => \inst4|Counter|s_count[0]~12_combout\);

-- Location: FF_X105_Y57_N9
\inst4|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[0]~10_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(0));

-- Location: LCCOMB_X105_Y57_N10
\inst4|Counter|s_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~13_combout\ = (\inst4|Counter|s_count\(1) & (!\inst4|Counter|s_count[0]~11\)) # (!\inst4|Counter|s_count\(1) & ((\inst4|Counter|s_count[0]~11\) # (GND)))
-- \inst4|Counter|s_count[1]~14\ = CARRY((!\inst4|Counter|s_count[0]~11\) # (!\inst4|Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(1),
	datad => VCC,
	cin => \inst4|Counter|s_count[0]~11\,
	combout => \inst4|Counter|s_count[1]~13_combout\,
	cout => \inst4|Counter|s_count[1]~14\);

-- Location: FF_X105_Y57_N11
\inst4|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[1]~13_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(1));

-- Location: FF_X105_Y57_N13
\inst4|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[2]~15_combout\,
	sclr => \inst4|Counter|s_count[0]~12_combout\,
	ena => \inst4|Counter|s_count[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(2));

-- Location: LCCOMB_X105_Y57_N28
\inst1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~2_combout\ = (!\inst4|Counter|s_count\(2) & (!\inst4|Counter|s_count\(3) & (!\inst4|Counter|s_count\(0) & !\inst4|Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(2),
	datab => \inst4|Counter|s_count\(3),
	datac => \inst4|Counter|s_count\(0),
	datad => \inst4|Counter|s_count\(1),
	combout => \inst1|Selector8~2_combout\);

-- Location: LCCOMB_X101_Y57_N26
\inst1|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~4_combout\ = (\inst1|Selector8~2_combout\ & (\inst1|s_currentState.TExtra~q\ & (\inst|start_stop~0_combout\ & \inst1|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~2_combout\,
	datab => \inst1|s_currentState.TExtra~q\,
	datac => \inst|start_stop~0_combout\,
	datad => \inst1|Selector8~3_combout\,
	combout => \inst1|Selector8~4_combout\);

-- Location: LCCOMB_X101_Y57_N4
\inst|reg_fstate.Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Init~0_combout\ = \inst1asd|s_pulsedOut~q\ $ (((\inst3|s_pulsedOut~q\) # (!\inst1|Selector8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector8~4_combout\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Init~0_combout\);

-- Location: FF_X101_Y57_N5
\inst|fstate.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|reg_fstate.Init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Init~q\);

-- Location: LCCOMB_X102_Y57_N20
\inst1|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~17_combout\ = (\inst1|Selector11~1_combout\ & ((\inst|fstate.Init~q\) # (\inst1asd|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Init~q\,
	datac => \inst1|Selector11~1_combout\,
	datad => \inst1asd|s_pulsedOut~q\,
	combout => \inst1|s_currentState~17_combout\);

-- Location: FF_X102_Y57_N21
\inst1|s_currentState.TCozer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TCozer~q\);

-- Location: LCCOMB_X101_Y57_N28
\inst1|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_currentState~12_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_cntZero~q\ & (\inst1|s_currentState.TCozer~q\)) # (!\inst9|s_cntZero~q\ & ((\inst1|s_currentState.TFim~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TCozer~q\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \inst1|s_currentState.TFim~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst1|s_currentState~12_combout\);

-- Location: FF_X101_Y57_N29
\inst1|s_currentState.TFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_currentState.TFim~q\);

-- Location: LCCOMB_X106_Y58_N30
\inst1|timeVal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|timeVal~0_combout\ = (!\inst1|s_currentState.TFim~q\ & !\inst1|s_currentState.TExtra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_currentState.TFim~q\,
	datad => \inst1|s_currentState.TExtra~q\,
	combout => \inst1|timeVal~0_combout\);

-- Location: LCCOMB_X103_Y59_N4
\inst6|outBCD[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~15_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count\(1) & (\inst9|s_count\(2) $ (\inst9|s_count\(3))))) # (!\inst9|s_count\(5) & ((\inst9|s_count\(2) & (\inst9|s_count\(1) & !\inst9|s_count\(3))) # (!\inst9|s_count\(2) & 
-- (\inst9|s_count\(1) $ (!\inst9|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[1]~15_combout\);

-- Location: LCCOMB_X103_Y59_N18
\inst6|outBCD[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~14_combout\ = (\inst9|s_count\(5) & ((\inst9|s_count\(1) $ (!\inst9|s_count\(3))))) # (!\inst9|s_count\(5) & ((\inst9|s_count\(1) & ((!\inst9|s_count\(3)))) # (!\inst9|s_count\(1) & (\inst9|s_count\(2) & \inst9|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[1]~14_combout\);

-- Location: LCCOMB_X103_Y59_N6
\inst6|outBCD[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~13_combout\ = (\inst9|s_count\(4) & (\inst6|outBCD[1]~15_combout\)) # (!\inst9|s_count\(4) & ((\inst6|outBCD[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(4),
	datac => \inst6|outBCD[1]~15_combout\,
	datad => \inst6|outBCD[1]~14_combout\,
	combout => \inst6|outBCD[1]~13_combout\);

-- Location: LCCOMB_X103_Y59_N20
\inst6|outBCD[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~53_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD[1]~13_combout\,
	combout => \inst6|outBCD[1]~53_combout\);

-- Location: LCCOMB_X105_Y59_N12
\inst6|outBCD~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~47_combout\ = (\inst9|s_count\(3) & ((\inst9|s_count\(2)) # (\inst9|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD~47_combout\);

-- Location: LCCOMB_X105_Y59_N24
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (!\inst9|s_count\(6) & !\inst9|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y59_N26
\inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~0_combout\ = (!\inst6|outBCD~47_combout\ & (!\inst9|s_count\(4) & (!\inst9|s_count\(5) & \inst9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD~47_combout\,
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(5),
	datad => \inst9|Equal0~1_combout\,
	combout => \inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y59_N8
\inst6|outBCD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~7_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count\(2) & (\inst9|s_count\(1) & \inst9|s_count\(4)))) # (!\inst9|s_count\(5) & (!\inst9|s_count\(1) & (\inst9|s_count\(2) $ (!\inst9|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD~7_combout\);

-- Location: LCCOMB_X105_Y59_N18
\inst6|outBCD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~6_combout\ = (\inst9|s_count\(2) & (!\inst9|s_count\(4) & ((\inst9|s_count\(1)) # (!\inst9|s_count\(5))))) # (!\inst9|s_count\(2) & (\inst9|s_count\(5) $ (((\inst9|s_count\(1)) # (!\inst9|s_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD~6_combout\);

-- Location: LCCOMB_X105_Y59_N2
\inst6|outBCD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~5_combout\ = (\inst9|s_count\(3) & (\inst6|outBCD~7_combout\)) # (!\inst9|s_count\(3) & ((\inst6|outBCD~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datac => \inst6|outBCD~7_combout\,
	datad => \inst6|outBCD~6_combout\,
	combout => \inst6|outBCD~5_combout\);

-- Location: LCCOMB_X105_Y59_N16
\inst6|outBCD~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~50_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD~5_combout\,
	combout => \inst6|outBCD~50_combout\);

-- Location: LCCOMB_X105_Y59_N28
\inst6|outBCD[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~49_combout\ = (\inst6|LessThan0~0_combout\ & (\inst9|s_count\(3))) # (!\inst6|LessThan0~0_combout\ & ((\inst6|outBCD~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datac => \inst6|LessThan0~0_combout\,
	datad => \inst6|outBCD~50_combout\,
	combout => \inst6|outBCD[3]~49_combout\);

-- Location: LCCOMB_X103_Y59_N2
\inst6|outBCD[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~55_combout\ = ((\inst9|s_count\(3) & (!\inst9|s_count\(2) & \inst9|s_count\(5))) # (!\inst9|s_count\(3) & ((\inst9|s_count\(5)) # (!\inst9|s_count\(2))))) # (!\inst9|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD[0]~55_combout\);

-- Location: LCCOMB_X103_Y59_N16
\inst6|outBCD[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~56_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(0) & \inst6|outBCD[0]~55_combout\)) # (!\inst9|s_count\(5) & ((\inst9|s_count\(0)) # (\inst6|outBCD[0]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datac => \inst9|s_count\(0),
	datad => \inst6|outBCD[0]~55_combout\,
	combout => \inst6|outBCD[0]~56_combout\);

-- Location: LCCOMB_X103_Y59_N12
\inst6|outBCD[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~51_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[0]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD[0]~56_combout\,
	combout => \inst6|outBCD[0]~51_combout\);

-- Location: LCCOMB_X103_Y59_N22
\inst6|outBCD[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~48_combout\ = (\inst9|Equal0~0_combout\ & (((!\inst9|s_count\(3) & !\inst9|s_count\(2))) # (!\inst9|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(2),
	datad => \inst9|Equal0~0_combout\,
	combout => \inst6|outBCD[0]~48_combout\);

-- Location: LCCOMB_X103_Y59_N30
\inst6|outBCD[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~52_combout\ = (\inst6|outBCD[0]~48_combout\ & ((\inst9|s_count\(0)))) # (!\inst6|outBCD[0]~48_combout\ & (\inst6|outBCD[0]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[0]~51_combout\,
	datac => \inst9|s_count\(0),
	datad => \inst6|outBCD[0]~48_combout\,
	combout => \inst6|outBCD[0]~52_combout\);

-- Location: LCCOMB_X105_Y59_N4
\inst6|outBCD[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~43_combout\ = (\inst9|s_count\(5) & ((\inst9|s_count\(2) & (\inst9|s_count\(1) & !\inst9|s_count\(3))) # (!\inst9|s_count\(2) & (!\inst9|s_count\(1) & \inst9|s_count\(3))))) # (!\inst9|s_count\(5) & (!\inst9|s_count\(2) & 
-- ((\inst9|s_count\(3)) # (!\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[2]~43_combout\);

-- Location: LCCOMB_X105_Y59_N10
\inst6|outBCD[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~42_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(2) $ (((\inst9|s_count\(1) & !\inst9|s_count\(3)))))) # (!\inst9|s_count\(5) & (\inst9|s_count\(2) & ((\inst9|s_count\(1)) # (!\inst9|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[2]~42_combout\);

-- Location: LCCOMB_X105_Y59_N6
\inst6|outBCD[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~41_combout\ = (\inst9|s_count\(4) & (\inst6|outBCD[2]~43_combout\)) # (!\inst9|s_count\(4) & ((\inst6|outBCD[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(4),
	datac => \inst6|outBCD[2]~43_combout\,
	datad => \inst6|outBCD[2]~42_combout\,
	combout => \inst6|outBCD[2]~41_combout\);

-- Location: LCCOMB_X105_Y59_N20
\inst6|outBCD[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~54_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD[2]~41_combout\,
	combout => \inst6|outBCD[2]~54_combout\);

-- Location: LCCOMB_X106_Y59_N18
\inst14|decOut_n[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[6]~29_combout\ = (\inst6|outBCD[1]~53_combout\ & (\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[0]~52_combout\ & \inst6|outBCD[2]~54_combout\))) # (!\inst6|outBCD[1]~53_combout\ & (!\inst6|outBCD[3]~49_combout\ & 
-- (!\inst6|outBCD[0]~52_combout\ & !\inst6|outBCD[2]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n[6]~29_combout\);

-- Location: LCCOMB_X103_Y59_N24
\inst14|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~30_combout\ = (\inst6|outBCD[1]~53_combout\ & ((\inst6|outBCD[0]~48_combout\ & ((\inst9|s_count\(0)))) # (!\inst6|outBCD[0]~48_combout\ & (\inst6|outBCD[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[0]~51_combout\,
	datab => \inst6|outBCD[0]~48_combout\,
	datac => \inst9|s_count\(0),
	datad => \inst6|outBCD[1]~53_combout\,
	combout => \inst14|decOut_n~30_combout\);

-- Location: LCCOMB_X106_Y59_N4
\inst14|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[3]~31_combout\ = (\inst6|outBCD[3]~49_combout\ & (\inst14|decOut_n~30_combout\ & \inst6|outBCD[2]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst14|decOut_n~30_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X106_Y59_N28
\inst14|decOut_n[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[6]~28_combout\ = (\inst6|outBCD[3]~49_combout\ & (!\inst6|outBCD[1]~53_combout\ & (!\inst6|outBCD[0]~52_combout\ & \inst6|outBCD[2]~54_combout\))) # (!\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[0]~52_combout\ & 
-- (\inst6|outBCD[1]~53_combout\ $ (!\inst6|outBCD[2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n[6]~28_combout\);

-- Location: LCCOMB_X106_Y59_N22
\inst14|decOut_n[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[6]~32_combout\ = ((\inst14|decOut_n[6]~29_combout\ & (!\inst14|decOut_n[3]~31_combout\)) # (!\inst14|decOut_n[6]~29_combout\ & ((\inst14|decOut_n[6]~28_combout\)))) # (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|timeVal~0_combout\,
	datab => \inst14|decOut_n[6]~29_combout\,
	datac => \inst14|decOut_n[3]~31_combout\,
	datad => \inst14|decOut_n[6]~28_combout\,
	combout => \inst14|decOut_n[6]~32_combout\);

-- Location: LCCOMB_X106_Y59_N24
\inst14|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~33_combout\ = (\inst6|outBCD[1]~53_combout\ & (!\inst6|outBCD[3]~49_combout\ & ((\inst6|outBCD[0]~52_combout\) # (!\inst6|outBCD[2]~54_combout\)))) # (!\inst6|outBCD[1]~53_combout\ & (\inst6|outBCD[0]~52_combout\ & 
-- (\inst6|outBCD[3]~49_combout\ $ (!\inst6|outBCD[2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n~33_combout\);

-- Location: LCCOMB_X106_Y59_N10
\inst14|decOut_n~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~41_combout\ = (\inst1|s_currentState.TFim~q\) # ((\inst1|s_currentState.TExtra~q\) # (\inst14|decOut_n~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_currentState.TFim~q\,
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst14|decOut_n~33_combout\,
	combout => \inst14|decOut_n~41_combout\);

-- Location: LCCOMB_X103_Y58_N30
\inst14|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~17_combout\ = (((!\inst9|s_count\(3)) # (!\inst9|s_count\(2))) # (!\inst9|s_count\(4))) # (!\inst9|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(3),
	combout => \inst14|decOut_n~17_combout\);

-- Location: LCCOMB_X103_Y58_N4
\inst14|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~16_combout\ = (\inst9|s_count\(1) & (!\inst9|s_count\(3) & (\inst9|s_count\(2) & \inst9|s_count\(5)))) # (!\inst9|s_count\(1) & (\inst9|s_count\(3) & (!\inst9|s_count\(2) & !\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst14|decOut_n~16_combout\);

-- Location: LCCOMB_X103_Y58_N10
\inst14|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~15_combout\ = (\inst9|s_count\(1) & ((\inst9|s_count\(3) & (\inst9|s_count\(2) & !\inst9|s_count\(5))) # (!\inst9|s_count\(3) & (!\inst9|s_count\(2) & \inst9|s_count\(5))))) # (!\inst9|s_count\(1) & (\inst9|s_count\(2) & 
-- (\inst9|s_count\(3) $ (!\inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst14|decOut_n~15_combout\);

-- Location: LCCOMB_X103_Y58_N2
\inst14|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~14_combout\ = (\inst9|s_count\(4) & (\inst14|decOut_n~16_combout\)) # (!\inst9|s_count\(4) & ((\inst14|decOut_n~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(4),
	datac => \inst14|decOut_n~16_combout\,
	datad => \inst14|decOut_n~15_combout\,
	combout => \inst14|decOut_n~14_combout\);

-- Location: LCCOMB_X103_Y58_N28
\inst14|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~11_combout\ = (!\inst9|s_count\(6) & ((\inst9|s_count\(0) & (\inst14|decOut_n~17_combout\)) # (!\inst9|s_count\(0) & ((\inst14|decOut_n~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|decOut_n~17_combout\,
	datab => \inst14|decOut_n~14_combout\,
	datac => \inst9|s_count\(6),
	datad => \inst9|s_count\(0),
	combout => \inst14|decOut_n~11_combout\);

-- Location: LCCOMB_X106_Y58_N0
\inst14|decOut_n~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~44_combout\ = (\inst1|s_currentState.TExtra~q\) # ((\inst1|s_currentState.TFim~q\) # ((!\inst9|s_count\(7) & \inst14|decOut_n~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TExtra~q\,
	datab => \inst9|s_count\(7),
	datac => \inst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~11_combout\,
	combout => \inst14|decOut_n~44_combout\);

-- Location: LCCOMB_X106_Y59_N6
\inst14|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[3]~34_combout\ = (\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[1]~53_combout\ & (!\inst6|outBCD[0]~52_combout\ & !\inst6|outBCD[2]~54_combout\))) # (!\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[1]~53_combout\ $ 
-- (((!\inst6|outBCD[2]~54_combout\) # (!\inst6|outBCD[0]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X106_Y59_N16
\inst14|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n[3]~35_combout\ = ((\inst14|decOut_n[6]~29_combout\ & ((\inst14|decOut_n[3]~31_combout\))) # (!\inst14|decOut_n[6]~29_combout\ & (\inst14|decOut_n[3]~34_combout\))) # (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|decOut_n[3]~34_combout\,
	datab => \inst1|timeVal~0_combout\,
	datac => \inst14|decOut_n[3]~31_combout\,
	datad => \inst14|decOut_n[6]~29_combout\,
	combout => \inst14|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X106_Y59_N26
\inst14|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~36_combout\ = (\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[2]~54_combout\ & ((\inst6|outBCD[1]~53_combout\) # (!\inst6|outBCD[0]~52_combout\)))) # (!\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[1]~53_combout\ & 
-- (!\inst6|outBCD[0]~52_combout\ & !\inst6|outBCD[2]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n~36_combout\);

-- Location: LCCOMB_X105_Y59_N22
\inst14|decOut_n~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~42_combout\ = (\inst1|s_currentState.TFim~q\) # ((\inst1|s_currentState.TExtra~q\) # (\inst14|decOut_n~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TFim~q\,
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst14|decOut_n~36_combout\,
	combout => \inst14|decOut_n~42_combout\);

-- Location: LCCOMB_X105_Y59_N0
\inst14|decOut_n~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~43_combout\ = (!\inst6|outBCD[2]~54_combout\ & ((\inst6|LessThan0~0_combout\ & (\inst9|s_count\(3))) # (!\inst6|LessThan0~0_combout\ & ((\inst6|outBCD~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst6|outBCD~50_combout\,
	datac => \inst6|LessThan0~0_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n~43_combout\);

-- Location: LCCOMB_X106_Y59_N20
\inst14|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~37_combout\ = (\inst6|outBCD[2]~54_combout\ & ((\inst6|outBCD[1]~53_combout\ & ((\inst6|outBCD[3]~49_combout\) # (!\inst6|outBCD[0]~52_combout\))) # (!\inst6|outBCD[1]~53_combout\ & (\inst6|outBCD[3]~49_combout\ $ 
-- (\inst6|outBCD[0]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n~37_combout\);

-- Location: LCCOMB_X106_Y59_N14
\inst14|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~38_combout\ = ((\inst14|decOut_n~37_combout\) # ((\inst14|decOut_n~43_combout\ & \inst14|decOut_n~30_combout\))) # (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|decOut_n~43_combout\,
	datab => \inst1|timeVal~0_combout\,
	datac => \inst14|decOut_n~30_combout\,
	datad => \inst14|decOut_n~37_combout\,
	combout => \inst14|decOut_n~38_combout\);

-- Location: LCCOMB_X106_Y59_N0
\inst14|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~39_combout\ = (!\inst6|outBCD[1]~53_combout\ & ((\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[0]~52_combout\ & \inst6|outBCD[2]~54_combout\)) # (!\inst6|outBCD[3]~49_combout\ & (\inst6|outBCD[0]~52_combout\ $ 
-- (\inst6|outBCD[2]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~53_combout\,
	datab => \inst6|outBCD[3]~49_combout\,
	datac => \inst6|outBCD[0]~52_combout\,
	datad => \inst6|outBCD[2]~54_combout\,
	combout => \inst14|decOut_n~39_combout\);

-- Location: LCCOMB_X106_Y59_N2
\inst14|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~40_combout\ = ((\inst14|decOut_n~39_combout\) # ((\inst14|decOut_n~43_combout\ & \inst14|decOut_n~30_combout\))) # (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|decOut_n~43_combout\,
	datab => \inst1|timeVal~0_combout\,
	datac => \inst14|decOut_n~30_combout\,
	datad => \inst14|decOut_n~39_combout\,
	combout => \inst14|decOut_n~40_combout\);

-- Location: LCCOMB_X106_Y59_N8
\inst15|decOut_n[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~23_combout\ = (\inst1|s_currentState.TFim~q\) # ((\inst1|s_currentState.TExtra~q\) # (\inst6|outBCD[0]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_currentState.TFim~q\,
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst6|outBCD[0]~48_combout\,
	combout => \inst15|decOut_n[6]~23_combout\);

-- Location: LCCOMB_X105_Y58_N24
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst9|s_count\(6) & (((!\inst9|s_count\(3) & !\inst9|s_count\(4))) # (!\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(6),
	datad => \inst9|s_count\(4),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X106_Y58_N12
\inst6|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_combout\ = (!\inst9|s_count\(7) & \inst6|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_count\(7),
	datad => \inst6|LessThan3~0_combout\,
	combout => \inst6|LessThan3~1_combout\);

-- Location: LCCOMB_X105_Y58_N14
\inst6|outBCD2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[1]~18_combout\ = (\inst9|s_count\(3) & (\inst9|s_count\(4) & ((\inst9|s_count\(2)) # (!\inst9|s_count\(5))))) # (!\inst9|s_count\(3) & ((\inst9|s_count\(5) & ((!\inst9|s_count\(4)))) # (!\inst9|s_count\(5) & (\inst9|s_count\(2) & 
-- \inst9|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD2[1]~18_combout\);

-- Location: LCCOMB_X106_Y58_N20
\inst6|outBCD2[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[1]~23_combout\ = (\inst9|s_count\(6)) # ((\inst9|s_count\(7)) # (\inst6|outBCD2[1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD2[1]~18_combout\,
	combout => \inst6|outBCD2[1]~23_combout\);

-- Location: LCCOMB_X103_Y58_N6
\inst6|outBCD2[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~11_combout\ = (\inst9|s_count\(5) & (((\inst9|s_count\(4) & !\inst9|s_count\(2))) # (!\inst9|s_count\(3)))) # (!\inst9|s_count\(5) & (\inst9|s_count\(3) $ (((\inst9|s_count\(4) & !\inst9|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD2[0]~11_combout\);

-- Location: LCCOMB_X103_Y58_N0
\inst6|outBCD2[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~10_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(3) $ (((\inst9|s_count\(2)) # (!\inst9|s_count\(4)))))) # (!\inst9|s_count\(5) & ((\inst9|s_count\(4) & (!\inst9|s_count\(2) & !\inst9|s_count\(3))) # (!\inst9|s_count\(4) & 
-- (\inst9|s_count\(2) & \inst9|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD2[0]~10_combout\);

-- Location: LCCOMB_X103_Y58_N8
\inst6|outBCD2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~9_combout\ = (\inst9|s_count\(1) & (\inst6|outBCD2[0]~11_combout\)) # (!\inst9|s_count\(1) & ((\inst6|outBCD2[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[0]~11_combout\,
	datac => \inst9|s_count\(1),
	datad => \inst6|outBCD2[0]~10_combout\,
	combout => \inst6|outBCD2[0]~9_combout\);

-- Location: LCCOMB_X106_Y58_N26
\inst6|outBCD2[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~22_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD2[0]~9_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD2[0]~9_combout\,
	datac => \inst9|s_count\(7),
	combout => \inst6|outBCD2[0]~22_combout\);

-- Location: LCCOMB_X106_Y58_N10
\inst15|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~18_combout\ = ((\inst6|LessThan3~1_combout\ & ((\inst6|outBCD2[1]~23_combout\) # (\inst6|outBCD2[0]~22_combout\))) # (!\inst6|LessThan3~1_combout\ & (\inst6|outBCD2[1]~23_combout\ & \inst6|outBCD2[0]~22_combout\))) # 
-- (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~23_combout\,
	datac => \inst6|outBCD2[0]~22_combout\,
	datad => \inst1|timeVal~0_combout\,
	combout => \inst15|decOut_n~18_combout\);

-- Location: LCCOMB_X106_Y58_N28
\inst15|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~19_combout\ = (\inst6|outBCD2[0]~22_combout\) # (((!\inst6|LessThan3~1_combout\ & !\inst6|outBCD2[1]~23_combout\)) # (!\inst1|timeVal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~23_combout\,
	datac => \inst6|outBCD2[0]~22_combout\,
	datad => \inst1|timeVal~0_combout\,
	combout => \inst15|decOut_n~19_combout\);

-- Location: LCCOMB_X106_Y58_N22
\inst15|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~20_combout\ = ((\inst6|LessThan3~1_combout\ & (!\inst6|outBCD2[1]~23_combout\ & \inst6|outBCD2[0]~22_combout\)) # (!\inst6|LessThan3~1_combout\ & (\inst6|outBCD2[1]~23_combout\ $ (!\inst6|outBCD2[0]~22_combout\)))) # 
-- (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~23_combout\,
	datac => \inst6|outBCD2[0]~22_combout\,
	datad => \inst1|timeVal~0_combout\,
	combout => \inst15|decOut_n~20_combout\);

-- Location: LCCOMB_X103_Y59_N14
\inst15|decOut_n[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~9_combout\ = (\inst9|s_count\(2) & ((!\inst9|s_count\(3)) # (!\inst9|s_count\(1)))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst15|decOut_n[2]~9_combout\);

-- Location: LCCOMB_X103_Y59_N8
\inst15|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~5_combout\ = (!\inst9|s_count\(6) & (\inst15|decOut_n[2]~9_combout\ & (!\inst9|s_count\(7) & !\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst15|decOut_n[2]~9_combout\,
	datac => \inst9|s_count\(7),
	datad => \inst9|s_count\(5),
	combout => \inst15|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X105_Y59_N30
\inst15|decOut_n[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~24_combout\ = (\inst1|s_currentState.TFim~q\) # ((\inst1|s_currentState.TExtra~q\) # ((\inst9|s_count\(4) & \inst15|decOut_n[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TFim~q\,
	datab => \inst9|s_count\(4),
	datac => \inst1|s_currentState.TExtra~q\,
	datad => \inst15|decOut_n[2]~5_combout\,
	combout => \inst15|decOut_n[2]~24_combout\);

-- Location: LCCOMB_X105_Y59_N14
\inst6|outBCD~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD~46_combout\ = (\inst9|s_count\(5) & \inst9|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD~46_combout\);

-- Location: LCCOMB_X106_Y59_N12
\inst15|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[1]~21_combout\ = (((\inst6|outBCD~46_combout\ & !\inst9|Equal0~2_combout\)) # (!\inst1|timeVal~0_combout\)) # (!\inst9|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD~46_combout\,
	datab => \inst9|Equal0~1_combout\,
	datac => \inst1|timeVal~0_combout\,
	datad => \inst9|Equal0~2_combout\,
	combout => \inst15|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X106_Y58_N8
\inst15|decOut_n[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[0]~22_combout\ = ((!\inst6|outBCD2[1]~23_combout\ & (\inst6|LessThan3~1_combout\ $ (!\inst6|outBCD2[0]~22_combout\)))) # (!\inst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~23_combout\,
	datac => \inst6|outBCD2[0]~22_combout\,
	datad => \inst1|timeVal~0_combout\,
	combout => \inst15|decOut_n[0]~22_combout\);

-- Location: LCCOMB_X103_Y57_N8
\inst1|stOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stOut~0_combout\ = (\inst1|s_currentState.TAmmassar~q\) # ((!\inst1|s_currentState.TCozer~q\ & !\inst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datab => \inst1|s_currentState.TCozer~q\,
	datad => \inst1|s_currentState.TLevedar~q\,
	combout => \inst1|stOut~0_combout\);

-- Location: LCCOMB_X103_Y57_N22
\inst1|stOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stOut\(0) = (\inst1|s_currentState.TAmmassar~q\) # (\inst1|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_currentState.TAmmassar~q\,
	datad => \inst1|s_currentState.TCozer~q\,
	combout => \inst1|stOut\(0));

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


