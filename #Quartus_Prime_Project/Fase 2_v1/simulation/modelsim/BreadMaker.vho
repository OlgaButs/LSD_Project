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

-- DATE "05/25/2023 19:12:42"

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
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
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
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[4]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[4]~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[4]~29_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[4]~5_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[11]~29_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[11]~4_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~16_combout\ : std_logic;
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
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[11]~5_combout\ : std_logic;
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
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
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
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|Add0~19\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst13|Add0~21\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst13|Add0~23\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst13|Add0~25\ : std_logic;
SIGNAL \inst13|Add0~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst13|Add0~27\ : std_logic;
SIGNAL \inst13|Add0~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst13|Add0~29\ : std_logic;
SIGNAL \inst13|Add0~30_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst13|Add0~31\ : std_logic;
SIGNAL \inst13|Add0~32_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst13|Add0~33\ : std_logic;
SIGNAL \inst13|Add0~34_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst13|Add0~35\ : std_logic;
SIGNAL \inst13|Add0~36_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst13|Add0~37\ : std_logic;
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst13|Add0~17\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~29_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[0]~5_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|reg_fstate.Menu~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Menu~1_combout\ : std_logic;
SIGNAL \inst|fstate.Menu~q\ : std_logic;
SIGNAL \inst|reg_fstate.Timer~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Timer~1_combout\ : std_logic;
SIGNAL \inst|fstate.Timer~q\ : std_logic;
SIGNAL \inst|reg_fstate.TimeProcess~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.TimeProcess~1_combout\ : std_logic;
SIGNAL \inst|fstate.TimeProcess~q\ : std_logic;
SIGNAL \inst|en_3~0_combout\ : std_logic;
SIGNAL \inst|rstGlobal~0_combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~33_combout\ : std_logic;
SIGNAL \inst11|s_counter[6]~95_combout\ : std_logic;
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
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
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
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|pulse~2_combout\ : std_logic;
SIGNAL \inst11|pulse~q\ : std_logic;
SIGNAL \inst5|s_count~6_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst23|Equal6~2_combout\ : std_logic;
SIGNAL \inst5|s_result~2_combout\ : std_logic;
SIGNAL \inst5|s_count[31]~12_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|s_count[3]~13_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~14_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|s_count[5]~15_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~16_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|s_count[7]~17_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|s_count[8]~19_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|s_count[9]~20_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|s_count[10]~21_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|s_count[11]~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|s_count[12]~23_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|s_count[13]~24_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|s_count[14]~25_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|s_count[15]~26_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|s_count[16]~27_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|s_count[17]~28_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|s_count[18]~29_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|s_count[19]~30_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|s_count[20]~31_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|s_count[21]~32_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|s_count[22]~33_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|s_count[23]~34_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|s_count[24]~35_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|s_count[25]~36_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|s_count[26]~37_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|s_count[27]~38_combout\ : std_logic;
SIGNAL \inst5|Add0~55\ : std_logic;
SIGNAL \inst5|Add0~56_combout\ : std_logic;
SIGNAL \inst5|s_count[28]~39_combout\ : std_logic;
SIGNAL \inst5|Add0~57\ : std_logic;
SIGNAL \inst5|Add0~58_combout\ : std_logic;
SIGNAL \inst5|s_count[29]~40_combout\ : std_logic;
SIGNAL \inst5|Add0~59\ : std_logic;
SIGNAL \inst5|Add0~60_combout\ : std_logic;
SIGNAL \inst5|s_count[30]~41_combout\ : std_logic;
SIGNAL \inst5|Add0~61\ : std_logic;
SIGNAL \inst5|Add0~62_combout\ : std_logic;
SIGNAL \inst5|s_count[31]~42_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst23|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|s_count~7_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~45_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~18_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|s_count[2]~44_combout\ : std_logic;
SIGNAL \inst5|s_count[2]~11_combout\ : std_logic;
SIGNAL \inst5|s_count~8_combout\ : std_logic;
SIGNAL \inst5|s_count[16]~9_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|s_count[1]~43_combout\ : std_logic;
SIGNAL \inst5|s_count[1]~10_combout\ : std_logic;
SIGNAL \inst23|Equal12~0_combout\ : std_logic;
SIGNAL \inst5|s_result~3_combout\ : std_logic;
SIGNAL \inst5|s_result~4_combout\ : std_logic;
SIGNAL \inst5|s_result~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~13_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TLevedar~q\ : std_logic;
SIGNAL \iaaanst1|Selector15~3_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~12_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TExtra~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|Add0~25\ : std_logic;
SIGNAL \inst12|Add0~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst12|Add0~27\ : std_logic;
SIGNAL \inst12|Add0~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \inst12|Add0~29\ : std_logic;
SIGNAL \inst12|Add0~30_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst12|Add0~31\ : std_logic;
SIGNAL \inst12|Add0~32_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst12|Add0~33\ : std_logic;
SIGNAL \inst12|Add0~34_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst12|Add0~35\ : std_logic;
SIGNAL \inst12|Add0~36_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst12|Add0~37\ : std_logic;
SIGNAL \inst12|Add0~38_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst12|Add0~17\ : std_logic;
SIGNAL \inst12|Add0~18_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst12|Add0~19\ : std_logic;
SIGNAL \inst12|Add0~20_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst12|Add0~21\ : std_logic;
SIGNAL \inst12|Add0~22_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst12|Add0~23\ : std_logic;
SIGNAL \inst12|Add0~24_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[10]~29_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[10]~5_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~18_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~20_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~21_combout\ : std_logic;
SIGNAL \iaaanst1|timeVal~0_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~36_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~19\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~22_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~23\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~24_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~25\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~26_combout\ : std_logic;
SIGNAL \iaaanst1|Selector8~2_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~27\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~28_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~29\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~30_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~31\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~32_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~33\ : std_logic;
SIGNAL \inst4|Counter|s_count[7]~34_combout\ : std_logic;
SIGNAL \iaaanst1|Selector8~3_combout\ : std_logic;
SIGNAL \iaaanst1|Selector11~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector11~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~17_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TCozer~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~14_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TFim~q\ : std_logic;
SIGNAL \iaaanst1|sync_proc~6_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~15_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TInit~q\ : std_logic;
SIGNAL \iaaanst1|Selector9~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~1_combout\ : std_logic;
SIGNAL \iaaanst1|Selector8~4_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~2_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~3_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~q\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \iaaanst1|WideOr8~combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \iaaanst1|WideOr1~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|dataOut~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[0]~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|dataOut~2_combout\ : std_logic;
SIGNAL \iaaanst1|addr[2]~0_combout\ : std_logic;
SIGNAL \inst9|s_count~16_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|s_count~15_combout\ : std_logic;
SIGNAL \inst9|s_count~17_combout\ : std_logic;
SIGNAL \inst9|s_count[2]~18_combout\ : std_logic;
SIGNAL \inst9|s_count~24_combout\ : std_logic;
SIGNAL \inst9|s_count~26_combout\ : std_logic;
SIGNAL \inst9|s_count~19_combout\ : std_logic;
SIGNAL \inst9|s_count~20_combout\ : std_logic;
SIGNAL \inst9|s_count~22_combout\ : std_logic;
SIGNAL \inst6|Equal6~0_combout\ : std_logic;
SIGNAL \inst9|s_count~28_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|s_count[1]~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|s_count~23_combout\ : std_logic;
SIGNAL \inst9|s_count~29_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|s_count~21_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|s_count~30_combout\ : std_logic;
SIGNAL \inst9|s_count~27_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|s_count~25_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|s_count~31_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|s_count~32_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~q\ : std_logic;
SIGNAL \inst|reg_fstate.Extra~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Extra~1_combout\ : std_logic;
SIGNAL \inst|fstate.Extra~q\ : std_logic;
SIGNAL \inst|reg_fstate.Stop~0_combout\ : std_logic;
SIGNAL \inst|fstate.Stop~q\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~2_combout\ : std_logic;
SIGNAL \inst|reg_fstate.StartPrg~3_combout\ : std_logic;
SIGNAL \inst|fstate.StartPrg~q\ : std_logic;
SIGNAL \inst|start_stop~0_combout\ : std_logic;
SIGNAL \inst|reg_fstate~1_combout\ : std_logic;
SIGNAL \inst|reg_fstate.Init~0_combout\ : std_logic;
SIGNAL \inst|fstate.Init~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~16_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TAmmassar~q\ : std_logic;
SIGNAL \iaaanst1|stOut[0]~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector15~2_combout\ : std_logic;
SIGNAL \iaaanst1|Selector15~4_combout\ : std_logic;
SIGNAL \inst19|Mux3~5_combout\ : std_logic;
SIGNAL \inst19|Mux3~4_combout\ : std_logic;
SIGNAL \inst19|Mux3~3_combout\ : std_logic;
SIGNAL \inst19|Mux3~9_combout\ : std_logic;
SIGNAL \inst|en_2~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~8_combout\ : std_logic;
SIGNAL \inst19|Mux2~4_combout\ : std_logic;
SIGNAL \inst19|Mux2~10_combout\ : std_logic;
SIGNAL \inst19|Mux2~9_combout\ : std_logic;
SIGNAL \inst19|Mux0~2_combout\ : std_logic;
SIGNAL \inst23|Equal2~0_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~65_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|decOut_n~0_combout\ : std_logic;
SIGNAL \inst17|decOut_n~1_combout\ : std_logic;
SIGNAL \inst17|decOut_n~2_combout\ : std_logic;
SIGNAL \inst17|decOut_n~3_combout\ : std_logic;
SIGNAL \inst17|decOut_n~4_combout\ : std_logic;
SIGNAL \inst17|decOut_n~5_combout\ : std_logic;
SIGNAL \inst17|decOut_n~6_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~56_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~72_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~73_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~74_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~71_combout\ : std_logic;
SIGNAL \inst19|Mux2~8_combout\ : std_logic;
SIGNAL \inst23|LessThan0~3_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~66_combout\ : std_logic;
SIGNAL \inst18|muxOut[1]~6_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~9_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~68_combout\ : std_logic;
SIGNAL \inst18|muxOut[0]~7_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~35_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~34_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~33_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~70_combout\ : std_logic;
SIGNAL \inst18|muxOut[2]~8_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~26_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~25_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~24_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~69_combout\ : std_logic;
SIGNAL \inst18|muxOut[3]~9_combout\ : std_logic;
SIGNAL \inst16|decOut_n~5_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~67_combout\ : std_logic;
SIGNAL \inst16|decOut_n~25_combout\ : std_logic;
SIGNAL \inst16|decOut_n~7_combout\ : std_logic;
SIGNAL \inst16|decOut_n~8_combout\ : std_logic;
SIGNAL \inst16|decOut_n~9_combout\ : std_logic;
SIGNAL \inst16|decOut_n~6_combout\ : std_logic;
SIGNAL \inst16|decOut_n~10_combout\ : std_logic;
SIGNAL \inst16|decOut_n~11_combout\ : std_logic;
SIGNAL \inst16|decOut_n~12_combout\ : std_logic;
SIGNAL \inst16|decOut_n~13_combout\ : std_logic;
SIGNAL \inst16|decOut_n~14_combout\ : std_logic;
SIGNAL \inst16|decOut_n~15_combout\ : std_logic;
SIGNAL \inst16|decOut_n~16_combout\ : std_logic;
SIGNAL \inst16|decOut_n~17_combout\ : std_logic;
SIGNAL \inst16|decOut_n~20_combout\ : std_logic;
SIGNAL \inst16|decOut_n~18_combout\ : std_logic;
SIGNAL \inst16|decOut_n~19_combout\ : std_logic;
SIGNAL \inst16|decOut_n~21_combout\ : std_logic;
SIGNAL \inst16|decOut_n~23_combout\ : std_logic;
SIGNAL \inst16|decOut_n~22_combout\ : std_logic;
SIGNAL \inst16|decOut_n~24_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~25_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~28_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~24_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~61_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~53_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~54_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~52_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~63_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~42_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~43_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~41_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~62_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~9_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~60_combout\ : std_logic;
SIGNAL \inst14|decOut_n~12_combout\ : std_logic;
SIGNAL \inst14|decOut_n~21_combout\ : std_logic;
SIGNAL \inst14|decOut_n~13_combout\ : std_logic;
SIGNAL \inst14|decOut_n~22_combout\ : std_logic;
SIGNAL \inst14|decOut_n~14_combout\ : std_logic;
SIGNAL \inst14|decOut_n~23_combout\ : std_logic;
SIGNAL \inst14|decOut_n~15_combout\ : std_logic;
SIGNAL \inst14|decOut_n~24_combout\ : std_logic;
SIGNAL \inst14|decOut_n~16_combout\ : std_logic;
SIGNAL \inst14|decOut_n~17_combout\ : std_logic;
SIGNAL \inst14|decOut_n~19_combout\ : std_logic;
SIGNAL \inst14|decOut_n~18_combout\ : std_logic;
SIGNAL \inst14|decOut_n~25_combout\ : std_logic;
SIGNAL \inst14|decOut_n~20_combout\ : std_logic;
SIGNAL \inst14|decOut_n~26_combout\ : std_logic;
SIGNAL \inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst15|decOut_n[6]~12_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_combout\ : std_logic;
SIGNAL \inst6|Equal38~0_combout\ : std_logic;
SIGNAL \inst6|Equal6~1_combout\ : std_logic;
SIGNAL \inst6|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~59_combout\ : std_logic;
SIGNAL \inst6|outBCD2[1]~8_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~4_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~5_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~3_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~9_combout\ : std_logic;
SIGNAL \inst15|decOut_n~6_combout\ : std_logic;
SIGNAL \inst15|decOut_n~7_combout\ : std_logic;
SIGNAL \inst15|decOut_n~8_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~9_combout\ : std_logic;
SIGNAL \inst15|decOut_n[1]~10_combout\ : std_logic;
SIGNAL \inst15|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \iaaanst1|stOut~1_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst11|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst4|Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst2|dataOut\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst16|ALT_INV_decOut_n~5_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_decOut_n~3_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_stOut[0]~0_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_stOut~1_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_Selector15~4_combout\ : std_logic;

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
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst16|ALT_INV_decOut_n~5_combout\ <= NOT \inst16|decOut_n~5_combout\;
\inst17|ALT_INV_decOut_n~3_combout\ <= NOT \inst17|decOut_n~3_combout\;
\iaaanst1|ALT_INV_stOut[0]~0_combout\ <= NOT \iaaanst1|stOut[0]~0_combout\;
\iaaanst1|ALT_INV_WideOr8~combout\ <= NOT \iaaanst1|WideOr8~combout\;
\iaaanst1|ALT_INV_stOut~1_combout\ <= NOT \iaaanst1|stOut~1_combout\;
\iaaanst1|ALT_INV_Selector15~4_combout\ <= NOT \iaaanst1|Selector15~4_combout\;
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iaaanst1|Selector15~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iaaanst1|ALT_INV_Selector15~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|ALT_INV_decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~23_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~25_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|decOut_n~26_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[6]~12_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[2]~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[1]~10_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|decOut_n[0]~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

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
	i => \iaaanst1|ALT_INV_stOut~1_combout\,
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
	i => \iaaanst1|ALT_INV_stOut[0]~0_combout\,
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
	i => \iaaanst1|ALT_INV_WideOr8~combout\,
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

-- Location: LCCOMB_X74_Y7_N10
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|s_debounceCnt\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

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

-- Location: LCCOMB_X76_Y6_N2
\inst1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst1|s_dirtyIn~0_combout\);

-- Location: FF_X76_Y6_N3
\inst1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_dirtyIn~q\);

-- Location: FF_X75_Y6_N17
\inst1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_previousIn~q\);

-- Location: LCCOMB_X74_Y7_N12
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_debounceCnt\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_debounceCnt\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_debounceCnt\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X72_Y6_N12
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~2_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X75_Y6_N14
\inst1|s_debounceCnt[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[4]~4_combout\ = (\inst1|s_debounceCnt\(22)) # (((\inst1|s_debounceCnt[4]~29_combout\) # (!\inst1|s_dirtyIn~q\)) # (!\inst1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[4]~29_combout\,
	datad => \inst1|s_dirtyIn~q\,
	combout => \inst1|s_debounceCnt[4]~4_combout\);

-- Location: FF_X72_Y6_N13
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X74_Y7_N14
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_debounceCnt\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_debounceCnt\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_debounceCnt\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X72_Y6_N22
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X72_Y6_N23
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y7_N16
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_debounceCnt\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_debounceCnt\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_debounceCnt\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X72_Y6_N28
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|Add0~6_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X72_Y6_N29
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y7_N18
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_debounceCnt\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|s_debounceCnt\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|s_debounceCnt\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X72_Y6_N18
\inst1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~24_combout\ = (\inst1|Add0~8_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~24_combout\);

