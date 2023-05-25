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

-- DATE "05/25/2023 10:54:09"

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

ENTITY 	demo IS
    PORT (
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(8 DOWNTO 0)
	);
END demo;

-- Design Ports Information
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst9|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst9|s_dirtyIn~q\ : std_logic;
SIGNAL \inst9|s_previousIn~q\ : std_logic;
SIGNAL \inst9|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst9|Add0~19\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst9|Add0~21\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst9|Add0~23\ : std_logic;
SIGNAL \inst9|Add0~24_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst9|Add0~25\ : std_logic;
SIGNAL \inst9|Add0~26_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst9|Add0~27\ : std_logic;
SIGNAL \inst9|Add0~28_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst9|Add0~29\ : std_logic;
SIGNAL \inst9|Add0~30_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst9|Add0~31\ : std_logic;
SIGNAL \inst9|Add0~32_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst9|Add0~33\ : std_logic;
SIGNAL \inst9|Add0~34_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst9|Add0~35\ : std_logic;
SIGNAL \inst9|Add0~36_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \inst9|LessThan0~2_combout\ : std_logic;
SIGNAL \inst9|LessThan0~3_combout\ : std_logic;
SIGNAL \inst9|LessThan0~4_combout\ : std_logic;
SIGNAL \inst9|LessThan0~5_combout\ : std_logic;
SIGNAL \inst9|LessThan0~6_combout\ : std_logic;
SIGNAL \inst9|LessThan0~7_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst9|Add0~37\ : std_logic;
SIGNAL \inst9|Add0~38_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst9|Add0~39\ : std_logic;
SIGNAL \inst9|Add0~40_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst9|Add0~41\ : std_logic;
SIGNAL \inst9|Add0~42_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst9|Add0~43\ : std_logic;
SIGNAL \inst9|Add0~44_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst9|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst4|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst4|s_dirtyIn~q\ : std_logic;
SIGNAL \inst4|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst4|s_previousIn~q\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[16]~2_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[16]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[16]~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst5|pState~17_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[16]~3_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~7_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[16]~0_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[16]~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[16]~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \inst5|pState~13_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst5|pState~11_combout\ : std_logic;
SIGNAL \inst5|pState~18_combout\ : std_logic;
SIGNAL \inst5|pState.TimeProcess~q\ : std_logic;
SIGNAL \inst5|pState~21_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst5|pState~15_combout\ : std_logic;
SIGNAL \inst5|pState~19_combout\ : std_logic;
SIGNAL \inst5|pState~20_combout\ : std_logic;
SIGNAL \inst5|pState~22_combout\ : std_logic;
SIGNAL \inst5|pState.StartPrg~q\ : std_logic;
SIGNAL \inst5|pState~16_combout\ : std_logic;
SIGNAL \inst5|pState.Init~q\ : std_logic;
SIGNAL \inst5|pState~9_combout\ : std_logic;
SIGNAL \inst5|pState~10_combout\ : std_logic;
SIGNAL \inst5|pState.Menu~q\ : std_logic;
SIGNAL \inst5|pState~12_combout\ : std_logic;
SIGNAL \inst5|pState~14_combout\ : std_logic;
SIGNAL \inst5|pState.Timer~q\ : std_logic;
SIGNAL \inst5|WideOr0~combout\ : std_logic;
SIGNAL \inst5|WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|pState~23_combout\ : std_logic;
SIGNAL \inst5|pState~24_combout\ : std_logic;
SIGNAL \inst5|pState.Stop~q\ : std_logic;
SIGNAL \inst5|WideOr2~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst5|en_3~combout\ : std_logic;
SIGNAL \inst5|pState~25_combout\ : std_logic;
SIGNAL \inst5|pState~26_combout\ : std_logic;
SIGNAL \inst5|pState.Extra~q\ : std_logic;
SIGNAL \inst5|en_1~combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst4|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst9|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \inst5|ALT_INV_pState.Init~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst5|ALT_INV_WideOr2~0_combout\ <= NOT \inst5|WideOr2~0_combout\;
\inst5|ALT_INV_WideOr1~0_combout\ <= NOT \inst5|WideOr1~0_combout\;
\inst5|ALT_INV_WideOr0~combout\ <= NOT \inst5|WideOr0~combout\;
\inst5|ALT_INV_pState.Init~q\ <= NOT \inst5|pState.Init~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_WideOr0~combout\,
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
	i => \inst5|ALT_INV_WideOr1~0_combout\,
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
	i => \inst5|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_pState.Init~q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|pState.TimeProcess~q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|pState.StartPrg~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|en_3~combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|pState.Extra~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|en_1~combout\,
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

-- Location: LCCOMB_X108_Y65_N10
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|s_debounceCnt\(0) $ (VCC)
-- \inst9|Add0~1\ = CARRY(\inst9|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

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

-- Location: LCCOMB_X112_Y64_N20
\inst9|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \inst9|s_dirtyIn~0_combout\);

-- Location: FF_X112_Y64_N21
\inst9|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_dirtyIn~q\);

-- Location: FF_X107_Y64_N1
\inst9|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst9|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_previousIn~q\);