-- Location: FF_X72_Y6_N19
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~24_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X72_Y6_N24
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (!\inst1|s_debounceCnt\(1) & (!\inst1|s_debounceCnt\(3) & (!\inst1|s_debounceCnt\(2) & !\inst1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(1),
	datab => \inst1|s_debounceCnt\(3),
	datac => \inst1|s_debounceCnt\(2),
	datad => \inst1|s_debounceCnt\(4),
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X74_Y7_N20
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|s_debounceCnt\(5) & (\inst1|Add0~9\ & VCC)) # (!\inst1|s_debounceCnt\(5) & (!\inst1|Add0~9\))
-- \inst1|Add0~11\ = CARRY((!\inst1|s_debounceCnt\(5) & !\inst1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X72_Y6_N30
\inst1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~25_combout\ = (\inst1|Add0~10_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~25_combout\);

-- Location: FF_X72_Y6_N31
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~25_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X74_Y7_N22
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|s_debounceCnt\(6) & ((GND) # (!\inst1|Add0~11\))) # (!\inst1|s_debounceCnt\(6) & (\inst1|Add0~11\ $ (GND)))
-- \inst1|Add0~13\ = CARRY((\inst1|s_debounceCnt\(6)) # (!\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X74_Y6_N18
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_debounceCnt\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|s_debounceCnt\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|s_debounceCnt\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X74_Y6_N20
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|s_debounceCnt\(21) & (\inst1|Add0~41\ & VCC)) # (!\inst1|s_debounceCnt\(21) & (!\inst1|Add0~41\))
-- \inst1|Add0~43\ = CARRY((!\inst1|s_debounceCnt\(21) & !\inst1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X73_Y6_N16
\inst1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~10_combout\ = (\inst1|s_debounceCnt[4]~4_combout\ & (\inst1|Add0~42_combout\ & \inst1|s_debounceCnt[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[4]~4_combout\,
	datac => \inst1|Add0~42_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X73_Y6_N17
\inst1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(21));

-- Location: LCCOMB_X73_Y6_N28
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|s_debounceCnt\(17)) # ((\inst1|s_debounceCnt\(16)) # (\inst1|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(17),
	datac => \inst1|s_debounceCnt\(16),
	datad => \inst1|s_debounceCnt\(15),
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X72_Y6_N20
\inst1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~8_combout\ = (!\inst1|s_debounceCnt\(5) & \inst1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt\(5),
	datad => \inst1|s_pulsedOut~7_combout\,
	combout => \inst1|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X73_Y6_N10
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|s_debounceCnt\(7)) # ((\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(0)) # (!\inst1|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(7),
	datac => \inst1|s_debounceCnt\(6),
	datad => \inst1|s_pulsedOut~8_combout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X73_Y6_N24
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(10)) # ((\inst1|s_debounceCnt\(8) & (\inst1|s_debounceCnt\(9) & \inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datab => \inst1|s_debounceCnt\(8),
	datac => \inst1|s_debounceCnt\(9),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y6_N18
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|s_debounceCnt\(12)) # ((\inst1|s_debounceCnt\(13)) # ((\inst1|s_debounceCnt\(11) & \inst1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(12),
	datab => \inst1|s_debounceCnt\(11),
	datac => \inst1|s_debounceCnt\(13),
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X73_Y6_N2
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|s_debounceCnt\(18) & ((\inst1|LessThan0~3_combout\) # ((\inst1|s_debounceCnt\(14) & \inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|s_debounceCnt\(18),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X73_Y6_N12
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (\inst1|s_debounceCnt\(20)) # ((\inst1|s_debounceCnt\(21)) # ((\inst1|s_debounceCnt\(19) & \inst1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datab => \inst1|s_debounceCnt\(21),
	datac => \inst1|s_debounceCnt\(19),
	datad => \inst1|LessThan0~4_combout\,
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y6_N12
\inst1|s_debounceCnt[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[4]~2_combout\ = (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~5_combout\) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|s_debounceCnt[4]~2_combout\);

-- Location: LCCOMB_X75_Y6_N0
\inst1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~3_combout\ = (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt~3_combout\);

-- Location: FF_X75_Y6_N1
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~3_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X74_Y7_N24
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|s_debounceCnt\(7) & (\inst1|Add0~13\ & VCC)) # (!\inst1|s_debounceCnt\(7) & (!\inst1|Add0~13\))
-- \inst1|Add0~15\ = CARRY((!\inst1|s_debounceCnt\(7) & !\inst1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X73_Y6_N0
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|Add0~14_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X73_Y6_N1
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X74_Y7_N26
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|s_debounceCnt\(8) & ((GND) # (!\inst1|Add0~15\))) # (!\inst1|s_debounceCnt\(8) & (\inst1|Add0~15\ $ (GND)))
-- \inst1|Add0~17\ = CARRY((\inst1|s_debounceCnt\(8)) # (!\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X75_Y6_N10
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X75_Y6_N11
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y7_N28
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|s_debounceCnt\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|s_debounceCnt\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X75_Y6_N20
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X75_Y6_N21
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X74_Y7_N30
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|s_debounceCnt\(10) & ((GND) # (!\inst1|Add0~19\))) # (!\inst1|s_debounceCnt\(10) & (\inst1|Add0~19\ $ (GND)))
-- \inst1|Add0~21\ = CARRY((\inst1|s_debounceCnt\(10)) # (!\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X73_Y6_N22
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|Add0~20_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X73_Y6_N23
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X74_Y6_N0
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_debounceCnt\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|s_debounceCnt\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|s_debounceCnt\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X75_Y6_N28
\inst1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~17_combout\ = (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt~17_combout\);

-- Location: FF_X75_Y6_N29
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~17_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X74_Y6_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_debounceCnt\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|s_debounceCnt\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|s_debounceCnt\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X73_Y6_N26
\inst1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~11_combout\ = (\inst1|Add0~24_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~11_combout\);

-- Location: FF_X73_Y6_N27
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~11_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X74_Y6_N4
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_debounceCnt\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|s_debounceCnt\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|s_debounceCnt\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X73_Y6_N4
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X73_Y6_N5
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X74_Y6_N6
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|s_debounceCnt\(14) & ((GND) # (!\inst1|Add0~27\))) # (!\inst1|s_debounceCnt\(14) & (\inst1|Add0~27\ $ (GND)))
-- \inst1|Add0~29\ = CARRY((\inst1|s_debounceCnt\(14)) # (!\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X75_Y6_N22
\inst1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~18_combout\ = (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt~18_combout\);

-- Location: FF_X75_Y6_N23
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~18_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X74_Y6_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_debounceCnt\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|s_debounceCnt\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|s_debounceCnt\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X74_Y6_N28
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|Add0~30_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~30_combout\,
	datac => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X74_Y6_N29
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X74_Y6_N10
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_debounceCnt\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|s_debounceCnt\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|s_debounceCnt\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X74_Y6_N30
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|Add0~32_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~32_combout\,
	datac => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X74_Y6_N31
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X74_Y6_N12
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|s_debounceCnt\(17) & (\inst1|Add0~33\ & VCC)) # (!\inst1|s_debounceCnt\(17) & (!\inst1|Add0~33\))
-- \inst1|Add0~35\ = CARRY((!\inst1|s_debounceCnt\(17) & !\inst1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X73_Y6_N20
\inst1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~8_combout\ = (\inst1|Add0~34_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~8_combout\);

-- Location: FF_X73_Y6_N21
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~8_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y6_N14
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_debounceCnt\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|s_debounceCnt\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|s_debounceCnt\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X75_Y6_N24
\inst1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~19_combout\ = (\inst1|s_debounceCnt[4]~4_combout\ & (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~36_combout\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[4]~4_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X75_Y6_N25
\inst1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(18));

-- Location: LCCOMB_X74_Y6_N16
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|s_debounceCnt\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|s_debounceCnt\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X75_Y6_N2
\inst1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~20_combout\ = (\inst1|s_debounceCnt[4]~4_combout\ & (\inst1|s_debounceCnt[4]~2_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~38_combout\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[4]~4_combout\,
	datad => \inst1|s_debounceCnt[4]~2_combout\,
	combout => \inst1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X75_Y6_N3
\inst1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(19));

-- Location: LCCOMB_X73_Y6_N30
\inst1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~9_combout\ = (\inst1|s_debounceCnt[4]~4_combout\ & (\inst1|Add0~40_combout\ & \inst1|s_debounceCnt[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[4]~4_combout\,
	datab => \inst1|Add0~40_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X73_Y6_N31
\inst1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(20));

-- Location: LCCOMB_X73_Y6_N14
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(20) & (!\inst1|s_debounceCnt\(13) & (!\inst1|s_debounceCnt\(12) & !\inst1|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datab => \inst1|s_debounceCnt\(13),
	datac => \inst1|s_debounceCnt\(12),
	datad => \inst1|s_debounceCnt\(21),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X74_Y6_N24
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(16) & (!\inst1|s_debounceCnt\(17) & (!\inst1|s_debounceCnt\(6) & !\inst1|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datab => \inst1|s_debounceCnt\(17),
	datac => \inst1|s_debounceCnt\(6),
	datad => \inst1|s_debounceCnt\(15),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X75_Y6_N8
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(14) & (!\inst1|s_debounceCnt\(19) & (!\inst1|s_debounceCnt\(18) & !\inst1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(19),
	datac => \inst1|s_debounceCnt\(18),
	datad => \inst1|s_debounceCnt\(11),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X75_Y6_N6
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (!\inst1|s_debounceCnt\(8) & (!\inst1|s_debounceCnt\(9) & (!\inst1|s_debounceCnt\(10) & !\inst1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datab => \inst1|s_debounceCnt\(9),
	datac => \inst1|s_debounceCnt\(10),
	datad => \inst1|s_debounceCnt\(7),
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X75_Y6_N18
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (\inst1|s_pulsedOut~3_combout\ & (\inst1|s_pulsedOut~2_combout\ & (\inst1|s_pulsedOut~5_combout\ & \inst1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~3_combout\,
	datab => \inst1|s_pulsedOut~2_combout\,
	datac => \inst1|s_pulsedOut~5_combout\,
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X75_Y6_N26
\inst1|s_debounceCnt[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[4]~29_combout\ = ((\inst1|s_debounceCnt\(5)) # ((\inst1|s_debounceCnt\(0)) # (!\inst1|s_pulsedOut~6_combout\))) # (!\inst1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~7_combout\,
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_pulsedOut~6_combout\,
	combout => \inst1|s_debounceCnt[4]~29_combout\);

-- Location: LCCOMB_X75_Y6_N4
\inst1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~27_combout\ = (\inst1|s_debounceCnt\(22) & (((!\inst1|LessThan0~5_combout\)))) # (!\inst1|s_debounceCnt\(22) & (((\inst1|s_debounceCnt[4]~29_combout\)) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[4]~29_combout\,
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X74_Y6_N22
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = \inst1|Add0~43\ $ (\inst1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_debounceCnt\(22),
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\);

-- Location: LCCOMB_X75_Y6_N30
\inst1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~28_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt[22]~27_combout\ & ((\inst1|Add0~44_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[22]~27_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X75_Y6_N31
\inst1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(22));

-- Location: LCCOMB_X73_Y6_N6
\inst1|s_debounceCnt[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[4]~5_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_previousIn~q\ & ((!\inst1|LessThan0~5_combout\) # (!\inst1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|LessThan0~5_combout\,
	combout => \inst1|s_debounceCnt[4]~5_combout\);

-- Location: LCCOMB_X73_Y6_N8
\inst1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~26_combout\ = (\inst1|Add0~0_combout\ & \inst1|s_debounceCnt[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datad => \inst1|s_debounceCnt[4]~5_combout\,
	combout => \inst1|s_debounceCnt~26_combout\);

-- Location: FF_X73_Y6_N9
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~26_combout\,
	ena => \inst1|s_debounceCnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y6_N16
\inst1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~9_combout\ = (\inst1|s_debounceCnt\(0) & (\inst1|s_dirtyIn~q\ & (\inst1|s_previousIn~q\ & !\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt\(22),
	combout => \inst1|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X76_Y6_N8
\inst1|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~10_combout\ = (\inst1|s_pulsedOut~9_combout\ & (\inst1|s_pulsedOut~6_combout\ & (\inst1|s_pulsedOut~7_combout\ & !\inst1|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~9_combout\,
	datab => \inst1|s_pulsedOut~6_combout\,
	datac => \inst1|s_pulsedOut~7_combout\,
	datad => \inst1|s_debounceCnt\(5),
	combout => \inst1|s_pulsedOut~10_combout\);

-- Location: FF_X76_Y6_N9
\inst1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_pulsedOut~q\);

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

-- Location: LCCOMB_X84_Y33_N4
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

-- Location: FF_X84_Y33_N5
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

-- Location: FF_X76_Y33_N13
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

-- Location: LCCOMB_X75_Y33_N10
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

-- Location: LCCOMB_X77_Y33_N10
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(3) & (!\inst3|s_debounceCnt\(4) & (!\inst3|s_debounceCnt\(1) & !\inst3|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(3),
	datab => \inst3|s_debounceCnt\(4),
	datac => \inst3|s_debounceCnt\(1),
	datad => \inst3|s_debounceCnt\(2),
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X75_Y33_N8
\inst3|s_debounceCnt[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[11]~29_combout\ = ((\inst3|s_debounceCnt\(0)) # ((\inst3|s_debounceCnt\(5)) # (!\inst3|s_pulsedOut~6_combout\))) # (!\inst3|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~7_combout\,
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_debounceCnt\(5),
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_debounceCnt[11]~29_combout\);

-- Location: LCCOMB_X76_Y33_N12
\inst3|s_debounceCnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[11]~4_combout\ = (\inst3|s_debounceCnt\(22)) # (((\inst3|s_debounceCnt[11]~29_combout\) # (!\inst3|s_previousIn~q\)) # (!\inst3|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[11]~29_combout\,
	combout => \inst3|s_debounceCnt[11]~4_combout\);

-- Location: LCCOMB_X75_Y33_N28
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_debounceCnt\(9) & (\inst3|Add0~17\ & VCC)) # (!\inst3|s_debounceCnt\(9) & (!\inst3|Add0~17\))
-- \inst3|Add0~19\ = CARRY((!\inst3|s_debounceCnt\(9) & !\inst3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X75_Y33_N30
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_debounceCnt\(10) & ((GND) # (!\inst3|Add0~19\))) # (!\inst3|s_debounceCnt\(10) & (\inst3|Add0~19\ $ (GND)))
-- \inst3|Add0~21\ = CARRY((\inst3|s_debounceCnt\(10)) # (!\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X77_Y33_N2
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X77_Y33_N3
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X75_Y32_N0
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

-- Location: LCCOMB_X76_Y33_N30
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|s_debounceCnt[11]~2_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X76_Y33_N31
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X75_Y32_N2
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

-- Location: LCCOMB_X76_Y33_N22
\inst3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~11_combout\ = (\inst3|s_debounceCnt[11]~5_combout\ & \inst3|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[11]~5_combout\,
	datad => \inst3|Add0~24_combout\,
	combout => \inst3|s_debounceCnt~11_combout\);

-- Location: FF_X76_Y33_N23
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~11_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X75_Y32_N4
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

-- Location: LCCOMB_X76_Y33_N8
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|s_debounceCnt[11]~5_combout\ & \inst3|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[11]~5_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X76_Y33_N9
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X75_Y32_N6
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

-- Location: LCCOMB_X76_Y33_N28
\inst3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~18_combout\ = (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[11]~2_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|Add0~28_combout\,
	combout => \inst3|s_debounceCnt~18_combout\);

-- Location: FF_X76_Y33_N29
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~18_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X75_Y32_N8
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

-- Location: LCCOMB_X75_Y32_N28
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|Add0~30_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~30_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y32_N29
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X75_Y32_N10
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

-- Location: LCCOMB_X75_Y32_N26
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|Add0~32_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~32_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y32_N27
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X75_Y32_N12
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_debounceCnt\(17) & (\inst3|Add0~33\ & VCC)) # (!\inst3|s_debounceCnt\(17) & (!\inst3|Add0~33\))
-- \inst3|Add0~35\ = CARRY((!\inst3|s_debounceCnt\(17) & !\inst3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X75_Y32_N24
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X75_Y32_N25
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X76_Y32_N12
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(17)) # ((\inst3|s_debounceCnt\(16)) # (\inst3|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(17),
	datac => \inst3|s_debounceCnt\(16),
	datad => \inst3|s_debounceCnt\(15),
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X75_Y32_N14
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_debounceCnt\(18) & ((GND) # (!\inst3|Add0~35\))) # (!\inst3|s_debounceCnt\(18) & (\inst3|Add0~35\ $ (GND)))
-- \inst3|Add0~37\ = CARRY((\inst3|s_debounceCnt\(18)) # (!\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X76_Y33_N26
\inst3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~19_combout\ = (\inst3|s_debounceCnt[11]~4_combout\ & (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[11]~4_combout\,
	datab => \inst3|s_debounceCnt[11]~2_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|Add0~36_combout\,
	combout => \inst3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X76_Y33_N27
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

-- Location: LCCOMB_X77_Y33_N6
\inst3|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~8_combout\ = (!\inst3|s_debounceCnt\(5) & \inst3|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(5),
	datad => \inst3|s_pulsedOut~7_combout\,
	combout => \inst3|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X77_Y33_N18
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|s_debounceCnt\(7)) # ((\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~8_combout\))))

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
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y33_N28
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(10)) # ((\inst3|s_debounceCnt\(9) & (\inst3|s_debounceCnt\(8) & \inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(9),
	datab => \inst3|s_debounceCnt\(10),
	datac => \inst3|s_debounceCnt\(8),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y33_N18
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(11) & \inst3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datab => \inst3|s_debounceCnt\(13),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y33_N0
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(18) & ((\inst3|LessThan0~3_combout\) # ((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~3_combout\,
	datab => \inst3|s_debounceCnt\(14),
	datac => \inst3|s_debounceCnt\(18),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X76_Y33_N2
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(20)) # ((\inst3|s_debounceCnt\(21)) # ((\inst3|s_debounceCnt\(19) & \inst3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|s_debounceCnt\(21),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X76_Y33_N20
\inst3|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[11]~2_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X75_Y32_N16
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

-- Location: LCCOMB_X76_Y33_N24
\inst3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~20_combout\ = (\inst3|s_debounceCnt[11]~4_combout\ & (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[11]~4_combout\,
	datab => \inst3|s_debounceCnt[11]~2_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|Add0~38_combout\,
	combout => \inst3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X76_Y33_N25
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

-- Location: LCCOMB_X75_Y32_N18
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

-- Location: LCCOMB_X76_Y33_N6
\inst3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~9_combout\ = (\inst3|s_debounceCnt[11]~4_combout\ & (\inst3|s_debounceCnt[11]~5_combout\ & \inst3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[11]~4_combout\,
	datac => \inst3|s_debounceCnt[11]~5_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X76_Y33_N7
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

-- Location: LCCOMB_X75_Y32_N20
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

-- Location: LCCOMB_X76_Y33_N4
\inst3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~10_combout\ = (\inst3|s_debounceCnt[11]~5_combout\ & (\inst3|Add0~42_combout\ & \inst3|s_debounceCnt[11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[11]~5_combout\,
	datac => \inst3|Add0~42_combout\,
	datad => \inst3|s_debounceCnt[11]~4_combout\,
	combout => \inst3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X76_Y33_N5
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

-- Location: LCCOMB_X75_Y32_N22
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

-- Location: LCCOMB_X75_Y33_N2
\inst3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~27_combout\ = (\inst3|s_debounceCnt\(22) & (((!\inst3|LessThan0~5_combout\)))) # (!\inst3|s_debounceCnt\(22) & (((\inst3|s_debounceCnt[11]~29_combout\)) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt[11]~29_combout\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X75_Y33_N4
\inst3|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~28_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_debounceCnt[22]~27_combout\ & ((\inst3|Add0~44_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|Add0~44_combout\,
	datad => \inst3|s_debounceCnt[22]~27_combout\,
	combout => \inst3|s_debounceCnt[22]~28_combout\);

-- Location: FF_X75_Y33_N5
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

-- Location: LCCOMB_X76_Y33_N14
\inst3|s_debounceCnt[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[11]~5_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[11]~5_combout\);

-- Location: LCCOMB_X77_Y33_N4
\inst3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~26_combout\ = (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~26_combout\);

-- Location: FF_X77_Y33_N5
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~26_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y33_N12
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_debounceCnt\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst3|s_debounceCnt\(1) & (!\inst3|Add0~1\))
-- \inst3|Add0~3\ = CARRY((!\inst3|s_debounceCnt\(1) & !\inst3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X77_Y33_N26
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X77_Y33_N27
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X75_Y33_N14
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

-- Location: LCCOMB_X77_Y33_N0
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X77_Y33_N1
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X75_Y33_N16
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

-- Location: LCCOMB_X77_Y33_N30
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X77_Y33_N31
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X75_Y33_N18
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

-- Location: LCCOMB_X77_Y33_N16
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~8_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X77_Y33_N17
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X75_Y33_N20
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

-- Location: LCCOMB_X77_Y33_N20
\inst3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~25_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~25_combout\);

-- Location: FF_X77_Y33_N21
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~25_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X75_Y33_N22
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_debounceCnt\(6) & ((GND) # (!\inst3|Add0~11\))) # (!\inst3|s_debounceCnt\(6) & (\inst3|Add0~11\ $ (GND)))
-- \inst3|Add0~13\ = CARRY((\inst3|s_debounceCnt\(6)) # (!\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X76_Y33_N16
\inst3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~3_combout\ = (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~12_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[11]~2_combout\,
	combout => \inst3|s_debounceCnt~3_combout\);

-- Location: FF_X76_Y33_N17
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~3_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X75_Y33_N24
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

-- Location: LCCOMB_X77_Y33_N8
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|Add0~14_combout\ & \inst3|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~14_combout\,
	datad => \inst3|s_debounceCnt[11]~5_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X77_Y33_N9
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X75_Y33_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_debounceCnt\(8) & ((GND) # (!\inst3|Add0~15\))) # (!\inst3|s_debounceCnt\(8) & (\inst3|Add0~15\ $ (GND)))
-- \inst3|Add0~17\ = CARRY((\inst3|s_debounceCnt\(8)) # (!\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X77_Y33_N22
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[11]~2_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X77_Y33_N23
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X77_Y33_N12
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|s_debounceCnt[11]~2_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~18_combout\,
	datad => \inst3|s_debounceCnt[11]~2_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X77_Y33_N13
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X77_Y33_N24
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (!\inst3|s_debounceCnt\(9) & (!\inst3|s_debounceCnt\(7) & (!\inst3|s_debounceCnt\(8) & !\inst3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(9),
	datab => \inst3|s_debounceCnt\(7),
	datac => \inst3|s_debounceCnt\(8),
	datad => \inst3|s_debounceCnt\(10),
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X75_Y33_N0
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(21) & (!\inst3|s_debounceCnt\(12) & (!\inst3|s_debounceCnt\(13) & !\inst3|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(21),
	datab => \inst3|s_debounceCnt\(12),
	datac => \inst3|s_debounceCnt\(13),
	datad => \inst3|s_debounceCnt\(20),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X76_Y33_N10
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

-- Location: LCCOMB_X75_Y32_N30
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(15) & (!\inst3|s_debounceCnt\(17) & (!\inst3|s_debounceCnt\(16) & !\inst3|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(15),
	datab => \inst3|s_debounceCnt\(17),
	datac => \inst3|s_debounceCnt\(16),
	datad => \inst3|s_debounceCnt\(6),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X75_Y33_N6
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_pulsedOut~4_combout\ & (\inst3|s_pulsedOut~3_combout\ & (\inst3|s_pulsedOut~5_combout\ & \inst3|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~4_combout\,
	datab => \inst3|s_pulsedOut~3_combout\,
	datac => \inst3|s_pulsedOut~5_combout\,
	datad => \inst3|s_pulsedOut~2_combout\,
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X74_Y33_N18
\inst3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~9_combout\ = (!\inst3|s_debounceCnt\(22) & (\inst3|s_debounceCnt\(0) & (\inst3|s_previousIn~q\ & \inst3|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_dirtyIn~q\,
	combout => \inst3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X74_Y33_N20
\inst3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~10_combout\ = (\inst3|s_pulsedOut~6_combout\ & (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~7_combout\ & \inst3|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~6_combout\,
	datab => \inst3|s_debounceCnt\(5),
	datac => \inst3|s_pulsedOut~7_combout\,
	datad => \inst3|s_pulsedOut~9_combout\,
	combout => \inst3|s_pulsedOut~10_combout\);

-- Location: FF_X74_Y33_N21
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

-- Location: LCCOMB_X83_Y28_N18
\inst13|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	combout => \inst13|s_dirtyIn~0_combout\);

-- Location: FF_X83_Y28_N19
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

-- Location: LCCOMB_X81_Y28_N10
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|s_debounceCnt\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: LCCOMB_X83_Y28_N4
\inst13|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_previousIn~feeder_combout\ = \inst13|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|s_dirtyIn~q\,
	combout => \inst13|s_previousIn~feeder_combout\);

-- Location: FF_X83_Y28_N5
\inst13|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_previousIn~q\);

-- Location: LCCOMB_X81_Y28_N12
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

-- Location: LCCOMB_X82_Y28_N14
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|Add0~2_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~2_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X82_Y28_N15
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y28_N14
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|s_debounceCnt\(2) & ((GND) # (!\inst13|Add0~3\))) # (!\inst13|s_debounceCnt\(2) & (\inst13|Add0~3\ $ (GND)))
-- \inst13|Add0~5\ = CARRY((\inst13|s_debounceCnt\(2)) # (!\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: LCCOMB_X82_Y28_N12
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|Add0~4_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~4_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X82_Y28_N13
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y28_N16
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|s_debounceCnt\(3) & (\inst13|Add0~5\ & VCC)) # (!\inst13|s_debounceCnt\(3) & (!\inst13|Add0~5\))
-- \inst13|Add0~7\ = CARRY((!\inst13|s_debounceCnt\(3) & !\inst13|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: LCCOMB_X82_Y28_N2
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|Add0~6_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~6_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X82_Y28_N3
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y28_N18
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|s_debounceCnt\(4) & ((GND) # (!\inst13|Add0~7\))) # (!\inst13|s_debounceCnt\(4) & (\inst13|Add0~7\ $ (GND)))
-- \inst13|Add0~9\ = CARRY((\inst13|s_debounceCnt\(4)) # (!\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: LCCOMB_X82_Y28_N28
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|Add0~8_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~8_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X82_Y28_N29
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X81_Y28_N20
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

-- Location: LCCOMB_X82_Y28_N20
\inst13|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~25_combout\ = (\inst13|Add0~10_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~10_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~25_combout\);

-- Location: FF_X82_Y28_N21
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~25_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X82_Y28_N6
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (!\inst13|s_debounceCnt\(2) & (!\inst13|s_debounceCnt\(3) & (!\inst13|s_debounceCnt\(1) & !\inst13|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(2),
	datab => \inst13|s_debounceCnt\(3),
	datac => \inst13|s_debounceCnt\(1),
	datad => \inst13|s_debounceCnt\(4),
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X81_Y28_N22
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

-- Location: LCCOMB_X81_Y28_N28
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

-- Location: LCCOMB_X81_Y28_N30
\inst13|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|s_debounceCnt\(10) & ((GND) # (!\inst13|Add0~19\))) # (!\inst13|s_debounceCnt\(10) & (\inst13|Add0~19\ $ (GND)))
-- \inst13|Add0~21\ = CARRY((\inst13|s_debounceCnt\(10)) # (!\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: LCCOMB_X80_Y28_N8
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|Add0~20_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~20_combout\,
	datac => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X80_Y28_N9
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y27_N0
\inst13|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = (\inst13|s_debounceCnt\(11) & (\inst13|Add0~21\ & VCC)) # (!\inst13|s_debounceCnt\(11) & (!\inst13|Add0~21\))
-- \inst13|Add0~23\ = CARRY((!\inst13|s_debounceCnt\(11) & !\inst13|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst13|Add0~21\,
	combout => \inst13|Add0~22_combout\,
	cout => \inst13|Add0~23\);

-- Location: LCCOMB_X83_Y28_N30
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~22_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X83_Y28_N31
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y27_N2
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

-- Location: LCCOMB_X81_Y28_N8
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|Add0~24_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~24_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X81_Y28_N9
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y27_N4
\inst13|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~26_combout\ = (\inst13|s_debounceCnt\(13) & (\inst13|Add0~25\ & VCC)) # (!\inst13|s_debounceCnt\(13) & (!\inst13|Add0~25\))
-- \inst13|Add0~27\ = CARRY((!\inst13|s_debounceCnt\(13) & !\inst13|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst13|Add0~25\,
	combout => \inst13|Add0~26_combout\,
	cout => \inst13|Add0~27\);

-- Location: LCCOMB_X81_Y28_N6
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|Add0~26_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~26_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X81_Y28_N7
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X81_Y27_N6
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

-- Location: LCCOMB_X83_Y28_N12
\inst13|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~18_combout\ = (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~28_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt~18_combout\);

-- Location: FF_X83_Y28_N13
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~18_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y27_N8
\inst13|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~30_combout\ = (\inst13|s_debounceCnt\(15) & (\inst13|Add0~29\ & VCC)) # (!\inst13|s_debounceCnt\(15) & (!\inst13|Add0~29\))
-- \inst13|Add0~31\ = CARRY((!\inst13|s_debounceCnt\(15) & !\inst13|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst13|Add0~29\,
	combout => \inst13|Add0~30_combout\,
	cout => \inst13|Add0~31\);

-- Location: LCCOMB_X80_Y28_N24
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~30_combout\,
	datac => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X80_Y28_N25
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X81_Y27_N10
\inst13|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~32_combout\ = (\inst13|s_debounceCnt\(16) & ((GND) # (!\inst13|Add0~31\))) # (!\inst13|s_debounceCnt\(16) & (\inst13|Add0~31\ $ (GND)))
-- \inst13|Add0~33\ = CARRY((\inst13|s_debounceCnt\(16)) # (!\inst13|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst13|Add0~31\,
	combout => \inst13|Add0~32_combout\,
	cout => \inst13|Add0~33\);

-- Location: LCCOMB_X81_Y27_N28
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|s_debounceCnt[0]~5_combout\ & \inst13|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~5_combout\,
	datad => \inst13|Add0~32_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X81_Y27_N29
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y27_N12
\inst13|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~34_combout\ = (\inst13|s_debounceCnt\(17) & (\inst13|Add0~33\ & VCC)) # (!\inst13|s_debounceCnt\(17) & (!\inst13|Add0~33\))
-- \inst13|Add0~35\ = CARRY((!\inst13|s_debounceCnt\(17) & !\inst13|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst13|Add0~33\,
	combout => \inst13|Add0~34_combout\,
	cout => \inst13|Add0~35\);

-- Location: LCCOMB_X80_Y28_N18
\inst13|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~8_combout\ = (\inst13|s_debounceCnt[0]~5_combout\ & \inst13|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[0]~5_combout\,
	datad => \inst13|Add0~34_combout\,
	combout => \inst13|s_debounceCnt~8_combout\);

-- Location: FF_X80_Y28_N19
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~8_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y27_N14
\inst13|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~36_combout\ = (\inst13|s_debounceCnt\(18) & ((GND) # (!\inst13|Add0~35\))) # (!\inst13|s_debounceCnt\(18) & (\inst13|Add0~35\ $ (GND)))
-- \inst13|Add0~37\ = CARRY((\inst13|s_debounceCnt\(18)) # (!\inst13|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst13|Add0~35\,
	combout => \inst13|Add0~36_combout\,
	cout => \inst13|Add0~37\);

-- Location: LCCOMB_X83_Y28_N26
\inst13|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~19_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~4_combout\,
	datab => \inst13|Add0~36_combout\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt[18]~19_combout\);

-- Location: FF_X83_Y28_N27
\inst13|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y27_N16
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

-- Location: LCCOMB_X83_Y28_N28
\inst13|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~20_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~4_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~38_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt[19]~20_combout\);

-- Location: FF_X83_Y28_N29
\inst13|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y27_N18
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

-- Location: LCCOMB_X80_Y28_N28
\inst13|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~9_combout\ = (\inst13|s_debounceCnt[0]~5_combout\ & (\inst13|Add0~40_combout\ & \inst13|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~5_combout\,
	datab => \inst13|Add0~40_combout\,
	datad => \inst13|s_debounceCnt[0]~4_combout\,
	combout => \inst13|s_debounceCnt[20]~9_combout\);

-- Location: FF_X80_Y28_N29
\inst13|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(20));

-- Location: LCCOMB_X80_Y28_N22
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (!\inst13|s_debounceCnt\(21) & !\inst13|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt\(21),
	datad => \inst13|s_debounceCnt\(20),
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X81_Y28_N0
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (!\inst13|s_debounceCnt\(12) & !\inst13|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt\(12),
	datad => \inst13|s_debounceCnt\(13),
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y28_N10
\inst13|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~8_combout\ = (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~7_combout\,
	combout => \inst13|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X82_Y28_N22
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (\inst13|s_debounceCnt\(7)) # ((\inst13|s_debounceCnt\(6) & ((\inst13|s_debounceCnt\(0)) # (!\inst13|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_debounceCnt\(7),
	datac => \inst13|s_debounceCnt\(6),
	datad => \inst13|s_pulsedOut~8_combout\,
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X80_Y28_N16
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(10)) # ((\inst13|s_debounceCnt\(8) & (\inst13|s_debounceCnt\(9) & \inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datab => \inst13|s_debounceCnt\(9),
	datac => \inst13|s_debounceCnt\(10),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X80_Y28_N6
\inst13|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~3_combout\ = (\inst13|s_debounceCnt\(14) & (((\inst13|s_debounceCnt\(11) & \inst13|LessThan0~1_combout\)) # (!\inst13|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(14),
	datab => \inst13|s_debounceCnt\(11),
	datac => \inst13|LessThan0~2_combout\,
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~3_combout\);

-- Location: LCCOMB_X80_Y28_N0
\inst13|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~4_combout\ = (\inst13|s_debounceCnt\(17)) # ((\inst13|s_debounceCnt\(15)) # ((\inst13|s_debounceCnt\(16)) # (\inst13|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(17),
	datab => \inst13|s_debounceCnt\(15),
	datac => \inst13|s_debounceCnt\(16),
	datad => \inst13|LessThan0~3_combout\,
	combout => \inst13|LessThan0~4_combout\);

-- Location: LCCOMB_X80_Y28_N20
\inst13|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~6_combout\ = ((\inst13|s_debounceCnt\(18) & (\inst13|s_debounceCnt\(19) & \inst13|LessThan0~4_combout\))) # (!\inst13|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan0~5_combout\,
	datab => \inst13|s_debounceCnt\(18),
	datac => \inst13|s_debounceCnt\(19),
	datad => \inst13|LessThan0~4_combout\,
	combout => \inst13|LessThan0~6_combout\);

-- Location: LCCOMB_X83_Y28_N16
\inst13|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~2_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X83_Y28_N24
\inst13|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~3_combout\ = (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~12_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt~3_combout\);

-- Location: FF_X83_Y28_N25
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~3_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y28_N24
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

-- Location: LCCOMB_X82_Y28_N16
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|Add0~14_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~14_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y28_N17
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y28_N26
\inst13|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|s_debounceCnt\(8) & ((GND) # (!\inst13|Add0~15\))) # (!\inst13|s_debounceCnt\(8) & (\inst13|Add0~15\ $ (GND)))
-- \inst13|Add0~17\ = CARRY((\inst13|s_debounceCnt\(8)) # (!\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: LCCOMB_X83_Y28_N10
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~16_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X83_Y28_N11
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X83_Y28_N20
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|s_debounceCnt[0]~2_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|s_debounceCnt[0]~2_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X83_Y28_N21
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X82_Y28_N30
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (!\inst13|s_debounceCnt\(9) & (!\inst13|s_debounceCnt\(7) & (!\inst13|s_debounceCnt\(8) & !\inst13|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(7),
	datac => \inst13|s_debounceCnt\(8),
	datad => \inst13|s_debounceCnt\(10),
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X83_Y28_N22
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(18) & (!\inst13|s_debounceCnt\(19) & (!\inst13|s_debounceCnt\(11) & !\inst13|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datab => \inst13|s_debounceCnt\(19),
	datac => \inst13|s_debounceCnt\(11),
	datad => \inst13|s_debounceCnt\(14),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X81_Y28_N4
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(13) & (!\inst13|s_debounceCnt\(20) & (!\inst13|s_debounceCnt\(12) & !\inst13|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(13),
	datab => \inst13|s_debounceCnt\(20),
	datac => \inst13|s_debounceCnt\(12),
	datad => \inst13|s_debounceCnt\(21),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X82_Y28_N18
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(6) & (!\inst13|s_debounceCnt\(15) & (!\inst13|s_debounceCnt\(16) & !\inst13|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(6),
	datab => \inst13|s_debounceCnt\(15),
	datac => \inst13|s_debounceCnt\(16),
	datad => \inst13|s_debounceCnt\(17),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y28_N0
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_pulsedOut~4_combout\ & (\inst13|s_pulsedOut~5_combout\ & (\inst13|s_pulsedOut~3_combout\ & \inst13|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~4_combout\,
	datab => \inst13|s_pulsedOut~5_combout\,
	datac => \inst13|s_pulsedOut~3_combout\,
	datad => \inst13|s_pulsedOut~2_combout\,
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X82_Y28_N26
\inst13|s_debounceCnt[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~29_combout\ = (\inst13|s_debounceCnt\(0)) # ((\inst13|s_debounceCnt\(5)) # ((!\inst13|s_pulsedOut~6_combout\) # (!\inst13|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_debounceCnt\(5),
	datac => \inst13|s_pulsedOut~7_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_debounceCnt[0]~29_combout\);

-- Location: LCCOMB_X82_Y28_N8
\inst13|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~4_combout\ = (((\inst13|s_debounceCnt[0]~29_combout\) # (\inst13|s_debounceCnt\(22))) # (!\inst13|s_dirtyIn~q\)) # (!\inst13|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt[0]~29_combout\,
	datad => \inst13|s_debounceCnt\(22),
	combout => \inst13|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X81_Y27_N20
\inst13|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~42_combout\ = (\inst13|s_debounceCnt\(21) & (\inst13|Add0~41\ & VCC)) # (!\inst13|s_debounceCnt\(21) & (!\inst13|Add0~41\))
-- \inst13|Add0~43\ = CARRY((!\inst13|s_debounceCnt\(21) & !\inst13|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst13|Add0~41\,
	combout => \inst13|Add0~42_combout\,
	cout => \inst13|Add0~43\);

-- Location: LCCOMB_X80_Y28_N14
\inst13|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~10_combout\ = (\inst13|s_debounceCnt[0]~4_combout\ & (\inst13|s_debounceCnt[0]~5_combout\ & \inst13|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[0]~4_combout\,
	datac => \inst13|s_debounceCnt[0]~5_combout\,
	datad => \inst13|Add0~42_combout\,
	combout => \inst13|s_debounceCnt[21]~10_combout\);

-- Location: FF_X80_Y28_N15
\inst13|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(21));

-- Location: LCCOMB_X81_Y27_N22
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

-- Location: LCCOMB_X80_Y28_N12
\inst13|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~27_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~6_combout\)))) # (!\inst13|s_debounceCnt\(22) & ((\inst13|s_debounceCnt[0]~29_combout\) # ((!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[0]~29_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X80_Y28_N26
\inst13|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~28_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt[22]~27_combout\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|Add0~44_combout\,
	datad => \inst13|s_debounceCnt[22]~27_combout\,
	combout => \inst13|s_debounceCnt[22]~28_combout\);

-- Location: FF_X80_Y28_N27
\inst13|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(22));

-- Location: LCCOMB_X80_Y28_N30
\inst13|s_debounceCnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[0]~5_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_previousIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[0]~5_combout\);

-- Location: LCCOMB_X82_Y28_N4
\inst13|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~26_combout\ = (\inst13|Add0~0_combout\ & \inst13|s_debounceCnt[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~0_combout\,
	datad => \inst13|s_debounceCnt[0]~5_combout\,
	combout => \inst13|s_debounceCnt~26_combout\);

-- Location: FF_X82_Y28_N5
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~26_combout\,
	ena => \inst13|s_debounceCnt[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y28_N2
\inst13|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~9_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt\(0) & (\inst13|s_previousIn~q\ & !\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt\(22),
	combout => \inst13|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X82_Y28_N24
\inst13|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~10_combout\ = (\inst13|s_pulsedOut~9_combout\ & (!\inst13|s_debounceCnt\(5) & (\inst13|s_pulsedOut~7_combout\ & \inst13|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~9_combout\,
	datab => \inst13|s_debounceCnt\(5),
	datac => \inst13|s_pulsedOut~7_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_pulsedOut~10_combout\);

-- Location: FF_X82_Y28_N25
\inst13|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_pulsedOut~q\);

-- Location: LCCOMB_X82_Y6_N20
\inst|reg_fstate.Menu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Menu~0_combout\ = ((\inst|fstate.Menu~q\ & (!\inst3|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\))) # (!\inst|fstate.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Menu~q\,
	datab => \inst|fstate.Init~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Menu~0_combout\);

-- Location: LCCOMB_X82_Y6_N22
\inst|reg_fstate.Menu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Menu~1_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|reg_fstate.Menu~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datad => \inst|reg_fstate.Menu~0_combout\,
	combout => \inst|reg_fstate.Menu~1_combout\);

-- Location: FF_X82_Y6_N23
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

-- Location: LCCOMB_X82_Y6_N6
\inst|reg_fstate.Timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Timer~0_combout\ = (\inst|fstate.Timer~q\ & (((\inst13|s_pulsedOut~q\)) # (!\inst3|s_pulsedOut~q\))) # (!\inst|fstate.Timer~q\ & (((\inst|fstate.Menu~q\ & \inst13|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Timer~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|fstate.Menu~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst|reg_fstate.Timer~0_combout\);

-- Location: LCCOMB_X82_Y6_N18
\inst|reg_fstate.Timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Timer~1_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|reg_fstate.Timer~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datad => \inst|reg_fstate.Timer~0_combout\,
	combout => \inst|reg_fstate.Timer~1_combout\);

-- Location: FF_X82_Y6_N19
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

-- Location: LCCOMB_X82_Y6_N28
\inst|reg_fstate.TimeProcess~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.TimeProcess~0_combout\ = (\inst|fstate.Timer~q\ & (\inst3|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Timer~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst|reg_fstate.TimeProcess~0_combout\);

-- Location: LCCOMB_X82_Y6_N4
\inst|reg_fstate.TimeProcess~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.TimeProcess~1_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst|reg_fstate.TimeProcess~0_combout\) # ((!\inst5|s_result~q\ & \inst|fstate.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst|reg_fstate.TimeProcess~0_combout\,
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst|reg_fstate.TimeProcess~1_combout\);

-- Location: FF_X82_Y6_N5
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

-- Location: LCCOMB_X80_Y5_N14
\inst|en_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|en_3~0_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst|fstate.Timer~q\) # (\inst|fstate.TimeProcess~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Timer~q\,
	datad => \inst|fstate.TimeProcess~q\,
	combout => \inst|en_3~0_combout\);

-- Location: LCCOMB_X82_Y6_N14
\inst|rstGlobal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rstGlobal~0_combout\ = (!\inst|fstate.Init~q\ & !\inst1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Init~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst|rstGlobal~0_combout\);

-- Location: LCCOMB_X75_Y5_N2
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

-- Location: LCCOMB_X76_Y4_N0
\inst11|s_counter[6]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[6]~95_combout\ = ((!\inst1|s_pulsedOut~q\ & !\inst|fstate.Init~q\)) # (!\inst11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|s_counter[6]~95_combout\);

-- Location: FF_X75_Y5_N3
\inst11|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[0]~33_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(0));

-- Location: LCCOMB_X75_Y5_N4
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

-- Location: FF_X75_Y5_N5
\inst11|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[1]~35_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(1));

-- Location: LCCOMB_X75_Y5_N6
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

-- Location: FF_X75_Y5_N7
\inst11|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[2]~37_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(2));

-- Location: LCCOMB_X75_Y5_N8
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

-- Location: FF_X75_Y5_N9
\inst11|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[3]~39_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(3));

-- Location: LCCOMB_X75_Y5_N10
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

-- Location: FF_X75_Y5_N11
\inst11|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[4]~41_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(4));

-- Location: LCCOMB_X75_Y5_N12
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

-- Location: FF_X75_Y5_N13
\inst11|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[5]~43_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(5));

-- Location: LCCOMB_X75_Y5_N14
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

-- Location: FF_X75_Y5_N15
\inst11|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[6]~45_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(6));

-- Location: LCCOMB_X75_Y5_N16
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

-- Location: FF_X75_Y5_N17
\inst11|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[7]~47_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(7));

-- Location: LCCOMB_X75_Y5_N18
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

-- Location: FF_X75_Y5_N19
\inst11|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[8]~49_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(8));

-- Location: LCCOMB_X75_Y5_N20
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

-- Location: FF_X75_Y5_N21
\inst11|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[9]~51_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(9));

-- Location: LCCOMB_X75_Y5_N22
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

-- Location: FF_X75_Y5_N23
\inst11|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[10]~53_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(10));

-- Location: LCCOMB_X75_Y5_N24
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

-- Location: FF_X75_Y5_N25
\inst11|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[11]~55_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(11));

-- Location: LCCOMB_X75_Y5_N26
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

-- Location: FF_X75_Y5_N27
\inst11|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[12]~57_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(12));

-- Location: LCCOMB_X75_Y5_N28
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

-- Location: FF_X75_Y5_N29
\inst11|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[13]~59_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(13));

-- Location: LCCOMB_X75_Y5_N30
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

-- Location: FF_X75_Y5_N31
\inst11|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[14]~61_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(14));

-- Location: LCCOMB_X75_Y4_N0
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

-- Location: FF_X75_Y4_N1
\inst11|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[15]~63_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(15));

-- Location: LCCOMB_X75_Y4_N2
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

-- Location: FF_X75_Y4_N3
\inst11|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[16]~65_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(16));

-- Location: LCCOMB_X75_Y4_N4
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

-- Location: FF_X75_Y4_N5
\inst11|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[17]~67_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(17));

-- Location: LCCOMB_X75_Y4_N6
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

-- Location: FF_X75_Y4_N7
\inst11|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[18]~69_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(18));

-- Location: LCCOMB_X75_Y4_N8
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

-- Location: FF_X75_Y4_N9
\inst11|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[19]~71_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(19));

-- Location: LCCOMB_X76_Y4_N6
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (\inst11|s_counter\(16)) # ((\inst11|s_counter\(18)) # ((\inst11|s_counter\(17)) # (\inst11|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(16),
	datab => \inst11|s_counter\(18),
	datac => \inst11|s_counter\(17),
	datad => \inst11|s_counter\(19),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y4_N10
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

-- Location: FF_X75_Y4_N11
\inst11|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[20]~73_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(20));

-- Location: LCCOMB_X75_Y4_N12
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

-- Location: FF_X75_Y4_N13
\inst11|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[21]~75_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(21));

-- Location: LCCOMB_X75_Y4_N14
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

-- Location: FF_X75_Y4_N15
\inst11|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[22]~77_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(22));

-- Location: LCCOMB_X75_Y4_N16
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

-- Location: FF_X75_Y4_N17
\inst11|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[23]~79_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(23));

-- Location: LCCOMB_X76_Y4_N28
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (\inst11|s_counter\(20)) # ((\inst11|s_counter\(21)) # ((\inst11|s_counter\(23)) # (\inst11|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(20),
	datab => \inst11|s_counter\(21),
	datac => \inst11|s_counter\(23),
	datad => \inst11|s_counter\(22),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y4_N18
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

-- Location: FF_X75_Y4_N19
\inst11|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[24]~81_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(24));

-- Location: LCCOMB_X75_Y4_N20
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

-- Location: FF_X75_Y4_N21
\inst11|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[25]~83_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(25));

-- Location: LCCOMB_X75_Y4_N22
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

-- Location: FF_X75_Y4_N23
\inst11|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[26]~85_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(26));

-- Location: LCCOMB_X75_Y4_N24
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

-- Location: FF_X75_Y4_N25
\inst11|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[27]~87_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(27));

-- Location: LCCOMB_X75_Y4_N26
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

-- Location: FF_X75_Y4_N27
\inst11|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[28]~89_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(28));

-- Location: LCCOMB_X75_Y4_N28
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

-- Location: FF_X75_Y4_N29
\inst11|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[29]~91_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(29));

-- Location: LCCOMB_X76_Y4_N30
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (\inst11|s_counter\(25)) # ((\inst11|s_counter\(27)) # ((\inst11|s_counter\(24)) # (\inst11|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(25),
	datab => \inst11|s_counter\(27),
	datac => \inst11|s_counter\(24),
	datad => \inst11|s_counter\(26),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X75_Y4_N30
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

-- Location: FF_X75_Y4_N31
\inst11|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[30]~93_combout\,
	sclr => \inst11|s_counter[6]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(30));

-- Location: LCCOMB_X76_Y4_N8
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

-- Location: LCCOMB_X75_Y5_N0
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (\inst11|s_counter\(10)) # ((\inst11|s_counter\(8)) # ((\inst11|s_counter\(11)) # (\inst11|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(10),
	datab => \inst11|s_counter\(8),
	datac => \inst11|s_counter\(11),
	datad => \inst11|s_counter\(9),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y4_N18
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (\inst11|s_counter\(15)) # ((\inst11|s_counter\(12)) # ((\inst11|s_counter\(14)) # (\inst11|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(15),
	datab => \inst11|s_counter\(12),
	datac => \inst11|s_counter\(14),
	datad => \inst11|s_counter\(13),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y5_N10
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (\inst11|s_counter\(4)) # ((\inst11|s_counter\(5)) # ((\inst11|s_counter\(7)) # (\inst11|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(4),
	datab => \inst11|s_counter\(5),
	datac => \inst11|s_counter\(7),
	datad => \inst11|s_counter\(6),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y5_N28
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

-- Location: LCCOMB_X76_Y4_N16
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~2_combout\) # ((\inst11|Equal0~3_combout\) # ((\inst11|Equal0~1_combout\) # (\inst11|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~2_combout\,
	datab => \inst11|Equal0~3_combout\,
	datac => \inst11|Equal0~1_combout\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y4_N2
\inst11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~9_combout\ = (\inst11|Equal0~5_combout\) # ((\inst11|Equal0~6_combout\) # ((\inst11|Equal0~8_combout\) # (\inst11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~5_combout\,
	datab => \inst11|Equal0~6_combout\,
	datac => \inst11|Equal0~8_combout\,
	datad => \inst11|Equal0~4_combout\,
	combout => \inst11|Equal0~9_combout\);

-- Location: LCCOMB_X76_Y4_N4
\inst11|pulse~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pulse~2_combout\ = (!\inst11|Equal0~9_combout\ & ((\inst1|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|pulse~2_combout\);

-- Location: FF_X76_Y4_N5
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

-- Location: LCCOMB_X81_Y5_N20
\inst5|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~6_combout\ = (\inst1|s_pulsedOut~q\) # (!\inst|fstate.TimeProcess~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.TimeProcess~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst5|s_count~6_combout\);

-- Location: LCCOMB_X81_Y4_N0
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|s_count\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X80_Y5_N16
\inst23|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal6~2_combout\ = (!\inst5|s_count\(1) & !\inst5|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(2),
	combout => \inst23|Equal6~2_combout\);

-- Location: LCCOMB_X81_Y5_N0
\inst5|s_result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~2_combout\ = (\inst11|pulse~q\ & (!\inst1|s_pulsedOut~q\ & ((\inst|fstate.TimeProcess~q\) # (\inst|fstate.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.TimeProcess~q\,
	datab => \inst|fstate.Timer~q\,
	datac => \inst11|pulse~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst5|s_result~2_combout\);

-- Location: LCCOMB_X81_Y5_N30
\inst5|s_count[31]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~12_combout\ = (\inst5|s_result~2_combout\ & (!\inst|rstGlobal~0_combout\ & (!\inst5|s_count~7_combout\ & !\inst5|s_count~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~2_combout\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \inst5|s_count~7_combout\,
	datad => \inst5|s_count~8_combout\,
	combout => \inst5|s_count[31]~12_combout\);

-- Location: LCCOMB_X81_Y4_N4
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|s_count\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|s_count\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|s_count\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X81_Y4_N6
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|s_count\(3) & (!\inst5|Add0~5\)) # (!\inst5|s_count\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X80_Y4_N8
\inst5|s_count[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[3]~13_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(3)) # ((\inst5|Add0~6_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~6_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~6_combout\,
	datac => \inst5|s_count\(3),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[3]~13_combout\);

-- Location: FF_X80_Y4_N9
\inst5|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(3));

-- Location: LCCOMB_X81_Y4_N8
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|s_count\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|s_count\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|s_count\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X82_Y4_N0
\inst5|s_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~14_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(4)) # ((\inst5|Add0~8_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~8_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~8_combout\,
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[4]~14_combout\);

-- Location: FF_X82_Y4_N1
\inst5|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(4));

-- Location: LCCOMB_X81_Y4_N10
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|s_count\(5) & (!\inst5|Add0~9\)) # (!\inst5|s_count\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X82_Y4_N14
\inst5|s_count[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[5]~15_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(5)) # ((\inst5|Add0~10_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~10_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~10_combout\,
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[5]~15_combout\);

-- Location: FF_X82_Y4_N15
\inst5|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(5));

-- Location: LCCOMB_X81_Y4_N12
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|s_count\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|s_count\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|s_count\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X82_Y4_N24
\inst5|s_count[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~16_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(6)) # ((\inst5|Add0~12_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~12_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~12_combout\,
	datac => \inst5|s_count\(6),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[6]~16_combout\);

-- Location: FF_X82_Y4_N25
\inst5|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(6));

-- Location: LCCOMB_X81_Y4_N14
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|s_count\(7) & (!\inst5|Add0~13\)) # (!\inst5|s_count\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X82_Y4_N22
\inst5|s_count[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[7]~17_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(7)) # ((\inst5|Add0~14_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~14_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[7]~17_combout\);

-- Location: FF_X82_Y4_N23
\inst5|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(7));

-- Location: LCCOMB_X81_Y4_N16
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|s_count\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|s_count\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|s_count\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X80_Y4_N12
\inst5|s_count[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[8]~19_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(8)) # ((\inst5|Add0~16_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~16_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~16_combout\,
	datac => \inst5|s_count\(8),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[8]~19_combout\);

-- Location: FF_X80_Y4_N13
\inst5|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(8));

-- Location: LCCOMB_X81_Y4_N18
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|s_count\(9) & (!\inst5|Add0~17\)) # (!\inst5|s_count\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X80_Y4_N22
\inst5|s_count[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[9]~20_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(9)) # ((\inst5|Add0~18_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~18_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~18_combout\,
	datac => \inst5|s_count\(9),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[9]~20_combout\);

-- Location: FF_X80_Y4_N23
\inst5|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(9));

-- Location: LCCOMB_X81_Y4_N20
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|s_count\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|s_count\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|s_count\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X80_Y4_N26
\inst5|s_count[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[10]~21_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(10)) # ((\inst5|Add0~20_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~20_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~20_combout\,
	datac => \inst5|s_count\(10),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[10]~21_combout\);

-- Location: FF_X80_Y4_N27
\inst5|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(10));

-- Location: LCCOMB_X81_Y4_N22
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|s_count\(11) & (!\inst5|Add0~21\)) # (!\inst5|s_count\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X80_Y4_N16
\inst5|s_count[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[11]~22_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(11)) # ((\inst5|Add0~22_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~22_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~22_combout\,
	datac => \inst5|s_count\(11),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[11]~22_combout\);

-- Location: FF_X80_Y4_N17
\inst5|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(11));

-- Location: LCCOMB_X81_Y4_N24
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|s_count\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|s_count\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|s_count\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X80_Y4_N14
\inst5|s_count[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[12]~23_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(12)) # ((\inst5|Add0~24_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~24_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~24_combout\,
	datac => \inst5|s_count\(12),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[12]~23_combout\);

-- Location: FF_X80_Y4_N15
\inst5|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(12));

-- Location: LCCOMB_X81_Y4_N26
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|s_count\(13) & (!\inst5|Add0~25\)) # (!\inst5|s_count\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X80_Y4_N20
\inst5|s_count[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[13]~24_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(13)) # ((\inst5|Add0~26_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~26_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~26_combout\,
	datac => \inst5|s_count\(13),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[13]~24_combout\);

-- Location: FF_X80_Y4_N21
\inst5|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(13));

-- Location: LCCOMB_X81_Y4_N28
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|s_count\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|s_count\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|s_count\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X80_Y4_N4
\inst5|s_count[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[14]~25_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(14)) # ((\inst5|Add0~28_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~28_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~28_combout\,
	datac => \inst5|s_count\(14),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[14]~25_combout\);

-- Location: FF_X80_Y4_N5
\inst5|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[14]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(14));

-- Location: LCCOMB_X81_Y4_N30
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|s_count\(15) & (!\inst5|Add0~29\)) # (!\inst5|s_count\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X80_Y4_N2
\inst5|s_count[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[15]~26_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(15)) # ((\inst5|Add0~30_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~30_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~30_combout\,
	datac => \inst5|s_count\(15),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[15]~26_combout\);

-- Location: FF_X80_Y4_N3
\inst5|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(15));

-- Location: LCCOMB_X81_Y3_N0
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|s_count\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|s_count\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|s_count\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: LCCOMB_X80_Y4_N28
\inst5|s_count[16]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[16]~27_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(16)) # ((\inst5|Add0~32_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~32_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~32_combout\,
	datac => \inst5|s_count\(16),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[16]~27_combout\);

-- Location: FF_X80_Y4_N29
\inst5|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[16]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(16));

-- Location: LCCOMB_X81_Y3_N2
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|s_count\(17) & (!\inst5|Add0~33\)) # (!\inst5|s_count\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: LCCOMB_X80_Y4_N18
\inst5|s_count[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[17]~28_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(17)) # ((\inst5|Add0~34_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~34_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~34_combout\,
	datac => \inst5|s_count\(17),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[17]~28_combout\);

-- Location: FF_X80_Y4_N19
\inst5|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[17]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(17));

-- Location: LCCOMB_X81_Y3_N4
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|s_count\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|s_count\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|s_count\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: LCCOMB_X80_Y3_N10
\inst5|s_count[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[18]~29_combout\ = (\inst5|Add0~36_combout\ & ((\inst5|s_count[31]~12_combout\) # ((\inst5|s_count[16]~9_combout\ & \inst5|s_count\(18))))) # (!\inst5|Add0~36_combout\ & (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~36_combout\,
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(18),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[18]~29_combout\);

-- Location: FF_X80_Y3_N11
\inst5|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(18));

-- Location: LCCOMB_X81_Y3_N6
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|s_count\(19) & (!\inst5|Add0~37\)) # (!\inst5|s_count\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X81_Y5_N18
\inst5|s_count[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[19]~30_combout\ = (\inst5|s_count[31]~12_combout\ & ((\inst5|Add0~38_combout\) # ((\inst5|s_count[16]~9_combout\ & \inst5|s_count\(19))))) # (!\inst5|s_count[31]~12_combout\ & (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[31]~12_combout\,
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(19),
	datad => \inst5|Add0~38_combout\,
	combout => \inst5|s_count[19]~30_combout\);

-- Location: FF_X81_Y5_N19
\inst5|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[19]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(19));

-- Location: LCCOMB_X81_Y3_N8
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|s_count\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|s_count\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|s_count\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: LCCOMB_X81_Y5_N8
\inst5|s_count[20]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[20]~31_combout\ = (\inst5|s_count[31]~12_combout\ & ((\inst5|Add0~40_combout\) # ((\inst5|s_count[16]~9_combout\ & \inst5|s_count\(20))))) # (!\inst5|s_count[31]~12_combout\ & (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[31]~12_combout\,
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(20),
	datad => \inst5|Add0~40_combout\,
	combout => \inst5|s_count[20]~31_combout\);

-- Location: FF_X81_Y5_N9
\inst5|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[20]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(20));

-- Location: LCCOMB_X81_Y3_N10
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|s_count\(21) & (!\inst5|Add0~41\)) # (!\inst5|s_count\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: LCCOMB_X81_Y5_N26
\inst5|s_count[21]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[21]~32_combout\ = (\inst5|s_count[31]~12_combout\ & ((\inst5|Add0~42_combout\) # ((\inst5|s_count[16]~9_combout\ & \inst5|s_count\(21))))) # (!\inst5|s_count[31]~12_combout\ & (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[31]~12_combout\,
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(21),
	datad => \inst5|Add0~42_combout\,
	combout => \inst5|s_count[21]~32_combout\);

-- Location: FF_X81_Y5_N27
\inst5|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[21]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(21));

-- Location: LCCOMB_X81_Y3_N12
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|s_count\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|s_count\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|s_count\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: LCCOMB_X82_Y3_N16
\inst5|s_count[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[22]~33_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(22)) # ((\inst5|Add0~44_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~44_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~44_combout\,
	datac => \inst5|s_count\(22),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[22]~33_combout\);

-- Location: FF_X82_Y3_N17
\inst5|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[22]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(22));

-- Location: LCCOMB_X81_Y3_N14
\inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|s_count\(23) & (!\inst5|Add0~45\)) # (!\inst5|s_count\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: LCCOMB_X82_Y3_N2
\inst5|s_count[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[23]~34_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(23)) # ((\inst5|Add0~46_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~46_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~46_combout\,
	datac => \inst5|s_count\(23),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[23]~34_combout\);

-- Location: FF_X82_Y3_N3
\inst5|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[23]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(23));

-- Location: LCCOMB_X81_Y3_N16
\inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|s_count\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|s_count\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|s_count\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: LCCOMB_X82_Y3_N4
\inst5|s_count[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[24]~35_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(24)) # ((\inst5|Add0~48_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~48_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~48_combout\,
	datac => \inst5|s_count\(24),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[24]~35_combout\);

-- Location: FF_X82_Y3_N5
\inst5|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(24));

-- Location: LCCOMB_X81_Y3_N18
\inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|s_count\(25) & (!\inst5|Add0~49\)) # (!\inst5|s_count\(25) & ((\inst5|Add0~49\) # (GND)))
-- \inst5|Add0~51\ = CARRY((!\inst5|Add0~49\) # (!\inst5|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: LCCOMB_X82_Y3_N22
\inst5|s_count[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[25]~36_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(25)) # ((\inst5|Add0~50_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~50_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~50_combout\,
	datac => \inst5|s_count\(25),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[25]~36_combout\);

-- Location: FF_X82_Y3_N23
\inst5|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[25]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(25));

-- Location: LCCOMB_X81_Y3_N20
\inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|s_count\(26) & (\inst5|Add0~51\ $ (GND))) # (!\inst5|s_count\(26) & (!\inst5|Add0~51\ & VCC))
-- \inst5|Add0~53\ = CARRY((\inst5|s_count\(26) & !\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: LCCOMB_X82_Y3_N6
\inst5|s_count[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[26]~37_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(26)) # ((\inst5|Add0~52_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~52_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~52_combout\,
	datac => \inst5|s_count\(26),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[26]~37_combout\);

-- Location: FF_X82_Y3_N7
\inst5|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[26]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(26));

-- Location: LCCOMB_X81_Y3_N22
\inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = (\inst5|s_count\(27) & (!\inst5|Add0~53\)) # (!\inst5|s_count\(27) & ((\inst5|Add0~53\) # (GND)))
-- \inst5|Add0~55\ = CARRY((!\inst5|Add0~53\) # (!\inst5|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(27),
	datad => VCC,
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\,
	cout => \inst5|Add0~55\);

-- Location: LCCOMB_X82_Y3_N20
\inst5|s_count[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[27]~38_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(27)) # ((\inst5|Add0~54_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~54_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~54_combout\,
	datac => \inst5|s_count\(27),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[27]~38_combout\);

-- Location: FF_X82_Y3_N21
\inst5|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[27]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(27));

-- Location: LCCOMB_X81_Y3_N24
\inst5|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~56_combout\ = (\inst5|s_count\(28) & (\inst5|Add0~55\ $ (GND))) # (!\inst5|s_count\(28) & (!\inst5|Add0~55\ & VCC))
-- \inst5|Add0~57\ = CARRY((\inst5|s_count\(28) & !\inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(28),
	datad => VCC,
	cin => \inst5|Add0~55\,
	combout => \inst5|Add0~56_combout\,
	cout => \inst5|Add0~57\);

-- Location: LCCOMB_X82_Y3_N30
\inst5|s_count[28]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[28]~39_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(28)) # ((\inst5|Add0~56_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~56_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~56_combout\,
	datac => \inst5|s_count\(28),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[28]~39_combout\);

-- Location: FF_X82_Y3_N31
\inst5|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[28]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(28));

-- Location: LCCOMB_X81_Y3_N26
\inst5|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~58_combout\ = (\inst5|s_count\(29) & (!\inst5|Add0~57\)) # (!\inst5|s_count\(29) & ((\inst5|Add0~57\) # (GND)))
-- \inst5|Add0~59\ = CARRY((!\inst5|Add0~57\) # (!\inst5|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(29),
	datad => VCC,
	cin => \inst5|Add0~57\,
	combout => \inst5|Add0~58_combout\,
	cout => \inst5|Add0~59\);

-- Location: LCCOMB_X82_Y3_N28
\inst5|s_count[29]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[29]~40_combout\ = (\inst5|Add0~58_combout\ & ((\inst5|s_count[31]~12_combout\) # ((\inst5|s_count[16]~9_combout\ & \inst5|s_count\(29))))) # (!\inst5|Add0~58_combout\ & (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~58_combout\,
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(29),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[29]~40_combout\);

-- Location: FF_X82_Y3_N29
\inst5|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[29]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(29));

-- Location: LCCOMB_X81_Y3_N28
\inst5|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~60_combout\ = (\inst5|s_count\(30) & (\inst5|Add0~59\ $ (GND))) # (!\inst5|s_count\(30) & (!\inst5|Add0~59\ & VCC))
-- \inst5|Add0~61\ = CARRY((\inst5|s_count\(30) & !\inst5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(30),
	datad => VCC,
	cin => \inst5|Add0~59\,
	combout => \inst5|Add0~60_combout\,
	cout => \inst5|Add0~61\);

-- Location: LCCOMB_X82_Y3_N8
\inst5|s_count[30]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[30]~41_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(30)) # ((\inst5|Add0~60_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~60_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~60_combout\,
	datac => \inst5|s_count\(30),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[30]~41_combout\);

-- Location: FF_X82_Y3_N9
\inst5|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[30]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(30));

-- Location: LCCOMB_X81_Y3_N30
\inst5|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~62_combout\ = \inst5|Add0~61\ $ (\inst5|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s_count\(31),
	cin => \inst5|Add0~61\,
	combout => \inst5|Add0~62_combout\);

-- Location: LCCOMB_X82_Y3_N26
\inst5|s_count[31]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~42_combout\ = (\inst5|s_count[16]~9_combout\ & ((\inst5|s_count\(31)) # ((\inst5|Add0~62_combout\ & \inst5|s_count[31]~12_combout\)))) # (!\inst5|s_count[16]~9_combout\ & (\inst5|Add0~62_combout\ & ((\inst5|s_count[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datab => \inst5|Add0~62_combout\,
	datac => \inst5|s_count\(31),
	datad => \inst5|s_count[31]~12_combout\,
	combout => \inst5|s_count[31]~42_combout\);

-- Location: FF_X82_Y3_N27
\inst5|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(31));

-- Location: LCCOMB_X82_Y3_N10
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|s_count\(26) & (!\inst5|s_count\(27) & (!\inst5|s_count\(28) & !\inst5|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(26),
	datab => \inst5|s_count\(27),
	datac => \inst5|s_count\(28),
	datad => \inst5|s_count\(29),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y3_N12
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|s_count\(31) & (!\inst5|s_count\(30) & \inst5|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(31),
	datac => \inst5|s_count\(30),
	datad => \inst5|Equal0~6_combout\,
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y3_N24
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|s_count\(25) & (!\inst5|s_count\(22) & (!\inst5|s_count\(24) & !\inst5|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(25),
	datab => \inst5|s_count\(22),
	datac => \inst5|s_count\(24),
	datad => \inst5|s_count\(23),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y5_N4
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (!\inst5|s_count\(20) & (!\inst5|s_count\(21) & (!\inst5|s_count\(18) & !\inst5|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(20),
	datab => \inst5|s_count\(21),
	datac => \inst5|s_count\(18),
	datad => \inst5|s_count\(19),
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X80_Y4_N30
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|s_count\(10) & (!\inst5|s_count\(11) & (!\inst5|s_count\(12) & !\inst5|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(10),
	datab => \inst5|s_count\(11),
	datac => \inst5|s_count\(12),
	datad => \inst5|s_count\(13),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y4_N24
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|s_count\(9) & (!\inst5|s_count\(3) & (!\inst5|s_count\(8) & !\inst5|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(9),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(8),
	datad => \inst5|s_count\(0),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y4_N0
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|s_count\(15) & (!\inst5|s_count\(17) & (!\inst5|s_count\(14) & !\inst5|s_count\(16))))

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
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y4_N2
\inst23|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~2_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(4) & (!\inst5|s_count\(5) & !\inst5|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(6),
	combout => \inst23|LessThan0~2_combout\);

-- Location: LCCOMB_X81_Y5_N16
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (\inst5|Equal0~1_combout\ & (\inst5|Equal0~0_combout\ & (\inst5|Equal0~2_combout\ & \inst23|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst23|LessThan0~2_combout\,
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y5_N6
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (\inst5|Equal0~7_combout\ & (\inst5|Equal0~5_combout\ & (\inst5|Equal0~4_combout\ & \inst5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datab => \inst5|Equal0~5_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~3_combout\,
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y5_N22
\inst5|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~7_combout\ = (\inst5|Equal0~8_combout\ & ((\inst23|Equal6~2_combout\ & (\inst5|s_count~6_combout\)) # (!\inst23|Equal6~2_combout\ & ((\inst23|Equal12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Equal6~2_combout\,
	datab => \inst5|s_count~6_combout\,
	datac => \inst23|Equal12~0_combout\,
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|s_count~7_combout\);

-- Location: LCCOMB_X80_Y4_N10
\inst5|s_count[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[0]~45_combout\ = (\inst1|s_pulsedOut~q\ & (\inst5|Add0~0_combout\ & ((!\inst5|s_count~7_combout\)))) # (!\inst1|s_pulsedOut~q\ & (((\inst5|Add0~0_combout\ & !\inst5|s_count~7_combout\)) # (!\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst|fstate.Init~q\,
	datad => \inst5|s_count~7_combout\,
	combout => \inst5|s_count[0]~45_combout\);

-- Location: LCCOMB_X80_Y4_N6
\inst5|s_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[0]~18_combout\ = (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(0))) # (!\inst5|s_count[16]~9_combout\ & ((\inst5|s_count[0]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count[0]~45_combout\,
	combout => \inst5|s_count[0]~18_combout\);

-- Location: FF_X80_Y4_N7
\inst5|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(0));

-- Location: LCCOMB_X81_Y4_N2
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|s_count\(1) & (!\inst5|Add0~1\)) # (!\inst5|s_count\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X80_Y5_N20
\inst5|s_count[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[2]~44_combout\ = (\inst|fstate.Init~q\ & (((\inst5|Add0~4_combout\ & !\inst5|s_count~7_combout\)))) # (!\inst|fstate.Init~q\ & (((\inst5|Add0~4_combout\ & !\inst5|s_count~7_combout\)) # (!\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|s_count~7_combout\,
	combout => \inst5|s_count[2]~44_combout\);

-- Location: LCCOMB_X80_Y5_N4
\inst5|s_count[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[2]~11_combout\ = (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(2))) # (!\inst5|s_count[16]~9_combout\ & ((\inst5|s_count[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count[2]~44_combout\,
	combout => \inst5|s_count[2]~11_combout\);

-- Location: FF_X80_Y5_N5
\inst5|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(2));

-- Location: LCCOMB_X81_Y5_N28
\inst5|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~8_combout\ = (!\inst5|s_count\(1) & (\inst5|s_count~6_combout\ & (!\inst5|s_count\(2) & \inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count~6_combout\,
	datac => \inst5|s_count\(2),
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|s_count~8_combout\);

-- Location: LCCOMB_X81_Y5_N2
\inst5|s_count[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[16]~9_combout\ = (!\inst|rstGlobal~0_combout\ & (((\inst5|s_count~8_combout\) # (!\inst11|pulse~q\)) # (!\inst|en_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \inst11|pulse~q\,
	datad => \inst5|s_count~8_combout\,
	combout => \inst5|s_count[16]~9_combout\);

-- Location: LCCOMB_X81_Y5_N10
\inst5|s_count[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[1]~43_combout\ = (\inst|fstate.Init~q\ & (\inst5|Add0~2_combout\ & (!\inst5|s_count~7_combout\))) # (!\inst|fstate.Init~q\ & (((\inst5|Add0~2_combout\ & !\inst5|s_count~7_combout\)) # (!\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datab => \inst5|Add0~2_combout\,
	datac => \inst5|s_count~7_combout\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst5|s_count[1]~43_combout\);

-- Location: LCCOMB_X81_Y5_N12
\inst5|s_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[1]~10_combout\ = (\inst5|s_count[16]~9_combout\ & (\inst5|s_count\(1))) # (!\inst5|s_count[16]~9_combout\ & ((\inst5|s_count[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count[16]~9_combout\,
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count[1]~43_combout\,
	combout => \inst5|s_count[1]~10_combout\);

-- Location: FF_X81_Y5_N13
\inst5|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(1));

-- Location: LCCOMB_X80_Y5_N18
\inst23|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal12~0_combout\ = (\inst5|s_count\(1) & \inst5|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(2),
	combout => \inst23|Equal12~0_combout\);

-- Location: LCCOMB_X81_Y5_N24
\inst5|s_result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~3_combout\ = (\inst5|s_result~2_combout\ & (((\inst23|Equal12~0_combout\ & \inst5|Equal0~8_combout\)))) # (!\inst5|s_result~2_combout\ & (\inst5|s_result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst23|Equal12~0_combout\,
	datac => \inst5|s_result~2_combout\,
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|s_result~3_combout\);

-- Location: LCCOMB_X81_Y5_N14
\inst5|s_result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~4_combout\ = (\inst5|s_result~3_combout\ & ((\inst1|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst5|s_result~3_combout\,
	combout => \inst5|s_result~4_combout\);

-- Location: FF_X81_Y5_N15
\inst5|s_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_result~q\);

-- Location: LCCOMB_X80_Y6_N22
\iaaanst1|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~13_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TAmmassar~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TLevedar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst|rstGlobal~0_combout\,
	combout => \iaaanst1|s_currentState~13_combout\);

-- Location: FF_X80_Y6_N23
\iaaanst1|s_currentState.TLevedar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TLevedar~q\);

-- Location: LCCOMB_X81_Y6_N12
\iaaanst1|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector15~3_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & ((\inst1|s_pulsedOut~q\) # (!\inst|fstate.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.StartPrg~q\,
	combout => \iaaanst1|Selector15~3_combout\);

-- Location: LCCOMB_X81_Y6_N20
\iaaanst1|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~12_combout\ = (!\inst|rstGlobal~0_combout\ & ((\iaaanst1|Selector15~3_combout\) # ((\inst9|s_cntZero~q\ & \iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \iaaanst1|Selector15~3_combout\,
	combout => \iaaanst1|s_currentState~12_combout\);

-- Location: FF_X81_Y6_N21
\iaaanst1|s_currentState.TExtra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TExtra~q\);

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

-- Location: LCCOMB_X94_Y29_N16
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

-- Location: FF_X94_Y29_N17
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

-- Location: FF_X90_Y29_N5
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

-- Location: LCCOMB_X92_Y29_N14
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

-- Location: LCCOMB_X92_Y29_N16
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

-- Location: LCCOMB_X91_Y29_N26
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~6_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X91_Y29_N27
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X92_Y29_N18
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

-- Location: LCCOMB_X90_Y29_N16
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~8_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X90_Y29_N17
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X92_Y29_N20
\inst12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~10_combout\ = (\inst12|s_debounceCnt\(5) & (\inst12|Add0~9\ & VCC)) # (!\inst12|s_debounceCnt\(5) & (!\inst12|Add0~9\))
-- \inst12|Add0~11\ = CARRY((!\inst12|s_debounceCnt\(5) & !\inst12|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst12|Add0~9\,
	combout => \inst12|Add0~10_combout\,
	cout => \inst12|Add0~11\);

-- Location: LCCOMB_X90_Y29_N24
\inst12|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~25_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~10_combout\,
	combout => \inst12|s_debounceCnt~25_combout\);

-- Location: FF_X90_Y29_N25
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~25_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X92_Y29_N10
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

-- Location: LCCOMB_X91_Y29_N24
\inst12|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~26_combout\ = (\inst12|Add0~0_combout\ & \inst12|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~0_combout\,
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt~26_combout\);

-- Location: FF_X91_Y29_N25
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~26_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X92_Y29_N22
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

-- Location: LCCOMB_X92_Y28_N2
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

-- Location: LCCOMB_X92_Y28_N4
\inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~26_combout\ = (\inst12|s_debounceCnt\(13) & (\inst12|Add0~25\ & VCC)) # (!\inst12|s_debounceCnt\(13) & (!\inst12|Add0~25\))
-- \inst12|Add0~27\ = CARRY((!\inst12|s_debounceCnt\(13) & !\inst12|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst12|Add0~25\,
	combout => \inst12|Add0~26_combout\,
	cout => \inst12|Add0~27\);

-- Location: LCCOMB_X91_Y29_N20
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~26_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X91_Y29_N21
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X92_Y28_N6
\inst12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~28_combout\ = (\inst12|s_debounceCnt\(14) & ((GND) # (!\inst12|Add0~27\))) # (!\inst12|s_debounceCnt\(14) & (\inst12|Add0~27\ $ (GND)))
-- \inst12|Add0~29\ = CARRY((\inst12|s_debounceCnt\(14)) # (!\inst12|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst12|Add0~27\,
	combout => \inst12|Add0~28_combout\,
	cout => \inst12|Add0~29\);

-- Location: LCCOMB_X91_Y29_N4
\inst12|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~18_combout\ = (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt~18_combout\);

-- Location: FF_X91_Y29_N5
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~18_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X92_Y28_N8
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

-- Location: LCCOMB_X92_Y28_N28
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|Add0~30_combout\ & \inst12|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~30_combout\,
	datad => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X92_Y28_N29
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X92_Y28_N10
\inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~32_combout\ = (\inst12|s_debounceCnt\(16) & ((GND) # (!\inst12|Add0~31\))) # (!\inst12|s_debounceCnt\(16) & (\inst12|Add0~31\ $ (GND)))
-- \inst12|Add0~33\ = CARRY((\inst12|s_debounceCnt\(16)) # (!\inst12|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst12|Add0~31\,
	combout => \inst12|Add0~32_combout\,
	cout => \inst12|Add0~33\);

-- Location: LCCOMB_X92_Y28_N30
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|Add0~32_combout\ & \inst12|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~32_combout\,
	datad => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X92_Y28_N31
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X92_Y28_N12
\inst12|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~34_combout\ = (\inst12|s_debounceCnt\(17) & (\inst12|Add0~33\ & VCC)) # (!\inst12|s_debounceCnt\(17) & (!\inst12|Add0~33\))
-- \inst12|Add0~35\ = CARRY((!\inst12|s_debounceCnt\(17) & !\inst12|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst12|Add0~33\,
	combout => \inst12|Add0~34_combout\,
	cout => \inst12|Add0~35\);

-- Location: LCCOMB_X92_Y28_N24
\inst12|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~8_combout\ = (\inst12|Add0~34_combout\ & \inst12|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~34_combout\,
	datad => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt~8_combout\);

-- Location: FF_X92_Y28_N25
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~8_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X92_Y28_N14
\inst12|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~36_combout\ = (\inst12|s_debounceCnt\(18) & ((GND) # (!\inst12|Add0~35\))) # (!\inst12|s_debounceCnt\(18) & (\inst12|Add0~35\ $ (GND)))
-- \inst12|Add0~37\ = CARRY((\inst12|s_debounceCnt\(18)) # (!\inst12|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst12|Add0~35\,
	combout => \inst12|Add0~36_combout\,
	cout => \inst12|Add0~37\);

-- Location: LCCOMB_X92_Y29_N2
\inst12|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~19_combout\ = (\inst12|s_debounceCnt[10]~4_combout\ & (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[10]~4_combout\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~36_combout\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt[18]~19_combout\);

-- Location: FF_X92_Y29_N3
\inst12|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(18));

-- Location: LCCOMB_X92_Y28_N16
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

-- Location: LCCOMB_X90_Y29_N26
\inst12|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~20_combout\ = (\inst12|s_debounceCnt[10]~4_combout\ & (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~38_combout\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[10]~4_combout\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt[19]~20_combout\);

-- Location: FF_X90_Y29_N27
\inst12|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(19));

-- Location: LCCOMB_X91_Y28_N10
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(15)) # ((\inst12|s_debounceCnt\(16)) # (\inst12|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(16),
	datad => \inst12|s_debounceCnt\(17),
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y29_N14
\inst12|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~8_combout\ = (!\inst12|s_debounceCnt\(5) & \inst12|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~7_combout\,
	combout => \inst12|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X91_Y29_N10
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(7)) # ((\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(7),
	datab => \inst12|s_debounceCnt\(0),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_pulsedOut~8_combout\,
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X91_Y29_N12
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(10)) # ((\inst12|s_debounceCnt\(9) & (\inst12|s_debounceCnt\(8) & \inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(9),
	datab => \inst12|s_debounceCnt\(8),
	datac => \inst12|s_debounceCnt\(10),
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X91_Y29_N18
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (\inst12|s_debounceCnt\(13)) # ((\inst12|s_debounceCnt\(12)) # ((\inst12|s_debounceCnt\(11) & \inst12|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(13),
	datab => \inst12|s_debounceCnt\(12),
	datac => \inst12|s_debounceCnt\(11),
	datad => \inst12|LessThan0~1_combout\,
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X91_Y29_N0
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|s_debounceCnt\(18) & ((\inst12|LessThan0~3_combout\) # ((\inst12|s_debounceCnt\(14) & \inst12|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan0~3_combout\,
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(18),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X91_Y29_N2
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (\inst12|s_debounceCnt\(20)) # ((\inst12|s_debounceCnt\(21)) # ((\inst12|s_debounceCnt\(19) & \inst12|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(20),
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(19),
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X91_Y29_N28
\inst12|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[10]~2_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_dirtyIn~q\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X91_Y29_N8
\inst12|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~3_combout\ = (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~12_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt~3_combout\);

-- Location: FF_X91_Y29_N9
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~3_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X92_Y29_N24
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

-- Location: LCCOMB_X91_Y29_N22
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~14_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X91_Y29_N23
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X92_Y29_N26
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

-- Location: LCCOMB_X91_Y29_N16
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~16_combout\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X91_Y29_N17
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X92_Y29_N28
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

-- Location: LCCOMB_X92_Y29_N4
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~18_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X92_Y29_N5
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X92_Y29_N30
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

-- Location: LCCOMB_X91_Y29_N14
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~20_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X91_Y29_N15
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X92_Y28_N0
\inst12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~22_combout\ = (\inst12|s_debounceCnt\(11) & (\inst12|Add0~21\ & VCC)) # (!\inst12|s_debounceCnt\(11) & (!\inst12|Add0~21\))
-- \inst12|Add0~23\ = CARRY((!\inst12|s_debounceCnt\(11) & !\inst12|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst12|Add0~21\,
	combout => \inst12|Add0~22_combout\,
	cout => \inst12|Add0~23\);

-- Location: LCCOMB_X92_Y29_N8
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[10]~2_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~22_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[10]~2_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X92_Y29_N9
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X90_Y29_N30
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~24_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X90_Y29_N31
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X90_Y29_N12
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(20) & (!\inst12|s_debounceCnt\(12) & (!\inst12|s_debounceCnt\(13) & !\inst12|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(20),
	datab => \inst12|s_debounceCnt\(12),
	datac => \inst12|s_debounceCnt\(13),
	datad => \inst12|s_debounceCnt\(21),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X90_Y29_N20
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(19) & (!\inst12|s_debounceCnt\(11) & (!\inst12|s_debounceCnt\(18) & !\inst12|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(11),
	datac => \inst12|s_debounceCnt\(18),
	datad => \inst12|s_debounceCnt\(14),
	combout => \inst12|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X92_Y29_N6
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (!\inst12|s_debounceCnt\(10) & (!\inst12|s_debounceCnt\(9) & (!\inst12|s_debounceCnt\(8) & !\inst12|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(10),
	datab => \inst12|s_debounceCnt\(9),
	datac => \inst12|s_debounceCnt\(8),
	datad => \inst12|s_debounceCnt\(7),
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X91_Y28_N0
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(16) & (!\inst12|s_debounceCnt\(15) & (!\inst12|s_debounceCnt\(6) & !\inst12|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(16),
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_debounceCnt\(17),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X90_Y29_N18
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (\inst12|s_pulsedOut~3_combout\ & (\inst12|s_pulsedOut~5_combout\ & (\inst12|s_pulsedOut~4_combout\ & \inst12|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~3_combout\,
	datab => \inst12|s_pulsedOut~5_combout\,
	datac => \inst12|s_pulsedOut~4_combout\,
	datad => \inst12|s_pulsedOut~2_combout\,
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y29_N10
\inst12|s_debounceCnt[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[10]~29_combout\ = ((\inst12|s_debounceCnt\(5)) # ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~6_combout\))) # (!\inst12|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~7_combout\,
	datab => \inst12|s_debounceCnt\(5),
	datac => \inst12|s_debounceCnt\(0),
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|s_debounceCnt[10]~29_combout\);

-- Location: LCCOMB_X90_Y29_N4
\inst12|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[10]~4_combout\ = ((\inst12|s_debounceCnt\(22)) # ((\inst12|s_debounceCnt[10]~29_combout\) # (!\inst12|s_previousIn~q\))) # (!\inst12|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[10]~29_combout\,
	combout => \inst12|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X92_Y28_N18
\inst12|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~40_combout\ = (\inst12|s_debounceCnt\(20) & ((GND) # (!\inst12|Add0~39\))) # (!\inst12|s_debounceCnt\(20) & (\inst12|Add0~39\ $ (GND)))
-- \inst12|Add0~41\ = CARRY((\inst12|s_debounceCnt\(20)) # (!\inst12|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst12|Add0~39\,
	combout => \inst12|Add0~40_combout\,
	cout => \inst12|Add0~41\);

-- Location: LCCOMB_X91_Y29_N6
\inst12|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~9_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & (\inst12|s_debounceCnt[10]~4_combout\ & \inst12|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[10]~5_combout\,
	datab => \inst12|s_debounceCnt[10]~4_combout\,
	datac => \inst12|Add0~40_combout\,
	combout => \inst12|s_debounceCnt[20]~9_combout\);

-- Location: FF_X91_Y29_N7
\inst12|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(20));

-- Location: LCCOMB_X92_Y28_N20
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

-- Location: LCCOMB_X92_Y28_N26
\inst12|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~10_combout\ = (\inst12|Add0~42_combout\ & (\inst12|s_debounceCnt[10]~4_combout\ & \inst12|s_debounceCnt[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~42_combout\,
	datac => \inst12|s_debounceCnt[10]~4_combout\,
	datad => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt[21]~10_combout\);

-- Location: FF_X92_Y28_N27
\inst12|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(21));

-- Location: LCCOMB_X92_Y28_N22
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

-- Location: LCCOMB_X90_Y29_N0
\inst12|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~27_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~5_combout\)))) # (!\inst12|s_debounceCnt\(22) & ((\inst12|s_debounceCnt[10]~29_combout\) # ((!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[10]~29_combout\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X90_Y29_N2
\inst12|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~28_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_debounceCnt[22]~27_combout\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~44_combout\,
	datad => \inst12|s_debounceCnt[22]~27_combout\,
	combout => \inst12|s_debounceCnt[22]~28_combout\);

-- Location: FF_X90_Y29_N3
\inst12|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(22));

-- Location: LCCOMB_X91_Y29_N30
\inst12|s_debounceCnt[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[10]~5_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_previousIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[10]~5_combout\);

-- Location: LCCOMB_X92_Y29_N12
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

-- Location: LCCOMB_X90_Y29_N8
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|s_debounceCnt[10]~5_combout\ & \inst12|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	datad => \inst12|Add0~2_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X90_Y29_N9
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X90_Y29_N22
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~4_combout\,
	datac => \inst12|s_debounceCnt[10]~5_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: FF_X90_Y29_N23
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X90_Y29_N6
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (!\inst12|s_debounceCnt\(2) & (!\inst12|s_debounceCnt\(4) & (!\inst12|s_debounceCnt\(1) & !\inst12|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(2),
	datab => \inst12|s_debounceCnt\(4),
	datac => \inst12|s_debounceCnt\(1),
	datad => \inst12|s_debounceCnt\(3),
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X92_Y29_N0
\inst12|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~9_combout\ = (\inst12|s_dirtyIn~q\ & (!\inst12|s_debounceCnt\(22) & (\inst12|s_previousIn~q\ & \inst12|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt\(0),
	combout => \inst12|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X90_Y29_N28
\inst12|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~10_combout\ = (\inst12|s_pulsedOut~7_combout\ & (!\inst12|s_debounceCnt\(5) & (\inst12|s_pulsedOut~9_combout\ & \inst12|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~7_combout\,
	datab => \inst12|s_debounceCnt\(5),
	datac => \inst12|s_pulsedOut~9_combout\,
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|s_pulsedOut~10_combout\);

-- Location: FF_X90_Y29_N29
\inst12|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_pulsedOut~q\);

-- Location: LCCOMB_X82_Y5_N4
\inst4|Counter|s_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~18_combout\ = (\inst12|s_pulsedOut~q\ & (\inst4|Counter|s_count\(0) $ (VCC))) # (!\inst12|s_pulsedOut~q\ & (\inst4|Counter|s_count\(0) & VCC))
-- \inst4|Counter|s_count[0]~19\ = CARRY((\inst12|s_pulsedOut~q\ & \inst4|Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~q\,
	datab => \inst4|Counter|s_count\(0),
	datad => VCC,
	combout => \inst4|Counter|s_count[0]~18_combout\,
	cout => \inst4|Counter|s_count[0]~19\);

-- Location: LCCOMB_X82_Y5_N0
\inst4|Counter|s_count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~20_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # ((\inst|fstate.Extra~q\ & !\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Extra~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst4|Counter|s_count[0]~20_combout\);

-- Location: LCCOMB_X82_Y5_N26
\inst4|Counter|s_count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~21_combout\ = (\inst|rstGlobal~0_combout\) # (((\inst4|Counter|s_count\(0) & \inst4|Counter|s_count\(2))) # (!\inst4|Counter|s_count[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rstGlobal~0_combout\,
	datab => \inst4|Counter|s_count\(0),
	datac => \inst4|Counter|s_count\(2),
	datad => \inst4|Counter|s_count[0]~20_combout\,
	combout => \inst4|Counter|s_count[0]~21_combout\);

-- Location: LCCOMB_X79_Y5_N28
\iaaanst1|timeVal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|timeVal~0_combout\ = (!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_currentState.TFim~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|timeVal~0_combout\);

-- Location: LCCOMB_X82_Y5_N2
\inst4|Counter|s_count[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~36_combout\ = (\iaaanst1|timeVal~0_combout\) # ((!\inst1|s_pulsedOut~q\ & ((\inst|fstate.Extra~q\) # (!\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Extra~q\,
	datab => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \iaaanst1|timeVal~0_combout\,
	combout => \inst4|Counter|s_count[0]~36_combout\);

-- Location: FF_X82_Y5_N5
\inst4|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[0]~18_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(0));

-- Location: LCCOMB_X82_Y5_N6
\inst4|Counter|s_count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~22_combout\ = (\inst4|Counter|s_count\(1) & (!\inst4|Counter|s_count[0]~19\)) # (!\inst4|Counter|s_count\(1) & ((\inst4|Counter|s_count[0]~19\) # (GND)))
-- \inst4|Counter|s_count[1]~23\ = CARRY((!\inst4|Counter|s_count[0]~19\) # (!\inst4|Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(1),
	datad => VCC,
	cin => \inst4|Counter|s_count[0]~19\,
	combout => \inst4|Counter|s_count[1]~22_combout\,
	cout => \inst4|Counter|s_count[1]~23\);

-- Location: FF_X82_Y5_N7
\inst4|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[1]~22_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(1));

-- Location: LCCOMB_X82_Y5_N8
\inst4|Counter|s_count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[2]~24_combout\ = (\inst4|Counter|s_count\(2) & (\inst4|Counter|s_count[1]~23\ $ (GND))) # (!\inst4|Counter|s_count\(2) & (!\inst4|Counter|s_count[1]~23\ & VCC))
-- \inst4|Counter|s_count[2]~25\ = CARRY((\inst4|Counter|s_count\(2) & !\inst4|Counter|s_count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(2),
	datad => VCC,
	cin => \inst4|Counter|s_count[1]~23\,
	combout => \inst4|Counter|s_count[2]~24_combout\,
	cout => \inst4|Counter|s_count[2]~25\);

-- Location: FF_X82_Y5_N9
\inst4|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[2]~24_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(2));

-- Location: LCCOMB_X82_Y5_N10
\inst4|Counter|s_count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[3]~26_combout\ = (\inst4|Counter|s_count\(3) & (!\inst4|Counter|s_count[2]~25\)) # (!\inst4|Counter|s_count\(3) & ((\inst4|Counter|s_count[2]~25\) # (GND)))
-- \inst4|Counter|s_count[3]~27\ = CARRY((!\inst4|Counter|s_count[2]~25\) # (!\inst4|Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(3),
	datad => VCC,
	cin => \inst4|Counter|s_count[2]~25\,
	combout => \inst4|Counter|s_count[3]~26_combout\,
	cout => \inst4|Counter|s_count[3]~27\);

-- Location: FF_X82_Y5_N11
\inst4|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[3]~26_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(3));

-- Location: LCCOMB_X82_Y5_N24
\iaaanst1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector8~2_combout\ = (!\inst4|Counter|s_count\(3) & (!\inst4|Counter|s_count\(0) & (!\inst4|Counter|s_count\(2) & !\inst4|Counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(3),
	datab => \inst4|Counter|s_count\(0),
	datac => \inst4|Counter|s_count\(2),
	datad => \inst4|Counter|s_count\(1),
	combout => \iaaanst1|Selector8~2_combout\);

-- Location: LCCOMB_X82_Y5_N12
\inst4|Counter|s_count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[4]~28_combout\ = (\inst4|Counter|s_count\(4) & (\inst4|Counter|s_count[3]~27\ $ (GND))) # (!\inst4|Counter|s_count\(4) & (!\inst4|Counter|s_count[3]~27\ & VCC))
-- \inst4|Counter|s_count[4]~29\ = CARRY((\inst4|Counter|s_count\(4) & !\inst4|Counter|s_count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(4),
	datad => VCC,
	cin => \inst4|Counter|s_count[3]~27\,
	combout => \inst4|Counter|s_count[4]~28_combout\,
	cout => \inst4|Counter|s_count[4]~29\);

-- Location: FF_X82_Y5_N13
\inst4|Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[4]~28_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(4));

-- Location: LCCOMB_X82_Y5_N14
\inst4|Counter|s_count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[5]~30_combout\ = (\inst4|Counter|s_count\(5) & (!\inst4|Counter|s_count[4]~29\)) # (!\inst4|Counter|s_count\(5) & ((\inst4|Counter|s_count[4]~29\) # (GND)))
-- \inst4|Counter|s_count[5]~31\ = CARRY((!\inst4|Counter|s_count[4]~29\) # (!\inst4|Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(5),
	datad => VCC,
	cin => \inst4|Counter|s_count[4]~29\,
	combout => \inst4|Counter|s_count[5]~30_combout\,
	cout => \inst4|Counter|s_count[5]~31\);

-- Location: FF_X82_Y5_N15
\inst4|Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[5]~30_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(5));

-- Location: LCCOMB_X82_Y5_N16
\inst4|Counter|s_count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[6]~32_combout\ = (\inst4|Counter|s_count\(6) & (\inst4|Counter|s_count[5]~31\ $ (GND))) # (!\inst4|Counter|s_count\(6) & (!\inst4|Counter|s_count[5]~31\ & VCC))
-- \inst4|Counter|s_count[6]~33\ = CARRY((\inst4|Counter|s_count\(6) & !\inst4|Counter|s_count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(6),
	datad => VCC,
	cin => \inst4|Counter|s_count[5]~31\,
	combout => \inst4|Counter|s_count[6]~32_combout\,
	cout => \inst4|Counter|s_count[6]~33\);

-- Location: FF_X82_Y5_N17
\inst4|Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[6]~32_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(6));

-- Location: LCCOMB_X82_Y5_N18
\inst4|Counter|s_count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[7]~34_combout\ = \inst4|Counter|s_count[6]~33\ $ (\inst4|Counter|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Counter|s_count\(7),
	cin => \inst4|Counter|s_count[6]~33\,
	combout => \inst4|Counter|s_count[7]~34_combout\);

-- Location: FF_X82_Y5_N19
\inst4|Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[7]~34_combout\,
	sclr => \inst4|Counter|s_count[0]~21_combout\,
	ena => \inst4|Counter|s_count[0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(7));

-- Location: LCCOMB_X82_Y5_N30
\iaaanst1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector8~3_combout\ = (!\inst4|Counter|s_count\(4) & (!\inst4|Counter|s_count\(6) & (!\inst4|Counter|s_count\(5) & !\inst4|Counter|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(4),
	datab => \inst4|Counter|s_count\(6),
	datac => \inst4|Counter|s_count\(5),
	datad => \inst4|Counter|s_count\(7),
	combout => \iaaanst1|Selector8~3_combout\);

-- Location: LCCOMB_X81_Y6_N8
\iaaanst1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector11~0_combout\ = (\inst|start_stop~0_combout\ & (\iaaanst1|s_currentState.TExtra~q\ & ((!\iaaanst1|Selector8~3_combout\) # (!\iaaanst1|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|start_stop~0_combout\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|Selector8~2_combout\,
	datad => \iaaanst1|Selector8~3_combout\,
	combout => \iaaanst1|Selector11~0_combout\);

-- Location: LCCOMB_X81_Y6_N18
\iaaanst1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector11~1_combout\ = (\iaaanst1|Selector11~0_combout\) # ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TLevedar~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|Selector11~0_combout\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|Selector11~1_combout\);

-- Location: LCCOMB_X81_Y6_N24
\iaaanst1|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~17_combout\ = (\iaaanst1|Selector11~1_combout\ & ((\inst|fstate.Init~q\) # (\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \iaaanst1|Selector11~1_combout\,
	combout => \iaaanst1|s_currentState~17_combout\);

-- Location: FF_X81_Y6_N25
\iaaanst1|s_currentState.TCozer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TCozer~q\);

-- Location: LCCOMB_X80_Y6_N20
\iaaanst1|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~14_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TCozer~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TFim~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst|rstGlobal~0_combout\,
	combout => \iaaanst1|s_currentState~14_combout\);

-- Location: FF_X80_Y6_N21
\iaaanst1|s_currentState.TFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TFim~q\);

-- Location: LCCOMB_X81_Y6_N30
\iaaanst1|sync_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|sync_proc~6_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & (\inst|start_stop~0_combout\ & ((!\iaaanst1|s_currentState.TFim~q\) # (!\inst9|s_cntZero~q\)))) # (!\iaaanst1|s_currentState.TExtra~q\ & (\inst9|s_cntZero~q\ & 
-- (\iaaanst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst|start_stop~0_combout\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|sync_proc~6_combout\);

-- Location: LCCOMB_X81_Y6_N4
\iaaanst1|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~0_combout\ = (\iaaanst1|sync_proc~6_combout\) # ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TFim~q\ $ (\iaaanst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \iaaanst1|sync_proc~6_combout\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|s_stateChanged~0_combout\);

-- Location: LCCOMB_X81_Y6_N6
\iaaanst1|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~15_combout\ = (!\inst|rstGlobal~0_combout\ & (!\inst|reg_fstate~1_combout\ & ((\inst|start_stop~0_combout\) # (\iaaanst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|start_stop~0_combout\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \inst|reg_fstate~1_combout\,
	combout => \iaaanst1|s_currentState~15_combout\);

-- Location: FF_X81_Y6_N7
\iaaanst1|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TInit~q\);

-- Location: LCCOMB_X81_Y6_N2
\iaaanst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector9~0_combout\ = (\inst|start_stop~0_combout\ & (((!\inst9|s_cntZero~q\ & \iaaanst1|s_currentState.TAmmassar~q\)) # (!\iaaanst1|s_currentState.TInit~q\))) # (!\inst|start_stop~0_combout\ & (!\inst9|s_cntZero~q\ & 
-- (\iaaanst1|s_currentState.TAmmassar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|start_stop~0_combout\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \iaaanst1|Selector9~0_combout\);

-- Location: LCCOMB_X81_Y6_N14
\iaaanst1|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~1_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\ & (((\inst9|s_cntZero~q\ & !\iaaanst1|s_currentState.TLevedar~q\)) # (!\iaaanst1|Selector9~0_combout\))) # (!\iaaanst1|s_currentState.TAmmassar~q\ & 
-- ((\iaaanst1|Selector9~0_combout\) # ((\inst9|s_cntZero~q\ & \iaaanst1|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|Selector9~0_combout\,
	combout => \iaaanst1|s_stateChanged~1_combout\);

-- Location: LCCOMB_X81_Y6_N10
\iaaanst1|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector8~4_combout\ = (\inst|reg_fstate~1_combout\) # ((!\iaaanst1|s_currentState.TInit~q\ & ((\inst1|s_pulsedOut~q\) # (!\inst|fstate.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \inst|fstate.StartPrg~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|reg_fstate~1_combout\,
	combout => \iaaanst1|Selector8~4_combout\);

-- Location: LCCOMB_X81_Y6_N16
\iaaanst1|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~2_combout\ = (\inst|rstGlobal~0_combout\) # ((\iaaanst1|s_stateChanged~1_combout\) # (\iaaanst1|s_currentState.TInit~q\ $ (!\iaaanst1|Selector8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \inst|rstGlobal~0_combout\,
	datac => \iaaanst1|s_stateChanged~1_combout\,
	datad => \iaaanst1|Selector8~4_combout\,
	combout => \iaaanst1|s_stateChanged~2_combout\);

-- Location: LCCOMB_X80_Y6_N6
\iaaanst1|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~3_combout\ = (!\iaaanst1|s_stateChanged~0_combout\ & (!\iaaanst1|s_stateChanged~2_combout\ & (\iaaanst1|Selector11~1_combout\ $ (!\iaaanst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~0_combout\,
	datab => \iaaanst1|Selector11~1_combout\,
	datac => \iaaanst1|s_currentState.TCozer~q\,
	datad => \iaaanst1|s_stateChanged~2_combout\,
	combout => \iaaanst1|s_stateChanged~3_combout\);

-- Location: FF_X80_Y6_N7
\iaaanst1|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_stateChanged~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_stateChanged~q\);

-- Location: LCCOMB_X80_Y6_N4
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (!\iaaanst1|s_currentState.TInit~q\) # (!\iaaanst1|s_stateChanged~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X80_Y6_N26
\iaaanst1|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr8~combout\ = ((\iaaanst1|s_currentState.TExtra~q\) # (\iaaanst1|s_currentState.TFim~q\)) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|WideOr8~combout\);

-- Location: LCCOMB_X80_Y6_N16
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst11|pulse~q\ & ((\iaaanst1|WideOr8~combout\) # ((\inst9|s_cntZero~q\) # (\inst|start_stop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr8~combout\,
	datab => \inst9|s_cntZero~q\,
	datac => \inst11|pulse~q\,
	datad => \inst|start_stop~0_combout\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X79_Y6_N12
\iaaanst1|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr1~combout\ = (\iaaanst1|s_currentState.TLevedar~q\) # ((\iaaanst1|s_currentState.TAmmassar~q\) # (!\iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \iaaanst1|WideOr1~combout\);

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

-- Location: LCCOMB_X79_Y6_N22
\inst2|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut~0_combout\ = (\SW[0]~input_o\ & ((\inst|fstate.Init~q\) # (\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \SW[0]~input_o\,
	combout => \inst2|dataOut~0_combout\);

-- Location: LCCOMB_X79_Y6_N0
\inst2|dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~1_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst|fstate.Menu~q\) # ((\inst|fstate.Timer~q\) # (!\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Menu~q\,
	datab => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.Timer~q\,
	combout => \inst2|dataOut[0]~1_combout\);

-- Location: FF_X79_Y6_N23
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

-- Location: LCCOMB_X79_Y6_N28
\inst2|dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut~2_combout\ = (\SW[1]~input_o\ & ((\inst|fstate.Init~q\) # (\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \SW[1]~input_o\,
	combout => \inst2|dataOut~2_combout\);

-- Location: FF_X79_Y6_N29
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

-- Location: LCCOMB_X79_Y6_N14
\iaaanst1|addr[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|addr[2]~0_combout\ = (\inst2|dataOut\(0) & !\inst2|dataOut\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dataOut\(0),
	datad => \inst2|dataOut\(1),
	combout => \iaaanst1|addr[2]~0_combout\);

-- Location: LCCOMB_X79_Y6_N4
\inst9|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~16_combout\ = (\iaaanst1|addr[2]~0_combout\ & (((!\iaaanst1|s_stateChanged~q\ & \iaaanst1|s_currentState.TAmmassar~q\)) # (!\iaaanst1|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datab => \iaaanst1|addr[2]~0_combout\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~16_combout\);

-- Location: LCCOMB_X77_Y6_N8
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

-- Location: LCCOMB_X79_Y6_N18
\inst9|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~15_combout\ = (\iaaanst1|s_stateChanged~q\ & (\inst9|Add0~0_combout\ & \iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datac => \inst9|Add0~0_combout\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~15_combout\);

-- Location: LCCOMB_X79_Y6_N20
\inst9|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~17_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_count~15_combout\) # ((\iaaanst1|WideOr1~combout\ & \inst9|s_count~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr1~combout\,
	datab => \inst9|s_count~16_combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|s_count~15_combout\,
	combout => \inst9|s_count~17_combout\);

-- Location: LCCOMB_X80_Y6_N14
\inst9|s_count[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[2]~18_combout\ = (\inst|rstGlobal~0_combout\) # ((\inst8~combout\) # ((\inst10~0_combout\ & !\inst9|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rstGlobal~0_combout\,
	datab => \inst10~0_combout\,
	datac => \inst8~combout\,
	datad => \inst9|Equal0~1_combout\,
	combout => \inst9|s_count[2]~18_combout\);

-- Location: FF_X79_Y6_N21
\inst9|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~17_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(0));

-- Location: LCCOMB_X79_Y6_N8
\inst9|s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~24_combout\ = (\inst9|s_count~16_combout\ & ((\iaaanst1|s_currentState.TLevedar~q\) # (!\iaaanst1|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datac => \inst9|s_count~16_combout\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~24_combout\);

-- Location: LCCOMB_X79_Y6_N30
\inst9|s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~26_combout\ = ((!\iaaanst1|s_stateChanged~q\ & (\iaaanst1|s_currentState.TLevedar~q\ & \iaaanst1|s_currentState.TAmmassar~q\))) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~26_combout\);

-- Location: LCCOMB_X79_Y6_N26
\inst9|s_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~19_combout\ = (\iaaanst1|s_currentState.TInit~q\ & ((\iaaanst1|addr[2]~0_combout\ $ (\iaaanst1|s_currentState.TAmmassar~q\)) # (!\iaaanst1|s_currentState.TLevedar~q\))) # (!\iaaanst1|s_currentState.TInit~q\ & 
-- (!\iaaanst1|addr[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|addr[2]~0_combout\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~19_combout\);

-- Location: LCCOMB_X79_Y6_N16
\inst9|s_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~20_combout\ = (\inst8~combout\ & (\inst9|s_count~19_combout\ & ((\iaaanst1|s_currentState.TCozer~q\) # (\iaaanst1|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~combout\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \inst9|s_count~19_combout\,
	datad => \iaaanst1|WideOr1~combout\,
	combout => \inst9|s_count~20_combout\);

-- Location: LCCOMB_X79_Y6_N10
\inst9|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~22_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\ & (\inst2|dataOut\(0) & (!\inst2|dataOut\(1) & !\iaaanst1|s_currentState.TLevedar~q\))) # (!\iaaanst1|s_currentState.TAmmassar~q\ & (\iaaanst1|s_currentState.TLevedar~q\ & 
-- ((\inst2|dataOut\(1)) # (!\inst2|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut\(0),
	datab => \inst2|dataOut\(1),
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~22_combout\);

-- Location: LCCOMB_X80_Y6_N10
\inst6|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal6~0_combout\ = (!\inst9|s_count\(3) & (!\inst9|s_count\(2) & !\inst9|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(3),
	datab => \inst9|s_count\(2),
	datad => \inst9|s_count\(1),
	combout => \inst6|Equal6~0_combout\);

-- Location: LCCOMB_X80_Y6_N30
\inst9|s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~28_combout\ = ((\inst6|Equal6~0_combout\ & (!\inst9|s_count\(0) & \inst9|Equal0~0_combout\))) # (!\inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal6~0_combout\,
	datab => \inst9|s_count\(0),
	datac => \inst9|Equal0~0_combout\,
	datad => \inst10~0_combout\,
	combout => \inst9|s_count~28_combout\);

-- Location: LCCOMB_X77_Y6_N10
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

-- Location: LCCOMB_X80_Y6_N24
\inst9|s_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[1]~0_combout\ = (\inst9|s_count~28_combout\ & (\inst9|s_count\(1))) # (!\inst9|s_count~28_combout\ & ((\inst9|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~28_combout\,
	datac => \inst9|s_count\(1),
	datad => \inst9|Add0~2_combout\,
	combout => \inst9|s_count[1]~0_combout\);

-- Location: LCCOMB_X80_Y6_N8
\iaaanst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector6~0_combout\ = (\iaaanst1|s_currentState.TInit~q\ & (!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \iaaanst1|Selector6~0_combout\);

-- Location: FF_X80_Y6_N25
\inst9|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count[1]~0_combout\,
	asdata => \iaaanst1|Selector6~0_combout\,
	sclr => \inst|rstGlobal~0_combout\,
	sload => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(1));

-- Location: LCCOMB_X77_Y6_N12
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|s_count\(2) & ((GND) # (!\inst9|Add0~3\))) # (!\inst9|s_count\(2) & (\inst9|Add0~3\ $ (GND)))
-- \inst9|Add0~5\ = CARRY((\inst9|s_count\(2)) # (!\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X77_Y6_N6
\inst9|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~23_combout\ = (\iaaanst1|s_currentState.TInit~q\ & ((\iaaanst1|s_stateChanged~q\ & ((\inst9|Add0~4_combout\))) # (!\iaaanst1|s_stateChanged~q\ & (\inst9|s_count~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datab => \iaaanst1|s_currentState.TInit~q\,
	datac => \inst9|s_count~22_combout\,
	datad => \inst9|Add0~4_combout\,
	combout => \inst9|s_count~23_combout\);

-- Location: LCCOMB_X77_Y6_N4
\inst9|s_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~29_combout\ = (\inst9|s_count~23_combout\ & ((\inst1|s_pulsedOut~q\) # (\inst|fstate.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Init~q\,
	datad => \inst9|s_count~23_combout\,
	combout => \inst9|s_count~29_combout\);

-- Location: FF_X77_Y6_N5
\inst9|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~29_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(2));

-- Location: LCCOMB_X77_Y6_N14
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|s_count\(3) & (\inst9|Add0~5\ & VCC)) # (!\inst9|s_count\(3) & (!\inst9|Add0~5\))
-- \inst9|Add0~7\ = CARRY((!\inst9|s_count\(3) & !\inst9|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(3),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCCOMB_X79_Y6_N2
\inst9|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~21_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_count~20_combout\) # ((!\inst8~combout\ & \inst9|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~combout\,
	datab => \inst9|s_count~20_combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|s_count~21_combout\);

-- Location: FF_X79_Y6_N3
\inst9|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~21_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(3));

-- Location: LCCOMB_X77_Y6_N16
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|s_count\(4) & ((GND) # (!\inst9|Add0~7\))) # (!\inst9|s_count\(4) & (\inst9|Add0~7\ $ (GND)))
-- \inst9|Add0~9\ = CARRY((\inst9|s_count\(4)) # (!\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X79_Y6_N6
\inst9|s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~30_combout\ = (\iaaanst1|s_stateChanged~q\ & (\inst9|Add0~8_combout\ & \iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datac => \inst9|Add0~8_combout\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~30_combout\);

-- Location: LCCOMB_X79_Y6_N24
\inst9|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~27_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_count~30_combout\) # ((\inst9|s_count~26_combout\ & !\iaaanst1|addr[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~26_combout\,
	datab => \iaaanst1|addr[2]~0_combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|s_count~30_combout\,
	combout => \inst9|s_count~27_combout\);

-- Location: FF_X79_Y6_N25
\inst9|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~27_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(4));

-- Location: LCCOMB_X77_Y6_N18
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|s_count\(5) & (\inst9|Add0~9\ & VCC)) # (!\inst9|s_count\(5) & (!\inst9|Add0~9\))
-- \inst9|Add0~11\ = CARRY((!\inst9|s_count\(5) & !\inst9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(5),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X77_Y6_N2
\inst9|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~25_combout\ = (!\inst|rstGlobal~0_combout\ & ((\inst9|s_count~24_combout\) # ((!\inst8~combout\ & \inst9|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~combout\,
	datab => \inst9|s_count~24_combout\,
	datac => \inst|rstGlobal~0_combout\,
	datad => \inst9|Add0~10_combout\,
	combout => \inst9|s_count~25_combout\);

-- Location: FF_X77_Y6_N3
\inst9|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~25_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(5));

-- Location: LCCOMB_X77_Y6_N20
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

-- Location: LCCOMB_X77_Y6_N0
\inst9|s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~31_combout\ = (\inst9|Add0~12_combout\ & (!\inst8~combout\ & ((\inst1|s_pulsedOut~q\) # (\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst9|Add0~12_combout\,
	datac => \inst|fstate.Init~q\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~31_combout\);

-- Location: FF_X77_Y6_N1
\inst9|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~31_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(6));

-- Location: LCCOMB_X77_Y6_N22
\inst9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = \inst9|s_count\(7) $ (!\inst9|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\);

-- Location: LCCOMB_X77_Y6_N30
\inst9|s_count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~32_combout\ = (\inst9|Add0~14_combout\ & (!\inst8~combout\ & ((\inst1|s_pulsedOut~q\) # (\inst|fstate.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst|fstate.Init~q\,
	datac => \inst9|Add0~14_combout\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~32_combout\);

-- Location: FF_X77_Y6_N31
\inst9|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~32_combout\,
	ena => \inst9|s_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(7));

-- Location: LCCOMB_X77_Y6_N24
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_count\(7) & (!\inst9|s_count\(6) & (!\inst9|s_count\(4) & !\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(5),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y6_N18
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (!\inst9|s_count\(0) & (\inst9|Equal0~0_combout\ & \inst6|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(0),
	datac => \inst9|Equal0~0_combout\,
	datad => \inst6|Equal6~0_combout\,
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y6_N0
\inst9|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~4_combout\ = (\inst9|s_cntZero~q\ & (((\inst10~0_combout\ & \inst9|Equal0~1_combout\)) # (!\inst11|pulse~q\))) # (!\inst9|s_cntZero~q\ & (\inst10~0_combout\ & ((\inst9|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \inst10~0_combout\,
	datac => \inst11|pulse~q\,
	datad => \inst9|Equal0~1_combout\,
	combout => \inst9|s_cntZero~4_combout\);

-- Location: LCCOMB_X80_Y6_N2
\inst9|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~5_combout\ = (!\inst8~combout\ & (\inst9|s_cntZero~4_combout\ & ((\inst|fstate.Init~q\) # (\inst1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datab => \inst8~combout\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst9|s_cntZero~4_combout\,
	combout => \inst9|s_cntZero~5_combout\);

-- Location: FF_X80_Y6_N3
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

-- Location: LCCOMB_X82_Y6_N10
\inst|reg_fstate.Extra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Extra~0_combout\ = (\inst|fstate.Extra~q\) # ((\inst|fstate.StartPrg~q\ & (\inst9|s_cntZero~q\ & \iaaanst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Extra~q\,
	datab => \inst|fstate.StartPrg~q\,
	datac => \inst9|s_cntZero~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \inst|reg_fstate.Extra~0_combout\);

-- Location: LCCOMB_X82_Y6_N30
\inst|reg_fstate.Extra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Extra~1_combout\ = (!\inst1|s_pulsedOut~q\ & (!\inst3|s_pulsedOut~q\ & \inst|reg_fstate.Extra~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|reg_fstate.Extra~0_combout\,
	combout => \inst|reg_fstate.Extra~1_combout\);

-- Location: FF_X82_Y6_N31
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

-- Location: LCCOMB_X82_Y6_N0
\inst|reg_fstate.Stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Stop~0_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst3|s_pulsedOut~q\ & ((\inst|fstate.StartPrg~q\))) # (!\inst3|s_pulsedOut~q\ & (\inst|fstate.Stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|fstate.Stop~q\,
	datad => \inst|fstate.StartPrg~q\,
	combout => \inst|reg_fstate.Stop~0_combout\);

-- Location: FF_X82_Y6_N1
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

-- Location: LCCOMB_X82_Y6_N16
\inst|reg_fstate.StartPrg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~0_combout\ = (\inst|fstate.Extra~q\) # ((\inst|fstate.Stop~q\) # ((\inst|fstate.Menu~q\ & !\inst13|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Extra~q\,
	datab => \inst|fstate.Stop~q\,
	datac => \inst|fstate.Menu~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst|reg_fstate.StartPrg~0_combout\);

-- Location: LCCOMB_X82_Y6_N26
\inst|reg_fstate.StartPrg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~1_combout\ = (\inst5|s_result~q\ & ((\inst|fstate.TimeProcess~q\) # ((\inst3|s_pulsedOut~q\ & \inst|reg_fstate.StartPrg~0_combout\)))) # (!\inst5|s_result~q\ & (((\inst3|s_pulsedOut~q\ & \inst|reg_fstate.StartPrg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst|fstate.TimeProcess~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|reg_fstate.StartPrg~0_combout\,
	combout => \inst|reg_fstate.StartPrg~1_combout\);

-- Location: LCCOMB_X82_Y6_N12
\inst|reg_fstate.StartPrg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~2_combout\ = (!\inst3|s_pulsedOut~q\ & (\inst|fstate.StartPrg~q\ & ((!\inst9|s_cntZero~q\) # (!\iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|fstate.StartPrg~q\,
	combout => \inst|reg_fstate.StartPrg~2_combout\);

-- Location: LCCOMB_X82_Y6_N24
\inst|reg_fstate.StartPrg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.StartPrg~3_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst|reg_fstate.StartPrg~1_combout\) # ((!\inst|reg_fstate~1_combout\ & \inst|reg_fstate.StartPrg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst|reg_fstate~1_combout\,
	datac => \inst|reg_fstate.StartPrg~1_combout\,
	datad => \inst|reg_fstate.StartPrg~2_combout\,
	combout => \inst|reg_fstate.StartPrg~3_combout\);

-- Location: FF_X82_Y6_N25
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

-- Location: LCCOMB_X81_Y6_N26
\inst|start_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|start_stop~0_combout\ = (!\inst1|s_pulsedOut~q\ & \inst|fstate.StartPrg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.StartPrg~q\,
	combout => \inst|start_stop~0_combout\);

-- Location: LCCOMB_X81_Y6_N28
\inst|reg_fstate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~1_combout\ = (\inst|start_stop~0_combout\ & (\iaaanst1|s_currentState.TExtra~q\ & (\iaaanst1|Selector8~2_combout\ & \iaaanst1|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|start_stop~0_combout\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|Selector8~2_combout\,
	datad => \iaaanst1|Selector8~3_combout\,
	combout => \inst|reg_fstate~1_combout\);

-- Location: LCCOMB_X82_Y6_N8
\inst|reg_fstate.Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reg_fstate.Init~0_combout\ = \inst1|s_pulsedOut~q\ $ (((\inst3|s_pulsedOut~q\) # (!\inst|reg_fstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|reg_fstate~1_combout\,
	combout => \inst|reg_fstate.Init~0_combout\);

-- Location: FF_X82_Y6_N9
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

-- Location: LCCOMB_X81_Y6_N22
\iaaanst1|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~16_combout\ = (\iaaanst1|Selector9~0_combout\ & ((\inst|fstate.Init~q\) # (\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Init~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \iaaanst1|Selector9~0_combout\,
	combout => \iaaanst1|s_currentState~16_combout\);

-- Location: FF_X81_Y6_N23
\iaaanst1|s_currentState.TAmmassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TAmmassar~q\);

-- Location: LCCOMB_X80_Y6_N12
\iaaanst1|stOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|stOut[0]~0_combout\ = (!\iaaanst1|s_currentState.TAmmassar~q\ & !\iaaanst1|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datac => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|stOut[0]~0_combout\);

-- Location: LCCOMB_X80_Y6_N28
\iaaanst1|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector15~2_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TLevedar~q\) # (!\iaaanst1|stOut[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|stOut[0]~0_combout\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|Selector15~2_combout\);

-- Location: LCCOMB_X82_Y6_N2
\iaaanst1|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector15~4_combout\ = (\iaaanst1|Selector15~2_combout\ & ((\inst1|s_pulsedOut~q\) # (!\inst|fstate.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datac => \iaaanst1|Selector15~2_combout\,
	datad => \inst|fstate.StartPrg~q\,
	combout => \iaaanst1|Selector15~4_combout\);

-- Location: LCCOMB_X80_Y2_N26
\inst19|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~5_combout\ = (\inst5|s_count\(2) & (((!\inst5|s_count\(3))))) # (!\inst5|s_count\(2) & ((\inst5|s_count\(4) & ((\inst5|s_count\(1)) # (\inst5|s_count\(3)))) # (!\inst5|s_count\(4) & ((!\inst5|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux3~5_combout\);

-- Location: LCCOMB_X80_Y2_N16
\inst19|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~4_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(3) & ((\inst5|s_count\(1)) # (!\inst5|s_count\(4))))) # (!\inst5|s_count\(2) & ((\inst5|s_count\(4) & ((!\inst5|s_count\(3)))) # (!\inst5|s_count\(4) & (\inst5|s_count\(1) & 
-- \inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux3~4_combout\);

-- Location: LCCOMB_X80_Y2_N12
\inst19|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~3_combout\ = (\inst5|s_count\(5) & (\inst19|Mux3~5_combout\)) # (!\inst5|s_count\(5) & ((\inst19|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(5),
	datac => \inst19|Mux3~5_combout\,
	datad => \inst19|Mux3~4_combout\,
	combout => \inst19|Mux3~3_combout\);

-- Location: LCCOMB_X82_Y4_N26
\inst19|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~9_combout\ = (!\inst5|s_count\(7) & (\inst19|Mux3~3_combout\ & !\inst5|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst19|Mux3~3_combout\,
	datad => \inst5|s_count\(6),
	combout => \inst19|Mux3~9_combout\);

-- Location: LCCOMB_X82_Y4_N4
\inst|en_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|en_2~0_combout\ = (\inst1|s_pulsedOut~q\) # (!\inst|fstate.Extra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.Extra~q\,
	combout => \inst|en_2~0_combout\);

-- Location: LCCOMB_X82_Y4_N10
\inst19|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~8_combout\ = (\inst|en_3~0_combout\ & ((\inst19|Mux3~9_combout\) # ((!\inst|en_2~0_combout\)))) # (!\inst|en_3~0_combout\ & (((\inst4|Counter|s_count\(0)) # (\inst|en_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst19|Mux3~9_combout\,
	datac => \inst4|Counter|s_count\(0),
	datad => \inst|en_2~0_combout\,
	combout => \inst19|Mux3~8_combout\);

-- Location: LCCOMB_X82_Y4_N16
\inst19|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~4_combout\ = (\inst5|s_count\(3) & (\inst5|s_count\(4) & ((\inst5|s_count\(2)) # (!\inst5|s_count\(5))))) # (!\inst5|s_count\(3) & ((\inst5|s_count\(4) & (\inst5|s_count\(2) & !\inst5|s_count\(5))) # (!\inst5|s_count\(4) & 
-- ((\inst5|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(5),
	combout => \inst19|Mux2~4_combout\);

-- Location: LCCOMB_X82_Y4_N6
\inst19|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~10_combout\ = (\inst5|s_count\(7)) # ((\inst5|s_count\(6)) # (\inst19|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datad => \inst19|Mux2~4_combout\,
	combout => \inst19|Mux2~10_combout\);

-- Location: LCCOMB_X82_Y4_N20
\inst19|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~9_combout\ = (\inst|en_3~0_combout\ & (((\inst19|Mux2~10_combout\) # (!\inst|en_2~0_combout\)))) # (!\inst|en_3~0_combout\ & ((\inst4|Counter|s_count\(1)) # ((\inst|en_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst4|Counter|s_count\(1),
	datac => \inst19|Mux2~10_combout\,
	datad => \inst|en_2~0_combout\,
	combout => \inst19|Mux2~9_combout\);

-- Location: LCCOMB_X82_Y5_N28
\inst19|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~2_combout\ = (\inst1|s_pulsedOut~q\ & (!\inst|en_3~0_combout\)) # (!\inst1|s_pulsedOut~q\ & ((\inst|fstate.Extra~q\ & ((\inst4|Counter|s_count\(3)))) # (!\inst|fstate.Extra~q\ & (!\inst|en_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst|en_3~0_combout\,
	datac => \inst|fstate.Extra~q\,
	datad => \inst4|Counter|s_count\(3),
	combout => \inst19|Mux0~2_combout\);

-- Location: LCCOMB_X82_Y4_N8
\inst23|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal2~0_combout\ = (!\inst5|s_count\(7) & !\inst5|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst23|Equal2~0_combout\);

-- Location: LCCOMB_X82_Y4_N18
\inst23|outBCD[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~65_combout\ = (\inst23|Equal2~0_combout\ & (((!\inst5|s_count\(3) & !\inst5|s_count\(4))) # (!\inst5|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(4),
	datac => \inst23|Equal2~0_combout\,
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[0]~65_combout\);

-- Location: LCCOMB_X82_Y4_N28
\inst19|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = (\inst|en_2~0_combout\ & (((!\inst|en_3~0_combout\)) # (!\inst23|outBCD[0]~65_combout\))) # (!\inst|en_2~0_combout\ & (((\inst4|Counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[0]~65_combout\,
	datab => \inst4|Counter|s_count\(2),
	datac => \inst|en_3~0_combout\,
	datad => \inst|en_2~0_combout\,
	combout => \inst19|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y4_N28
\inst17|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~0_combout\ = (!\inst19|Mux0~2_combout\ & ((\inst19|Mux2~9_combout\ & (\inst19|Mux3~8_combout\ & \inst19|Mux1~0_combout\)) # (!\inst19|Mux2~9_combout\ & ((!\inst19|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~0_combout\);

-- Location: LCCOMB_X83_Y4_N22
\inst17|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~1_combout\ = (\inst19|Mux3~8_combout\ & ((\inst19|Mux1~0_combout\ & (\inst19|Mux2~9_combout\)) # (!\inst19|Mux1~0_combout\ & ((!\inst19|Mux0~2_combout\))))) # (!\inst19|Mux3~8_combout\ & ((\inst19|Mux1~0_combout\ & 
-- ((\inst19|Mux0~2_combout\))) # (!\inst19|Mux1~0_combout\ & (\inst19|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~1_combout\);

-- Location: LCCOMB_X83_Y4_N16
\inst17|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~2_combout\ = (\inst19|Mux2~9_combout\ & (\inst19|Mux3~8_combout\ $ (((\inst19|Mux0~2_combout\ & !\inst19|Mux1~0_combout\))))) # (!\inst19|Mux2~9_combout\ & ((\inst19|Mux1~0_combout\ & ((!\inst19|Mux0~2_combout\))) # 
-- (!\inst19|Mux1~0_combout\ & (\inst19|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~2_combout\);

-- Location: LCCOMB_X83_Y4_N30
\inst17|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~3_combout\ = (\inst19|Mux3~8_combout\ & (\inst19|Mux1~0_combout\ $ (((\inst19|Mux2~9_combout\) # (\inst19|Mux0~2_combout\))))) # (!\inst19|Mux3~8_combout\ & ((\inst19|Mux2~9_combout\ & (!\inst19|Mux0~2_combout\)) # 
-- (!\inst19|Mux2~9_combout\ & ((\inst19|Mux0~2_combout\) # (!\inst19|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~3_combout\);

-- Location: LCCOMB_X83_Y4_N8
\inst17|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~4_combout\ = (\inst19|Mux3~8_combout\ & (\inst19|Mux0~2_combout\ & ((\inst19|Mux2~9_combout\) # (\inst19|Mux1~0_combout\)))) # (!\inst19|Mux3~8_combout\ & (\inst19|Mux2~9_combout\ & ((!\inst19|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~4_combout\);

-- Location: LCCOMB_X83_Y4_N2
\inst17|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~5_combout\ = (\inst19|Mux2~9_combout\ & ((\inst19|Mux0~2_combout\) # ((!\inst19|Mux3~8_combout\ & \inst19|Mux1~0_combout\)))) # (!\inst19|Mux2~9_combout\ & (\inst19|Mux1~0_combout\ & (\inst19|Mux3~8_combout\ $ (\inst19|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~5_combout\);

-- Location: LCCOMB_X83_Y4_N12
\inst17|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~6_combout\ = (\inst19|Mux2~9_combout\ & (((\inst19|Mux0~2_combout\)))) # (!\inst19|Mux2~9_combout\ & ((\inst19|Mux3~8_combout\ & (!\inst19|Mux0~2_combout\ & !\inst19|Mux1~0_combout\)) # (!\inst19|Mux3~8_combout\ & 
-- ((\inst19|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~8_combout\,
	datab => \inst19|Mux2~9_combout\,
	datac => \inst19|Mux0~2_combout\,
	datad => \inst19|Mux1~0_combout\,
	combout => \inst17|decOut_n~6_combout\);

-- Location: LCCOMB_X82_Y4_N12
\inst23|outBCD[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~56_combout\ = (!\inst5|s_count\(7) & ((\inst5|s_count\(2) & (!\inst5|s_count\(4) & \inst5|s_count\(3))) # (!\inst5|s_count\(2) & (\inst5|s_count\(4) & !\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[1]~56_combout\);

-- Location: LCCOMB_X82_Y4_N30
\inst23|outBCD[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~72_combout\ = (!\inst5|s_count\(5) & (!\inst5|s_count\(1) & (!\inst5|s_count\(6) & \inst23|outBCD[1]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(6),
	datad => \inst23|outBCD[1]~56_combout\,
	combout => \inst23|outBCD[1]~72_combout\);

-- Location: LCCOMB_X80_Y2_N18
\inst23|outBCD[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~73_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(5) $ (((\inst5|s_count\(4)) # (!\inst5|s_count\(3)))))) # (!\inst5|s_count\(1) & (\inst5|s_count\(5) & ((\inst5|s_count\(4)) # (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[1]~73_combout\);

-- Location: LCCOMB_X80_Y2_N28
\inst23|outBCD[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~74_combout\ = (\inst23|outBCD[1]~73_combout\ & ((\inst5|s_count\(2) $ (\inst5|s_count\(3))) # (!\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(4),
	datad => \inst23|outBCD[1]~73_combout\,
	combout => \inst23|outBCD[1]~74_combout\);

-- Location: LCCOMB_X80_Y3_N26
\inst23|outBCD[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~71_combout\ = (!\inst5|s_count\(6) & (\inst23|outBCD[1]~74_combout\ & !\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst23|outBCD[1]~74_combout\,
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[1]~71_combout\);

-- Location: LCCOMB_X80_Y2_N24
\inst19|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~8_combout\ = (!\inst5|s_count\(5) & (((!\inst5|s_count\(2) & !\inst5|s_count\(3))) # (!\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst19|Mux2~8_combout\);

-- Location: LCCOMB_X82_Y3_N18
\inst23|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~3_combout\ = (\inst23|LessThan0~2_combout\ & (((!\inst5|s_count\(1) & !\inst5|s_count\(2))) # (!\inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(1),
	datac => \inst23|LessThan0~2_combout\,
	datad => \inst5|s_count\(2),
	combout => \inst23|LessThan0~3_combout\);

-- Location: LCCOMB_X80_Y3_N16
\inst23|outBCD[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~66_combout\ = (!\inst5|s_count\(6) & (\inst19|Mux2~8_combout\ & (!\inst23|LessThan0~3_combout\ & !\inst5|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datab => \inst19|Mux2~8_combout\,
	datac => \inst23|LessThan0~3_combout\,
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[1]~66_combout\);

-- Location: LCCOMB_X80_Y3_N6
\inst18|muxOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[1]~6_combout\ = (\inst|en_3~0_combout\ & (!\inst23|outBCD[1]~71_combout\ & ((!\inst23|outBCD[1]~66_combout\) # (!\inst23|outBCD[1]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst23|outBCD[1]~72_combout\,
	datac => \inst23|outBCD[1]~71_combout\,
	datad => \inst23|outBCD[1]~66_combout\,
	combout => \inst18|muxOut[1]~6_combout\);

-- Location: LCCOMB_X80_Y2_N2
\inst23|outBCD[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~9_combout\ = (((!\inst5|s_count\(5)) # (!\inst5|s_count\(4))) # (!\inst5|s_count\(3))) # (!\inst5|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[0]~9_combout\);

-- Location: LCCOMB_X80_Y3_N4
\inst23|outBCD[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~68_combout\ = (!\inst5|s_count\(6) & (\inst23|outBCD[0]~9_combout\ & (\inst5|s_count\(0) & !\inst5|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datab => \inst23|outBCD[0]~9_combout\,
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[0]~68_combout\);

-- Location: LCCOMB_X79_Y3_N28
\inst18|muxOut[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[0]~7_combout\ = (\inst23|outBCD[0]~68_combout\) # ((\inst1|s_pulsedOut~q\) # ((!\inst|fstate.Timer~q\ & !\inst|fstate.TimeProcess~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[0]~68_combout\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst|fstate.Timer~q\,
	datad => \inst|fstate.TimeProcess~q\,
	combout => \inst18|muxOut[0]~7_combout\);

-- Location: LCCOMB_X80_Y2_N8
\inst23|outBCD[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~35_combout\ = (\inst5|s_count\(2) & (!\inst5|s_count\(4) & ((\inst5|s_count\(1)) # (\inst5|s_count\(5))))) # (!\inst5|s_count\(2) & (\inst5|s_count\(4) & ((!\inst5|s_count\(5)) # (!\inst5|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[2]~35_combout\);

-- Location: LCCOMB_X80_Y2_N10
\inst23|outBCD[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~34_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(4) $ (((!\inst5|s_count\(5)) # (!\inst5|s_count\(1)))))) # (!\inst5|s_count\(2) & ((\inst5|s_count\(1) & (!\inst5|s_count\(4) & \inst5|s_count\(5))) # (!\inst5|s_count\(1) & 
-- (\inst5|s_count\(4) & !\inst5|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[2]~34_combout\);

-- Location: LCCOMB_X80_Y2_N22
\inst23|outBCD[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~33_combout\ = (\inst5|s_count\(3) & (\inst23|outBCD[2]~35_combout\)) # (!\inst5|s_count\(3) & ((\inst23|outBCD[2]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(3),
	datac => \inst23|outBCD[2]~35_combout\,
	datad => \inst23|outBCD[2]~34_combout\,
	combout => \inst23|outBCD[2]~33_combout\);

-- Location: LCCOMB_X80_Y3_N12
\inst23|outBCD[2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~70_combout\ = (\inst23|outBCD[2]~33_combout\ & (!\inst5|s_count\(6) & !\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|outBCD[2]~33_combout\,
	datac => \inst5|s_count\(6),
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[2]~70_combout\);

-- Location: LCCOMB_X79_Y3_N22
\inst18|muxOut[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[2]~8_combout\ = (\inst23|outBCD[2]~70_combout\) # ((\inst1|s_pulsedOut~q\) # ((!\inst|fstate.Timer~q\ & !\inst|fstate.TimeProcess~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Timer~q\,
	datab => \inst23|outBCD[2]~70_combout\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.TimeProcess~q\,
	combout => \inst18|muxOut[2]~8_combout\);

-- Location: LCCOMB_X80_Y2_N30
\inst23|outBCD[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~26_combout\ = (\inst5|s_count\(1) & (!\inst5|s_count\(2) & (\inst5|s_count\(4) & \inst5|s_count\(5)))) # (!\inst5|s_count\(1) & (!\inst5|s_count\(5) & (\inst5|s_count\(2) $ (!\inst5|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[3]~26_combout\);

-- Location: LCCOMB_X80_Y2_N20
\inst23|outBCD[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~25_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(1) & (!\inst5|s_count\(4) & \inst5|s_count\(5)))) # (!\inst5|s_count\(2) & (\inst5|s_count\(4) & (\inst5|s_count\(1) $ (\inst5|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|outBCD[3]~25_combout\);

-- Location: LCCOMB_X80_Y2_N0
\inst23|outBCD[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~24_combout\ = (\inst5|s_count\(3) & (\inst23|outBCD[3]~26_combout\)) # (!\inst5|s_count\(3) & ((\inst23|outBCD[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(3),
	datac => \inst23|outBCD[3]~26_combout\,
	datad => \inst23|outBCD[3]~25_combout\,
	combout => \inst23|outBCD[3]~24_combout\);

-- Location: LCCOMB_X80_Y3_N18
\inst23|outBCD[3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~69_combout\ = (!\inst5|s_count\(6) & (\inst23|outBCD[3]~24_combout\ & !\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst23|outBCD[3]~24_combout\,
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[3]~69_combout\);

-- Location: LCCOMB_X79_Y3_N24
\inst18|muxOut[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[3]~9_combout\ = (!\inst23|outBCD[3]~69_combout\ & (!\inst1|s_pulsedOut~q\ & ((\inst|fstate.Timer~q\) # (\inst|fstate.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Timer~q\,
	datab => \inst23|outBCD[3]~69_combout\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.TimeProcess~q\,
	combout => \inst18|muxOut[3]~9_combout\);

-- Location: LCCOMB_X79_Y3_N12
\inst16|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~5_combout\ = ((\inst18|muxOut[1]~6_combout\ & ((\inst18|muxOut[2]~8_combout\))) # (!\inst18|muxOut[1]~6_combout\ & ((!\inst18|muxOut[2]~8_combout\) # (!\inst18|muxOut[0]~7_combout\)))) # (!\inst18|muxOut[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst18|muxOut[2]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~5_combout\);

-- Location: LCCOMB_X80_Y3_N20
\inst23|outBCD[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~67_combout\ = (\inst23|outBCD[1]~71_combout\) # ((\inst23|outBCD[1]~66_combout\ & \inst23|outBCD[1]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~71_combout\,
	datab => \inst23|outBCD[1]~66_combout\,
	datac => \inst23|outBCD[1]~72_combout\,
	combout => \inst23|outBCD[1]~67_combout\);

-- Location: LCCOMB_X79_Y3_N14
\inst16|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~25_combout\ = (\inst1|s_pulsedOut~q\) # ((!\inst|fstate.Timer~q\ & !\inst|fstate.TimeProcess~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Timer~q\,
	datac => \inst1|s_pulsedOut~q\,
	datad => \inst|fstate.TimeProcess~q\,
	combout => \inst16|decOut_n~25_combout\);

-- Location: LCCOMB_X80_Y3_N30
\inst16|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~7_combout\ = ((\inst23|outBCD[2]~70_combout\ & ((\inst16|decOut_n~25_combout\))) # (!\inst23|outBCD[2]~70_combout\ & (\inst23|outBCD[1]~67_combout\))) # (!\inst|en_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~70_combout\,
	datab => \inst23|outBCD[1]~67_combout\,
	datac => \inst|en_3~0_combout\,
	datad => \inst16|decOut_n~25_combout\,
	combout => \inst16|decOut_n~7_combout\);

-- Location: LCCOMB_X79_Y3_N8
\inst16|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~8_combout\ = ((\inst23|outBCD[2]~70_combout\) # (!\inst|en_3~0_combout\)) # (!\inst23|outBCD[1]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~67_combout\,
	datac => \inst23|outBCD[2]~70_combout\,
	datad => \inst|en_3~0_combout\,
	combout => \inst16|decOut_n~8_combout\);

-- Location: LCCOMB_X79_Y3_N10
\inst16|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~9_combout\ = (\inst18|muxOut[0]~7_combout\ & (((!\inst18|muxOut[3]~9_combout\)))) # (!\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[3]~9_combout\ & ((!\inst16|decOut_n~8_combout\))) # (!\inst18|muxOut[3]~9_combout\ & 
-- (\inst16|decOut_n~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~7_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst16|decOut_n~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~9_combout\);

-- Location: LCCOMB_X79_Y3_N2
\inst16|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~6_combout\ = (!\inst18|muxOut[1]~6_combout\) # (!\inst18|muxOut[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|muxOut[2]~8_combout\,
	datad => \inst18|muxOut[1]~6_combout\,
	combout => \inst16|decOut_n~6_combout\);

-- Location: LCCOMB_X79_Y3_N20
\inst16|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~10_combout\ = (\inst16|decOut_n~9_combout\ & (((\inst16|decOut_n~25_combout\)) # (!\inst18|muxOut[0]~7_combout\))) # (!\inst16|decOut_n~9_combout\ & (\inst18|muxOut[0]~7_combout\ & ((\inst16|decOut_n~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~9_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst16|decOut_n~25_combout\,
	datad => \inst16|decOut_n~6_combout\,
	combout => \inst16|decOut_n~10_combout\);

-- Location: LCCOMB_X79_Y3_N26
\inst16|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~11_combout\ = (\inst|en_3~0_combout\ & ((!\inst23|outBCD[2]~70_combout\) # (!\inst23|outBCD[3]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|outBCD[3]~69_combout\,
	datac => \inst23|outBCD[2]~70_combout\,
	datad => \inst|en_3~0_combout\,
	combout => \inst16|decOut_n~11_combout\);

-- Location: LCCOMB_X79_Y3_N0
\inst16|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~12_combout\ = (!\inst23|outBCD[3]~69_combout\ & (\inst23|outBCD[2]~70_combout\ & \inst|en_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|outBCD[3]~69_combout\,
	datac => \inst23|outBCD[2]~70_combout\,
	datad => \inst|en_3~0_combout\,
	combout => \inst16|decOut_n~12_combout\);

-- Location: LCCOMB_X79_Y3_N18
\inst16|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~13_combout\ = (\inst18|muxOut[1]~6_combout\ & (\inst16|decOut_n~12_combout\)) # (!\inst18|muxOut[1]~6_combout\ & (((\inst18|muxOut[2]~8_combout\) # (\inst18|muxOut[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst16|decOut_n~12_combout\,
	datac => \inst18|muxOut[2]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~13_combout\);

-- Location: LCCOMB_X79_Y3_N4
\inst16|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~14_combout\ = (\inst18|muxOut[1]~6_combout\ & ((\inst18|muxOut[0]~7_combout\ & (\inst16|decOut_n~11_combout\)) # (!\inst18|muxOut[0]~7_combout\ & ((\inst16|decOut_n~13_combout\))))) # (!\inst18|muxOut[1]~6_combout\ & 
-- (\inst18|muxOut[0]~7_combout\ $ (((!\inst16|decOut_n~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst16|decOut_n~11_combout\,
	datad => \inst16|decOut_n~13_combout\,
	combout => \inst16|decOut_n~14_combout\);

-- Location: LCCOMB_X79_Y3_N30
\inst16|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~15_combout\ = (\inst18|muxOut[0]~7_combout\ & (\inst18|muxOut[2]~8_combout\ $ (((\inst18|muxOut[1]~6_combout\ & \inst18|muxOut[3]~9_combout\))))) # (!\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[1]~6_combout\ & 
-- (\inst18|muxOut[2]~8_combout\ & \inst18|muxOut[3]~9_combout\)) # (!\inst18|muxOut[1]~6_combout\ & ((!\inst18|muxOut[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst18|muxOut[2]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~15_combout\);

-- Location: LCCOMB_X79_Y3_N16
\inst16|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~16_combout\ = (!\inst18|muxOut[1]~6_combout\ & ((\inst18|muxOut[0]~7_combout\ & ((!\inst18|muxOut[3]~9_combout\))) # (!\inst18|muxOut[0]~7_combout\ & (!\inst18|muxOut[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst18|muxOut[0]~7_combout\,
	datac => \inst18|muxOut[2]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~16_combout\);

-- Location: LCCOMB_X79_Y3_N6
\inst16|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~17_combout\ = (\inst16|decOut_n~16_combout\) # ((\inst18|muxOut[1]~6_combout\ & (!\inst16|decOut_n~11_combout\ & \inst18|muxOut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[1]~6_combout\,
	datab => \inst16|decOut_n~16_combout\,
	datac => \inst16|decOut_n~11_combout\,
	datad => \inst18|muxOut[0]~7_combout\,
	combout => \inst16|decOut_n~17_combout\);

-- Location: LCCOMB_X80_Y3_N24
\inst16|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~20_combout\ = \inst23|outBCD[0]~68_combout\ $ (((\inst23|outBCD[1]~71_combout\) # ((\inst23|outBCD[1]~72_combout\ & \inst23|outBCD[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~71_combout\,
	datab => \inst23|outBCD[0]~68_combout\,
	datac => \inst23|outBCD[1]~72_combout\,
	datad => \inst23|outBCD[1]~66_combout\,
	combout => \inst16|decOut_n~20_combout\);

-- Location: LCCOMB_X80_Y3_N8
\inst16|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~18_combout\ = (\inst23|outBCD[2]~70_combout\ & (\inst16|decOut_n~25_combout\)) # (!\inst23|outBCD[2]~70_combout\ & ((\inst23|outBCD[1]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~25_combout\,
	datab => \inst23|outBCD[1]~67_combout\,
	datad => \inst23|outBCD[2]~70_combout\,
	combout => \inst16|decOut_n~18_combout\);

-- Location: LCCOMB_X80_Y3_N14
\inst16|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~19_combout\ = ((\inst23|outBCD[3]~69_combout\ & \inst16|decOut_n~18_combout\)) # (!\inst|en_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst23|outBCD[3]~69_combout\,
	datac => \inst16|decOut_n~18_combout\,
	combout => \inst16|decOut_n~19_combout\);

-- Location: LCCOMB_X80_Y3_N2
\inst16|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~21_combout\ = (\inst16|decOut_n~19_combout\) # ((\inst23|outBCD[2]~70_combout\ & (\inst16|decOut_n~20_combout\ & \inst18|muxOut[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~70_combout\,
	datab => \inst16|decOut_n~20_combout\,
	datac => \inst16|decOut_n~19_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~21_combout\);

-- Location: LCCOMB_X80_Y3_N22
\inst16|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~23_combout\ = (\inst|en_3~0_combout\ & ((!\inst16|decOut_n~18_combout\) # (!\inst23|outBCD[3]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|en_3~0_combout\,
	datab => \inst23|outBCD[3]~69_combout\,
	datac => \inst16|decOut_n~18_combout\,
	combout => \inst16|decOut_n~23_combout\);

-- Location: LCCOMB_X80_Y3_N0
\inst16|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~22_combout\ = (\inst18|muxOut[3]~9_combout\ & (\inst23|outBCD[2]~70_combout\ $ ((\inst23|outBCD[0]~68_combout\)))) # (!\inst18|muxOut[3]~9_combout\ & (((\inst23|outBCD[0]~68_combout\ & \inst16|decOut_n~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~70_combout\,
	datab => \inst18|muxOut[3]~9_combout\,
	datac => \inst23|outBCD[0]~68_combout\,
	datad => \inst16|decOut_n~7_combout\,
	combout => \inst16|decOut_n~22_combout\);

-- Location: LCCOMB_X80_Y3_N28
\inst16|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~24_combout\ = (\inst23|outBCD[1]~67_combout\ & (!\inst16|decOut_n~23_combout\)) # (!\inst23|outBCD[1]~67_combout\ & ((\inst16|decOut_n~22_combout\) # ((!\inst16|decOut_n~23_combout\ & !\inst23|outBCD[0]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~23_combout\,
	datab => \inst16|decOut_n~22_combout\,
	datac => \inst23|outBCD[0]~68_combout\,
	datad => \inst23|outBCD[1]~67_combout\,
	combout => \inst16|decOut_n~24_combout\);

-- Location: LCCOMB_X74_Y4_N6
\inst6|outBCD[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~25_combout\ = (\inst9|s_count\(3) & ((\inst9|s_count\(4) & (\inst9|s_count\(1) & !\inst9|s_count\(2))) # (!\inst9|s_count\(4) & (!\inst9|s_count\(1) & \inst9|s_count\(2))))) # (!\inst9|s_count\(3) & (\inst9|s_count\(1) $ 
-- (((\inst9|s_count\(4) & !\inst9|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(2),
	combout => \inst6|outBCD[1]~25_combout\);

-- Location: LCCOMB_X74_Y4_N26
\inst6|outBCD[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~28_combout\ = (\inst9|s_count\(4) & (!\inst9|s_count\(1) & (\inst9|s_count\(3) $ (\inst9|s_count\(2))))) # (!\inst9|s_count\(4) & (\inst9|s_count\(3) $ ((!\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(2),
	combout => \inst6|outBCD[1]~28_combout\);

-- Location: LCCOMB_X74_Y4_N14
\inst6|outBCD[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~24_combout\ = (\inst9|s_count\(5) & ((\inst6|outBCD[1]~28_combout\))) # (!\inst9|s_count\(5) & (\inst6|outBCD[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~25_combout\,
	datac => \inst6|outBCD[1]~28_combout\,
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[1]~24_combout\);

-- Location: LCCOMB_X74_Y4_N28
\inst6|outBCD[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~61_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[1]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(7),
	datac => \inst6|outBCD[1]~24_combout\,
	combout => \inst6|outBCD[1]~61_combout\);

-- Location: LCCOMB_X74_Y4_N20
\inst6|outBCD[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~53_combout\ = (\inst9|s_count\(1) & (!\inst9|s_count\(3) & (\inst9|s_count\(2) & \inst9|s_count\(5)))) # (!\inst9|s_count\(1) & (\inst9|s_count\(3) & (!\inst9|s_count\(2) & !\inst9|s_count\(5))))

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
	combout => \inst6|outBCD[3]~53_combout\);

-- Location: LCCOMB_X74_Y4_N2
\inst6|outBCD[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~54_combout\ = (\inst9|s_count\(1) & (!\inst9|s_count\(2) & (\inst9|s_count\(3) $ (!\inst9|s_count\(5))))) # (!\inst9|s_count\(1) & ((\inst9|s_count\(3) & (\inst9|s_count\(2) & !\inst9|s_count\(5))) # (!\inst9|s_count\(3) & 
-- (!\inst9|s_count\(2) & \inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[3]~54_combout\);

-- Location: LCCOMB_X74_Y4_N4
\inst6|outBCD[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~52_combout\ = (\inst9|s_count\(4) & ((\inst6|outBCD[3]~54_combout\))) # (!\inst9|s_count\(4) & (\inst6|outBCD[3]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|outBCD[3]~53_combout\,
	datac => \inst9|s_count\(4),
	datad => \inst6|outBCD[3]~54_combout\,
	combout => \inst6|outBCD[3]~52_combout\);

-- Location: LCCOMB_X74_Y4_N22
\inst6|outBCD[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~63_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[3]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(7),
	datac => \inst6|outBCD[3]~52_combout\,
	combout => \inst6|outBCD[3]~63_combout\);

-- Location: LCCOMB_X74_Y4_N0
\inst6|outBCD[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~42_combout\ = (\inst9|s_count\(4) & (!\inst9|s_count\(2) & ((\inst9|s_count\(3)) # (!\inst9|s_count\(1))))) # (!\inst9|s_count\(4) & (\inst9|s_count\(2) & ((\inst9|s_count\(1)) # (!\inst9|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(2),
	combout => \inst6|outBCD[2]~42_combout\);

-- Location: LCCOMB_X74_Y4_N30
\inst6|outBCD[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~43_combout\ = (\inst9|s_count\(4) & ((\inst9|s_count\(3) & (!\inst9|s_count\(1) & !\inst9|s_count\(2))) # (!\inst9|s_count\(3) & (\inst9|s_count\(1) & \inst9|s_count\(2))))) # (!\inst9|s_count\(4) & (\inst9|s_count\(2) $ 
-- (((!\inst9|s_count\(3) & \inst9|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(2),
	combout => \inst6|outBCD[2]~43_combout\);

-- Location: LCCOMB_X74_Y4_N24
\inst6|outBCD[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~41_combout\ = (\inst9|s_count\(5) & ((\inst6|outBCD[2]~43_combout\))) # (!\inst9|s_count\(5) & (\inst6|outBCD[2]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|outBCD[2]~42_combout\,
	datac => \inst6|outBCD[2]~43_combout\,
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[2]~41_combout\);

-- Location: LCCOMB_X74_Y4_N18
\inst6|outBCD[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~62_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(7),
	datad => \inst6|outBCD[2]~41_combout\,
	combout => \inst6|outBCD[2]~62_combout\);

-- Location: LCCOMB_X77_Y6_N26
\inst6|outBCD[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~9_combout\ = (((!\inst9|s_count\(5)) # (!\inst9|s_count\(3))) # (!\inst9|s_count\(2))) # (!\inst9|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(3),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[0]~9_combout\);

-- Location: LCCOMB_X77_Y6_N28
\inst6|outBCD[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~60_combout\ = (!\inst9|s_count\(7) & (\inst6|outBCD[0]~9_combout\ & (\inst9|s_count\(0) & !\inst9|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datab => \inst6|outBCD[0]~9_combout\,
	datac => \inst9|s_count\(0),
	datad => \inst9|s_count\(6),
	combout => \inst6|outBCD[0]~60_combout\);

-- Location: LCCOMB_X77_Y4_N28
\inst14|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~12_combout\ = (\inst6|outBCD[3]~63_combout\) # ((\inst6|outBCD[1]~61_combout\ & ((!\inst6|outBCD[0]~60_combout\) # (!\inst6|outBCD[2]~62_combout\))) # (!\inst6|outBCD[1]~61_combout\ & (\inst6|outBCD[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~12_combout\);

-- Location: LCCOMB_X77_Y4_N2
\inst14|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~21_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (!\inst14|decOut_n~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~12_combout\,
	combout => \inst14|decOut_n~21_combout\);

-- Location: LCCOMB_X77_Y4_N10
\inst14|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~13_combout\ = (\inst6|outBCD[2]~62_combout\ & ((\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[1]~61_combout\)) # (!\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[3]~63_combout\))))) # (!\inst6|outBCD[2]~62_combout\ & 
-- ((\inst6|outBCD[0]~60_combout\ & ((!\inst6|outBCD[3]~63_combout\))) # (!\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~13_combout\);

-- Location: LCCOMB_X77_Y4_N24
\inst14|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~22_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~13_combout\,
	combout => \inst14|decOut_n~22_combout\);

-- Location: LCCOMB_X77_Y4_N0
\inst14|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~14_combout\ = (\inst6|outBCD[1]~61_combout\ & (\inst6|outBCD[0]~60_combout\ $ (((\inst6|outBCD[3]~63_combout\ & !\inst6|outBCD[2]~62_combout\))))) # (!\inst6|outBCD[1]~61_combout\ & ((\inst6|outBCD[2]~62_combout\ & 
-- (!\inst6|outBCD[3]~63_combout\)) # (!\inst6|outBCD[2]~62_combout\ & ((\inst6|outBCD[0]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~14_combout\);

-- Location: LCCOMB_X77_Y4_N30
\inst14|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~23_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~14_combout\,
	combout => \inst14|decOut_n~23_combout\);

-- Location: LCCOMB_X77_Y4_N6
\inst14|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~15_combout\ = (\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[2]~62_combout\ $ (((!\inst6|outBCD[1]~61_combout\ & !\inst6|outBCD[3]~63_combout\))))) # (!\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[1]~61_combout\ & 
-- (\inst6|outBCD[3]~63_combout\)) # (!\inst6|outBCD[1]~61_combout\ & (!\inst6|outBCD[3]~63_combout\ & \inst6|outBCD[2]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~15_combout\);

-- Location: LCCOMB_X77_Y4_N8
\inst14|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~24_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~15_combout\,
	combout => \inst14|decOut_n~24_combout\);

-- Location: LCCOMB_X77_Y4_N12
\inst14|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~16_combout\ = (\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[3]~63_combout\ $ (!\inst6|outBCD[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~16_combout\);

-- Location: LCCOMB_X77_Y4_N22
\inst14|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~17_combout\ = ((\inst6|outBCD[2]~62_combout\ & ((\inst14|decOut_n~16_combout\))) # (!\inst6|outBCD[2]~62_combout\ & (\inst6|outBCD[1]~61_combout\ & !\inst14|decOut_n~16_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst14|decOut_n~16_combout\,
	combout => \inst14|decOut_n~17_combout\);

-- Location: LCCOMB_X77_Y4_N14
\inst14|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~19_combout\ = (!\inst6|outBCD[3]~63_combout\ & (\inst6|outBCD[2]~62_combout\ & (\inst6|outBCD[1]~61_combout\ $ (\inst6|outBCD[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~19_combout\);

-- Location: LCCOMB_X77_Y4_N20
\inst14|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~18_combout\ = (\inst6|outBCD[3]~63_combout\ & ((\inst6|outBCD[1]~61_combout\) # ((\inst6|outBCD[2]~62_combout\ & !\inst6|outBCD[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~18_combout\);

-- Location: LCCOMB_X77_Y4_N18
\inst14|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~25_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\inst14|decOut_n~19_combout\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \inst14|decOut_n~19_combout\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~18_combout\,
	combout => \inst14|decOut_n~25_combout\);

-- Location: LCCOMB_X77_Y4_N16
\inst14|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~20_combout\ = (!\inst6|outBCD[1]~61_combout\ & (!\inst6|outBCD[3]~63_combout\ & (\inst6|outBCD[2]~62_combout\ $ (\inst6|outBCD[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~61_combout\,
	datab => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[2]~62_combout\,
	datad => \inst6|outBCD[0]~60_combout\,
	combout => \inst14|decOut_n~20_combout\);

-- Location: LCCOMB_X77_Y4_N4
\inst14|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~26_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\inst14|decOut_n~20_combout\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \inst14|decOut_n~20_combout\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~18_combout\,
	combout => \inst14|decOut_n~26_combout\);

-- Location: LCCOMB_X73_Y4_N6
\inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~0_combout\ = (!\inst9|s_count\(5) & (((!\inst9|s_count\(3) & !\inst9|s_count\(2))) # (!\inst9|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X73_Y4_N8
\inst15|decOut_n[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~12_combout\ = ((!\inst9|s_count\(7) & (!\inst9|s_count\(6) & \inst6|LessThan1~0_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datab => \inst9|s_count\(6),
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan1~0_combout\,
	combout => \inst15|decOut_n[6]~12_combout\);

-- Location: LCCOMB_X73_Y4_N30
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst9|s_count\(6) & (((!\inst9|s_count\(3) & !\inst9|s_count\(4))) # (!\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(6),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X73_Y4_N10
\inst6|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_combout\ = (!\inst9|s_count\(7) & \inst6|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datac => \inst6|LessThan3~0_combout\,
	combout => \inst6|LessThan3~1_combout\);

-- Location: LCCOMB_X73_Y4_N12
\inst6|Equal38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal38~0_combout\ = (\inst9|s_count\(4) & \inst9|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(5),
	combout => \inst6|Equal38~0_combout\);

-- Location: LCCOMB_X74_Y4_N16
\inst6|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal6~1_combout\ = (!\inst9|s_count\(1) & !\inst9|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datac => \inst9|s_count\(2),
	combout => \inst6|Equal6~1_combout\);

-- Location: LCCOMB_X73_Y4_N28
\inst6|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~0_combout\ = (\inst6|Equal38~0_combout\ & (!\inst9|s_count\(3) & (!\inst9|Equal0~0_combout\ & \inst6|Equal6~1_combout\))) # (!\inst6|Equal38~0_combout\ & (((\inst9|s_count\(3) & !\inst6|Equal6~1_combout\)) # (!\inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal38~0_combout\,
	datab => \inst9|s_count\(3),
	datac => \inst9|Equal0~0_combout\,
	datad => \inst6|Equal6~1_combout\,
	combout => \inst6|LessThan5~0_combout\);

-- Location: LCCOMB_X73_Y4_N16
\inst6|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal2~0_combout\ = (!\inst9|s_count\(7) & !\inst9|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|s_count\(7),
	datad => \inst9|s_count\(6),
	combout => \inst6|Equal2~0_combout\);

-- Location: LCCOMB_X73_Y4_N22
\inst6|outBCD[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~59_combout\ = (\inst6|Equal2~0_combout\ & (((!\inst9|s_count\(2)) # (!\inst9|s_count\(3))) # (!\inst6|Equal38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal38~0_combout\,
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst6|Equal2~0_combout\,
	combout => \inst6|outBCD[2]~59_combout\);

-- Location: LCCOMB_X73_Y4_N24
\inst6|outBCD2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[1]~8_combout\ = ((\inst6|LessThan3~0_combout\ & (\inst6|LessThan5~0_combout\ & !\inst6|LessThan1~0_combout\))) # (!\inst6|outBCD[2]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datab => \inst6|LessThan5~0_combout\,
	datac => \inst6|outBCD[2]~59_combout\,
	datad => \inst6|LessThan1~0_combout\,
	combout => \inst6|outBCD2[1]~8_combout\);

-- Location: LCCOMB_X74_Y4_N12
\inst6|outBCD2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~4_combout\ = (\inst9|s_count\(3) & (!\inst9|s_count\(5) & ((\inst9|s_count\(1)) # (\inst9|s_count\(2))))) # (!\inst9|s_count\(3) & (((\inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD2[0]~4_combout\);

-- Location: LCCOMB_X74_Y4_N10
\inst6|outBCD2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~5_combout\ = (\inst9|s_count\(3) & ((\inst9|s_count\(2) & (\inst9|s_count\(1) & !\inst9|s_count\(5))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(5)))))) # (!\inst9|s_count\(3) & ((\inst9|s_count\(2) & ((\inst9|s_count\(5)))) # 
-- (!\inst9|s_count\(2) & ((\inst9|s_count\(1)) # (!\inst9|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD2[0]~5_combout\);

-- Location: LCCOMB_X74_Y4_N8
\inst6|outBCD2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~3_combout\ = (\inst9|s_count\(4) & ((\inst6|outBCD2[0]~5_combout\))) # (!\inst9|s_count\(4) & (\inst6|outBCD2[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[0]~4_combout\,
	datac => \inst9|s_count\(4),
	datad => \inst6|outBCD2[0]~5_combout\,
	combout => \inst6|outBCD2[0]~3_combout\);

-- Location: LCCOMB_X73_Y4_N2
\inst6|outBCD2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~9_combout\ = (!\inst9|s_count\(7) & (\inst6|outBCD2[0]~3_combout\ & !\inst9|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datac => \inst6|outBCD2[0]~3_combout\,
	datad => \inst9|s_count\(6),
	combout => \inst6|outBCD2[0]~9_combout\);

-- Location: LCCOMB_X73_Y4_N0
\inst15|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~6_combout\ = ((\inst6|LessThan3~1_combout\ & ((\inst6|outBCD2[1]~8_combout\) # (\inst6|outBCD2[0]~9_combout\))) # (!\inst6|LessThan3~1_combout\ & (\inst6|outBCD2[1]~8_combout\ & \inst6|outBCD2[0]~9_combout\))) # 
-- (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~8_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD2[0]~9_combout\,
	combout => \inst15|decOut_n~6_combout\);

-- Location: LCCOMB_X73_Y4_N18
\inst15|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~7_combout\ = ((\inst6|outBCD2[0]~9_combout\) # ((!\inst6|LessThan3~1_combout\ & !\inst6|outBCD2[1]~8_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~8_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD2[0]~9_combout\,
	combout => \inst15|decOut_n~7_combout\);

-- Location: LCCOMB_X73_Y4_N20
\inst15|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~8_combout\ = ((\inst6|LessThan3~1_combout\ & (!\inst6|outBCD2[1]~8_combout\ & \inst6|outBCD2[0]~9_combout\)) # (!\inst6|LessThan3~1_combout\ & (\inst6|outBCD2[1]~8_combout\ $ (!\inst6|outBCD2[0]~9_combout\)))) # 
-- (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~8_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD2[0]~9_combout\,
	combout => \inst15|decOut_n~8_combout\);

-- Location: LCCOMB_X73_Y4_N26
\inst15|decOut_n[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~9_combout\ = ((\inst6|LessThan3~1_combout\ & (\inst6|outBCD2[1]~8_combout\ & !\inst6|outBCD2[0]~9_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~8_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD2[0]~9_combout\,
	combout => \inst15|decOut_n[2]~9_combout\);

-- Location: LCCOMB_X73_Y4_N4
\inst15|decOut_n[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[1]~10_combout\ = (((!\inst6|Equal6~0_combout\ & \inst6|Equal38~0_combout\)) # (!\iaaanst1|timeVal~0_combout\)) # (!\inst6|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal6~0_combout\,
	datab => \inst6|Equal2~0_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|Equal38~0_combout\,
	combout => \inst15|decOut_n[1]~10_combout\);

-- Location: LCCOMB_X73_Y4_N14
\inst15|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[0]~11_combout\ = ((!\inst6|outBCD2[1]~8_combout\ & (\inst6|LessThan3~1_combout\ $ (!\inst6|outBCD2[0]~9_combout\)))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|outBCD2[1]~8_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD2[0]~9_combout\,
	combout => \inst15|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X81_Y6_N0
\iaaanst1|stOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|stOut~1_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\) # ((!\iaaanst1|s_currentState.TCozer~q\ & !\iaaanst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \iaaanst1|stOut~1_combout\);

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

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