-- Location: LCCOMB_X109_Y64_N24
\inst9|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~5_combout\ = (!\inst9|s_debounceCnt\(2) & (!\inst9|s_debounceCnt\(1) & (!\inst9|s_debounceCnt\(3) & !\inst9|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(2),
	datab => \inst9|s_debounceCnt\(1),
	datac => \inst9|s_debounceCnt\(3),
	datad => \inst9|s_debounceCnt\(4),
	combout => \inst9|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y65_N20
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|s_debounceCnt\(5) & (\inst9|Add0~9\ & VCC)) # (!\inst9|s_debounceCnt\(5) & (!\inst9|Add0~9\))
-- \inst9|Add0~11\ = CARRY((!\inst9|s_debounceCnt\(5) & !\inst9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X108_Y65_N22
\inst9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|s_debounceCnt\(6) & ((GND) # (!\inst9|Add0~11\))) # (!\inst9|s_debounceCnt\(6) & (\inst9|Add0~11\ $ (GND)))
-- \inst9|Add0~13\ = CARRY((\inst9|s_debounceCnt\(6)) # (!\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X107_Y64_N20
\inst9|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~1_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~12_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[0]~0_combout\,
	datad => \inst9|Add0~12_combout\,
	combout => \inst9|s_debounceCnt~1_combout\);

-- Location: FF_X107_Y64_N21
\inst9|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~1_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y65_N24
\inst9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst9|s_debounceCnt\(7) & (\inst9|Add0~13\ & VCC)) # (!\inst9|s_debounceCnt\(7) & (!\inst9|Add0~13\))
-- \inst9|Add0~15\ = CARRY((!\inst9|s_debounceCnt\(7) & !\inst9|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X107_Y64_N22
\inst9|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~12_combout\ = (\inst9|Add0~14_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~14_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~12_combout\);

-- Location: FF_X107_Y64_N23
\inst9|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~12_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y65_N26
\inst9|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = (\inst9|s_debounceCnt\(8) & ((GND) # (!\inst9|Add0~15\))) # (!\inst9|s_debounceCnt\(8) & (\inst9|Add0~15\ $ (GND)))
-- \inst9|Add0~17\ = CARRY((\inst9|s_debounceCnt\(8)) # (!\inst9|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCCOMB_X107_Y64_N16
\inst9|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~13_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~16_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[0]~0_combout\,
	datad => \inst9|Add0~16_combout\,
	combout => \inst9|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y64_N17
\inst9|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~13_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(8));

-- Location: LCCOMB_X108_Y65_N28
\inst9|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst9|s_debounceCnt\(9) & (\inst9|Add0~17\ & VCC)) # (!\inst9|s_debounceCnt\(9) & (!\inst9|Add0~17\))
-- \inst9|Add0~19\ = CARRY((!\inst9|s_debounceCnt\(9) & !\inst9|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~18_combout\,
	cout => \inst9|Add0~19\);

-- Location: LCCOMB_X107_Y64_N14
\inst9|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~14_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~18_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|Add0~18_combout\,
	datad => \inst9|s_debounceCnt[0]~0_combout\,
	combout => \inst9|s_debounceCnt~14_combout\);

-- Location: FF_X107_Y64_N15
\inst9|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~14_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y65_N30
\inst9|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = (\inst9|s_debounceCnt\(10) & ((GND) # (!\inst9|Add0~19\))) # (!\inst9|s_debounceCnt\(10) & (\inst9|Add0~19\ $ (GND)))
-- \inst9|Add0~21\ = CARRY((\inst9|s_debounceCnt\(10)) # (!\inst9|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst9|Add0~19\,
	combout => \inst9|Add0~20_combout\,
	cout => \inst9|Add0~21\);

-- Location: LCCOMB_X107_Y64_N28
\inst9|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~15_combout\ = (\inst9|Add0~20_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~20_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~15_combout\);

-- Location: FF_X107_Y64_N29
\inst9|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~15_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(10));

-- Location: LCCOMB_X108_Y64_N0
\inst9|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = (\inst9|s_debounceCnt\(11) & (\inst9|Add0~21\ & VCC)) # (!\inst9|s_debounceCnt\(11) & (!\inst9|Add0~21\))
-- \inst9|Add0~23\ = CARRY((!\inst9|s_debounceCnt\(11) & !\inst9|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst9|Add0~21\,
	combout => \inst9|Add0~22_combout\,
	cout => \inst9|Add0~23\);

-- Location: LCCOMB_X107_Y64_N8
\inst9|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~16_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~22_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|Add0~22_combout\,
	datad => \inst9|s_debounceCnt[0]~0_combout\,
	combout => \inst9|s_debounceCnt~16_combout\);

-- Location: FF_X107_Y64_N9
\inst9|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~16_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y64_N2
\inst9|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~24_combout\ = (\inst9|s_debounceCnt\(12) & ((GND) # (!\inst9|Add0~23\))) # (!\inst9|s_debounceCnt\(12) & (\inst9|Add0~23\ $ (GND)))
-- \inst9|Add0~25\ = CARRY((\inst9|s_debounceCnt\(12)) # (!\inst9|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst9|Add0~23\,
	combout => \inst9|Add0~24_combout\,
	cout => \inst9|Add0~25\);

-- Location: LCCOMB_X109_Y64_N30
\inst9|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~8_combout\ = (\inst9|s_debounceCnt[0]~4_combout\ & \inst9|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[0]~4_combout\,
	datad => \inst9|Add0~24_combout\,
	combout => \inst9|s_debounceCnt~8_combout\);

-- Location: FF_X109_Y64_N31
\inst9|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~8_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y64_N4
\inst9|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~26_combout\ = (\inst9|s_debounceCnt\(13) & (\inst9|Add0~25\ & VCC)) # (!\inst9|s_debounceCnt\(13) & (!\inst9|Add0~25\))
-- \inst9|Add0~27\ = CARRY((!\inst9|s_debounceCnt\(13) & !\inst9|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst9|Add0~25\,
	combout => \inst9|Add0~26_combout\,
	cout => \inst9|Add0~27\);

-- Location: LCCOMB_X109_Y64_N4
\inst9|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~9_combout\ = (\inst9|Add0~26_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~26_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~9_combout\);

-- Location: FF_X109_Y64_N5
\inst9|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~9_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(13));

-- Location: LCCOMB_X108_Y64_N6
\inst9|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~28_combout\ = (\inst9|s_debounceCnt\(14) & ((GND) # (!\inst9|Add0~27\))) # (!\inst9|s_debounceCnt\(14) & (\inst9|Add0~27\ $ (GND)))
-- \inst9|Add0~29\ = CARRY((\inst9|s_debounceCnt\(14)) # (!\inst9|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst9|Add0~27\,
	combout => \inst9|Add0~28_combout\,
	cout => \inst9|Add0~29\);

-- Location: LCCOMB_X107_Y64_N6
\inst9|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~17_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~28_combout\) # (!\inst9|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[0]~0_combout\,
	datad => \inst9|Add0~28_combout\,
	combout => \inst9|s_debounceCnt~17_combout\);

-- Location: FF_X107_Y64_N7
\inst9|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~17_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y64_N8
\inst9|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~30_combout\ = (\inst9|s_debounceCnt\(15) & (\inst9|Add0~29\ & VCC)) # (!\inst9|s_debounceCnt\(15) & (!\inst9|Add0~29\))
-- \inst9|Add0~31\ = CARRY((!\inst9|s_debounceCnt\(15) & !\inst9|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst9|Add0~29\,
	combout => \inst9|Add0~30_combout\,
	cout => \inst9|Add0~31\);

-- Location: LCCOMB_X108_Y64_N28
\inst9|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~5_combout\ = (\inst9|Add0~30_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~30_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~5_combout\);

-- Location: FF_X108_Y64_N29
\inst9|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~5_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y64_N10
\inst9|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~32_combout\ = (\inst9|s_debounceCnt\(16) & ((GND) # (!\inst9|Add0~31\))) # (!\inst9|s_debounceCnt\(16) & (\inst9|Add0~31\ $ (GND)))
-- \inst9|Add0~33\ = CARRY((\inst9|s_debounceCnt\(16)) # (!\inst9|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst9|Add0~31\,
	combout => \inst9|Add0~32_combout\,
	cout => \inst9|Add0~33\);

-- Location: LCCOMB_X107_Y64_N30
\inst9|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~6_combout\ = (\inst9|Add0~32_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~32_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y64_N31
\inst9|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~6_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(16));

-- Location: LCCOMB_X108_Y64_N12
\inst9|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~34_combout\ = (\inst9|s_debounceCnt\(17) & (\inst9|Add0~33\ & VCC)) # (!\inst9|s_debounceCnt\(17) & (!\inst9|Add0~33\))
-- \inst9|Add0~35\ = CARRY((!\inst9|s_debounceCnt\(17) & !\inst9|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst9|Add0~33\,
	combout => \inst9|Add0~34_combout\,
	cout => \inst9|Add0~35\);

-- Location: LCCOMB_X109_Y64_N20
\inst9|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~7_combout\ = (\inst9|s_debounceCnt[0]~4_combout\ & \inst9|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[0]~4_combout\,
	datad => \inst9|Add0~34_combout\,
	combout => \inst9|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y64_N21
\inst9|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~7_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(17));

-- Location: LCCOMB_X108_Y64_N14
\inst9|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~36_combout\ = (\inst9|s_debounceCnt\(18) & ((GND) # (!\inst9|Add0~35\))) # (!\inst9|s_debounceCnt\(18) & (\inst9|Add0~35\ $ (GND)))
-- \inst9|Add0~37\ = CARRY((\inst9|s_debounceCnt\(18)) # (!\inst9|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst9|Add0~35\,
	combout => \inst9|Add0~36_combout\,
	cout => \inst9|Add0~37\);

-- Location: LCCOMB_X109_Y64_N26
\inst9|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[18]~18_combout\ = (\inst9|s_debounceCnt[0]~0_combout\ & (\inst9|s_debounceCnt[0]~3_combout\ & ((\inst9|Add0~36_combout\) # (!\inst9|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt[0]~0_combout\,
	datab => \inst9|s_previousIn~q\,
	datac => \inst9|s_debounceCnt[0]~3_combout\,
	datad => \inst9|Add0~36_combout\,
	combout => \inst9|s_debounceCnt[18]~18_combout\);

-- Location: FF_X109_Y64_N27
\inst9|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y64_N0
\inst9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = (\inst9|s_debounceCnt\(18) & (\inst9|s_debounceCnt\(19) & (\inst9|s_debounceCnt\(8) & \inst9|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(18),
	datab => \inst9|s_debounceCnt\(19),
	datac => \inst9|s_debounceCnt\(8),
	datad => \inst9|s_debounceCnt\(14),
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y64_N8
\inst9|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~1_combout\ = (\inst9|s_debounceCnt\(9) & \inst9|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_debounceCnt\(9),
	datad => \inst9|s_debounceCnt\(11),
	combout => \inst9|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y64_N10
\inst9|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~2_combout\ = (\inst9|s_debounceCnt\(6) & ((\inst9|s_debounceCnt\(0)) # ((\inst9|s_debounceCnt\(5)) # (!\inst9|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(0),
	datab => \inst9|s_debounceCnt\(6),
	datac => \inst9|s_debounceCnt\(5),
	datad => \inst9|s_pulsedOut~5_combout\,
	combout => \inst9|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y64_N8
\inst9|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~3_combout\ = (\inst9|LessThan0~0_combout\ & (\inst9|LessThan0~1_combout\ & ((\inst9|s_debounceCnt\(7)) # (\inst9|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(7),
	datab => \inst9|LessThan0~0_combout\,
	datac => \inst9|LessThan0~1_combout\,
	datad => \inst9|LessThan0~2_combout\,
	combout => \inst9|LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y64_N2
\inst9|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~4_combout\ = (\inst9|s_debounceCnt\(12)) # ((\inst9|s_debounceCnt\(13)) # ((\inst9|s_debounceCnt\(11) & \inst9|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(12),
	datab => \inst9|s_debounceCnt\(13),
	datac => \inst9|s_debounceCnt\(11),
	datad => \inst9|s_debounceCnt\(10),
	combout => \inst9|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y64_N28
\inst9|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~5_combout\ = (\inst9|s_debounceCnt\(16)) # ((\inst9|s_debounceCnt\(15)) # ((\inst9|s_debounceCnt\(14) & \inst9|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(14),
	datab => \inst9|s_debounceCnt\(16),
	datac => \inst9|s_debounceCnt\(15),
	datad => \inst9|LessThan0~4_combout\,
	combout => \inst9|LessThan0~5_combout\);

-- Location: LCCOMB_X109_Y64_N18
\inst9|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~6_combout\ = (\inst9|s_debounceCnt\(18) & (\inst9|s_debounceCnt\(19) & ((\inst9|s_debounceCnt\(17)) # (\inst9|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(18),
	datab => \inst9|s_debounceCnt\(19),
	datac => \inst9|s_debounceCnt\(17),
	datad => \inst9|LessThan0~5_combout\,
	combout => \inst9|LessThan0~6_combout\);

-- Location: LCCOMB_X109_Y64_N16
\inst9|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~7_combout\ = (\inst9|s_debounceCnt\(20)) # ((\inst9|s_debounceCnt\(21)) # ((\inst9|LessThan0~3_combout\) # (\inst9|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(20),
	datab => \inst9|s_debounceCnt\(21),
	datac => \inst9|LessThan0~3_combout\,
	datad => \inst9|LessThan0~6_combout\,
	combout => \inst9|LessThan0~7_combout\);

-- Location: LCCOMB_X109_Y64_N22
\inst9|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[0]~0_combout\ = (\inst9|s_dirtyIn~q\ & ((!\inst9|LessThan0~7_combout\) # (!\inst9|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_dirtyIn~q\,
	datac => \inst9|s_debounceCnt\(22),
	datad => \inst9|LessThan0~7_combout\,
	combout => \inst9|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X108_Y64_N16
\inst9|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~38_combout\ = (\inst9|s_debounceCnt\(19) & (\inst9|Add0~37\ & VCC)) # (!\inst9|s_debounceCnt\(19) & (!\inst9|Add0~37\))
-- \inst9|Add0~39\ = CARRY((!\inst9|s_debounceCnt\(19) & !\inst9|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst9|Add0~37\,
	combout => \inst9|Add0~38_combout\,
	cout => \inst9|Add0~39\);

-- Location: LCCOMB_X107_Y64_N24
\inst9|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[19]~19_combout\ = (\inst9|s_debounceCnt[0]~3_combout\ & (\inst9|s_debounceCnt[0]~0_combout\ & ((\inst9|Add0~38_combout\) # (!\inst9|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|s_debounceCnt[0]~3_combout\,
	datac => \inst9|s_debounceCnt[0]~0_combout\,
	datad => \inst9|Add0~38_combout\,
	combout => \inst9|s_debounceCnt[19]~19_combout\);

-- Location: FF_X107_Y64_N25
\inst9|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(19));

-- Location: LCCOMB_X108_Y64_N18
\inst9|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~40_combout\ = (\inst9|s_debounceCnt\(20) & ((GND) # (!\inst9|Add0~39\))) # (!\inst9|s_debounceCnt\(20) & (\inst9|Add0~39\ $ (GND)))
-- \inst9|Add0~41\ = CARRY((\inst9|s_debounceCnt\(20)) # (!\inst9|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst9|Add0~39\,
	combout => \inst9|Add0~40_combout\,
	cout => \inst9|Add0~41\);

-- Location: LCCOMB_X108_Y64_N26
\inst9|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[20]~10_combout\ = (\inst9|s_debounceCnt[0]~3_combout\ & (\inst9|s_debounceCnt[0]~4_combout\ & \inst9|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt[0]~3_combout\,
	datac => \inst9|s_debounceCnt[0]~4_combout\,
	datad => \inst9|Add0~40_combout\,
	combout => \inst9|s_debounceCnt[20]~10_combout\);

-- Location: FF_X108_Y64_N27
\inst9|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(20));

-- Location: LCCOMB_X108_Y64_N30
\inst9|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~1_combout\ = (!\inst9|s_debounceCnt\(20) & (!\inst9|s_debounceCnt\(21) & (!\inst9|s_debounceCnt\(12) & !\inst9|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(20),
	datab => \inst9|s_debounceCnt\(21),
	datac => \inst9|s_debounceCnt\(12),
	datad => \inst9|s_debounceCnt\(13),
	combout => \inst9|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y64_N2
\inst9|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~2_combout\ = (!\inst9|s_debounceCnt\(7) & (!\inst9|s_debounceCnt\(10) & (!\inst9|s_debounceCnt\(9) & !\inst9|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(7),
	datab => \inst9|s_debounceCnt\(10),
	datac => \inst9|s_debounceCnt\(9),
	datad => \inst9|s_debounceCnt\(8),
	combout => \inst9|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X107_Y64_N4
\inst9|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~0_combout\ = (!\inst9|s_debounceCnt\(16) & (!\inst9|s_debounceCnt\(6) & (!\inst9|s_debounceCnt\(17) & !\inst9|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(16),
	datab => \inst9|s_debounceCnt\(6),
	datac => \inst9|s_debounceCnt\(17),
	datad => \inst9|s_debounceCnt\(15),
	combout => \inst9|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X107_Y64_N10
\inst9|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~3_combout\ = (!\inst9|s_debounceCnt\(14) & (!\inst9|s_debounceCnt\(11) & (!\inst9|s_debounceCnt\(18) & !\inst9|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(14),
	datab => \inst9|s_debounceCnt\(11),
	datac => \inst9|s_debounceCnt\(18),
	datad => \inst9|s_debounceCnt\(19),
	combout => \inst9|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X107_Y64_N12
\inst9|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~4_combout\ = (\inst9|s_pulsedOut~1_combout\ & (\inst9|s_pulsedOut~2_combout\ & (\inst9|s_pulsedOut~0_combout\ & \inst9|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_pulsedOut~1_combout\,
	datab => \inst9|s_pulsedOut~2_combout\,
	datac => \inst9|s_pulsedOut~0_combout\,
	datad => \inst9|s_pulsedOut~3_combout\,
	combout => \inst9|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y64_N18
\inst9|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[0]~2_combout\ = (\inst9|s_debounceCnt\(5)) # ((\inst9|s_debounceCnt\(0)) # ((!\inst9|s_pulsedOut~4_combout\) # (!\inst9|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(5),
	datab => \inst9|s_debounceCnt\(0),
	datac => \inst9|s_pulsedOut~5_combout\,
	datad => \inst9|s_pulsedOut~4_combout\,
	combout => \inst9|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X107_Y64_N0
\inst9|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[0]~3_combout\ = ((\inst9|s_debounceCnt\(22)) # ((\inst9|s_debounceCnt[0]~2_combout\) # (!\inst9|s_previousIn~q\))) # (!\inst9|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_dirtyIn~q\,
	datab => \inst9|s_debounceCnt\(22),
	datac => \inst9|s_previousIn~q\,
	datad => \inst9|s_debounceCnt[0]~2_combout\,
	combout => \inst9|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X108_Y64_N20
\inst9|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~42_combout\ = (\inst9|s_debounceCnt\(21) & (\inst9|Add0~41\ & VCC)) # (!\inst9|s_debounceCnt\(21) & (!\inst9|Add0~41\))
-- \inst9|Add0~43\ = CARRY((!\inst9|s_debounceCnt\(21) & !\inst9|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst9|Add0~41\,
	combout => \inst9|Add0~42_combout\,
	cout => \inst9|Add0~43\);

-- Location: LCCOMB_X108_Y64_N24
\inst9|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[21]~11_combout\ = (\inst9|s_debounceCnt[0]~3_combout\ & (\inst9|s_debounceCnt[0]~4_combout\ & \inst9|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt[0]~3_combout\,
	datac => \inst9|s_debounceCnt[0]~4_combout\,
	datad => \inst9|Add0~42_combout\,
	combout => \inst9|s_debounceCnt[21]~11_combout\);

-- Location: FF_X108_Y64_N25
\inst9|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(21));

-- Location: LCCOMB_X108_Y64_N22
\inst9|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~44_combout\ = \inst9|Add0~43\ $ (\inst9|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|s_debounceCnt\(22),
	cin => \inst9|Add0~43\,
	combout => \inst9|Add0~44_combout\);

-- Location: LCCOMB_X109_Y64_N6
\inst9|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~25_combout\ = (\inst9|s_dirtyIn~q\ & ((\inst9|s_debounceCnt\(22) & (!\inst9|LessThan0~7_combout\)) # (!\inst9|s_debounceCnt\(22) & ((\inst9|s_debounceCnt[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_dirtyIn~q\,
	datab => \inst9|LessThan0~7_combout\,
	datac => \inst9|s_debounceCnt\(22),
	datad => \inst9|s_debounceCnt[0]~2_combout\,
	combout => \inst9|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X109_Y64_N14
\inst9|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[22]~26_combout\ = (\inst9|s_previousIn~q\ & (\inst9|Add0~44_combout\ & ((\inst9|s_debounceCnt[22]~25_combout\)))) # (!\inst9|s_previousIn~q\ & (((\inst9|s_debounceCnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|Add0~44_combout\,
	datac => \inst9|s_debounceCnt[0]~0_combout\,
	datad => \inst9|s_debounceCnt[22]~25_combout\,
	combout => \inst9|s_debounceCnt[22]~26_combout\);

-- Location: FF_X109_Y64_N15
\inst9|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(22));

-- Location: LCCOMB_X109_Y64_N12
\inst9|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt[0]~4_combout\ = (\inst9|s_previousIn~q\ & (\inst9|s_dirtyIn~q\ & ((!\inst9|LessThan0~7_combout\) # (!\inst9|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|s_dirtyIn~q\,
	datac => \inst9|s_debounceCnt\(22),
	datad => \inst9|LessThan0~7_combout\,
	combout => \inst9|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X108_Y65_N2
\inst9|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~24_combout\ = (\inst9|Add0~0_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~0_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~24_combout\);

-- Location: FF_X108_Y65_N3
\inst9|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~24_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y65_N12
\inst9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|s_debounceCnt\(1) & (\inst9|Add0~1\ & VCC)) # (!\inst9|s_debounceCnt\(1) & (!\inst9|Add0~1\))
-- \inst9|Add0~3\ = CARRY((!\inst9|s_debounceCnt\(1) & !\inst9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCCOMB_X108_Y65_N4
\inst9|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~20_combout\ = (\inst9|Add0~2_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~2_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y65_N5
\inst9|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~20_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y65_N14
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|s_debounceCnt\(2) & ((GND) # (!\inst9|Add0~3\))) # (!\inst9|s_debounceCnt\(2) & (\inst9|Add0~3\ $ (GND)))
-- \inst9|Add0~5\ = CARRY((\inst9|s_debounceCnt\(2)) # (!\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X108_Y65_N6
\inst9|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~21_combout\ = (\inst9|Add0~4_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~4_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y65_N7
\inst9|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~21_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y65_N16
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|s_debounceCnt\(3) & (\inst9|Add0~5\ & VCC)) # (!\inst9|s_debounceCnt\(3) & (!\inst9|Add0~5\))
-- \inst9|Add0~7\ = CARRY((!\inst9|s_debounceCnt\(3) & !\inst9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X108_Y65_N8
\inst9|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~22_combout\ = (\inst9|Add0~6_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~6_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y65_N9
\inst9|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~22_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y65_N18
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|s_debounceCnt\(4) & ((GND) # (!\inst9|Add0~7\))) # (!\inst9|s_debounceCnt\(4) & (\inst9|Add0~7\ $ (GND)))
-- \inst9|Add0~9\ = CARRY((\inst9|s_debounceCnt\(4)) # (!\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X107_Y64_N26
\inst9|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~23_combout\ = (\inst9|Add0~8_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~8_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~23_combout\);

-- Location: FF_X107_Y64_N27
\inst9|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~23_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y65_N0
\inst9|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_debounceCnt~27_combout\ = (\inst9|Add0~10_combout\ & \inst9|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~10_combout\,
	datad => \inst9|s_debounceCnt[0]~4_combout\,
	combout => \inst9|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y65_N1
\inst9|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_debounceCnt~27_combout\,
	ena => \inst9|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_debounceCnt\(5));

-- Location: LCCOMB_X106_Y64_N18
\inst9|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~6_combout\ = (\inst9|s_previousIn~q\ & (!\inst9|s_debounceCnt\(22) & (\inst9|s_debounceCnt\(0) & \inst9|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_previousIn~q\,
	datab => \inst9|s_debounceCnt\(22),
	datac => \inst9|s_debounceCnt\(0),
	datad => \inst9|s_dirtyIn~q\,
	combout => \inst9|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X106_Y64_N0
\inst9|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_pulsedOut~7_combout\ = (!\inst9|s_debounceCnt\(5) & (\inst9|s_pulsedOut~4_combout\ & (\inst9|s_pulsedOut~5_combout\ & \inst9|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_debounceCnt\(5),
	datab => \inst9|s_pulsedOut~4_combout\,
	datac => \inst9|s_pulsedOut~5_combout\,
	datad => \inst9|s_pulsedOut~6_combout\,
	combout => \inst9|s_pulsedOut~7_combout\);

-- Location: FF_X106_Y64_N1
\inst9|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_pulsedOut~q\);

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

-- Location: LCCOMB_X111_Y57_N26
\inst4|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \inst4|s_dirtyIn~0_combout\);

-- Location: FF_X111_Y57_N27
\inst4|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_dirtyIn~q\);

-- Location: LCCOMB_X111_Y57_N16
\inst4|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_previousIn~feeder_combout\ = \inst4|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_dirtyIn~q\,
	combout => \inst4|s_previousIn~feeder_combout\);

-- Location: FF_X111_Y57_N17
\inst4|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_previousIn~q\);

-- Location: LCCOMB_X110_Y58_N10
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|s_debounceCnt\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X110_Y58_N12
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|s_debounceCnt\(1) & (\inst4|Add0~1\ & VCC)) # (!\inst4|s_debounceCnt\(1) & (!\inst4|Add0~1\))
-- \inst4|Add0~3\ = CARRY((!\inst4|s_debounceCnt\(1) & !\inst4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X110_Y58_N4
\inst4|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~19_combout\ = (\inst4|Add0~2_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~2_combout\,
	datab => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~19_combout\);

-- Location: LCCOMB_X109_Y57_N18
\inst4|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~5_combout\ = (!\inst4|s_debounceCnt\(2) & (!\inst4|s_debounceCnt\(3) & (!\inst4|s_debounceCnt\(1) & !\inst4|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(2),
	datab => \inst4|s_debounceCnt\(3),
	datac => \inst4|s_debounceCnt\(1),
	datad => \inst4|s_debounceCnt\(4),
	combout => \inst4|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X110_Y57_N0
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|s_debounceCnt\(11) & (\inst4|Add0~21\ & VCC)) # (!\inst4|s_debounceCnt\(11) & (!\inst4|Add0~21\))
-- \inst4|Add0~23\ = CARRY((!\inst4|s_debounceCnt\(11) & !\inst4|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X110_Y57_N2
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|s_debounceCnt\(12) & ((GND) # (!\inst4|Add0~23\))) # (!\inst4|s_debounceCnt\(12) & (\inst4|Add0~23\ $ (GND)))
-- \inst4|Add0~25\ = CARRY((\inst4|s_debounceCnt\(12)) # (!\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X110_Y57_N28
\inst4|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~7_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~24_combout\,
	combout => \inst4|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y57_N29
\inst4|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~7_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(12));

-- Location: LCCOMB_X110_Y57_N4
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|s_debounceCnt\(13) & (\inst4|Add0~25\ & VCC)) # (!\inst4|s_debounceCnt\(13) & (!\inst4|Add0~25\))
-- \inst4|Add0~27\ = CARRY((!\inst4|s_debounceCnt\(13) & !\inst4|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X110_Y57_N26
\inst4|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~8_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~26_combout\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|Add0~26_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~8_combout\);

-- Location: FF_X110_Y57_N27
\inst4|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~8_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(13));

-- Location: LCCOMB_X110_Y57_N6
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|s_debounceCnt\(14) & ((GND) # (!\inst4|Add0~27\))) # (!\inst4|s_debounceCnt\(14) & (\inst4|Add0~27\ $ (GND)))
-- \inst4|Add0~29\ = CARRY((\inst4|s_debounceCnt\(14)) # (!\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCCOMB_X112_Y57_N2
\inst4|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~16_combout\ = (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~28_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~28_combout\,
	combout => \inst4|s_debounceCnt~16_combout\);

-- Location: FF_X112_Y57_N3
\inst4|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~16_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(14));

-- Location: LCCOMB_X110_Y57_N8
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|s_debounceCnt\(15) & (\inst4|Add0~29\ & VCC)) # (!\inst4|s_debounceCnt\(15) & (!\inst4|Add0~29\))
-- \inst4|Add0~31\ = CARRY((!\inst4|s_debounceCnt\(15) & !\inst4|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCCOMB_X109_Y57_N6
\inst4|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~4_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~30_combout\,
	combout => \inst4|s_debounceCnt~4_combout\);

-- Location: FF_X109_Y57_N7
\inst4|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~4_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(15));

-- Location: LCCOMB_X110_Y57_N10
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|s_debounceCnt\(16) & ((GND) # (!\inst4|Add0~31\))) # (!\inst4|s_debounceCnt\(16) & (\inst4|Add0~31\ $ (GND)))
-- \inst4|Add0~33\ = CARRY((\inst4|s_debounceCnt\(16)) # (!\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X109_Y57_N16
\inst4|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~5_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~32_combout\,
	combout => \inst4|s_debounceCnt~5_combout\);

-- Location: FF_X109_Y57_N17
\inst4|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~5_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(16));

-- Location: LCCOMB_X110_Y57_N12
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|s_debounceCnt\(17) & (\inst4|Add0~33\ & VCC)) # (!\inst4|s_debounceCnt\(17) & (!\inst4|Add0~33\))
-- \inst4|Add0~35\ = CARRY((!\inst4|s_debounceCnt\(17) & !\inst4|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X109_Y57_N30
\inst4|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~6_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~34_combout\,
	combout => \inst4|s_debounceCnt~6_combout\);

-- Location: FF_X109_Y57_N31
\inst4|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~6_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(17));

-- Location: LCCOMB_X110_Y57_N14
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|s_debounceCnt\(18) & ((GND) # (!\inst4|Add0~35\))) # (!\inst4|s_debounceCnt\(18) & (\inst4|Add0~35\ $ (GND)))
-- \inst4|Add0~37\ = CARRY((\inst4|s_debounceCnt\(18)) # (!\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X112_Y57_N28
\inst4|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[18]~17_combout\ = (\inst4|s_debounceCnt[16]~3_combout\ & (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~36_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[16]~3_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~36_combout\,
	combout => \inst4|s_debounceCnt[18]~17_combout\);

-- Location: FF_X112_Y57_N29
\inst4|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(18));

-- Location: LCCOMB_X110_Y57_N16
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|s_debounceCnt\(19) & (\inst4|Add0~37\ & VCC)) # (!\inst4|s_debounceCnt\(19) & (!\inst4|Add0~37\))
-- \inst4|Add0~39\ = CARRY((!\inst4|s_debounceCnt\(19) & !\inst4|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCCOMB_X112_Y57_N22
\inst4|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[19]~18_combout\ = (\inst4|s_debounceCnt[16]~3_combout\ & (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~38_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[16]~3_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~38_combout\,
	combout => \inst4|s_debounceCnt[19]~18_combout\);

-- Location: FF_X112_Y57_N23
\inst4|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y57_N18
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|s_debounceCnt\(20) & ((GND) # (!\inst4|Add0~39\))) # (!\inst4|s_debounceCnt\(20) & (\inst4|Add0~39\ $ (GND)))
-- \inst4|Add0~41\ = CARRY((\inst4|s_debounceCnt\(20)) # (!\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X110_Y57_N24
\inst4|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[20]~9_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~3_combout\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[16]~3_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~40_combout\,
	combout => \inst4|s_debounceCnt[20]~9_combout\);

-- Location: FF_X110_Y57_N25
\inst4|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(20));

-- Location: LCCOMB_X110_Y57_N20
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|s_debounceCnt\(21) & (\inst4|Add0~41\ & VCC)) # (!\inst4|s_debounceCnt\(21) & (!\inst4|Add0~41\))
-- \inst4|Add0~43\ = CARRY((!\inst4|s_debounceCnt\(21) & !\inst4|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X110_Y57_N30
\inst4|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[21]~10_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~3_combout\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[16]~3_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~42_combout\,
	combout => \inst4|s_debounceCnt[21]~10_combout\);

-- Location: FF_X110_Y57_N31
\inst4|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y57_N26
\inst4|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~1_combout\ = (!\inst4|s_debounceCnt\(12) & (!\inst4|s_debounceCnt\(20) & (!\inst4|s_debounceCnt\(21) & !\inst4|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(12),
	datab => \inst4|s_debounceCnt\(20),
	datac => \inst4|s_debounceCnt\(21),
	datad => \inst4|s_debounceCnt\(13),
	combout => \inst4|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X109_Y57_N28
\inst4|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~0_combout\ = (!\inst4|s_debounceCnt\(15) & (!\inst4|s_debounceCnt\(6) & (!\inst4|s_debounceCnt\(17) & !\inst4|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(15),
	datab => \inst4|s_debounceCnt\(6),
	datac => \inst4|s_debounceCnt\(17),
	datad => \inst4|s_debounceCnt\(16),
	combout => \inst4|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X109_Y57_N8
\inst4|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~2_combout\ = (!\inst4|s_debounceCnt\(7) & (!\inst4|s_debounceCnt\(8) & (!\inst4|s_debounceCnt\(10) & !\inst4|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(7),
	datab => \inst4|s_debounceCnt\(8),
	datac => \inst4|s_debounceCnt\(10),
	datad => \inst4|s_debounceCnt\(9),
	combout => \inst4|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X112_Y57_N24
\inst4|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~3_combout\ = (!\inst4|s_debounceCnt\(19) & (!\inst4|s_debounceCnt\(18) & (!\inst4|s_debounceCnt\(11) & !\inst4|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(19),
	datab => \inst4|s_debounceCnt\(18),
	datac => \inst4|s_debounceCnt\(11),
	datad => \inst4|s_debounceCnt\(14),
	combout => \inst4|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y57_N10
\inst4|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~4_combout\ = (\inst4|s_pulsedOut~1_combout\ & (\inst4|s_pulsedOut~0_combout\ & (\inst4|s_pulsedOut~2_combout\ & \inst4|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~1_combout\,
	datab => \inst4|s_pulsedOut~0_combout\,
	datac => \inst4|s_pulsedOut~2_combout\,
	datad => \inst4|s_pulsedOut~3_combout\,
	combout => \inst4|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X109_Y57_N20
\inst4|s_debounceCnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[16]~2_combout\ = (\inst4|s_debounceCnt\(5)) # (((\inst4|s_debounceCnt\(0)) # (!\inst4|s_pulsedOut~4_combout\)) # (!\inst4|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_pulsedOut~5_combout\,
	datac => \inst4|s_debounceCnt\(0),
	datad => \inst4|s_pulsedOut~4_combout\,
	combout => \inst4|s_debounceCnt[16]~2_combout\);

-- Location: LCCOMB_X109_Y57_N22
\inst4|s_debounceCnt[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[16]~3_combout\ = ((\inst4|s_debounceCnt\(22)) # ((\inst4|s_debounceCnt[16]~2_combout\) # (!\inst4|s_previousIn~q\))) # (!\inst4|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_dirtyIn~q\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[16]~2_combout\,
	combout => \inst4|s_debounceCnt[16]~3_combout\);

-- Location: FF_X110_Y58_N5
\inst4|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~19_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(1));

-- Location: LCCOMB_X110_Y58_N14
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|s_debounceCnt\(2) & ((GND) # (!\inst4|Add0~3\))) # (!\inst4|s_debounceCnt\(2) & (\inst4|Add0~3\ $ (GND)))
-- \inst4|Add0~5\ = CARRY((\inst4|s_debounceCnt\(2)) # (!\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X110_Y58_N6
\inst4|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~20_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~4_combout\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~4_combout\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~20_combout\);

-- Location: FF_X110_Y58_N7
\inst4|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~20_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(2));

-- Location: LCCOMB_X110_Y58_N16
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|s_debounceCnt\(3) & (\inst4|Add0~5\ & VCC)) # (!\inst4|s_debounceCnt\(3) & (!\inst4|Add0~5\))
-- \inst4|Add0~7\ = CARRY((!\inst4|s_debounceCnt\(3) & !\inst4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X109_Y57_N0
\inst4|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~21_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~6_combout\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|Add0~6_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~21_combout\);

-- Location: FF_X109_Y57_N1
\inst4|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~21_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(3));

-- Location: LCCOMB_X110_Y58_N18
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|s_debounceCnt\(4) & ((GND) # (!\inst4|Add0~7\))) # (!\inst4|s_debounceCnt\(4) & (\inst4|Add0~7\ $ (GND)))
-- \inst4|Add0~9\ = CARRY((\inst4|s_debounceCnt\(4)) # (!\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X110_Y58_N8
\inst4|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~22_combout\ = (\inst4|Add0~8_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~8_combout\,
	datab => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~22_combout\);

-- Location: FF_X110_Y58_N9
\inst4|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~22_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y58_N20
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|s_debounceCnt\(5) & (\inst4|Add0~9\ & VCC)) # (!\inst4|s_debounceCnt\(5) & (!\inst4|Add0~9\))
-- \inst4|Add0~11\ = CARRY((!\inst4|s_debounceCnt\(5) & !\inst4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X110_Y58_N0
\inst4|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~27_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~10_combout\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~10_combout\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~27_combout\);

-- Location: FF_X110_Y58_N1
\inst4|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~27_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y58_N22
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|s_debounceCnt\(6) & ((GND) # (!\inst4|Add0~11\))) # (!\inst4|s_debounceCnt\(6) & (\inst4|Add0~11\ $ (GND)))
-- \inst4|Add0~13\ = CARRY((\inst4|s_debounceCnt\(6)) # (!\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X109_Y57_N4
\inst4|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~1_combout\ = (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~12_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~12_combout\,
	combout => \inst4|s_debounceCnt~1_combout\);

-- Location: FF_X109_Y57_N5
\inst4|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~1_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(6));

-- Location: LCCOMB_X110_Y58_N24
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|s_debounceCnt\(7) & (\inst4|Add0~13\ & VCC)) # (!\inst4|s_debounceCnt\(7) & (!\inst4|Add0~13\))
-- \inst4|Add0~15\ = CARRY((!\inst4|s_debounceCnt\(7) & !\inst4|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X109_Y57_N12
\inst4|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~11_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[16]~0_combout\ & \inst4|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~14_combout\,
	combout => \inst4|s_debounceCnt~11_combout\);

-- Location: FF_X109_Y57_N13
\inst4|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~11_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(7));

-- Location: LCCOMB_X110_Y58_N26
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|s_debounceCnt\(8) & ((GND) # (!\inst4|Add0~15\))) # (!\inst4|s_debounceCnt\(8) & (\inst4|Add0~15\ $ (GND)))
-- \inst4|Add0~17\ = CARRY((\inst4|s_debounceCnt\(8)) # (!\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X109_Y57_N2
\inst4|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~12_combout\ = (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~16_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|Add0~16_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~12_combout\);

-- Location: FF_X109_Y57_N3
\inst4|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~12_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(8));

-- Location: LCCOMB_X110_Y58_N28
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|s_debounceCnt\(9) & (\inst4|Add0~17\ & VCC)) # (!\inst4|s_debounceCnt\(9) & (!\inst4|Add0~17\))
-- \inst4|Add0~19\ = CARRY((!\inst4|s_debounceCnt\(9) & !\inst4|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X109_Y57_N24
\inst4|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~13_combout\ = (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~18_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~18_combout\,
	combout => \inst4|s_debounceCnt~13_combout\);

-- Location: FF_X109_Y57_N25
\inst4|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~13_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(9));

-- Location: LCCOMB_X110_Y58_N30
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|s_debounceCnt\(10) & ((GND) # (!\inst4|Add0~19\))) # (!\inst4|s_debounceCnt\(10) & (\inst4|Add0~19\ $ (GND)))
-- \inst4|Add0~21\ = CARRY((\inst4|s_debounceCnt\(10)) # (!\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X109_Y57_N14
\inst4|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~14_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~20_combout\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|Add0~20_combout\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y57_N15
\inst4|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~14_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(10));

-- Location: LCCOMB_X112_Y57_N4
\inst4|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~15_combout\ = (\inst4|s_debounceCnt[16]~0_combout\ & ((\inst4|Add0~22_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[16]~0_combout\,
	datad => \inst4|Add0~22_combout\,
	combout => \inst4|s_debounceCnt~15_combout\);

-- Location: FF_X112_Y57_N5
\inst4|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~15_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y57_N20
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|s_debounceCnt\(14) & (\inst4|s_debounceCnt\(19) & (\inst4|s_debounceCnt\(8) & \inst4|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(14),
	datab => \inst4|s_debounceCnt\(19),
	datac => \inst4|s_debounceCnt\(8),
	datad => \inst4|s_debounceCnt\(18),
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y57_N30
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (\inst4|s_debounceCnt\(11) & (\inst4|s_debounceCnt\(9) & \inst4|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datac => \inst4|s_debounceCnt\(9),
	datad => \inst4|LessThan0~4_combout\,
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y57_N18
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|s_debounceCnt\(13)) # ((\inst4|s_debounceCnt\(12)) # ((\inst4|s_debounceCnt\(11) & \inst4|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datab => \inst4|s_debounceCnt\(10),
	datac => \inst4|s_debounceCnt\(13),
	datad => \inst4|s_debounceCnt\(12),
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y57_N12
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (\inst4|s_debounceCnt\(16)) # ((\inst4|s_debounceCnt\(15)) # ((\inst4|s_debounceCnt\(14) & \inst4|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(14),
	datab => \inst4|s_debounceCnt\(16),
	datac => \inst4|s_debounceCnt\(15),
	datad => \inst4|LessThan0~1_combout\,
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X111_Y57_N14
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (\inst4|s_debounceCnt\(19) & (\inst4|s_debounceCnt\(18) & ((\inst4|s_debounceCnt\(17)) # (\inst4|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(19),
	datab => \inst4|s_debounceCnt\(18),
	datac => \inst4|s_debounceCnt\(17),
	datad => \inst4|LessThan0~2_combout\,
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X111_Y57_N24
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (\inst4|s_debounceCnt\(6) & ((\inst4|s_debounceCnt\(0)) # ((\inst4|s_debounceCnt\(5)) # (!\inst4|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(0),
	datab => \inst4|s_debounceCnt\(6),
	datac => \inst4|s_debounceCnt\(5),
	datad => \inst4|s_pulsedOut~5_combout\,
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X111_Y57_N10
\inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_combout\ = (\inst4|LessThan0~3_combout\) # ((\inst4|LessThan0~5_combout\ & ((\inst4|s_debounceCnt\(7)) # (\inst4|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~5_combout\,
	datab => \inst4|s_debounceCnt\(7),
	datac => \inst4|LessThan0~3_combout\,
	datad => \inst4|LessThan0~6_combout\,
	combout => \inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X111_Y57_N4
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst4|s_debounceCnt\(21) & !\inst4|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(21),
	datad => \inst4|s_debounceCnt\(20),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y57_N22
\inst4|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~24_combout\ = (\inst4|s_debounceCnt\(22) & (!\inst4|LessThan0~7_combout\ & (\inst4|LessThan0~0_combout\))) # (!\inst4|s_debounceCnt\(22) & (((\inst4|s_debounceCnt[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~7_combout\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|LessThan0~0_combout\,
	datad => \inst4|s_debounceCnt[16]~2_combout\,
	combout => \inst4|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X111_Y57_N8
\inst4|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~25_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_dirtyIn~q\)) # (!\inst4|s_previousIn~q\ & ((\inst4|s_debounceCnt[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_dirtyIn~q\,
	datab => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X110_Y57_N22
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = \inst4|Add0~43\ $ (\inst4|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_debounceCnt\(22),
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\);

-- Location: LCCOMB_X111_Y57_N28
\inst4|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~26_combout\ = (\inst4|s_debounceCnt[22]~25_combout\ & (((\inst4|s_debounceCnt[22]~24_combout\ & \inst4|Add0~44_combout\)) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt[22]~24_combout\,
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[22]~25_combout\,
	datad => \inst4|Add0~44_combout\,
	combout => \inst4|s_debounceCnt[22]~26_combout\);

-- Location: FF_X111_Y57_N29
\inst4|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y57_N0
\inst4|s_debounceCnt[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[16]~0_combout\ = (\inst4|s_dirtyIn~q\ & (((\inst4|LessThan0~0_combout\ & !\inst4|LessThan0~7_combout\)) # (!\inst4|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_dirtyIn~q\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|LessThan0~0_combout\,
	datad => \inst4|LessThan0~7_combout\,
	combout => \inst4|s_debounceCnt[16]~0_combout\);

-- Location: LCCOMB_X110_Y58_N2
\inst4|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~23_combout\ = (\inst4|Add0~0_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[16]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datab => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[16]~0_combout\,
	combout => \inst4|s_debounceCnt~23_combout\);

-- Location: FF_X110_Y58_N3
\inst4|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~23_combout\,
	ena => \inst4|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(0));

-- Location: LCCOMB_X111_Y57_N6
\inst4|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~6_combout\ = (\inst4|s_dirtyIn~q\ & (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt\(0) & !\inst4|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_dirtyIn~q\,
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt\(0),
	datad => \inst4|s_debounceCnt\(22),
	combout => \inst4|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X108_Y57_N28
\inst4|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~7_combout\ = (\inst4|s_pulsedOut~6_combout\ & (!\inst4|s_debounceCnt\(5) & (\inst4|s_pulsedOut~4_combout\ & \inst4|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~6_combout\,
	datab => \inst4|s_debounceCnt\(5),
	datac => \inst4|s_pulsedOut~4_combout\,
	datad => \inst4|s_pulsedOut~5_combout\,
	combout => \inst4|s_pulsedOut~7_combout\);

-- Location: FF_X108_Y57_N29
\inst4|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_pulsedOut~q\);

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

-- Location: LCCOMB_X103_Y69_N12
\inst5|pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~17_combout\ = (\inst5|pState.TimeProcess~q\ & (!\inst5|pState.Timer~q\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.TimeProcess~q\,
	datac => \inst5|pState.Timer~q\,
	datad => \SW[0]~input_o\,
	combout => \inst5|pState~17_combout\);

-- Location: LCCOMB_X97_Y45_N10
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_debounceCnt\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

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

-- Location: LCCOMB_X99_Y45_N6
\inst3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \inst3|s_dirtyIn~0_combout\);

-- Location: FF_X99_Y45_N7
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

-- Location: FF_X96_Y45_N25
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

-- Location: LCCOMB_X97_Y45_N14
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_debounceCnt\(2) & ((GND) # (!\inst3|Add0~3\))) # (!\inst3|s_debounceCnt\(2) & (\inst3|Add0~3\ $ (GND)))
-- \inst3|Add0~5\ = CARRY((\inst3|s_debounceCnt\(2)) # (!\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X97_Y45_N16
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

-- Location: LCCOMB_X97_Y45_N8
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: LCCOMB_X96_Y45_N24
\inst3|s_debounceCnt[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[16]~3_combout\ = (\inst3|s_debounceCnt\(22)) # (((\inst3|s_debounceCnt[16]~2_combout\) # (!\inst3|s_previousIn~q\)) # (!\inst3|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[16]~2_combout\,
	combout => \inst3|s_debounceCnt[16]~3_combout\);

-- Location: FF_X97_Y45_N9
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y45_N18
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_debounceCnt\(4) & ((GND) # (!\inst3|Add0~7\))) # (!\inst3|s_debounceCnt\(4) & (\inst3|Add0~7\ $ (GND)))
-- \inst3|Add0~9\ = CARRY((\inst3|s_debounceCnt\(4)) # (!\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X98_Y45_N2
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y45_N3
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y45_N20
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_debounceCnt\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst3|s_debounceCnt\(5) & (!\inst3|Add0~9\))
-- \inst3|Add0~11\ = CARRY((!\inst3|s_debounceCnt\(5) & !\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X98_Y45_N6
\inst3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~27_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~27_combout\);

-- Location: FF_X98_Y45_N7
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~27_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X97_Y45_N22
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

-- Location: LCCOMB_X97_Y45_N28
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

-- Location: LCCOMB_X97_Y45_N30
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

-- Location: LCCOMB_X96_Y45_N0
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X96_Y45_N1
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y44_N0
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_debounceCnt\(11) & (\inst3|Add0~21\ & VCC)) # (!\inst3|s_debounceCnt\(11) & (!\inst3|Add0~21\))
-- \inst3|Add0~23\ = CARRY((!\inst3|s_debounceCnt\(11) & !\inst3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X96_Y45_N4
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[16]~0_combout\,
	datad => \inst3|Add0~22_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X96_Y45_N5
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y44_N2
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

-- Location: LCCOMB_X96_Y45_N12
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~24_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X96_Y45_N13
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y44_N4
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_debounceCnt\(13) & (\inst3|Add0~25\ & VCC)) # (!\inst3|s_debounceCnt\(13) & (!\inst3|Add0~25\))
-- \inst3|Add0~27\ = CARRY((!\inst3|s_debounceCnt\(13) & !\inst3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X96_Y45_N18
\inst3|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~9_combout\ = (\inst3|Add0~26_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~9_combout\);

-- Location: FF_X96_Y45_N19
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~9_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y44_N6
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_debounceCnt\(14) & ((GND) # (!\inst3|Add0~27\))) # (!\inst3|s_debounceCnt\(14) & (\inst3|Add0~27\ $ (GND)))
-- \inst3|Add0~29\ = CARRY((\inst3|s_debounceCnt\(14)) # (!\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X96_Y45_N30
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~28_combout\,
	datad => \inst3|s_debounceCnt[16]~0_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X96_Y45_N31
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y44_N8
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_debounceCnt\(15) & (\inst3|Add0~29\ & VCC)) # (!\inst3|s_debounceCnt\(15) & (!\inst3|Add0~29\))
-- \inst3|Add0~31\ = CARRY((!\inst3|s_debounceCnt\(15) & !\inst3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X97_Y44_N28
\inst3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~5_combout\ = (\inst3|Add0~30_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~30_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~5_combout\);

-- Location: FF_X97_Y44_N29
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~5_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y44_N10
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_debounceCnt\(16) & ((GND) # (!\inst3|Add0~31\))) # (!\inst3|s_debounceCnt\(16) & (\inst3|Add0~31\ $ (GND)))
-- \inst3|Add0~33\ = CARRY((\inst3|s_debounceCnt\(16)) # (!\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X98_Y45_N24
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|s_debounceCnt[16]~4_combout\ & \inst3|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[16]~4_combout\,
	datad => \inst3|Add0~32_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X98_Y45_N25
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y44_N12
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

-- Location: LCCOMB_X97_Y44_N26
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y44_N27
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y44_N14
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

-- Location: LCCOMB_X98_Y45_N22
\inst3|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~18_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & (\inst3|s_debounceCnt[16]~3_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~36_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[16]~0_combout\,
	datad => \inst3|s_debounceCnt[16]~3_combout\,
	combout => \inst3|s_debounceCnt[18]~18_combout\);

-- Location: FF_X98_Y45_N23
\inst3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y44_N16
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|Add0~37\ & VCC)) # (!\inst3|s_debounceCnt\(19) & (!\inst3|Add0~37\))
-- \inst3|Add0~39\ = CARRY((!\inst3|s_debounceCnt\(19) & !\inst3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X98_Y45_N4
\inst3|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~19_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & (\inst3|s_debounceCnt[16]~3_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~38_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[16]~0_combout\,
	datad => \inst3|s_debounceCnt[16]~3_combout\,
	combout => \inst3|s_debounceCnt[19]~19_combout\);

-- Location: FF_X98_Y45_N5
\inst3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y44_N18
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_debounceCnt\(20) & ((GND) # (!\inst3|Add0~39\))) # (!\inst3|s_debounceCnt\(20) & (\inst3|Add0~39\ $ (GND)))
-- \inst3|Add0~41\ = CARRY((\inst3|s_debounceCnt\(20)) # (!\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X97_Y44_N24
\inst3|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~10_combout\ = (\inst3|Add0~40_combout\ & (\inst3|s_debounceCnt[16]~3_combout\ & \inst3|s_debounceCnt[16]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~40_combout\,
	datac => \inst3|s_debounceCnt[16]~3_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt[20]~10_combout\);

-- Location: FF_X97_Y44_N25
\inst3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y44_N20
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_debounceCnt\(21) & (\inst3|Add0~41\ & VCC)) # (!\inst3|s_debounceCnt\(21) & (!\inst3|Add0~41\))
-- \inst3|Add0~43\ = CARRY((!\inst3|s_debounceCnt\(21) & !\inst3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X97_Y44_N30
\inst3|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~11_combout\ = (\inst3|Add0~42_combout\ & (\inst3|s_debounceCnt[16]~3_combout\ & \inst3|s_debounceCnt[16]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~42_combout\,
	datac => \inst3|s_debounceCnt[16]~3_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt[21]~11_combout\);

-- Location: FF_X97_Y44_N31
\inst3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y45_N10
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(10) & \inst3|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(13),
	datab => \inst3|s_debounceCnt\(10),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|s_debounceCnt\(11),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X98_Y45_N16
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(16)) # ((\inst3|s_debounceCnt\(15)) # ((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(14),
	datab => \inst3|s_debounceCnt\(16),
	datac => \inst3|s_debounceCnt\(15),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y45_N30
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (\inst3|s_debounceCnt\(18) & (\inst3|s_debounceCnt\(19) & ((\inst3|s_debounceCnt\(17)) # (\inst3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datab => \inst3|s_debounceCnt\(17),
	datac => \inst3|s_debounceCnt\(19),
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y45_N0
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|s_debounceCnt\(18) & (\inst3|s_debounceCnt\(19) & (\inst3|s_debounceCnt\(8) & \inst3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|s_debounceCnt\(8),
	datad => \inst3|s_debounceCnt\(14),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y45_N8
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(11) & \inst3|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datad => \inst3|s_debounceCnt\(9),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y45_N18
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(5)) # ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_debounceCnt\(6),
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_pulsedOut~5_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y45_N20
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|LessThan0~0_combout\ & (\inst3|LessThan0~1_combout\ & ((\inst3|s_debounceCnt\(7)) # (\inst3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(7),
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|LessThan0~1_combout\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y45_N12
\inst3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_combout\ = (\inst3|s_debounceCnt\(21)) # ((\inst3|s_debounceCnt\(20)) # ((\inst3|LessThan0~6_combout\) # (\inst3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(21),
	datab => \inst3|s_debounceCnt\(20),
	datac => \inst3|LessThan0~6_combout\,
	datad => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~7_combout\);

-- Location: LCCOMB_X98_Y45_N14
\inst3|s_debounceCnt[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[16]~0_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~7_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[16]~0_combout\);

-- Location: LCCOMB_X96_Y45_N16
\inst3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~1_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~12_combout\,
	datad => \inst3|s_debounceCnt[16]~0_combout\,
	combout => \inst3|s_debounceCnt~1_combout\);

-- Location: FF_X96_Y45_N17
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~1_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y45_N24
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_debounceCnt\(7) & (\inst3|Add0~13\ & VCC)) # (!\inst3|s_debounceCnt\(7) & (!\inst3|Add0~13\))
-- \inst3|Add0~15\ = CARRY((!\inst3|s_debounceCnt\(7) & !\inst3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X96_Y45_N14
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|Add0~14_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~14_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X96_Y45_N15
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y45_N26
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

-- Location: LCCOMB_X96_Y45_N28
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~16_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[16]~0_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X96_Y45_N29
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X96_Y45_N6
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[16]~0_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~18_combout\,
	datad => \inst3|s_debounceCnt[16]~0_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y45_N7
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y45_N26
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(9) & (!\inst3|s_debounceCnt\(8) & (!\inst3|s_debounceCnt\(7) & !\inst3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(9),
	datab => \inst3|s_debounceCnt\(8),
	datac => \inst3|s_debounceCnt\(7),
	datad => \inst3|s_debounceCnt\(10),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X96_Y45_N8
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(14) & (!\inst3|s_debounceCnt\(11) & (!\inst3|s_debounceCnt\(19) & !\inst3|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(14),
	datab => \inst3|s_debounceCnt\(11),
	datac => \inst3|s_debounceCnt\(19),
	datad => \inst3|s_debounceCnt\(18),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X96_Y45_N22
\inst3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~0_combout\ = (!\inst3|s_debounceCnt\(16) & (!\inst3|s_debounceCnt\(6) & (!\inst3|s_debounceCnt\(17) & !\inst3|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datab => \inst3|s_debounceCnt\(6),
	datac => \inst3|s_debounceCnt\(17),
	datad => \inst3|s_debounceCnt\(15),
	combout => \inst3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y45_N20
\inst3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~1_combout\ = (!\inst3|s_debounceCnt\(12) & (!\inst3|s_debounceCnt\(13) & (!\inst3|s_debounceCnt\(20) & !\inst3|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(12),
	datab => \inst3|s_debounceCnt\(13),
	datac => \inst3|s_debounceCnt\(20),
	datad => \inst3|s_debounceCnt\(21),
	combout => \inst3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y45_N2
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (\inst3|s_pulsedOut~2_combout\ & (\inst3|s_pulsedOut~3_combout\ & (\inst3|s_pulsedOut~0_combout\ & \inst3|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~2_combout\,
	datab => \inst3|s_pulsedOut~3_combout\,
	datac => \inst3|s_pulsedOut~0_combout\,
	datad => \inst3|s_pulsedOut~1_combout\,
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X96_Y45_N10
\inst3|s_debounceCnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[16]~2_combout\ = ((\inst3|s_debounceCnt\(0)) # ((\inst3|s_debounceCnt\(5)) # (!\inst3|s_pulsedOut~4_combout\))) # (!\inst3|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~5_combout\,
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_debounceCnt\(5),
	datad => \inst3|s_pulsedOut~4_combout\,
	combout => \inst3|s_debounceCnt[16]~2_combout\);

-- Location: LCCOMB_X98_Y45_N26
\inst3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~25_combout\ = (\inst3|s_dirtyIn~q\ & ((\inst3|s_debounceCnt\(22) & ((!\inst3|LessThan0~7_combout\))) # (!\inst3|s_debounceCnt\(22) & (\inst3|s_debounceCnt[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_debounceCnt[16]~2_combout\,
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y44_N22
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

-- Location: LCCOMB_X98_Y45_N8
\inst3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~26_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_debounceCnt[22]~25_combout\ & ((\inst3|Add0~44_combout\)))) # (!\inst3|s_previousIn~q\ & (((\inst3|s_debounceCnt[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[22]~25_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[16]~0_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X98_Y45_N9
\inst3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y45_N28
\inst3|s_debounceCnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[16]~4_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & ((!\inst3|LessThan0~7_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[16]~4_combout\);

-- Location: LCCOMB_X97_Y45_N0
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y45_N1
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y45_N12
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

-- Location: LCCOMB_X97_Y45_N4
\inst3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~20_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~20_combout\);

-- Location: FF_X97_Y45_N5
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~20_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y45_N6
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[16]~4_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y45_N7
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y45_N2
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(2) & (!\inst3|s_debounceCnt\(1) & (!\inst3|s_debounceCnt\(3) & !\inst3|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(2),
	datab => \inst3|s_debounceCnt\(1),
	datac => \inst3|s_debounceCnt\(3),
	datad => \inst3|s_debounceCnt\(4),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X99_Y45_N28
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_previousIn~q\ & (!\inst3|s_debounceCnt\(22) & (\inst3|s_debounceCnt\(0) & \inst3|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_dirtyIn~q\,
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X99_Y45_N24
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (\inst3|s_pulsedOut~5_combout\ & (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~4_combout\ & \inst3|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~5_combout\,
	datab => \inst3|s_debounceCnt\(5),
	datac => \inst3|s_pulsedOut~4_combout\,
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: FF_X99_Y45_N25
\inst3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pulsedOut~q\);

-- Location: LCCOMB_X103_Y69_N4
\inst5|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~13_combout\ = (!\inst4|s_pulsedOut~q\ & \inst3|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst5|pState~13_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X103_Y69_N24
\inst5|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~11_combout\ = (!\inst9|s_pulsedOut~q\ & (((!\SW[2]~input_o\ & !\inst3|s_pulsedOut~q\)) # (!\inst5|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst5|pState.StartPrg~q\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst5|pState~11_combout\);

-- Location: LCCOMB_X103_Y69_N26
\inst5|pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~18_combout\ = (\inst5|pState~11_combout\ & ((\inst5|pState~17_combout\) # ((\inst5|pState.Timer~q\ & \inst5|pState~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState~17_combout\,
	datab => \inst5|pState.Timer~q\,
	datac => \inst5|pState~13_combout\,
	datad => \inst5|pState~11_combout\,
	combout => \inst5|pState~18_combout\);

-- Location: FF_X103_Y69_N27
\inst5|pState.TimeProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.TimeProcess~q\);

-- Location: LCCOMB_X103_Y69_N10
\inst5|pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~21_combout\ = (!\inst5|pState.StartPrg~q\ & ((\inst5|pState.TimeProcess~q\ & (\SW[0]~input_o\)) # (!\inst5|pState.TimeProcess~q\ & ((\inst3|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.TimeProcess~q\,
	datab => \SW[0]~input_o\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst5|pState.StartPrg~q\,
	combout => \inst5|pState~21_combout\);

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

-- Location: LCCOMB_X103_Y69_N22
\inst5|pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~15_combout\ = (!\SW[2]~input_o\ & !\inst3|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst5|pState~15_combout\);

-- Location: LCCOMB_X103_Y69_N2
\inst5|pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~19_combout\ = (!\inst9|s_pulsedOut~q\ & (\inst5|pState.Init~q\ & (!\inst5|pState.Timer~q\ & !\inst5|pState~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_pulsedOut~q\,
	datab => \inst5|pState.Init~q\,
	datac => \inst5|pState.Timer~q\,
	datad => \inst5|pState~12_combout\,
	combout => \inst5|pState~19_combout\);

-- Location: LCCOMB_X103_Y69_N20
\inst5|pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~20_combout\ = (\inst5|pState~19_combout\ & (((\KEY[3]~input_o\ & \inst5|pState~15_combout\)) # (!\inst5|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \inst5|pState.StartPrg~q\,
	datac => \inst5|pState~15_combout\,
	datad => \inst5|pState~19_combout\,
	combout => \inst5|pState~20_combout\);

-- Location: LCCOMB_X103_Y69_N28
\inst5|pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~22_combout\ = (\inst5|pState~20_combout\ & ((\inst5|pState~21_combout\) # (\inst5|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState~21_combout\,
	datac => \inst5|pState.StartPrg~q\,
	datad => \inst5|pState~20_combout\,
	combout => \inst5|pState~22_combout\);

-- Location: FF_X103_Y69_N29
\inst5|pState.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.StartPrg~q\);

-- Location: LCCOMB_X103_Y69_N0
\inst5|pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~16_combout\ = (!\inst9|s_pulsedOut~q\ & (((\KEY[3]~input_o\) # (!\inst5|pState~15_combout\)) # (!\inst5|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_pulsedOut~q\,
	datab => \inst5|pState.StartPrg~q\,
	datac => \inst5|pState~15_combout\,
	datad => \KEY[3]~input_o\,
	combout => \inst5|pState~16_combout\);

-- Location: FF_X103_Y69_N1
\inst5|pState.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.Init~q\);

-- Location: LCCOMB_X102_Y69_N28
\inst5|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~9_combout\ = ((!\inst4|s_pulsedOut~q\ & (!\inst3|s_pulsedOut~q\ & \inst5|pState.Menu~q\))) # (!\inst5|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~q\,
	datab => \inst5|pState.Init~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst5|pState.Menu~q\,
	combout => \inst5|pState~9_combout\);

-- Location: LCCOMB_X102_Y69_N24
\inst5|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~10_combout\ = (!\inst9|s_pulsedOut~q\ & \inst5|pState~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst5|pState~9_combout\,
	combout => \inst5|pState~10_combout\);

-- Location: FF_X102_Y69_N25
\inst5|pState.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.Menu~q\);

-- Location: LCCOMB_X103_Y69_N6
\inst5|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~12_combout\ = (\inst5|pState.Menu~q\ & \inst4|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pState.Menu~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \inst5|pState~12_combout\);

-- Location: LCCOMB_X102_Y69_N6
\inst5|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~14_combout\ = (\inst5|pState~11_combout\ & ((\inst5|pState.Timer~q\ & ((!\inst5|pState~13_combout\))) # (!\inst5|pState.Timer~q\ & (\inst5|pState~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState~12_combout\,
	datab => \inst5|pState~11_combout\,
	datac => \inst5|pState.Timer~q\,
	datad => \inst5|pState~13_combout\,
	combout => \inst5|pState~14_combout\);

-- Location: FF_X102_Y69_N7
\inst5|pState.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.Timer~q\);

-- Location: LCCOMB_X102_Y69_N20
\inst5|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideOr0~combout\ = (\inst5|pState.Timer~q\) # ((\inst5|pState.Menu~q\) # (!\inst5|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.Timer~q\,
	datab => \inst5|pState.Menu~q\,
	datac => \inst5|pState.Init~q\,
	combout => \inst5|WideOr0~combout\);

-- Location: LCCOMB_X103_Y69_N30
\inst5|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideOr1~0_combout\ = (\inst5|pState.TimeProcess~q\) # ((\inst5|pState.StartPrg~q\) # (!\inst5|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.TimeProcess~q\,
	datab => \inst5|pState.Init~q\,
	datad => \inst5|pState.StartPrg~q\,
	combout => \inst5|WideOr1~0_combout\);

-- Location: LCCOMB_X103_Y69_N16
\inst5|pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~23_combout\ = (\inst5|pState.StartPrg~q\ & (!\inst9|s_pulsedOut~q\ & \inst3|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pState.StartPrg~q\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst5|pState~23_combout\);

-- Location: LCCOMB_X103_Y69_N8
\inst5|pState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~24_combout\ = (\inst5|pState~23_combout\) # ((!\inst5|pState~21_combout\ & (\inst5|pState.Stop~q\ & \inst5|pState~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState~21_combout\,
	datab => \inst5|pState~23_combout\,
	datac => \inst5|pState.Stop~q\,
	datad => \inst5|pState~20_combout\,
	combout => \inst5|pState~24_combout\);

-- Location: FF_X103_Y69_N9
\inst5|pState.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.Stop~q\);

-- Location: LCCOMB_X102_Y69_N30
\inst5|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideOr2~0_combout\ = (\inst5|pState.Menu~q\) # ((\inst5|pState.Stop~q\) # (\inst5|pState.TimeProcess~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pState.Menu~q\,
	datac => \inst5|pState.Stop~q\,
	datad => \inst5|pState.TimeProcess~q\,
	combout => \inst5|WideOr2~0_combout\);

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

-- Location: LCCOMB_X102_Y69_N8
\inst5|en_3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|en_3~combout\ = (\inst5|pState.Timer~q\) # (\inst5|pState.TimeProcess~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.Timer~q\,
	datad => \inst5|pState.TimeProcess~q\,
	combout => \inst5|en_3~combout\);

-- Location: LCCOMB_X103_Y69_N18
\inst5|pState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~25_combout\ = (\SW[2]~input_o\ & (\inst5|pState.StartPrg~q\ & (!\inst9|s_pulsedOut~q\ & !\inst3|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst5|pState.StartPrg~q\,
	datac => \inst9|s_pulsedOut~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst5|pState~25_combout\);

-- Location: LCCOMB_X103_Y69_N14
\inst5|pState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pState~26_combout\ = (\inst5|pState~25_combout\) # ((!\inst5|pState~21_combout\ & (\inst5|pState.Extra~q\ & \inst5|pState~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState~21_combout\,
	datab => \inst5|pState~25_combout\,
	datac => \inst5|pState.Extra~q\,
	datad => \inst5|pState~20_combout\,
	combout => \inst5|pState~26_combout\);

-- Location: FF_X103_Y69_N15
\inst5|pState.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|pState~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pState.Extra~q\);

-- Location: LCCOMB_X102_Y69_N22
\inst5|en_1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|en_1~combout\ = (\inst5|pState.Timer~q\) # (\inst5|pState.Menu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pState.Timer~q\,
	datad => \inst5|pState.Menu~q\,
	combout => \inst5|en_1~combout\);

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


