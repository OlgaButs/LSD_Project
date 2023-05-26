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

-- DATE "05/26/2023 15:43:38"

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
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(5 DOWNTO 0)
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
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
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
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
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
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[9]~2_combout\ : std_logic;
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
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[9]~29_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[9]~4_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[9]~5_combout\ : std_logic;
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
SIGNAL \inst3|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \inst25|pState~10_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~2_combout\ : std_logic;
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
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~5_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~29_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[5]~4_combout\ : std_logic;
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
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
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
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[5]~2_combout\ : std_logic;
SIGNAL \inst13|Add0~37\ : std_logic;
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[5]~29_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[5]~5_combout\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \iaaanst1|Selector14~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~12_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TExtra~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \inst12|Add0~13\ : std_logic;
SIGNAL \inst12|Add0~14_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst12|Add0~15\ : std_logic;
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
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[17]~5_combout\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[17]~29_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \inst12|Add0~16_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~8_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~9\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~13_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~12_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~14\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~15_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~16\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~17_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~18\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~19_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~20\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~21_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~22\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~23_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~24\ : std_logic;
SIGNAL \inst4|Counter|s_count[7]~25_combout\ : std_logic;
SIGNAL \iaaanst1|Selector9~1_combout\ : std_logic;
SIGNAL \inst25|pState~11_combout\ : std_logic;
SIGNAL \inst25|pState~9_combout\ : std_logic;
SIGNAL \inst25|pState~12_combout\ : std_logic;
SIGNAL \inst25|pState~20_combout\ : std_logic;
SIGNAL \inst25|pState~21_combout\ : std_logic;
SIGNAL \inst25|pState~22_combout\ : std_logic;
SIGNAL \inst25|pState.Extra~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~10_combout\ : std_logic;
SIGNAL \iaaanst1|timeVal~0_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~11_combout\ : std_logic;
SIGNAL \iaaanst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst25|pState~26_combout\ : std_logic;
SIGNAL \inst25|pState~27_combout\ : std_logic;
SIGNAL \inst25|pState~25_combout\ : std_logic;
SIGNAL \inst25|pState~28_combout\ : std_logic;
SIGNAL \iaaanst1|Selector9~2_combout\ : std_logic;
SIGNAL \iaaanst1|newPrg~0_combout\ : std_logic;
SIGNAL \inst25|pState~29_combout\ : std_logic;
SIGNAL \inst25|pState.Init~feeder_combout\ : std_logic;
SIGNAL \inst25|pState.Init~q\ : std_logic;
SIGNAL \inst25|pState~23_combout\ : std_logic;
SIGNAL \inst25|pState~24_combout\ : std_logic;
SIGNAL \inst25|pState.Menu~q\ : std_logic;
SIGNAL \inst25|pState~15_combout\ : std_logic;
SIGNAL \inst25|pState~16_combout\ : std_logic;
SIGNAL \inst25|pState.Timer~q\ : std_logic;
SIGNAL \inst25|pState~17_combout\ : std_logic;
SIGNAL \inst25|pState~18_combout\ : std_logic;
SIGNAL \inst25|pState~19_combout\ : std_logic;
SIGNAL \inst25|pState.TimeProcess~q\ : std_logic;
SIGNAL \inst25|en_3~combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~31_combout\ : std_logic;
SIGNAL \inst11|s_counter[25]~33_combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~32\ : std_logic;
SIGNAL \inst11|s_counter[1]~34_combout\ : std_logic;
SIGNAL \inst11|s_counter[1]~35\ : std_logic;
SIGNAL \inst11|s_counter[2]~36_combout\ : std_logic;
SIGNAL \inst11|s_counter[2]~37\ : std_logic;
SIGNAL \inst11|s_counter[3]~38_combout\ : std_logic;
SIGNAL \inst11|s_counter[3]~39\ : std_logic;
SIGNAL \inst11|s_counter[4]~40_combout\ : std_logic;
SIGNAL \inst11|s_counter[4]~41\ : std_logic;
SIGNAL \inst11|s_counter[5]~42_combout\ : std_logic;
SIGNAL \inst11|s_counter[5]~43\ : std_logic;
SIGNAL \inst11|s_counter[6]~44_combout\ : std_logic;
SIGNAL \inst11|s_counter[6]~45\ : std_logic;
SIGNAL \inst11|s_counter[7]~46_combout\ : std_logic;
SIGNAL \inst11|s_counter[7]~47\ : std_logic;
SIGNAL \inst11|s_counter[8]~48_combout\ : std_logic;
SIGNAL \inst11|s_counter[8]~49\ : std_logic;
SIGNAL \inst11|s_counter[9]~50_combout\ : std_logic;
SIGNAL \inst11|s_counter[9]~51\ : std_logic;
SIGNAL \inst11|s_counter[10]~52_combout\ : std_logic;
SIGNAL \inst11|s_counter[10]~53\ : std_logic;
SIGNAL \inst11|s_counter[11]~54_combout\ : std_logic;
SIGNAL \inst11|s_counter[11]~55\ : std_logic;
SIGNAL \inst11|s_counter[12]~56_combout\ : std_logic;
SIGNAL \inst11|s_counter[12]~57\ : std_logic;
SIGNAL \inst11|s_counter[13]~58_combout\ : std_logic;
SIGNAL \inst11|s_counter[13]~59\ : std_logic;
SIGNAL \inst11|s_counter[14]~60_combout\ : std_logic;
SIGNAL \inst11|s_counter[14]~61\ : std_logic;
SIGNAL \inst11|s_counter[15]~62_combout\ : std_logic;
SIGNAL \inst11|s_counter[15]~63\ : std_logic;
SIGNAL \inst11|s_counter[16]~64_combout\ : std_logic;
SIGNAL \inst11|s_counter[16]~65\ : std_logic;
SIGNAL \inst11|s_counter[17]~66_combout\ : std_logic;
SIGNAL \inst11|s_counter[17]~67\ : std_logic;
SIGNAL \inst11|s_counter[18]~68_combout\ : std_logic;
SIGNAL \inst11|s_counter[18]~69\ : std_logic;
SIGNAL \inst11|s_counter[19]~70_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|s_counter[19]~71\ : std_logic;
SIGNAL \inst11|s_counter[20]~72_combout\ : std_logic;
SIGNAL \inst11|s_counter[20]~73\ : std_logic;
SIGNAL \inst11|s_counter[21]~74_combout\ : std_logic;
SIGNAL \inst11|s_counter[21]~75\ : std_logic;
SIGNAL \inst11|s_counter[22]~76_combout\ : std_logic;
SIGNAL \inst11|s_counter[22]~77\ : std_logic;
SIGNAL \inst11|s_counter[23]~78_combout\ : std_logic;
SIGNAL \inst11|Equal0~6_combout\ : std_logic;
SIGNAL \inst11|s_counter[23]~79\ : std_logic;
SIGNAL \inst11|s_counter[24]~80_combout\ : std_logic;
SIGNAL \inst11|s_counter[24]~81\ : std_logic;
SIGNAL \inst11|s_counter[25]~82_combout\ : std_logic;
SIGNAL \inst11|s_counter[25]~83\ : std_logic;
SIGNAL \inst11|s_counter[26]~84_combout\ : std_logic;
SIGNAL \inst11|s_counter[26]~85\ : std_logic;
SIGNAL \inst11|s_counter[27]~86_combout\ : std_logic;
SIGNAL \inst11|s_counter[27]~87\ : std_logic;
SIGNAL \inst11|s_counter[28]~88_combout\ : std_logic;
SIGNAL \inst11|s_counter[28]~89\ : std_logic;
SIGNAL \inst11|s_counter[29]~90_combout\ : std_logic;
SIGNAL \inst11|s_counter[29]~91\ : std_logic;
SIGNAL \inst11|s_counter[30]~92_combout\ : std_logic;
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|pulse~0_combout\ : std_logic;
SIGNAL \inst11|pulse~q\ : std_logic;
SIGNAL \inst5|s_count[0]~34_combout\ : std_logic;
SIGNAL \inst25|pState.Init~_wirecell_combout\ : std_logic;
SIGNAL \inst5|s_count[1]~37\ : std_logic;
SIGNAL \inst5|s_count[2]~40_combout\ : std_logic;
SIGNAL \inst5|s_count[2]~41\ : std_logic;
SIGNAL \inst5|s_count[3]~42_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|s_count[3]~43\ : std_logic;
SIGNAL \inst5|s_count[4]~44_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~45\ : std_logic;
SIGNAL \inst5|s_count[5]~46_combout\ : std_logic;
SIGNAL \inst5|s_count[5]~47\ : std_logic;
SIGNAL \inst5|s_count[6]~48_combout\ : std_logic;
SIGNAL \inst5|s_count[6]~49\ : std_logic;
SIGNAL \inst5|s_count[7]~50_combout\ : std_logic;
SIGNAL \inst5|s_count[7]~51\ : std_logic;
SIGNAL \inst5|s_count[8]~52_combout\ : std_logic;
SIGNAL \inst5|s_count[8]~53\ : std_logic;
SIGNAL \inst5|s_count[9]~54_combout\ : std_logic;
SIGNAL \inst5|s_count[9]~55\ : std_logic;
SIGNAL \inst5|s_count[10]~56_combout\ : std_logic;
SIGNAL \inst5|s_count[10]~57\ : std_logic;
SIGNAL \inst5|s_count[11]~58_combout\ : std_logic;
SIGNAL \inst5|s_count[11]~59\ : std_logic;
SIGNAL \inst5|s_count[12]~60_combout\ : std_logic;
SIGNAL \inst5|s_count[12]~61\ : std_logic;
SIGNAL \inst5|s_count[13]~62_combout\ : std_logic;
SIGNAL \inst5|s_count[13]~63\ : std_logic;
SIGNAL \inst5|s_count[14]~64_combout\ : std_logic;
SIGNAL \inst5|s_count[14]~65\ : std_logic;
SIGNAL \inst5|s_count[15]~66_combout\ : std_logic;
SIGNAL \inst5|s_count[15]~67\ : std_logic;
SIGNAL \inst5|s_count[16]~68_combout\ : std_logic;
SIGNAL \inst5|s_count[16]~69\ : std_logic;
SIGNAL \inst5|s_count[17]~70_combout\ : std_logic;
SIGNAL \inst5|s_count[17]~71\ : std_logic;
SIGNAL \inst5|s_count[18]~72_combout\ : std_logic;
SIGNAL \inst5|s_count[18]~73\ : std_logic;
SIGNAL \inst5|s_count[19]~74_combout\ : std_logic;
SIGNAL \inst5|s_count[19]~75\ : std_logic;
SIGNAL \inst5|s_count[20]~76_combout\ : std_logic;
SIGNAL \inst5|s_count[20]~77\ : std_logic;
SIGNAL \inst5|s_count[21]~78_combout\ : std_logic;
SIGNAL \inst5|s_count[21]~79\ : std_logic;
SIGNAL \inst5|s_count[22]~80_combout\ : std_logic;
SIGNAL \inst5|s_count[22]~81\ : std_logic;
SIGNAL \inst5|s_count[23]~82_combout\ : std_logic;
SIGNAL \inst5|s_count[23]~83\ : std_logic;
SIGNAL \inst5|s_count[24]~84_combout\ : std_logic;
SIGNAL \inst5|s_count[24]~85\ : std_logic;
SIGNAL \inst5|s_count[25]~86_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|s_count[25]~87\ : std_logic;
SIGNAL \inst5|s_count[26]~88_combout\ : std_logic;
SIGNAL \inst5|s_count[26]~89\ : std_logic;
SIGNAL \inst5|s_count[27]~90_combout\ : std_logic;
SIGNAL \inst5|s_count[27]~91\ : std_logic;
SIGNAL \inst5|s_count[28]~92_combout\ : std_logic;
SIGNAL \inst5|s_count[28]~93\ : std_logic;
SIGNAL \inst5|s_count[29]~94_combout\ : std_logic;
SIGNAL \inst5|s_count[29]~95\ : std_logic;
SIGNAL \inst5|s_count[30]~96_combout\ : std_logic;
SIGNAL \inst5|s_count[30]~97\ : std_logic;
SIGNAL \inst5|s_count[31]~98_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst23|LessThan0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~100_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~39_combout\ : std_logic;
SIGNAL \inst5|Equal0~11_combout\ : std_logic;
SIGNAL \inst5|s_count[4]~38_combout\ : std_logic;
SIGNAL \inst5|s_count[0]~35\ : std_logic;
SIGNAL \inst5|s_count[1]~36_combout\ : std_logic;
SIGNAL \inst5|Equal1~2_combout\ : std_logic;
SIGNAL \inst5|s_result~0_combout\ : std_logic;
SIGNAL \inst5|s_result~q\ : std_logic;
SIGNAL \inst25|pState~13_combout\ : std_logic;
SIGNAL \inst25|pState~14_combout\ : std_logic;
SIGNAL \inst25|pState.StartPrg~feeder_combout\ : std_logic;
SIGNAL \inst25|pState.StartPrg~q\ : std_logic;
SIGNAL \iaaanst1|Selector9~3_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~13_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TInit~q\ : std_logic;
SIGNAL \iaaanst1|Selector10~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~10_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TAmmassar~feeder_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TAmmassar~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~11_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TLevedar~q\ : std_logic;
SIGNAL \inst9|s_count~15_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|dataOut~0_combout\ : std_logic;
SIGNAL \inst|dataOut~q\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~4_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~5_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~2_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~3_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~6_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~7_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~q\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \iaaanst1|WideOr9~combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst9|s_count~0_combout\ : std_logic;
SIGNAL \inst9|s_count~1_combout\ : std_logic;
SIGNAL \inst9|s_count[4]~2_combout\ : std_logic;
SIGNAL \inst9|Add0~1\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|s_count~3_combout\ : std_logic;
SIGNAL \inst9|s_count~4_combout\ : std_logic;
SIGNAL \inst9|s_count~5_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|s_count~11_combout\ : std_logic;
SIGNAL \inst9|s_count~12_combout\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|s_count~8_combout\ : std_logic;
SIGNAL \inst9|s_count~9_combout\ : std_logic;
SIGNAL \inst9|s_count~10_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|s_count~16_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|s_count~13_combout\ : std_logic;
SIGNAL \inst9|s_count~14_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|s_count~6_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|s_count~7_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal20~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~1_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~q\ : std_logic;
SIGNAL \iaaanst1|Selector12~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector12~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~9_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TCozer~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~8_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TFim~feeder_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TFim~q\ : std_logic;
SIGNAL \iaaanst1|Selector16~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst19|Mux2~4_combout\ : std_logic;
SIGNAL \inst19|Mux2~10_combout\ : std_logic;
SIGNAL \inst19|Mux2~9_combout\ : std_logic;
SIGNAL \inst19|Mux0~0_combout\ : std_logic;
SIGNAL \inst23|Equal2~0_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~66_combout\ : std_logic;
SIGNAL \inst19|Mux1~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~20_combout\ : std_logic;
SIGNAL \inst19|Mux3~19_combout\ : std_logic;
SIGNAL \inst19|Mux3~18_combout\ : std_logic;
SIGNAL \inst19|Mux3~24_combout\ : std_logic;
SIGNAL \inst19|Mux3~23_combout\ : std_logic;
SIGNAL \inst17|decOut_n~0_combout\ : std_logic;
SIGNAL \inst17|decOut_n~1_combout\ : std_logic;
SIGNAL \inst17|decOut_n~2_combout\ : std_logic;
SIGNAL \inst17|decOut_n~3_combout\ : std_logic;
SIGNAL \inst17|decOut_n~4_combout\ : std_logic;
SIGNAL \inst17|decOut_n~5_combout\ : std_logic;
SIGNAL \inst17|decOut_n~6_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~7_combout\ : std_logic;
SIGNAL \inst23|outBCD[0]~71_combout\ : std_logic;
SIGNAL \inst18|muxOut[0]~7_combout\ : std_logic;
SIGNAL \inst23|LessThan0~3_combout\ : std_logic;
SIGNAL \inst19|Mux2~8_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~67_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~76_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~77_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~73_combout\ : std_logic;
SIGNAL \inst23|Equal2~1_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~54_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~75_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~68_combout\ : std_logic;
SIGNAL \inst18|muxOut[2]~6_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~25_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~24_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~23_combout\ : std_logic;
SIGNAL \inst23|outBCD[1]~72_combout\ : std_logic;
SIGNAL \inst18|muxOut[1]~8_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~48_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~47_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~46_combout\ : std_logic;
SIGNAL \inst23|outBCD[3]~74_combout\ : std_logic;
SIGNAL \inst18|muxOut[3]~9_combout\ : std_logic;
SIGNAL \inst16|decOut_n~4_combout\ : std_logic;
SIGNAL \inst16|decOut_n~22_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~69_combout\ : std_logic;
SIGNAL \inst16|decOut_n~5_combout\ : std_logic;
SIGNAL \inst16|decOut_n~6_combout\ : std_logic;
SIGNAL \inst16|decOut_n~7_combout\ : std_logic;
SIGNAL \inst16|decOut_n~8_combout\ : std_logic;
SIGNAL \inst23|outBCD[2]~70_combout\ : std_logic;
SIGNAL \inst16|decOut_n~10_combout\ : std_logic;
SIGNAL \inst16|decOut_n~11_combout\ : std_logic;
SIGNAL \inst16|decOut_n~9_combout\ : std_logic;
SIGNAL \inst16|decOut_n~12_combout\ : std_logic;
SIGNAL \inst16|decOut_n~13_combout\ : std_logic;
SIGNAL \inst16|decOut_n~14_combout\ : std_logic;
SIGNAL \inst16|decOut_n~15_combout\ : std_logic;
SIGNAL \inst16|decOut_n~17_combout\ : std_logic;
SIGNAL \inst16|decOut_n~16_combout\ : std_logic;
SIGNAL \inst16|decOut_n~18_combout\ : std_logic;
SIGNAL \inst16|decOut_n~19_combout\ : std_logic;
SIGNAL \inst16|decOut_n~21_combout\ : std_logic;
SIGNAL \inst16|decOut_n~20_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~51_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~52_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~50_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~63_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~41_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~40_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~39_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~62_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~11_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~60_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~58_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~57_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~26_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~61_combout\ : std_logic;
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
SIGNAL \inst14|decOut_n~18_combout\ : std_logic;
SIGNAL \inst14|decOut_n~19_combout\ : std_logic;
SIGNAL \inst14|decOut_n~25_combout\ : std_logic;
SIGNAL \inst14|decOut_n~20_combout\ : std_logic;
SIGNAL \inst14|decOut_n~26_combout\ : std_logic;
SIGNAL \inst15|decOut_n[6]~8_combout\ : std_logic;
SIGNAL \inst15|decOut_n[6]~14_combout\ : std_logic;
SIGNAL \inst6|outBCD2[1]~15_combout\ : std_logic;
SIGNAL \inst6|outBCD2[1]~23_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~8_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~9_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~7_combout\ : std_logic;
SIGNAL \inst6|outBCD2[0]~22_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_combout\ : std_logic;
SIGNAL \inst15|decOut_n~9_combout\ : std_logic;
SIGNAL \inst15|decOut_n~10_combout\ : std_logic;
SIGNAL \inst15|decOut_n~11_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \inst6|Equal6~0_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~59_combout\ : std_logic;
SIGNAL \inst15|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \inst15|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \inst25|WideOr0~combout\ : std_logic;
SIGNAL \inst25|WideOr1~0_combout\ : std_logic;
SIGNAL \inst25|pState~30_combout\ : std_logic;
SIGNAL \inst25|pState~31_combout\ : std_logic;
SIGNAL \inst25|pState.Stop~q\ : std_logic;
SIGNAL \inst25|WideOr2~0_combout\ : std_logic;
SIGNAL \iaaanst1|WideOr11~combout\ : std_logic;
SIGNAL \iaaanst1|WideOr12~combout\ : std_logic;
SIGNAL \inst38|startStop~0_combout\ : std_logic;
SIGNAL \inst38|startStop~q\ : std_logic;
SIGNAL \inst37|startStop~0_combout\ : std_logic;
SIGNAL \inst37|startStop~q\ : std_logic;
SIGNAL \inst36|startStop~0_combout\ : std_logic;
SIGNAL \inst36|startStop~q\ : std_logic;
SIGNAL \inst5|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst9|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst11|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \iaaanst1|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_WideOr12~combout\ : std_logic;
SIGNAL \inst25|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \inst25|ALT_INV_pState.Init~q\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_timeVal~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_decOut_n~4_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_decOut_n~3_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_Selector16~1_combout\ : std_logic;

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
\iaaanst1|ALT_INV_WideOr9~combout\ <= NOT \iaaanst1|WideOr9~combout\;
\iaaanst1|ALT_INV_WideOr12~combout\ <= NOT \iaaanst1|WideOr12~combout\;
\inst25|ALT_INV_WideOr2~0_combout\ <= NOT \inst25|WideOr2~0_combout\;
\inst25|ALT_INV_WideOr1~0_combout\ <= NOT \inst25|WideOr1~0_combout\;
\inst25|ALT_INV_WideOr0~combout\ <= NOT \inst25|WideOr0~combout\;
\inst25|ALT_INV_pState.Init~q\ <= NOT \inst25|pState.Init~q\;
\iaaanst1|ALT_INV_timeVal~0_combout\ <= NOT \iaaanst1|timeVal~0_combout\;
\inst16|ALT_INV_decOut_n~4_combout\ <= NOT \inst16|decOut_n~4_combout\;
\inst17|ALT_INV_decOut_n~3_combout\ <= NOT \inst17|decOut_n~3_combout\;
\iaaanst1|ALT_INV_Selector16~1_combout\ <= NOT \iaaanst1|Selector16~1_combout\;
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
	i => GND,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => VCC,
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
	i => \iaaanst1|ALT_INV_Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => VCC,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => VCC,
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
	i => \iaaanst1|Selector16~1_combout\,
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
	i => \inst16|ALT_INV_decOut_n~4_combout\,
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
	i => \inst16|decOut_n~8_combout\,
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
	i => \inst16|decOut_n~12_combout\,
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
	i => \inst16|decOut_n~13_combout\,
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
	i => \inst16|decOut_n~15_combout\,
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
	i => \inst16|decOut_n~18_combout\,
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
	i => \inst16|decOut_n~20_combout\,
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
	i => \inst15|decOut_n[6]~14_combout\,
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
	i => \inst15|decOut_n~9_combout\,
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
	i => \inst15|decOut_n~10_combout\,
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
	i => \inst15|decOut_n~11_combout\,
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
	i => \inst15|decOut_n[2]~12_combout\,
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
	i => \inst15|decOut_n[1]~15_combout\,
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
	i => \inst15|decOut_n[0]~13_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_WideOr2~0_combout\,
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
	i => \iaaanst1|ALT_INV_timeVal~0_combout\,
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
	i => \iaaanst1|WideOr11~combout\,
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
	i => \iaaanst1|ALT_INV_WideOr12~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38|startStop~q\,
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
	i => \inst11|pulse~q\,
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
	i => \inst37|startStop~q\,
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
	i => \inst36|startStop~q\,
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
	i => \inst|dataOut~q\,
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
	i => \iaaanst1|ALT_INV_WideOr9~combout\,
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

-- Location: LCCOMB_X81_Y22_N10
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

-- Location: LCCOMB_X82_Y21_N28
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

-- Location: FF_X82_Y21_N29
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

-- Location: LCCOMB_X82_Y21_N6
\inst3|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_previousIn~feeder_combout\ = \inst3|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_dirtyIn~q\,
	combout => \inst3|s_previousIn~feeder_combout\);

-- Location: FF_X82_Y21_N7
\inst3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_previousIn~q\);

-- Location: LCCOMB_X83_Y22_N20
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(2) & (!\inst3|s_debounceCnt\(3) & (!\inst3|s_debounceCnt\(4) & !\inst3|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(2),
	datab => \inst3|s_debounceCnt\(3),
	datac => \inst3|s_debounceCnt\(4),
	datad => \inst3|s_debounceCnt\(1),
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X81_Y21_N16
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

-- Location: LCCOMB_X81_Y21_N18
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

-- Location: LCCOMB_X82_Y22_N20
\inst3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~9_combout\ = (\inst3|s_debounceCnt[9]~5_combout\ & (\inst3|s_debounceCnt[9]~4_combout\ & \inst3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[9]~5_combout\,
	datac => \inst3|s_debounceCnt[9]~4_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X82_Y22_N21
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

-- Location: LCCOMB_X81_Y22_N4
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (!\inst3|s_debounceCnt\(20) & !\inst3|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datac => \inst3|s_debounceCnt\(21),
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X81_Y22_N20
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

-- Location: LCCOMB_X81_Y22_N22
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

-- Location: LCCOMB_X81_Y22_N8
\inst3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~3_combout\ = (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~12_combout\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt~3_combout\);

-- Location: FF_X81_Y22_N9
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~3_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y22_N24
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

-- Location: LCCOMB_X82_Y22_N22
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|Add0~14_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~14_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y22_N23
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y22_N26
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

-- Location: LCCOMB_X81_Y22_N2
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X81_Y22_N3
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X81_Y22_N28
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

-- Location: LCCOMB_X81_Y22_N0
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~18_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X81_Y22_N1
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X81_Y22_N30
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

-- Location: LCCOMB_X82_Y22_N0
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X82_Y22_N1
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y21_N0
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

-- Location: LCCOMB_X81_Y21_N24
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~22_combout\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X81_Y21_N25
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y21_N2
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

-- Location: LCCOMB_X82_Y21_N2
\inst3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~11_combout\ = (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~24_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~11_combout\);

-- Location: FF_X82_Y21_N3
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~11_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y21_N4
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

-- Location: LCCOMB_X82_Y22_N4
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|Add0~26_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X82_Y22_N5
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X82_Y21_N0
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (!\inst3|s_debounceCnt\(13) & !\inst3|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt\(13),
	datad => \inst3|s_debounceCnt\(12),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X83_Y22_N4
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

-- Location: LCCOMB_X82_Y22_N24
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|s_debounceCnt\(7)) # ((\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(6),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_debounceCnt\(7),
	datad => \inst3|s_pulsedOut~8_combout\,
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y22_N18
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

-- Location: LCCOMB_X82_Y22_N16
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(14) & (((\inst3|s_debounceCnt\(11) & \inst3|LessThan0~1_combout\)) # (!\inst3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(14),
	datab => \inst3|LessThan0~2_combout\,
	datac => \inst3|s_debounceCnt\(11),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y22_N2
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(17)) # ((\inst3|s_debounceCnt\(16)) # ((\inst3|s_debounceCnt\(15)) # (\inst3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datab => \inst3|s_debounceCnt\(16),
	datac => \inst3|s_debounceCnt\(15),
	datad => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y22_N12
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = ((\inst3|s_debounceCnt\(18) & (\inst3|s_debounceCnt\(19) & \inst3|LessThan0~4_combout\))) # (!\inst3|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|LessThan0~5_combout\,
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X82_Y22_N26
\inst3|s_debounceCnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[9]~2_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~6_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~6_combout\,
	combout => \inst3|s_debounceCnt[9]~2_combout\);

-- Location: LCCOMB_X81_Y21_N6
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

-- Location: LCCOMB_X82_Y22_N10
\inst3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~18_combout\ = (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[9]~2_combout\,
	datad => \inst3|Add0~28_combout\,
	combout => \inst3|s_debounceCnt~18_combout\);

-- Location: FF_X82_Y22_N11
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~18_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y21_N8
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

-- Location: LCCOMB_X82_Y21_N14
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|Add0~30_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~30_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X82_Y21_N15
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X81_Y21_N10
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

-- Location: LCCOMB_X82_Y21_N8
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|Add0~32_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~32_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X82_Y21_N9
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y21_N12
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

-- Location: LCCOMB_X82_Y21_N30
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X82_Y21_N31
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y21_N14
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

-- Location: LCCOMB_X81_Y21_N30
\inst3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~19_combout\ = (\inst3|s_debounceCnt[9]~4_combout\ & (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt[9]~4_combout\,
	datac => \inst3|Add0~36_combout\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X81_Y21_N31
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

-- Location: LCCOMB_X81_Y21_N28
\inst3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~20_combout\ = (\inst3|s_debounceCnt[9]~4_combout\ & (\inst3|s_debounceCnt[9]~2_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~38_combout\,
	datac => \inst3|s_debounceCnt[9]~4_combout\,
	datad => \inst3|s_debounceCnt[9]~2_combout\,
	combout => \inst3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X81_Y21_N29
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

-- Location: LCCOMB_X82_Y21_N22
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(19) & (!\inst3|s_debounceCnt\(18) & (!\inst3|s_debounceCnt\(14) & !\inst3|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(14),
	datad => \inst3|s_debounceCnt\(11),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X82_Y21_N20
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(17) & (!\inst3|s_debounceCnt\(16) & (!\inst3|s_debounceCnt\(15) & !\inst3|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datab => \inst3|s_debounceCnt\(16),
	datac => \inst3|s_debounceCnt\(15),
	datad => \inst3|s_debounceCnt\(6),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y21_N4
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

-- Location: LCCOMB_X81_Y22_N6
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (!\inst3|s_debounceCnt\(8) & (!\inst3|s_debounceCnt\(9) & (!\inst3|s_debounceCnt\(10) & !\inst3|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(8),
	datab => \inst3|s_debounceCnt\(9),
	datac => \inst3|s_debounceCnt\(10),
	datad => \inst3|s_debounceCnt\(7),
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X82_Y21_N12
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_pulsedOut~5_combout\ & (\inst3|s_pulsedOut~2_combout\ & (\inst3|s_pulsedOut~3_combout\ & \inst3|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~5_combout\,
	datab => \inst3|s_pulsedOut~2_combout\,
	datac => \inst3|s_pulsedOut~3_combout\,
	datad => \inst3|s_pulsedOut~4_combout\,
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X82_Y21_N16
\inst3|s_debounceCnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[9]~29_combout\ = (\inst3|s_debounceCnt\(5)) # ((\inst3|s_debounceCnt\(0)) # ((!\inst3|s_pulsedOut~6_combout\) # (!\inst3|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_pulsedOut~7_combout\,
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_debounceCnt[9]~29_combout\);

-- Location: LCCOMB_X82_Y21_N10
\inst3|s_debounceCnt[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[9]~4_combout\ = (((\inst3|s_debounceCnt\(22)) # (\inst3|s_debounceCnt[9]~29_combout\)) # (!\inst3|s_dirtyIn~q\)) # (!\inst3|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|s_debounceCnt[9]~29_combout\,
	combout => \inst3|s_debounceCnt[9]~4_combout\);

-- Location: LCCOMB_X81_Y21_N20
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

-- Location: LCCOMB_X82_Y22_N30
\inst3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~10_combout\ = (\inst3|s_debounceCnt[9]~5_combout\ & (\inst3|s_debounceCnt[9]~4_combout\ & \inst3|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[9]~5_combout\,
	datac => \inst3|s_debounceCnt[9]~4_combout\,
	datad => \inst3|Add0~42_combout\,
	combout => \inst3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X82_Y22_N31
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

-- Location: LCCOMB_X81_Y21_N22
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

-- Location: LCCOMB_X82_Y22_N6
\inst3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~27_combout\ = (\inst3|s_debounceCnt\(22) & (((!\inst3|LessThan0~6_combout\)))) # (!\inst3|s_debounceCnt\(22) & (((\inst3|s_debounceCnt[9]~29_combout\)) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt[9]~29_combout\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~6_combout\,
	combout => \inst3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X82_Y22_N14
\inst3|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~28_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_debounceCnt[22]~27_combout\ & ((\inst3|Add0~44_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~44_combout\,
	datad => \inst3|s_debounceCnt[22]~27_combout\,
	combout => \inst3|s_debounceCnt[22]~28_combout\);

-- Location: FF_X82_Y22_N15
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

-- Location: LCCOMB_X82_Y22_N28
\inst3|s_debounceCnt[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[9]~5_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & ((!\inst3|LessThan0~6_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|LessThan0~6_combout\,
	combout => \inst3|s_debounceCnt[9]~5_combout\);

-- Location: LCCOMB_X82_Y22_N8
\inst3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~26_combout\ = (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~26_combout\);

-- Location: FF_X82_Y22_N9
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~26_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y22_N12
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

-- Location: LCCOMB_X83_Y22_N28
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X83_Y22_N29
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y22_N14
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

-- Location: LCCOMB_X83_Y22_N26
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X83_Y22_N27
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y22_N16
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

-- Location: LCCOMB_X83_Y22_N24
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X83_Y22_N25
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y22_N18
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

-- Location: LCCOMB_X83_Y22_N30
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~8_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X83_Y22_N31
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X83_Y22_N22
\inst3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~25_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[9]~5_combout\,
	combout => \inst3|s_debounceCnt~25_combout\);

-- Location: FF_X83_Y22_N23
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~25_combout\,
	ena => \inst3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X82_Y21_N18
\inst3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~9_combout\ = (\inst3|s_previousIn~q\ & (\inst3|s_dirtyIn~q\ & (!\inst3|s_debounceCnt\(22) & \inst3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt\(22),
	datad => \inst3|s_debounceCnt\(0),
	combout => \inst3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X82_Y21_N24
\inst3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~10_combout\ = (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~9_combout\ & (\inst3|s_pulsedOut~7_combout\ & \inst3|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~9_combout\,
	datac => \inst3|s_pulsedOut~7_combout\,
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_pulsedOut~10_combout\);

-- Location: FF_X82_Y21_N25
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

-- Location: LCCOMB_X74_Y21_N2
\inst25|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~10_combout\ = (!\inst3|s_pulsedOut~q\ & ((!\inst9|s_cntZero~q\) # (!\iaaanst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst25|pState~10_combout\);

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

-- Location: LCCOMB_X91_Y38_N14
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

-- Location: FF_X91_Y38_N15
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

-- Location: FF_X91_Y38_N9
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

-- Location: LCCOMB_X90_Y38_N10
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

-- Location: LCCOMB_X90_Y38_N20
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

-- Location: LCCOMB_X90_Y38_N22
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

-- Location: LCCOMB_X89_Y38_N18
\inst1|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~2_combout\ = (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~6_combout\) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt\(22),
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X89_Y38_N28
\inst1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~3_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt~3_combout\);

-- Location: FF_X89_Y38_N29
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~3_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X90_Y38_N24
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

-- Location: LCCOMB_X89_Y38_N12
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|Add0~14_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~14_combout\,
	datac => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X89_Y38_N13
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X90_Y38_N26
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

-- Location: LCCOMB_X89_Y38_N26
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X89_Y38_N27
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X90_Y38_N28
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|s_debounceCnt\(9) & (\inst1|Add0~17\ & VCC)) # (!\inst1|s_debounceCnt\(9) & (!\inst1|Add0~17\))
-- \inst1|Add0~19\ = CARRY((!\inst1|s_debounceCnt\(9) & !\inst1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X89_Y38_N24
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X89_Y38_N25
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X90_Y38_N30
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

-- Location: LCCOMB_X89_Y38_N14
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|Add0~20_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X89_Y38_N15
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X90_Y37_N0
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|s_debounceCnt\(11) & (\inst1|Add0~21\ & VCC)) # (!\inst1|s_debounceCnt\(11) & (!\inst1|Add0~21\))
-- \inst1|Add0~23\ = CARRY((!\inst1|s_debounceCnt\(11) & !\inst1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCCOMB_X90_Y38_N2
\inst1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~17_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt~17_combout\);

-- Location: FF_X90_Y38_N3
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~17_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X90_Y37_N2
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

-- Location: LCCOMB_X91_Y38_N6
\inst1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~11_combout\ = (\inst1|Add0~24_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~24_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~11_combout\);

-- Location: FF_X91_Y38_N7
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~11_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X90_Y37_N4
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

-- Location: LCCOMB_X89_Y38_N30
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~26_combout\,
	datac => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X89_Y38_N31
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X90_Y37_N6
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

-- Location: LCCOMB_X90_Y38_N4
\inst1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~18_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt~18_combout\);

-- Location: FF_X90_Y38_N5
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~18_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X90_Y37_N8
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

-- Location: LCCOMB_X90_Y37_N24
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|Add0~30_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X90_Y37_N25
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X90_Y37_N10
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

-- Location: LCCOMB_X90_Y37_N30
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|Add0~32_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~32_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X90_Y37_N31
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X90_Y37_N12
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

-- Location: LCCOMB_X91_Y38_N30
\inst1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~8_combout\ = (\inst1|Add0~34_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~8_combout\);

-- Location: FF_X91_Y38_N31
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~8_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X90_Y37_N14
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|s_debounceCnt\(18) & ((GND) # (!\inst1|Add0~35\))) # (!\inst1|s_debounceCnt\(18) & (\inst1|Add0~35\ $ (GND)))
-- \inst1|Add0~37\ = CARRY((\inst1|s_debounceCnt\(18)) # (!\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCCOMB_X91_Y38_N18
\inst1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~19_combout\ = (\inst1|s_debounceCnt[1]~2_combout\ & (\inst1|s_debounceCnt[1]~4_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~36_combout\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[1]~2_combout\,
	datad => \inst1|s_debounceCnt[1]~4_combout\,
	combout => \inst1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X91_Y38_N19
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

-- Location: LCCOMB_X91_Y38_N26
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (!\inst1|s_debounceCnt\(21) & !\inst1|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt\(21),
	datad => \inst1|s_debounceCnt\(20),
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y38_N0
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (!\inst1|s_debounceCnt\(12) & !\inst1|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(12),
	datad => \inst1|s_debounceCnt\(13),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X88_Y38_N16
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (!\inst1|s_debounceCnt\(2) & (!\inst1|s_debounceCnt\(4) & (!\inst1|s_debounceCnt\(3) & !\inst1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(2),
	datab => \inst1|s_debounceCnt\(4),
	datac => \inst1|s_debounceCnt\(3),
	datad => \inst1|s_debounceCnt\(1),
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X88_Y38_N24
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

-- Location: LCCOMB_X89_Y38_N0
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|s_debounceCnt\(7)) # ((\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(0)) # (!\inst1|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(7),
	datab => \inst1|s_debounceCnt\(6),
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_pulsedOut~8_combout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X89_Y38_N10
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(10)) # ((\inst1|s_debounceCnt\(8) & (\inst1|s_debounceCnt\(9) & \inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datab => \inst1|s_debounceCnt\(9),
	datac => \inst1|s_debounceCnt\(10),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X89_Y38_N16
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|s_debounceCnt\(14) & (((\inst1|s_debounceCnt\(11) & \inst1|LessThan0~1_combout\)) # (!\inst1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(11),
	datac => \inst1|LessThan0~2_combout\,
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X89_Y38_N6
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|s_debounceCnt\(16)) # ((\inst1|s_debounceCnt\(17)) # ((\inst1|s_debounceCnt\(15)) # (\inst1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(16),
	datab => \inst1|s_debounceCnt\(17),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X89_Y38_N20
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = ((\inst1|s_debounceCnt\(18) & (\inst1|s_debounceCnt\(19) & \inst1|LessThan0~4_combout\))) # (!\inst1|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(18),
	datab => \inst1|s_debounceCnt\(19),
	datac => \inst1|LessThan0~5_combout\,
	datad => \inst1|LessThan0~4_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X89_Y38_N4
\inst1|s_debounceCnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~5_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_previousIn~q\ & ((!\inst1|LessThan0~6_combout\) # (!\inst1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|s_debounceCnt[1]~5_combout\);

-- Location: LCCOMB_X89_Y38_N8
\inst1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~26_combout\ = (\inst1|Add0~0_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~26_combout\);

-- Location: FF_X89_Y38_N9
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~26_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X90_Y38_N12
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|s_debounceCnt\(1) & (\inst1|Add0~1\ & VCC)) # (!\inst1|s_debounceCnt\(1) & (!\inst1|Add0~1\))
-- \inst1|Add0~3\ = CARRY((!\inst1|s_debounceCnt\(1) & !\inst1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X88_Y38_N28
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~2_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: FF_X88_Y38_N29
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X90_Y38_N14
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

-- Location: LCCOMB_X88_Y38_N30
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X88_Y38_N31
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X90_Y38_N16
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|s_debounceCnt\(3) & (\inst1|Add0~5\ & VCC)) # (!\inst1|s_debounceCnt\(3) & (!\inst1|Add0~5\))
-- \inst1|Add0~7\ = CARRY((!\inst1|s_debounceCnt\(3) & !\inst1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X88_Y38_N8
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|Add0~6_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X88_Y38_N9
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X90_Y38_N18
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|s_debounceCnt\(4) & ((GND) # (!\inst1|Add0~7\))) # (!\inst1|s_debounceCnt\(4) & (\inst1|Add0~7\ $ (GND)))
-- \inst1|Add0~9\ = CARRY((\inst1|s_debounceCnt\(4)) # (!\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X88_Y38_N18
\inst1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~24_combout\ = (\inst1|Add0~8_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~24_combout\);

-- Location: FF_X88_Y38_N19
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~24_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X88_Y38_N22
\inst1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~25_combout\ = (\inst1|Add0~10_combout\ & \inst1|s_debounceCnt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt~25_combout\);

-- Location: FF_X88_Y38_N23
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~25_combout\,
	ena => \inst1|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X91_Y38_N12
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(11) & (!\inst1|s_debounceCnt\(19) & (!\inst1|s_debounceCnt\(14) & !\inst1|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datab => \inst1|s_debounceCnt\(19),
	datac => \inst1|s_debounceCnt\(14),
	datad => \inst1|s_debounceCnt\(18),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X91_Y38_N20
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(12) & (!\inst1|s_debounceCnt\(21) & (!\inst1|s_debounceCnt\(13) & !\inst1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(12),
	datab => \inst1|s_debounceCnt\(21),
	datac => \inst1|s_debounceCnt\(13),
	datad => \inst1|s_debounceCnt\(20),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X91_Y38_N4
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(6) & (!\inst1|s_debounceCnt\(17) & (!\inst1|s_debounceCnt\(15) & !\inst1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(6),
	datab => \inst1|s_debounceCnt\(17),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|s_debounceCnt\(16),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X90_Y38_N8
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (!\inst1|s_debounceCnt\(10) & (!\inst1|s_debounceCnt\(9) & (!\inst1|s_debounceCnt\(8) & !\inst1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(10),
	datab => \inst1|s_debounceCnt\(9),
	datac => \inst1|s_debounceCnt\(8),
	datad => \inst1|s_debounceCnt\(7),
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X91_Y38_N2
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (\inst1|s_pulsedOut~5_combout\ & (\inst1|s_pulsedOut~3_combout\ & (\inst1|s_pulsedOut~2_combout\ & \inst1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~5_combout\,
	datab => \inst1|s_pulsedOut~3_combout\,
	datac => \inst1|s_pulsedOut~2_combout\,
	datad => \inst1|s_pulsedOut~4_combout\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X91_Y38_N10
\inst1|s_debounceCnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~29_combout\ = (\inst1|s_debounceCnt\(5)) # (((\inst1|s_debounceCnt\(0)) # (!\inst1|s_pulsedOut~6_combout\)) # (!\inst1|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datab => \inst1|s_pulsedOut~7_combout\,
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_pulsedOut~6_combout\,
	combout => \inst1|s_debounceCnt[1]~29_combout\);

-- Location: LCCOMB_X91_Y38_N24
\inst1|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[1]~4_combout\ = (\inst1|s_debounceCnt\(22)) # (((\inst1|s_debounceCnt[1]~29_combout\) # (!\inst1|s_dirtyIn~q\)) # (!\inst1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|s_debounceCnt[1]~29_combout\,
	combout => \inst1|s_debounceCnt[1]~4_combout\);

-- Location: LCCOMB_X90_Y37_N16
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|s_debounceCnt\(19) & (\inst1|Add0~37\ & VCC)) # (!\inst1|s_debounceCnt\(19) & (!\inst1|Add0~37\))
-- \inst1|Add0~39\ = CARRY((!\inst1|s_debounceCnt\(19) & !\inst1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X90_Y38_N6
\inst1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~20_combout\ = (\inst1|s_debounceCnt[1]~4_combout\ & (\inst1|s_debounceCnt[1]~2_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[1]~4_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|s_debounceCnt[1]~2_combout\,
	combout => \inst1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X90_Y38_N7
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

-- Location: LCCOMB_X90_Y37_N18
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

-- Location: LCCOMB_X90_Y37_N28
\inst1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~9_combout\ = (\inst1|Add0~40_combout\ & (\inst1|s_debounceCnt[1]~4_combout\ & \inst1|s_debounceCnt[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~40_combout\,
	datac => \inst1|s_debounceCnt[1]~4_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X90_Y37_N29
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

-- Location: LCCOMB_X90_Y37_N20
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

-- Location: LCCOMB_X90_Y37_N26
\inst1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~10_combout\ = (\inst1|Add0~42_combout\ & (\inst1|s_debounceCnt[1]~4_combout\ & \inst1|s_debounceCnt[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~42_combout\,
	datac => \inst1|s_debounceCnt[1]~4_combout\,
	datad => \inst1|s_debounceCnt[1]~5_combout\,
	combout => \inst1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X90_Y37_N27
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

-- Location: LCCOMB_X90_Y37_N22
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

-- Location: LCCOMB_X89_Y38_N2
\inst1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~27_combout\ = (\inst1|s_debounceCnt\(22) & (((!\inst1|LessThan0~6_combout\)))) # (!\inst1|s_debounceCnt\(22) & (((\inst1|s_debounceCnt[1]~29_combout\)) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_debounceCnt[1]~29_combout\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X89_Y38_N22
\inst1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~28_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt[22]~27_combout\ & ((\inst1|Add0~44_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~44_combout\,
	datad => \inst1|s_debounceCnt[22]~27_combout\,
	combout => \inst1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X89_Y38_N23
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

-- Location: LCCOMB_X91_Y38_N0
\inst1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~9_combout\ = (!\inst1|s_debounceCnt\(22) & (\inst1|s_previousIn~q\ & (\inst1|s_dirtyIn~q\ & \inst1|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_previousIn~q\,
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|s_debounceCnt\(0),
	combout => \inst1|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X91_Y38_N28
\inst1|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~10_combout\ = (\inst1|s_pulsedOut~9_combout\ & (\inst1|s_pulsedOut~6_combout\ & (!\inst1|s_debounceCnt\(5) & \inst1|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~9_combout\,
	datab => \inst1|s_pulsedOut~6_combout\,
	datac => \inst1|s_debounceCnt\(5),
	datad => \inst1|s_pulsedOut~7_combout\,
	combout => \inst1|s_pulsedOut~10_combout\);

-- Location: FF_X91_Y38_N29
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

-- Location: LCCOMB_X91_Y38_N16
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

-- Location: FF_X84_Y30_N1
\inst13|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst13|s_dirtyIn~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_dirtyIn~q\);

-- Location: FF_X82_Y30_N17
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

-- Location: LCCOMB_X83_Y31_N10
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

-- Location: LCCOMB_X84_Y30_N10
\inst13|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~26_combout\ = (\inst13|Add0~0_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~0_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~26_combout\);

-- Location: LCCOMB_X82_Y30_N16
\inst13|s_debounceCnt[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[5]~4_combout\ = ((\inst13|s_debounceCnt\(22)) # ((\inst13|s_debounceCnt[5]~29_combout\) # (!\inst13|s_previousIn~q\))) # (!\inst13|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[5]~29_combout\,
	combout => \inst13|s_debounceCnt[5]~4_combout\);

-- Location: FF_X84_Y30_N11
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~26_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X83_Y31_N12
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

-- Location: LCCOMB_X85_Y30_N0
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & \inst13|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	datad => \inst13|Add0~2_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X85_Y30_N1
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X83_Y31_N14
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

-- Location: LCCOMB_X85_Y30_N14
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & \inst13|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	datad => \inst13|Add0~4_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X85_Y30_N15
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X83_Y31_N16
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

-- Location: LCCOMB_X85_Y30_N24
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & \inst13|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	datad => \inst13|Add0~6_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X85_Y30_N25
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X83_Y31_N18
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

-- Location: LCCOMB_X85_Y30_N30
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & \inst13|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	datad => \inst13|Add0~8_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X85_Y30_N31
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X85_Y30_N28
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (!\inst13|s_debounceCnt\(4) & (!\inst13|s_debounceCnt\(3) & (!\inst13|s_debounceCnt\(2) & !\inst13|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(4),
	datab => \inst13|s_debounceCnt\(3),
	datac => \inst13|s_debounceCnt\(2),
	datad => \inst13|s_debounceCnt\(1),
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X83_Y30_N18
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

-- Location: LCCOMB_X83_Y30_N20
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

-- Location: LCCOMB_X84_Y30_N12
\inst13|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~10_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & (\inst13|s_debounceCnt[5]~4_combout\ & \inst13|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[5]~5_combout\,
	datac => \inst13|s_debounceCnt[5]~4_combout\,
	datad => \inst13|Add0~42_combout\,
	combout => \inst13|s_debounceCnt[21]~10_combout\);

-- Location: FF_X84_Y30_N13
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

-- Location: LCCOMB_X83_Y31_N20
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

-- Location: LCCOMB_X83_Y31_N22
\inst13|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = (\inst13|s_debounceCnt\(6) & ((GND) # (!\inst13|Add0~11\))) # (!\inst13|s_debounceCnt\(6) & (\inst13|Add0~11\ $ (GND)))
-- \inst13|Add0~13\ = CARRY((\inst13|s_debounceCnt\(6)) # (!\inst13|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

-- Location: LCCOMB_X82_Y30_N14
\inst13|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~3_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~12_combout\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt~3_combout\);

-- Location: FF_X82_Y30_N15
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~3_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X83_Y31_N24
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

-- Location: LCCOMB_X84_Y30_N26
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|Add0~14_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~14_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X84_Y30_N27
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X83_Y31_N26
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

-- Location: LCCOMB_X82_Y30_N20
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~16_combout\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X82_Y30_N21
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X83_Y31_N28
\inst13|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = (\inst13|s_debounceCnt\(9) & (\inst13|Add0~17\ & VCC)) # (!\inst13|s_debounceCnt\(9) & (!\inst13|Add0~17\))
-- \inst13|Add0~19\ = CARRY((!\inst13|s_debounceCnt\(9) & !\inst13|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst13|Add0~17\,
	combout => \inst13|Add0~18_combout\,
	cout => \inst13|Add0~19\);

-- Location: LCCOMB_X82_Y30_N22
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X82_Y30_N23
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X83_Y31_N30
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

-- Location: LCCOMB_X84_Y30_N20
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|Add0~20_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~20_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X84_Y30_N21
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X83_Y30_N0
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

-- Location: LCCOMB_X82_Y30_N6
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~22_combout\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X82_Y30_N7
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X83_Y30_N2
\inst13|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = (\inst13|s_debounceCnt\(12) & ((GND) # (!\inst13|Add0~23\))) # (!\inst13|s_debounceCnt\(12) & (\inst13|Add0~23\ $ (GND)))
-- \inst13|Add0~25\ = CARRY((\inst13|s_debounceCnt\(12)) # (!\inst13|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\,
	cout => \inst13|Add0~25\);

-- Location: LCCOMB_X84_Y30_N30
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|Add0~24_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~24_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X84_Y30_N31
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X83_Y30_N4
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

-- Location: LCCOMB_X84_Y30_N4
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|Add0~26_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~26_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X84_Y30_N5
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X83_Y30_N6
\inst13|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~28_combout\ = (\inst13|s_debounceCnt\(14) & ((GND) # (!\inst13|Add0~27\))) # (!\inst13|s_debounceCnt\(14) & (\inst13|Add0~27\ $ (GND)))
-- \inst13|Add0~29\ = CARRY((\inst13|s_debounceCnt\(14)) # (!\inst13|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst13|Add0~27\,
	combout => \inst13|Add0~28_combout\,
	cout => \inst13|Add0~29\);

-- Location: LCCOMB_X83_Y30_N24
\inst13|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~18_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~28_combout\,
	datac => \inst13|s_previousIn~q\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt~18_combout\);

-- Location: FF_X83_Y30_N25
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~18_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X83_Y30_N8
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

-- Location: LCCOMB_X83_Y30_N28
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~30_combout\,
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X83_Y30_N29
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X83_Y30_N10
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

-- Location: LCCOMB_X84_Y30_N8
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|Add0~32_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~32_combout\,
	datad => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X84_Y30_N9
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X83_Y30_N12
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

-- Location: LCCOMB_X83_Y30_N30
\inst13|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~8_combout\ = (\inst13|Add0~34_combout\ & \inst13|s_debounceCnt[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~34_combout\,
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	combout => \inst13|s_debounceCnt~8_combout\);

-- Location: FF_X83_Y30_N31
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~8_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X83_Y30_N14
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

-- Location: LCCOMB_X82_Y30_N0
\inst13|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~19_combout\ = (\inst13|s_debounceCnt[5]~4_combout\ & (\inst13|s_debounceCnt[5]~2_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt[5]~4_combout\,
	datac => \inst13|Add0~36_combout\,
	datad => \inst13|s_debounceCnt[5]~2_combout\,
	combout => \inst13|s_debounceCnt[18]~19_combout\);

-- Location: FF_X82_Y30_N1
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

-- Location: LCCOMB_X83_Y30_N26
\inst13|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~3_combout\ = (\inst13|s_debounceCnt\(17)) # ((\inst13|s_debounceCnt\(15)) # (\inst13|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(17),
	datab => \inst13|s_debounceCnt\(15),
	datac => \inst13|s_debounceCnt\(16),
	combout => \inst13|LessThan0~3_combout\);

-- Location: LCCOMB_X85_Y30_N16
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

-- Location: LCCOMB_X84_Y30_N28
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (\inst13|s_debounceCnt\(7)) # ((\inst13|s_debounceCnt\(6) & ((\inst13|s_debounceCnt\(0)) # (!\inst13|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(0),
	datab => \inst13|s_debounceCnt\(6),
	datac => \inst13|s_debounceCnt\(7),
	datad => \inst13|s_pulsedOut~8_combout\,
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X84_Y30_N2
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(10)) # ((\inst13|s_debounceCnt\(9) & (\inst13|s_debounceCnt\(8) & \inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(10),
	datac => \inst13|s_debounceCnt\(8),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X84_Y30_N16
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (\inst13|s_debounceCnt\(12)) # ((\inst13|s_debounceCnt\(13)) # ((\inst13|s_debounceCnt\(11) & \inst13|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(12),
	datab => \inst13|s_debounceCnt\(11),
	datac => \inst13|s_debounceCnt\(13),
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X84_Y30_N6
\inst13|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~4_combout\ = (\inst13|s_debounceCnt\(18) & ((\inst13|LessThan0~3_combout\) # ((\inst13|s_debounceCnt\(14) & \inst13|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(18),
	datab => \inst13|s_debounceCnt\(14),
	datac => \inst13|LessThan0~3_combout\,
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|LessThan0~4_combout\);

-- Location: LCCOMB_X84_Y30_N24
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (\inst13|s_debounceCnt\(21)) # ((\inst13|s_debounceCnt\(20)) # ((\inst13|s_debounceCnt\(19) & \inst13|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(21),
	datab => \inst13|s_debounceCnt\(20),
	datac => \inst13|s_debounceCnt\(19),
	datad => \inst13|LessThan0~4_combout\,
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y30_N24
\inst13|s_debounceCnt[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[5]~2_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~5_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[5]~2_combout\);

-- Location: LCCOMB_X83_Y30_N16
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

-- Location: LCCOMB_X82_Y30_N26
\inst13|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~20_combout\ = (\inst13|s_debounceCnt[5]~2_combout\ & (\inst13|s_debounceCnt[5]~4_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt[5]~2_combout\,
	datac => \inst13|s_debounceCnt[5]~4_combout\,
	datad => \inst13|Add0~38_combout\,
	combout => \inst13|s_debounceCnt[19]~20_combout\);

-- Location: FF_X82_Y30_N27
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

-- Location: LCCOMB_X84_Y30_N18
\inst13|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~9_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & (\inst13|s_debounceCnt[5]~4_combout\ & \inst13|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[5]~5_combout\,
	datac => \inst13|s_debounceCnt[5]~4_combout\,
	datad => \inst13|Add0~40_combout\,
	combout => \inst13|s_debounceCnt[20]~9_combout\);

-- Location: FF_X84_Y30_N19
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

-- Location: LCCOMB_X82_Y30_N30
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(20) & (!\inst13|s_debounceCnt\(21) & (!\inst13|s_debounceCnt\(13) & !\inst13|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datab => \inst13|s_debounceCnt\(21),
	datac => \inst13|s_debounceCnt\(13),
	datad => \inst13|s_debounceCnt\(12),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X82_Y30_N28
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(11) & (!\inst13|s_debounceCnt\(18) & (!\inst13|s_debounceCnt\(19) & !\inst13|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(11),
	datab => \inst13|s_debounceCnt\(18),
	datac => \inst13|s_debounceCnt\(19),
	datad => \inst13|s_debounceCnt\(14),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X82_Y30_N8
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (!\inst13|s_debounceCnt\(9) & (!\inst13|s_debounceCnt\(8) & (!\inst13|s_debounceCnt\(10) & !\inst13|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(8),
	datac => \inst13|s_debounceCnt\(10),
	datad => \inst13|s_debounceCnt\(7),
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X82_Y30_N12
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(17) & (!\inst13|s_debounceCnt\(6) & (!\inst13|s_debounceCnt\(16) & !\inst13|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(17),
	datab => \inst13|s_debounceCnt\(6),
	datac => \inst13|s_debounceCnt\(16),
	datad => \inst13|s_debounceCnt\(15),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y30_N10
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_pulsedOut~3_combout\ & (\inst13|s_pulsedOut~5_combout\ & (\inst13|s_pulsedOut~4_combout\ & \inst13|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~3_combout\,
	datab => \inst13|s_pulsedOut~5_combout\,
	datac => \inst13|s_pulsedOut~4_combout\,
	datad => \inst13|s_pulsedOut~2_combout\,
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X82_Y30_N2
\inst13|s_debounceCnt[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[5]~29_combout\ = (\inst13|s_debounceCnt\(5)) # ((\inst13|s_debounceCnt\(0)) # ((!\inst13|s_pulsedOut~6_combout\) # (!\inst13|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_pulsedOut~7_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_debounceCnt[5]~29_combout\);

-- Location: LCCOMB_X84_Y30_N22
\inst13|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~27_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~5_combout\)))) # (!\inst13|s_debounceCnt\(22) & (((\inst13|s_debounceCnt[5]~29_combout\)) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_debounceCnt[5]~29_combout\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X83_Y30_N22
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

-- Location: LCCOMB_X84_Y30_N14
\inst13|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~28_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt[22]~27_combout\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_dirtyIn~q\,
	datac => \inst13|s_debounceCnt[22]~27_combout\,
	datad => \inst13|Add0~44_combout\,
	combout => \inst13|s_debounceCnt[22]~28_combout\);

-- Location: FF_X84_Y30_N15
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

-- Location: LCCOMB_X84_Y30_N0
\inst13|s_debounceCnt[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[5]~5_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~5_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|LessThan0~5_combout\,
	combout => \inst13|s_debounceCnt[5]~5_combout\);

-- Location: LCCOMB_X85_Y30_N18
\inst13|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~25_combout\ = (\inst13|s_debounceCnt[5]~5_combout\ & \inst13|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[5]~5_combout\,
	datad => \inst13|Add0~10_combout\,
	combout => \inst13|s_debounceCnt~25_combout\);

-- Location: FF_X85_Y30_N19
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~25_combout\,
	ena => \inst13|s_debounceCnt[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X82_Y30_N18
\inst13|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~9_combout\ = (!\inst13|s_debounceCnt\(22) & (\inst13|s_debounceCnt\(0) & (\inst13|s_dirtyIn~q\ & \inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(22),
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|s_previousIn~q\,
	combout => \inst13|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X82_Y30_N4
\inst13|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~10_combout\ = (!\inst13|s_debounceCnt\(5) & (\inst13|s_pulsedOut~7_combout\ & (\inst13|s_pulsedOut~9_combout\ & \inst13|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_pulsedOut~7_combout\,
	datac => \inst13|s_pulsedOut~9_combout\,
	datad => \inst13|s_pulsedOut~6_combout\,
	combout => \inst13|s_pulsedOut~10_combout\);

-- Location: FF_X82_Y30_N5
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

-- Location: LCCOMB_X75_Y21_N4
\iaaanst1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector14~0_combout\ = (\iaaanst1|s_currentState.TFim~q\ & ((\inst9|s_cntZero~q\) # ((!\inst25|pState.StartPrg~q\ & \iaaanst1|s_currentState.TExtra~q\)))) # (!\iaaanst1|s_currentState.TFim~q\ & (((!\inst25|pState.StartPrg~q\ & 
-- \iaaanst1|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|Selector14~0_combout\);

-- Location: LCCOMB_X75_Y21_N2
\iaaanst1|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~12_combout\ = (\inst25|pState.Init~q\ & \iaaanst1|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \iaaanst1|Selector14~0_combout\,
	combout => \iaaanst1|s_currentState~12_combout\);

-- Location: FF_X75_Y21_N3
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

-- Location: LCCOMB_X101_Y24_N2
\inst12|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \inst12|s_dirtyIn~0_combout\);

-- Location: FF_X101_Y24_N3
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

-- Location: LCCOMB_X101_Y24_N20
\inst12|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_previousIn~feeder_combout\ = \inst12|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|s_dirtyIn~q\,
	combout => \inst12|s_previousIn~feeder_combout\);

-- Location: FF_X101_Y24_N21
\inst12|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_previousIn~q\);

-- Location: LCCOMB_X101_Y24_N22
\inst12|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[17]~4_combout\ = (((\inst12|s_debounceCnt\(22)) # (\inst12|s_debounceCnt[17]~29_combout\)) # (!\inst12|s_previousIn~q\)) # (!\inst12|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_debounceCnt[17]~29_combout\,
	combout => \inst12|s_debounceCnt[17]~4_combout\);

-- Location: LCCOMB_X98_Y25_N16
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

-- Location: LCCOMB_X98_Y25_N18
\inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|s_debounceCnt\(4) & ((GND) # (!\inst12|Add0~7\))) # (!\inst12|s_debounceCnt\(4) & (\inst12|Add0~7\ $ (GND)))
-- \inst12|Add0~9\ = CARRY((\inst12|s_debounceCnt\(4)) # (!\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X99_Y24_N16
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|s_debounceCnt[17]~5_combout\ & \inst12|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	datad => \inst12|Add0~8_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X99_Y24_N17
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y25_N20
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

-- Location: LCCOMB_X99_Y24_N8
\inst12|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~25_combout\ = (\inst12|s_debounceCnt[17]~5_combout\ & \inst12|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	datad => \inst12|Add0~10_combout\,
	combout => \inst12|s_debounceCnt~25_combout\);

-- Location: FF_X99_Y24_N9
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~25_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y25_N22
\inst12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~12_combout\ = (\inst12|s_debounceCnt\(6) & ((GND) # (!\inst12|Add0~11\))) # (!\inst12|s_debounceCnt\(6) & (\inst12|Add0~11\ $ (GND)))
-- \inst12|Add0~13\ = CARRY((\inst12|s_debounceCnt\(6)) # (!\inst12|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst12|Add0~11\,
	combout => \inst12|Add0~12_combout\,
	cout => \inst12|Add0~13\);

-- Location: LCCOMB_X99_Y24_N0
\inst12|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~3_combout\ = (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~12_combout\,
	datab => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[17]~2_combout\,
	combout => \inst12|s_debounceCnt~3_combout\);

-- Location: FF_X99_Y24_N1
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~3_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y25_N24
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

-- Location: LCCOMB_X99_Y24_N4
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|Add0~14_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~14_combout\,
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X99_Y24_N5
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y25_N26
\inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~16_combout\ = (\inst12|s_debounceCnt\(8) & ((GND) # (!\inst12|Add0~15\))) # (!\inst12|s_debounceCnt\(8) & (\inst12|Add0~15\ $ (GND)))
-- \inst12|Add0~17\ = CARRY((\inst12|s_debounceCnt\(8)) # (!\inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst12|Add0~15\,
	combout => \inst12|Add0~16_combout\,
	cout => \inst12|Add0~17\);

-- Location: LCCOMB_X98_Y25_N28
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

-- Location: LCCOMB_X100_Y24_N0
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[17]~2_combout\,
	datad => \inst12|Add0~18_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X100_Y24_N1
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y25_N30
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

-- Location: LCCOMB_X100_Y24_N26
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|Add0~20_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~20_combout\,
	datad => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X100_Y24_N27
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y24_N0
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

-- Location: LCCOMB_X101_Y24_N26
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~22_combout\,
	datad => \inst12|s_debounceCnt[17]~2_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X101_Y24_N27
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y24_N2
\inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~24_combout\ = (\inst12|s_debounceCnt\(12) & ((GND) # (!\inst12|Add0~23\))) # (!\inst12|s_debounceCnt\(12) & (\inst12|Add0~23\ $ (GND)))
-- \inst12|Add0~25\ = CARRY((\inst12|s_debounceCnt\(12)) # (!\inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst12|Add0~23\,
	combout => \inst12|Add0~24_combout\,
	cout => \inst12|Add0~25\);

-- Location: LCCOMB_X100_Y24_N20
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|Add0~24_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~24_combout\,
	datad => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X100_Y24_N21
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y24_N4
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

-- Location: LCCOMB_X100_Y24_N6
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|Add0~26_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~26_combout\,
	datad => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X100_Y24_N7
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y24_N6
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

-- Location: LCCOMB_X101_Y24_N16
\inst12|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~18_combout\ = (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[17]~2_combout\,
	combout => \inst12|s_debounceCnt~18_combout\);

-- Location: FF_X101_Y24_N17
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~18_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y24_N8
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

-- Location: LCCOMB_X98_Y24_N24
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|Add0~30_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~30_combout\,
	datad => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X98_Y24_N25
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y24_N10
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

-- Location: LCCOMB_X99_Y24_N2
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|Add0~32_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~32_combout\,
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X99_Y24_N3
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y24_N12
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

-- Location: LCCOMB_X98_Y24_N30
\inst12|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~8_combout\ = (\inst12|Add0~34_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~34_combout\,
	datad => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~8_combout\);

-- Location: FF_X98_Y24_N31
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~8_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y24_N14
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

-- Location: LCCOMB_X101_Y24_N18
\inst12|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~19_combout\ = (\inst12|s_debounceCnt[17]~4_combout\ & (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[17]~4_combout\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~36_combout\,
	datad => \inst12|s_debounceCnt[17]~2_combout\,
	combout => \inst12|s_debounceCnt[18]~19_combout\);

-- Location: FF_X101_Y24_N19
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

-- Location: LCCOMB_X98_Y24_N16
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

-- Location: LCCOMB_X99_Y24_N20
\inst12|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~20_combout\ = (\inst12|s_debounceCnt[17]~4_combout\ & (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[17]~4_combout\,
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~38_combout\,
	datad => \inst12|s_debounceCnt[17]~2_combout\,
	combout => \inst12|s_debounceCnt[19]~20_combout\);

-- Location: FF_X99_Y24_N21
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

-- Location: LCCOMB_X98_Y24_N18
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

-- Location: LCCOMB_X100_Y24_N8
\inst12|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~9_combout\ = (\inst12|s_debounceCnt[17]~5_combout\ & (\inst12|s_debounceCnt[17]~4_combout\ & \inst12|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[17]~5_combout\,
	datab => \inst12|s_debounceCnt[17]~4_combout\,
	datad => \inst12|Add0~40_combout\,
	combout => \inst12|s_debounceCnt[20]~9_combout\);

-- Location: FF_X100_Y24_N9
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

-- Location: LCCOMB_X98_Y24_N20
\inst12|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~42_combout\ = (\inst12|s_debounceCnt\(21) & (\inst12|Add0~41\ & VCC)) # (!\inst12|s_debounceCnt\(21) & (!\inst12|Add0~41\))
-- \inst12|Add0~43\ = CARRY((!\inst12|s_debounceCnt\(21) & !\inst12|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst12|Add0~41\,
	combout => \inst12|Add0~42_combout\,
	cout => \inst12|Add0~43\);

-- Location: LCCOMB_X100_Y24_N14
\inst12|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~10_combout\ = (\inst12|s_debounceCnt[17]~5_combout\ & (\inst12|s_debounceCnt[17]~4_combout\ & \inst12|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[17]~5_combout\,
	datab => \inst12|s_debounceCnt[17]~4_combout\,
	datad => \inst12|Add0~42_combout\,
	combout => \inst12|s_debounceCnt[21]~10_combout\);

-- Location: FF_X100_Y24_N15
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

-- Location: LCCOMB_X99_Y24_N28
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(17)) # ((\inst12|s_debounceCnt\(16)) # (\inst12|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(17),
	datac => \inst12|s_debounceCnt\(16),
	datad => \inst12|s_debounceCnt\(15),
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X99_Y24_N18
\inst12|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~8_combout\ = (!\inst12|s_debounceCnt\(5) & \inst12|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~7_combout\,
	combout => \inst12|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X99_Y24_N22
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(7)) # ((\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(6),
	datac => \inst12|s_debounceCnt\(7),
	datad => \inst12|s_pulsedOut~8_combout\,
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X100_Y24_N10
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(10)) # ((\inst12|s_debounceCnt\(8) & (\inst12|s_debounceCnt\(9) & \inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datab => \inst12|s_debounceCnt\(9),
	datac => \inst12|s_debounceCnt\(10),
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X100_Y24_N28
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

-- Location: LCCOMB_X100_Y24_N18
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|s_debounceCnt\(18) & ((\inst12|LessThan0~3_combout\) # ((\inst12|s_debounceCnt\(14) & \inst12|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(18),
	datab => \inst12|LessThan0~3_combout\,
	datac => \inst12|s_debounceCnt\(14),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X100_Y24_N24
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (\inst12|s_debounceCnt\(21)) # ((\inst12|s_debounceCnt\(20)) # ((\inst12|s_debounceCnt\(19) & \inst12|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(20),
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X100_Y24_N12
\inst12|s_debounceCnt[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[17]~5_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_previousIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[17]~5_combout\);

-- Location: LCCOMB_X98_Y25_N10
\inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = \inst12|s_debounceCnt\(0) $ (VCC)
-- \inst12|Add0~1\ = CARRY(\inst12|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst12|Add0~0_combout\,
	cout => \inst12|Add0~1\);

-- Location: LCCOMB_X99_Y24_N12
\inst12|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~26_combout\ = (\inst12|s_debounceCnt[17]~5_combout\ & \inst12|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	datad => \inst12|Add0~0_combout\,
	combout => \inst12|s_debounceCnt~26_combout\);

-- Location: FF_X99_Y24_N13
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~26_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y25_N12
\inst12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~2_combout\ = (\inst12|s_debounceCnt\(1) & (\inst12|Add0~1\ & VCC)) # (!\inst12|s_debounceCnt\(1) & (!\inst12|Add0~1\))
-- \inst12|Add0~3\ = CARRY((!\inst12|s_debounceCnt\(1) & !\inst12|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst12|Add0~1\,
	combout => \inst12|Add0~2_combout\,
	cout => \inst12|Add0~3\);

-- Location: LCCOMB_X99_Y24_N30
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|Add0~2_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~2_combout\,
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X99_Y24_N31
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y25_N14
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

-- Location: LCCOMB_X99_Y24_N24
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~4_combout\,
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: FF_X99_Y24_N25
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X99_Y24_N10
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|Add0~6_combout\ & \inst12|s_debounceCnt[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~6_combout\,
	datac => \inst12|s_debounceCnt[17]~5_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X99_Y24_N11
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X99_Y24_N6
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (!\inst12|s_debounceCnt\(3) & (!\inst12|s_debounceCnt\(2) & (!\inst12|s_debounceCnt\(1) & !\inst12|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(3),
	datab => \inst12|s_debounceCnt\(2),
	datac => \inst12|s_debounceCnt\(1),
	datad => \inst12|s_debounceCnt\(4),
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X101_Y24_N24
\inst12|s_debounceCnt[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[17]~29_combout\ = ((\inst12|s_debounceCnt\(0)) # ((\inst12|s_debounceCnt\(5)) # (!\inst12|s_pulsedOut~6_combout\))) # (!\inst12|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~7_combout\,
	datab => \inst12|s_debounceCnt\(0),
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~6_combout\,
	combout => \inst12|s_debounceCnt[17]~29_combout\);

-- Location: LCCOMB_X100_Y24_N2
\inst12|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~27_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~5_combout\)))) # (!\inst12|s_debounceCnt\(22) & (((\inst12|s_debounceCnt[17]~29_combout\)) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_debounceCnt[17]~29_combout\,
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X98_Y24_N22
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

-- Location: LCCOMB_X100_Y24_N16
\inst12|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~28_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_debounceCnt[22]~27_combout\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt[22]~27_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|Add0~44_combout\,
	combout => \inst12|s_debounceCnt[22]~28_combout\);

-- Location: FF_X100_Y24_N17
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

-- Location: LCCOMB_X100_Y24_N22
\inst12|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[17]~2_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~5_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_dirtyIn~q\,
	datab => \inst12|s_debounceCnt\(22),
	datad => \inst12|LessThan0~5_combout\,
	combout => \inst12|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X100_Y24_N30
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[17]~2_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt[17]~2_combout\,
	datad => \inst12|Add0~16_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X100_Y24_N31
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X99_Y24_N26
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (!\inst12|s_debounceCnt\(8) & (!\inst12|s_debounceCnt\(7) & (!\inst12|s_debounceCnt\(9) & !\inst12|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datab => \inst12|s_debounceCnt\(7),
	datac => \inst12|s_debounceCnt\(9),
	datad => \inst12|s_debounceCnt\(10),
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X100_Y24_N4
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(13) & (!\inst12|s_debounceCnt\(21) & (!\inst12|s_debounceCnt\(20) & !\inst12|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(13),
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(20),
	datad => \inst12|s_debounceCnt\(12),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X101_Y24_N8
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(11) & (!\inst12|s_debounceCnt\(14) & (!\inst12|s_debounceCnt\(19) & !\inst12|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(19),
	datad => \inst12|s_debounceCnt\(18),
	combout => \inst12|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X98_Y24_N28
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(17) & (!\inst12|s_debounceCnt\(15) & (!\inst12|s_debounceCnt\(6) & !\inst12|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(17),
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_debounceCnt\(16),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X101_Y24_N10
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (\inst12|s_pulsedOut~4_combout\ & (\inst12|s_pulsedOut~3_combout\ & (\inst12|s_pulsedOut~5_combout\ & \inst12|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~4_combout\,
	datab => \inst12|s_pulsedOut~3_combout\,
	datac => \inst12|s_pulsedOut~5_combout\,
	datad => \inst12|s_pulsedOut~2_combout\,
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X101_Y24_N12
\inst12|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~9_combout\ = (\inst12|s_debounceCnt\(0) & (\inst12|s_previousIn~q\ & (!\inst12|s_debounceCnt\(22) & \inst12|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_previousIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_dirtyIn~q\,
	combout => \inst12|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X101_Y24_N28
\inst12|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~10_combout\ = (\inst12|s_pulsedOut~6_combout\ & (\inst12|s_pulsedOut~9_combout\ & (!\inst12|s_debounceCnt\(5) & \inst12|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~6_combout\,
	datab => \inst12|s_pulsedOut~9_combout\,
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~7_combout\,
	combout => \inst12|s_pulsedOut~10_combout\);

-- Location: FF_X101_Y24_N29
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

-- Location: LCCOMB_X72_Y21_N12
\inst4|Counter|s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~8_combout\ = (\inst4|Counter|s_count\(0) & (\inst12|s_pulsedOut~q\ $ (VCC))) # (!\inst4|Counter|s_count\(0) & (\inst12|s_pulsedOut~q\ & VCC))
-- \inst4|Counter|s_count[0]~9\ = CARRY((\inst4|Counter|s_count\(0) & \inst12|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(0),
	datab => \inst12|s_pulsedOut~q\,
	datad => VCC,
	combout => \inst4|Counter|s_count[0]~8_combout\,
	cout => \inst4|Counter|s_count[0]~9\);

-- Location: LCCOMB_X72_Y21_N14
\inst4|Counter|s_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~13_combout\ = (\inst4|Counter|s_count\(1) & (!\inst4|Counter|s_count[0]~9\)) # (!\inst4|Counter|s_count\(1) & ((\inst4|Counter|s_count[0]~9\) # (GND)))
-- \inst4|Counter|s_count[1]~14\ = CARRY((!\inst4|Counter|s_count[0]~9\) # (!\inst4|Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(1),
	datad => VCC,
	cin => \inst4|Counter|s_count[0]~9\,
	combout => \inst4|Counter|s_count[1]~13_combout\,
	cout => \inst4|Counter|s_count[1]~14\);

-- Location: LCCOMB_X72_Y21_N6
\inst4|Counter|s_count[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~12_combout\ = ((\inst25|pState.Extra~q\) # ((!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_currentState.TFim~q\))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \inst25|pState.Extra~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \inst4|Counter|s_count[0]~12_combout\);

-- Location: FF_X72_Y21_N15
\inst4|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[1]~13_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(1));

-- Location: LCCOMB_X72_Y21_N16
\inst4|Counter|s_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[2]~15_combout\ = (\inst4|Counter|s_count\(2) & (\inst4|Counter|s_count[1]~14\ $ (GND))) # (!\inst4|Counter|s_count\(2) & (!\inst4|Counter|s_count[1]~14\ & VCC))
-- \inst4|Counter|s_count[2]~16\ = CARRY((\inst4|Counter|s_count\(2) & !\inst4|Counter|s_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Counter|s_count\(2),
	datad => VCC,
	cin => \inst4|Counter|s_count[1]~14\,
	combout => \inst4|Counter|s_count[2]~15_combout\,
	cout => \inst4|Counter|s_count[2]~16\);

-- Location: FF_X72_Y21_N17
\inst4|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[2]~15_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(2));

-- Location: LCCOMB_X72_Y21_N18
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

-- Location: FF_X72_Y21_N19
\inst4|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[3]~17_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(3));

-- Location: LCCOMB_X72_Y21_N20
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

-- Location: FF_X72_Y21_N21
\inst4|Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[4]~19_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(4));

-- Location: LCCOMB_X72_Y21_N22
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

-- Location: FF_X72_Y21_N23
\inst4|Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[5]~21_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(5));

-- Location: LCCOMB_X72_Y21_N24
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

-- Location: FF_X72_Y21_N25
\inst4|Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[6]~23_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(6));

-- Location: LCCOMB_X72_Y21_N26
\inst4|Counter|s_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[7]~25_combout\ = \inst4|Counter|s_count[6]~24\ $ (\inst4|Counter|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Counter|s_count\(7),
	cin => \inst4|Counter|s_count[6]~24\,
	combout => \inst4|Counter|s_count[7]~25_combout\);

-- Location: FF_X72_Y21_N27
\inst4|Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[7]~25_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(7));

-- Location: LCCOMB_X72_Y21_N8
\iaaanst1|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector9~1_combout\ = (!\inst4|Counter|s_count\(7) & (!\inst4|Counter|s_count\(4) & (!\inst4|Counter|s_count\(5) & !\inst4|Counter|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(7),
	datab => \inst4|Counter|s_count\(4),
	datac => \inst4|Counter|s_count\(5),
	datad => \inst4|Counter|s_count\(6),
	combout => \iaaanst1|Selector9~1_combout\);

-- Location: LCCOMB_X74_Y21_N26
\inst25|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~11_combout\ = (\inst25|pState~10_combout\ & (((!\iaaanst1|s_currentState.TExtra~q\) # (!\iaaanst1|Selector9~1_combout\)) # (!\iaaanst1|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Selector9~0_combout\,
	datab => \iaaanst1|Selector9~1_combout\,
	datac => \inst25|pState~10_combout\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \inst25|pState~11_combout\);

-- Location: LCCOMB_X75_Y19_N4
\inst25|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~9_combout\ = (!\inst25|pState.Timer~q\ & (!\inst1|s_pulsedOut~q\ & ((!\inst13|s_pulsedOut~q\) # (!\inst25|pState.Menu~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Menu~q\,
	datab => \inst25|pState.Timer~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~9_combout\);

-- Location: LCCOMB_X74_Y19_N18
\inst25|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~12_combout\ = (\inst25|pState.Init~q\ & (\inst25|pState~9_combout\ & ((\inst25|pState~11_combout\) # (!\inst25|pState.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~11_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~9_combout\,
	combout => \inst25|pState~12_combout\);

-- Location: LCCOMB_X74_Y19_N16
\inst25|pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~20_combout\ = (\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TFim~q\ & (!\inst3|s_pulsedOut~q\ & !\inst1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~20_combout\);

-- Location: LCCOMB_X74_Y19_N24
\inst25|pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~21_combout\ = (\inst25|pState.StartPrg~q\ & \inst25|pState~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~20_combout\,
	combout => \inst25|pState~21_combout\);

-- Location: LCCOMB_X74_Y19_N10
\inst25|pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~22_combout\ = (\inst25|pState~21_combout\) # ((\inst25|pState~12_combout\ & (\inst25|pState.Extra~q\ & !\inst25|pState~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~12_combout\,
	datab => \inst25|pState~21_combout\,
	datac => \inst25|pState.Extra~q\,
	datad => \inst25|pState~13_combout\,
	combout => \inst25|pState~22_combout\);

-- Location: FF_X74_Y19_N11
\inst25|pState.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Extra~q\);

-- Location: LCCOMB_X72_Y21_N30
\inst4|Counter|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~10_combout\ = (!\inst4|Counter|s_count\(2)) # (!\inst4|Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(0),
	datad => \inst4|Counter|s_count\(2),
	combout => \inst4|Counter|s_count[0]~10_combout\);

-- Location: LCCOMB_X72_Y21_N0
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

-- Location: LCCOMB_X72_Y21_N28
\inst4|Counter|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[0]~11_combout\ = (((!\inst25|pState.Extra~q\ & \iaaanst1|timeVal~0_combout\)) # (!\inst4|Counter|s_count[0]~10_combout\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst25|pState.Extra~q\,
	datac => \inst4|Counter|s_count[0]~10_combout\,
	datad => \iaaanst1|timeVal~0_combout\,
	combout => \inst4|Counter|s_count[0]~11_combout\);

-- Location: FF_X72_Y21_N13
\inst4|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[0]~8_combout\,
	sclr => \inst4|Counter|s_count[0]~11_combout\,
	ena => \inst4|Counter|s_count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(0));

-- Location: LCCOMB_X72_Y21_N2
\iaaanst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector9~0_combout\ = (!\inst4|Counter|s_count\(0) & (!\inst4|Counter|s_count\(3) & (!\inst4|Counter|s_count\(1) & !\inst4|Counter|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(0),
	datab => \inst4|Counter|s_count\(3),
	datac => \inst4|Counter|s_count\(1),
	datad => \inst4|Counter|s_count\(2),
	combout => \iaaanst1|Selector9~0_combout\);

-- Location: LCCOMB_X74_Y21_N0
\inst25|pState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~26_combout\ = ((\iaaanst1|s_currentState.TExtra~q\ & (\iaaanst1|Selector9~0_combout\ & \iaaanst1|Selector9~1_combout\))) # (!\inst25|pState~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \iaaanst1|Selector9~0_combout\,
	datac => \iaaanst1|Selector9~1_combout\,
	datad => \inst25|pState~10_combout\,
	combout => \inst25|pState~26_combout\);

-- Location: LCCOMB_X74_Y21_N30
\inst25|pState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~27_combout\ = (\inst25|pState.StartPrg~q\ & \inst25|pState~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~26_combout\,
	combout => \inst25|pState~27_combout\);

-- Location: LCCOMB_X75_Y19_N0
\inst25|pState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~25_combout\ = (\inst25|pState.Init~q\ & (!\inst1|s_pulsedOut~q\ & ((!\inst25|pState.Menu~q\) # (!\inst13|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst25|pState.Menu~q\,
	datac => \inst25|pState.Init~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~25_combout\);

-- Location: LCCOMB_X75_Y19_N2
\inst25|pState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~28_combout\ = (\inst25|pState~27_combout\) # (((\inst25|pState~13_combout\) # (\inst25|pState.Timer~q\)) # (!\inst25|pState~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~27_combout\,
	datab => \inst25|pState~25_combout\,
	datac => \inst25|pState~13_combout\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst25|pState~28_combout\);

-- Location: LCCOMB_X72_Y21_N4
\iaaanst1|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector9~2_combout\ = (\iaaanst1|Selector9~1_combout\ & \iaaanst1|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|Selector9~1_combout\,
	datad => \iaaanst1|Selector9~0_combout\,
	combout => \iaaanst1|Selector9~2_combout\);

-- Location: LCCOMB_X75_Y19_N8
\iaaanst1|newPrg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|newPrg~0_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & (\inst25|pState.StartPrg~q\ & (\iaaanst1|Selector9~2_combout\ & !\inst3|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \iaaanst1|Selector9~2_combout\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \iaaanst1|newPrg~0_combout\);

-- Location: LCCOMB_X75_Y19_N6
\inst25|pState~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~29_combout\ = (\inst25|pState~28_combout\ & (!\iaaanst1|newPrg~0_combout\ & ((!\inst1|s_pulsedOut~q\)))) # (!\inst25|pState~28_combout\ & (((\inst25|pState.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~28_combout\,
	datab => \iaaanst1|newPrg~0_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~29_combout\);

-- Location: LCCOMB_X75_Y17_N4
\inst25|pState.Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState.Init~feeder_combout\ = \inst25|pState~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState~29_combout\,
	combout => \inst25|pState.Init~feeder_combout\);

-- Location: FF_X75_Y17_N5
\inst25|pState.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState.Init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Init~q\);

-- Location: LCCOMB_X75_Y19_N14
\inst25|pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~23_combout\ = ((!\inst13|s_pulsedOut~q\ & (\inst25|pState.Menu~q\ & !\inst3|s_pulsedOut~q\))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~q\,
	datab => \inst25|pState.Menu~q\,
	datac => \inst25|pState.Init~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst25|pState~23_combout\);

-- Location: LCCOMB_X75_Y19_N22
\inst25|pState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~24_combout\ = (\inst25|pState~23_combout\ & !\inst1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState~23_combout\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~24_combout\);

-- Location: FF_X75_Y19_N23
\inst25|pState.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Menu~q\);

-- Location: LCCOMB_X75_Y19_N28
\inst25|pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~15_combout\ = (\inst13|s_pulsedOut~q\ & ((\inst25|pState.Menu~q\) # ((\inst25|pState.Timer~q\)))) # (!\inst13|s_pulsedOut~q\ & (((!\inst3|s_pulsedOut~q\ & \inst25|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Menu~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst13|s_pulsedOut~q\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst25|pState~15_combout\);

-- Location: LCCOMB_X75_Y19_N30
\inst25|pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~16_combout\ = (!\inst1|s_pulsedOut~q\ & (\inst25|pState~15_combout\ & ((\inst25|pState~10_combout\) # (!\inst25|pState.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~10_combout\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~15_combout\,
	combout => \inst25|pState~16_combout\);

-- Location: FF_X75_Y19_N31
\inst25|pState.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Timer~q\);

-- Location: LCCOMB_X75_Y19_N18
\inst25|pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~17_combout\ = (\inst3|s_pulsedOut~q\ & (\inst25|pState.Timer~q\ & !\inst13|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~q\,
	datab => \inst25|pState.Timer~q\,
	datac => \inst13|s_pulsedOut~q\,
	combout => \inst25|pState~17_combout\);

-- Location: LCCOMB_X75_Y19_N24
\inst25|pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~18_combout\ = (\inst25|pState~17_combout\) # ((!\inst25|pState.Timer~q\ & (\inst25|pState.TimeProcess~q\ & !\inst5|s_result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst5|s_result~q\,
	datad => \inst25|pState~17_combout\,
	combout => \inst25|pState~18_combout\);

-- Location: LCCOMB_X75_Y19_N20
\inst25|pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~19_combout\ = (!\inst1|s_pulsedOut~q\ & (\inst25|pState~18_combout\ & ((\inst25|pState~10_combout\) # (!\inst25|pState.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~10_combout\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~18_combout\,
	combout => \inst25|pState~19_combout\);

-- Location: FF_X75_Y19_N21
\inst25|pState.TimeProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.TimeProcess~q\);

-- Location: LCCOMB_X76_Y14_N26
\inst25|en_3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|en_3~combout\ = (\inst25|pState.TimeProcess~q\) # (\inst25|pState.Timer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst25|en_3~combout\);

-- Location: LCCOMB_X81_Y18_N2
\inst11|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[0]~31_combout\ = \inst11|s_counter\(0) $ (VCC)
-- \inst11|s_counter[0]~32\ = CARRY(\inst11|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(0),
	datad => VCC,
	combout => \inst11|s_counter[0]~31_combout\,
	cout => \inst11|s_counter[0]~32\);

-- Location: LCCOMB_X80_Y17_N0
\inst11|s_counter[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[25]~33_combout\ = (!\inst11|Equal0~9_combout\) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|s_counter[25]~33_combout\);

-- Location: FF_X81_Y18_N3
\inst11|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[0]~31_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(0));

-- Location: LCCOMB_X81_Y18_N4
\inst11|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[1]~34_combout\ = (\inst11|s_counter\(1) & (!\inst11|s_counter[0]~32\)) # (!\inst11|s_counter\(1) & ((\inst11|s_counter[0]~32\) # (GND)))
-- \inst11|s_counter[1]~35\ = CARRY((!\inst11|s_counter[0]~32\) # (!\inst11|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(1),
	datad => VCC,
	cin => \inst11|s_counter[0]~32\,
	combout => \inst11|s_counter[1]~34_combout\,
	cout => \inst11|s_counter[1]~35\);

-- Location: FF_X81_Y18_N5
\inst11|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[1]~34_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(1));

-- Location: LCCOMB_X81_Y18_N6
\inst11|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[2]~36_combout\ = (\inst11|s_counter\(2) & (\inst11|s_counter[1]~35\ $ (GND))) # (!\inst11|s_counter\(2) & (!\inst11|s_counter[1]~35\ & VCC))
-- \inst11|s_counter[2]~37\ = CARRY((\inst11|s_counter\(2) & !\inst11|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(2),
	datad => VCC,
	cin => \inst11|s_counter[1]~35\,
	combout => \inst11|s_counter[2]~36_combout\,
	cout => \inst11|s_counter[2]~37\);

-- Location: FF_X81_Y18_N7
\inst11|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[2]~36_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(2));

-- Location: LCCOMB_X81_Y18_N8
\inst11|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[3]~38_combout\ = (\inst11|s_counter\(3) & (!\inst11|s_counter[2]~37\)) # (!\inst11|s_counter\(3) & ((\inst11|s_counter[2]~37\) # (GND)))
-- \inst11|s_counter[3]~39\ = CARRY((!\inst11|s_counter[2]~37\) # (!\inst11|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(3),
	datad => VCC,
	cin => \inst11|s_counter[2]~37\,
	combout => \inst11|s_counter[3]~38_combout\,
	cout => \inst11|s_counter[3]~39\);

-- Location: FF_X81_Y18_N9
\inst11|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[3]~38_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(3));

-- Location: LCCOMB_X81_Y18_N10
\inst11|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[4]~40_combout\ = (\inst11|s_counter\(4) & (\inst11|s_counter[3]~39\ $ (GND))) # (!\inst11|s_counter\(4) & (!\inst11|s_counter[3]~39\ & VCC))
-- \inst11|s_counter[4]~41\ = CARRY((\inst11|s_counter\(4) & !\inst11|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(4),
	datad => VCC,
	cin => \inst11|s_counter[3]~39\,
	combout => \inst11|s_counter[4]~40_combout\,
	cout => \inst11|s_counter[4]~41\);

-- Location: FF_X81_Y18_N11
\inst11|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[4]~40_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(4));

-- Location: LCCOMB_X81_Y18_N12
\inst11|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[5]~42_combout\ = (\inst11|s_counter\(5) & (!\inst11|s_counter[4]~41\)) # (!\inst11|s_counter\(5) & ((\inst11|s_counter[4]~41\) # (GND)))
-- \inst11|s_counter[5]~43\ = CARRY((!\inst11|s_counter[4]~41\) # (!\inst11|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(5),
	datad => VCC,
	cin => \inst11|s_counter[4]~41\,
	combout => \inst11|s_counter[5]~42_combout\,
	cout => \inst11|s_counter[5]~43\);

-- Location: FF_X81_Y18_N13
\inst11|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[5]~42_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(5));

-- Location: LCCOMB_X81_Y18_N14
\inst11|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[6]~44_combout\ = (\inst11|s_counter\(6) & (\inst11|s_counter[5]~43\ $ (GND))) # (!\inst11|s_counter\(6) & (!\inst11|s_counter[5]~43\ & VCC))
-- \inst11|s_counter[6]~45\ = CARRY((\inst11|s_counter\(6) & !\inst11|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(6),
	datad => VCC,
	cin => \inst11|s_counter[5]~43\,
	combout => \inst11|s_counter[6]~44_combout\,
	cout => \inst11|s_counter[6]~45\);

-- Location: FF_X81_Y18_N15
\inst11|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[6]~44_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(6));

-- Location: LCCOMB_X81_Y18_N16
\inst11|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[7]~46_combout\ = (\inst11|s_counter\(7) & (!\inst11|s_counter[6]~45\)) # (!\inst11|s_counter\(7) & ((\inst11|s_counter[6]~45\) # (GND)))
-- \inst11|s_counter[7]~47\ = CARRY((!\inst11|s_counter[6]~45\) # (!\inst11|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(7),
	datad => VCC,
	cin => \inst11|s_counter[6]~45\,
	combout => \inst11|s_counter[7]~46_combout\,
	cout => \inst11|s_counter[7]~47\);

-- Location: FF_X81_Y18_N17
\inst11|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[7]~46_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(7));

-- Location: LCCOMB_X81_Y18_N18
\inst11|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[8]~48_combout\ = (\inst11|s_counter\(8) & (\inst11|s_counter[7]~47\ $ (GND))) # (!\inst11|s_counter\(8) & (!\inst11|s_counter[7]~47\ & VCC))
-- \inst11|s_counter[8]~49\ = CARRY((\inst11|s_counter\(8) & !\inst11|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(8),
	datad => VCC,
	cin => \inst11|s_counter[7]~47\,
	combout => \inst11|s_counter[8]~48_combout\,
	cout => \inst11|s_counter[8]~49\);

-- Location: FF_X81_Y18_N19
\inst11|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[8]~48_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(8));

-- Location: LCCOMB_X81_Y18_N20
\inst11|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[9]~50_combout\ = (\inst11|s_counter\(9) & (!\inst11|s_counter[8]~49\)) # (!\inst11|s_counter\(9) & ((\inst11|s_counter[8]~49\) # (GND)))
-- \inst11|s_counter[9]~51\ = CARRY((!\inst11|s_counter[8]~49\) # (!\inst11|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(9),
	datad => VCC,
	cin => \inst11|s_counter[8]~49\,
	combout => \inst11|s_counter[9]~50_combout\,
	cout => \inst11|s_counter[9]~51\);

-- Location: FF_X81_Y18_N21
\inst11|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[9]~50_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(9));

-- Location: LCCOMB_X81_Y18_N22
\inst11|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[10]~52_combout\ = (\inst11|s_counter\(10) & (\inst11|s_counter[9]~51\ $ (GND))) # (!\inst11|s_counter\(10) & (!\inst11|s_counter[9]~51\ & VCC))
-- \inst11|s_counter[10]~53\ = CARRY((\inst11|s_counter\(10) & !\inst11|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(10),
	datad => VCC,
	cin => \inst11|s_counter[9]~51\,
	combout => \inst11|s_counter[10]~52_combout\,
	cout => \inst11|s_counter[10]~53\);

-- Location: FF_X81_Y18_N23
\inst11|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[10]~52_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(10));

-- Location: LCCOMB_X81_Y18_N24
\inst11|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[11]~54_combout\ = (\inst11|s_counter\(11) & (!\inst11|s_counter[10]~53\)) # (!\inst11|s_counter\(11) & ((\inst11|s_counter[10]~53\) # (GND)))
-- \inst11|s_counter[11]~55\ = CARRY((!\inst11|s_counter[10]~53\) # (!\inst11|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(11),
	datad => VCC,
	cin => \inst11|s_counter[10]~53\,
	combout => \inst11|s_counter[11]~54_combout\,
	cout => \inst11|s_counter[11]~55\);

-- Location: FF_X81_Y18_N25
\inst11|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[11]~54_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(11));

-- Location: LCCOMB_X81_Y18_N26
\inst11|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[12]~56_combout\ = (\inst11|s_counter\(12) & (\inst11|s_counter[11]~55\ $ (GND))) # (!\inst11|s_counter\(12) & (!\inst11|s_counter[11]~55\ & VCC))
-- \inst11|s_counter[12]~57\ = CARRY((\inst11|s_counter\(12) & !\inst11|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(12),
	datad => VCC,
	cin => \inst11|s_counter[11]~55\,
	combout => \inst11|s_counter[12]~56_combout\,
	cout => \inst11|s_counter[12]~57\);

-- Location: FF_X81_Y18_N27
\inst11|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[12]~56_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(12));

-- Location: LCCOMB_X81_Y18_N28
\inst11|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[13]~58_combout\ = (\inst11|s_counter\(13) & (!\inst11|s_counter[12]~57\)) # (!\inst11|s_counter\(13) & ((\inst11|s_counter[12]~57\) # (GND)))
-- \inst11|s_counter[13]~59\ = CARRY((!\inst11|s_counter[12]~57\) # (!\inst11|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(13),
	datad => VCC,
	cin => \inst11|s_counter[12]~57\,
	combout => \inst11|s_counter[13]~58_combout\,
	cout => \inst11|s_counter[13]~59\);

-- Location: FF_X81_Y18_N29
\inst11|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[13]~58_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(13));

-- Location: LCCOMB_X81_Y18_N30
\inst11|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[14]~60_combout\ = (\inst11|s_counter\(14) & (\inst11|s_counter[13]~59\ $ (GND))) # (!\inst11|s_counter\(14) & (!\inst11|s_counter[13]~59\ & VCC))
-- \inst11|s_counter[14]~61\ = CARRY((\inst11|s_counter\(14) & !\inst11|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(14),
	datad => VCC,
	cin => \inst11|s_counter[13]~59\,
	combout => \inst11|s_counter[14]~60_combout\,
	cout => \inst11|s_counter[14]~61\);

-- Location: FF_X81_Y18_N31
\inst11|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[14]~60_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(14));

-- Location: LCCOMB_X81_Y17_N0
\inst11|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[15]~62_combout\ = (\inst11|s_counter\(15) & (!\inst11|s_counter[14]~61\)) # (!\inst11|s_counter\(15) & ((\inst11|s_counter[14]~61\) # (GND)))
-- \inst11|s_counter[15]~63\ = CARRY((!\inst11|s_counter[14]~61\) # (!\inst11|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(15),
	datad => VCC,
	cin => \inst11|s_counter[14]~61\,
	combout => \inst11|s_counter[15]~62_combout\,
	cout => \inst11|s_counter[15]~63\);

-- Location: FF_X81_Y17_N1
\inst11|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[15]~62_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(15));

-- Location: LCCOMB_X81_Y17_N2
\inst11|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[16]~64_combout\ = (\inst11|s_counter\(16) & (\inst11|s_counter[15]~63\ $ (GND))) # (!\inst11|s_counter\(16) & (!\inst11|s_counter[15]~63\ & VCC))
-- \inst11|s_counter[16]~65\ = CARRY((\inst11|s_counter\(16) & !\inst11|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(16),
	datad => VCC,
	cin => \inst11|s_counter[15]~63\,
	combout => \inst11|s_counter[16]~64_combout\,
	cout => \inst11|s_counter[16]~65\);

-- Location: FF_X81_Y17_N3
\inst11|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[16]~64_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(16));

-- Location: LCCOMB_X81_Y17_N4
\inst11|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[17]~66_combout\ = (\inst11|s_counter\(17) & (!\inst11|s_counter[16]~65\)) # (!\inst11|s_counter\(17) & ((\inst11|s_counter[16]~65\) # (GND)))
-- \inst11|s_counter[17]~67\ = CARRY((!\inst11|s_counter[16]~65\) # (!\inst11|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(17),
	datad => VCC,
	cin => \inst11|s_counter[16]~65\,
	combout => \inst11|s_counter[17]~66_combout\,
	cout => \inst11|s_counter[17]~67\);

-- Location: FF_X81_Y17_N5
\inst11|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[17]~66_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(17));

-- Location: LCCOMB_X81_Y17_N6
\inst11|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[18]~68_combout\ = (\inst11|s_counter\(18) & (\inst11|s_counter[17]~67\ $ (GND))) # (!\inst11|s_counter\(18) & (!\inst11|s_counter[17]~67\ & VCC))
-- \inst11|s_counter[18]~69\ = CARRY((\inst11|s_counter\(18) & !\inst11|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(18),
	datad => VCC,
	cin => \inst11|s_counter[17]~67\,
	combout => \inst11|s_counter[18]~68_combout\,
	cout => \inst11|s_counter[18]~69\);

-- Location: FF_X81_Y17_N7
\inst11|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[18]~68_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(18));

-- Location: LCCOMB_X81_Y17_N8
\inst11|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[19]~70_combout\ = (\inst11|s_counter\(19) & (!\inst11|s_counter[18]~69\)) # (!\inst11|s_counter\(19) & ((\inst11|s_counter[18]~69\) # (GND)))
-- \inst11|s_counter[19]~71\ = CARRY((!\inst11|s_counter[18]~69\) # (!\inst11|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(19),
	datad => VCC,
	cin => \inst11|s_counter[18]~69\,
	combout => \inst11|s_counter[19]~70_combout\,
	cout => \inst11|s_counter[19]~71\);

-- Location: FF_X81_Y17_N9
\inst11|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[19]~70_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(19));

-- Location: LCCOMB_X80_Y17_N26
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (\inst11|s_counter\(16)) # (((\inst11|s_counter\(18)) # (!\inst11|s_counter\(17))) # (!\inst11|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(16),
	datab => \inst11|s_counter\(19),
	datac => \inst11|s_counter\(18),
	datad => \inst11|s_counter\(17),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y17_N10
\inst11|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[20]~72_combout\ = (\inst11|s_counter\(20) & (\inst11|s_counter[19]~71\ $ (GND))) # (!\inst11|s_counter\(20) & (!\inst11|s_counter[19]~71\ & VCC))
-- \inst11|s_counter[20]~73\ = CARRY((\inst11|s_counter\(20) & !\inst11|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(20),
	datad => VCC,
	cin => \inst11|s_counter[19]~71\,
	combout => \inst11|s_counter[20]~72_combout\,
	cout => \inst11|s_counter[20]~73\);

-- Location: FF_X81_Y17_N11
\inst11|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[20]~72_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(20));

-- Location: LCCOMB_X81_Y17_N12
\inst11|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[21]~74_combout\ = (\inst11|s_counter\(21) & (!\inst11|s_counter[20]~73\)) # (!\inst11|s_counter\(21) & ((\inst11|s_counter[20]~73\) # (GND)))
-- \inst11|s_counter[21]~75\ = CARRY((!\inst11|s_counter[20]~73\) # (!\inst11|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(21),
	datad => VCC,
	cin => \inst11|s_counter[20]~73\,
	combout => \inst11|s_counter[21]~74_combout\,
	cout => \inst11|s_counter[21]~75\);

-- Location: FF_X81_Y17_N13
\inst11|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[21]~74_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(21));

-- Location: LCCOMB_X81_Y17_N14
\inst11|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[22]~76_combout\ = (\inst11|s_counter\(22) & (\inst11|s_counter[21]~75\ $ (GND))) # (!\inst11|s_counter\(22) & (!\inst11|s_counter[21]~75\ & VCC))
-- \inst11|s_counter[22]~77\ = CARRY((\inst11|s_counter\(22) & !\inst11|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(22),
	datad => VCC,
	cin => \inst11|s_counter[21]~75\,
	combout => \inst11|s_counter[22]~76_combout\,
	cout => \inst11|s_counter[22]~77\);

-- Location: FF_X81_Y17_N15
\inst11|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[22]~76_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(22));

-- Location: LCCOMB_X81_Y17_N16
\inst11|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[23]~78_combout\ = (\inst11|s_counter\(23) & (!\inst11|s_counter[22]~77\)) # (!\inst11|s_counter\(23) & ((\inst11|s_counter[22]~77\) # (GND)))
-- \inst11|s_counter[23]~79\ = CARRY((!\inst11|s_counter[22]~77\) # (!\inst11|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(23),
	datad => VCC,
	cin => \inst11|s_counter[22]~77\,
	combout => \inst11|s_counter[23]~78_combout\,
	cout => \inst11|s_counter[23]~79\);

-- Location: FF_X81_Y17_N17
\inst11|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[23]~78_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(23));

-- Location: LCCOMB_X80_Y17_N28
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (((!\inst11|s_counter\(22)) # (!\inst11|s_counter\(20))) # (!\inst11|s_counter\(21))) # (!\inst11|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(23),
	datab => \inst11|s_counter\(21),
	datac => \inst11|s_counter\(20),
	datad => \inst11|s_counter\(22),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y17_N18
\inst11|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[24]~80_combout\ = (\inst11|s_counter\(24) & (\inst11|s_counter[23]~79\ $ (GND))) # (!\inst11|s_counter\(24) & (!\inst11|s_counter[23]~79\ & VCC))
-- \inst11|s_counter[24]~81\ = CARRY((\inst11|s_counter\(24) & !\inst11|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(24),
	datad => VCC,
	cin => \inst11|s_counter[23]~79\,
	combout => \inst11|s_counter[24]~80_combout\,
	cout => \inst11|s_counter[24]~81\);

-- Location: FF_X81_Y17_N19
\inst11|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[24]~80_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(24));

-- Location: LCCOMB_X81_Y17_N20
\inst11|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[25]~82_combout\ = (\inst11|s_counter\(25) & (!\inst11|s_counter[24]~81\)) # (!\inst11|s_counter\(25) & ((\inst11|s_counter[24]~81\) # (GND)))
-- \inst11|s_counter[25]~83\ = CARRY((!\inst11|s_counter[24]~81\) # (!\inst11|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(25),
	datad => VCC,
	cin => \inst11|s_counter[24]~81\,
	combout => \inst11|s_counter[25]~82_combout\,
	cout => \inst11|s_counter[25]~83\);

-- Location: FF_X81_Y17_N21
\inst11|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[25]~82_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(25));

-- Location: LCCOMB_X81_Y17_N22
\inst11|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[26]~84_combout\ = (\inst11|s_counter\(26) & (\inst11|s_counter[25]~83\ $ (GND))) # (!\inst11|s_counter\(26) & (!\inst11|s_counter[25]~83\ & VCC))
-- \inst11|s_counter[26]~85\ = CARRY((\inst11|s_counter\(26) & !\inst11|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(26),
	datad => VCC,
	cin => \inst11|s_counter[25]~83\,
	combout => \inst11|s_counter[26]~84_combout\,
	cout => \inst11|s_counter[26]~85\);

-- Location: FF_X81_Y17_N23
\inst11|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[26]~84_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(26));

-- Location: LCCOMB_X81_Y17_N24
\inst11|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[27]~86_combout\ = (\inst11|s_counter\(27) & (!\inst11|s_counter[26]~85\)) # (!\inst11|s_counter\(27) & ((\inst11|s_counter[26]~85\) # (GND)))
-- \inst11|s_counter[27]~87\ = CARRY((!\inst11|s_counter[26]~85\) # (!\inst11|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(27),
	datad => VCC,
	cin => \inst11|s_counter[26]~85\,
	combout => \inst11|s_counter[27]~86_combout\,
	cout => \inst11|s_counter[27]~87\);

-- Location: FF_X81_Y17_N25
\inst11|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[27]~86_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(27));

-- Location: LCCOMB_X81_Y17_N26
\inst11|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[28]~88_combout\ = (\inst11|s_counter\(28) & (\inst11|s_counter[27]~87\ $ (GND))) # (!\inst11|s_counter\(28) & (!\inst11|s_counter[27]~87\ & VCC))
-- \inst11|s_counter[28]~89\ = CARRY((\inst11|s_counter\(28) & !\inst11|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(28),
	datad => VCC,
	cin => \inst11|s_counter[27]~87\,
	combout => \inst11|s_counter[28]~88_combout\,
	cout => \inst11|s_counter[28]~89\);

-- Location: FF_X81_Y17_N27
\inst11|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[28]~88_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(28));

-- Location: LCCOMB_X81_Y17_N28
\inst11|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[29]~90_combout\ = (\inst11|s_counter\(29) & (!\inst11|s_counter[28]~89\)) # (!\inst11|s_counter\(29) & ((\inst11|s_counter[28]~89\) # (GND)))
-- \inst11|s_counter[29]~91\ = CARRY((!\inst11|s_counter[28]~89\) # (!\inst11|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|s_counter\(29),
	datad => VCC,
	cin => \inst11|s_counter[28]~89\,
	combout => \inst11|s_counter[29]~90_combout\,
	cout => \inst11|s_counter[29]~91\);

-- Location: FF_X81_Y17_N29
\inst11|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[29]~90_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(29));

-- Location: LCCOMB_X81_Y17_N30
\inst11|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[30]~92_combout\ = \inst11|s_counter\(30) $ (!\inst11|s_counter[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(30),
	cin => \inst11|s_counter[29]~91\,
	combout => \inst11|s_counter[30]~92_combout\);

-- Location: FF_X81_Y17_N31
\inst11|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[30]~92_combout\,
	sclr => \inst11|s_counter[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(30));

-- Location: LCCOMB_X80_Y17_N30
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = ((\inst11|s_counter\(26)) # ((\inst11|s_counter\(27)) # (\inst11|s_counter\(24)))) # (!\inst11|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(25),
	datab => \inst11|s_counter\(26),
	datac => \inst11|s_counter\(27),
	datad => \inst11|s_counter\(24),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X80_Y17_N4
\inst11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~8_combout\ = (\inst11|s_counter\(30)) # ((\inst11|s_counter\(29)) # ((\inst11|Equal0~7_combout\) # (\inst11|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(30),
	datab => \inst11|s_counter\(29),
	datac => \inst11|Equal0~7_combout\,
	datad => \inst11|s_counter\(28),
	combout => \inst11|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y18_N4
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (((!\inst11|s_counter\(0)) # (!\inst11|s_counter\(1))) # (!\inst11|s_counter\(3))) # (!\inst11|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(2),
	datab => \inst11|s_counter\(3),
	datac => \inst11|s_counter\(1),
	datad => \inst11|s_counter\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y17_N2
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (((!\inst11|s_counter\(12)) # (!\inst11|s_counter\(15))) # (!\inst11|s_counter\(14))) # (!\inst11|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(13),
	datab => \inst11|s_counter\(14),
	datac => \inst11|s_counter\(15),
	datad => \inst11|s_counter\(12),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X80_Y18_N18
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (((\inst11|s_counter\(7)) # (!\inst11|s_counter\(6))) # (!\inst11|s_counter\(5))) # (!\inst11|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(4),
	datab => \inst11|s_counter\(5),
	datac => \inst11|s_counter\(6),
	datad => \inst11|s_counter\(7),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y18_N0
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (\inst11|s_counter\(10)) # ((\inst11|s_counter\(8)) # ((\inst11|s_counter\(9)) # (\inst11|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(10),
	datab => \inst11|s_counter\(8),
	datac => \inst11|s_counter\(9),
	datad => \inst11|s_counter\(11),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y17_N16
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~0_combout\) # ((\inst11|Equal0~3_combout\) # ((\inst11|Equal0~1_combout\) # (\inst11|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|Equal0~3_combout\,
	datac => \inst11|Equal0~1_combout\,
	datad => \inst11|Equal0~2_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X80_Y17_N10
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

-- Location: LCCOMB_X80_Y17_N12
\inst11|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pulse~0_combout\ = (\inst25|pState.Init~q\ & !\inst11|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|pulse~0_combout\);

-- Location: FF_X80_Y17_N13
\inst11|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pulse~q\);

-- Location: LCCOMB_X75_Y14_N0
\inst5|s_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[0]~34_combout\ = \inst5|s_count\(0) $ (VCC)
-- \inst5|s_count[0]~35\ = CARRY(\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(0),
	datad => VCC,
	combout => \inst5|s_count[0]~34_combout\,
	cout => \inst5|s_count[0]~35\);

-- Location: LCCOMB_X75_Y17_N24
\inst25|pState.Init~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState.Init~_wirecell_combout\ = !\inst25|pState.Init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.Init~q\,
	combout => \inst25|pState.Init~_wirecell_combout\);

-- Location: LCCOMB_X75_Y14_N2
\inst5|s_count[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[1]~36_combout\ = (\inst5|s_count\(1) & (!\inst5|s_count[0]~35\)) # (!\inst5|s_count\(1) & ((\inst5|s_count[0]~35\) # (GND)))
-- \inst5|s_count[1]~37\ = CARRY((!\inst5|s_count[0]~35\) # (!\inst5|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datad => VCC,
	cin => \inst5|s_count[0]~35\,
	combout => \inst5|s_count[1]~36_combout\,
	cout => \inst5|s_count[1]~37\);

-- Location: LCCOMB_X75_Y14_N4
\inst5|s_count[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[2]~40_combout\ = (\inst5|s_count\(2) & (\inst5|s_count[1]~37\ $ (GND))) # (!\inst5|s_count\(2) & (!\inst5|s_count[1]~37\ & VCC))
-- \inst5|s_count[2]~41\ = CARRY((\inst5|s_count\(2) & !\inst5|s_count[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(2),
	datad => VCC,
	cin => \inst5|s_count[1]~37\,
	combout => \inst5|s_count[2]~40_combout\,
	cout => \inst5|s_count[2]~41\);

-- Location: LCCOMB_X75_Y14_N6
\inst5|s_count[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[3]~42_combout\ = (\inst5|s_count\(3) & (!\inst5|s_count[2]~41\)) # (!\inst5|s_count\(3) & ((\inst5|s_count[2]~41\) # (GND)))
-- \inst5|s_count[3]~43\ = CARRY((!\inst5|s_count[2]~41\) # (!\inst5|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datad => VCC,
	cin => \inst5|s_count[2]~41\,
	combout => \inst5|s_count[3]~42_combout\,
	cout => \inst5|s_count[3]~43\);

-- Location: LCCOMB_X76_Y13_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X75_Y14_N7
\inst5|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[3]~42_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(3));

-- Location: LCCOMB_X75_Y14_N8
\inst5|s_count[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~44_combout\ = (\inst5|s_count\(4) & (\inst5|s_count[3]~43\ $ (GND))) # (!\inst5|s_count\(4) & (!\inst5|s_count[3]~43\ & VCC))
-- \inst5|s_count[4]~45\ = CARRY((\inst5|s_count\(4) & !\inst5|s_count[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(4),
	datad => VCC,
	cin => \inst5|s_count[3]~43\,
	combout => \inst5|s_count[4]~44_combout\,
	cout => \inst5|s_count[4]~45\);

-- Location: FF_X75_Y14_N9
\inst5|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[4]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(4));

-- Location: LCCOMB_X75_Y14_N10
\inst5|s_count[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[5]~46_combout\ = (\inst5|s_count\(5) & (!\inst5|s_count[4]~45\)) # (!\inst5|s_count\(5) & ((\inst5|s_count[4]~45\) # (GND)))
-- \inst5|s_count[5]~47\ = CARRY((!\inst5|s_count[4]~45\) # (!\inst5|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datad => VCC,
	cin => \inst5|s_count[4]~45\,
	combout => \inst5|s_count[5]~46_combout\,
	cout => \inst5|s_count[5]~47\);

-- Location: FF_X75_Y14_N11
\inst5|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[5]~46_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(5));

-- Location: LCCOMB_X75_Y14_N12
\inst5|s_count[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[6]~48_combout\ = (\inst5|s_count\(6) & (\inst5|s_count[5]~47\ $ (GND))) # (!\inst5|s_count\(6) & (!\inst5|s_count[5]~47\ & VCC))
-- \inst5|s_count[6]~49\ = CARRY((\inst5|s_count\(6) & !\inst5|s_count[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datad => VCC,
	cin => \inst5|s_count[5]~47\,
	combout => \inst5|s_count[6]~48_combout\,
	cout => \inst5|s_count[6]~49\);

-- Location: FF_X75_Y14_N13
\inst5|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[6]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(6));

-- Location: LCCOMB_X75_Y14_N14
\inst5|s_count[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[7]~50_combout\ = (\inst5|s_count\(7) & (!\inst5|s_count[6]~49\)) # (!\inst5|s_count\(7) & ((\inst5|s_count[6]~49\) # (GND)))
-- \inst5|s_count[7]~51\ = CARRY((!\inst5|s_count[6]~49\) # (!\inst5|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(7),
	datad => VCC,
	cin => \inst5|s_count[6]~49\,
	combout => \inst5|s_count[7]~50_combout\,
	cout => \inst5|s_count[7]~51\);

-- Location: FF_X75_Y14_N15
\inst5|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[7]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(7));

-- Location: LCCOMB_X75_Y14_N16
\inst5|s_count[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[8]~52_combout\ = (\inst5|s_count\(8) & (\inst5|s_count[7]~51\ $ (GND))) # (!\inst5|s_count\(8) & (!\inst5|s_count[7]~51\ & VCC))
-- \inst5|s_count[8]~53\ = CARRY((\inst5|s_count\(8) & !\inst5|s_count[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(8),
	datad => VCC,
	cin => \inst5|s_count[7]~51\,
	combout => \inst5|s_count[8]~52_combout\,
	cout => \inst5|s_count[8]~53\);

-- Location: FF_X75_Y14_N17
\inst5|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[8]~52_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(8));

-- Location: LCCOMB_X75_Y14_N18
\inst5|s_count[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[9]~54_combout\ = (\inst5|s_count\(9) & (!\inst5|s_count[8]~53\)) # (!\inst5|s_count\(9) & ((\inst5|s_count[8]~53\) # (GND)))
-- \inst5|s_count[9]~55\ = CARRY((!\inst5|s_count[8]~53\) # (!\inst5|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(9),
	datad => VCC,
	cin => \inst5|s_count[8]~53\,
	combout => \inst5|s_count[9]~54_combout\,
	cout => \inst5|s_count[9]~55\);

-- Location: FF_X75_Y14_N19
\inst5|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[9]~54_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(9));

-- Location: LCCOMB_X75_Y14_N20
\inst5|s_count[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[10]~56_combout\ = (\inst5|s_count\(10) & (\inst5|s_count[9]~55\ $ (GND))) # (!\inst5|s_count\(10) & (!\inst5|s_count[9]~55\ & VCC))
-- \inst5|s_count[10]~57\ = CARRY((\inst5|s_count\(10) & !\inst5|s_count[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(10),
	datad => VCC,
	cin => \inst5|s_count[9]~55\,
	combout => \inst5|s_count[10]~56_combout\,
	cout => \inst5|s_count[10]~57\);

-- Location: FF_X75_Y14_N21
\inst5|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[10]~56_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(10));

-- Location: LCCOMB_X75_Y14_N22
\inst5|s_count[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[11]~58_combout\ = (\inst5|s_count\(11) & (!\inst5|s_count[10]~57\)) # (!\inst5|s_count\(11) & ((\inst5|s_count[10]~57\) # (GND)))
-- \inst5|s_count[11]~59\ = CARRY((!\inst5|s_count[10]~57\) # (!\inst5|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datad => VCC,
	cin => \inst5|s_count[10]~57\,
	combout => \inst5|s_count[11]~58_combout\,
	cout => \inst5|s_count[11]~59\);

-- Location: FF_X75_Y14_N23
\inst5|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[11]~58_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(11));

-- Location: LCCOMB_X75_Y14_N24
\inst5|s_count[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[12]~60_combout\ = (\inst5|s_count\(12) & (\inst5|s_count[11]~59\ $ (GND))) # (!\inst5|s_count\(12) & (!\inst5|s_count[11]~59\ & VCC))
-- \inst5|s_count[12]~61\ = CARRY((\inst5|s_count\(12) & !\inst5|s_count[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(12),
	datad => VCC,
	cin => \inst5|s_count[11]~59\,
	combout => \inst5|s_count[12]~60_combout\,
	cout => \inst5|s_count[12]~61\);

-- Location: FF_X75_Y14_N25
\inst5|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[12]~60_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(12));

-- Location: LCCOMB_X75_Y14_N26
\inst5|s_count[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[13]~62_combout\ = (\inst5|s_count\(13) & (!\inst5|s_count[12]~61\)) # (!\inst5|s_count\(13) & ((\inst5|s_count[12]~61\) # (GND)))
-- \inst5|s_count[13]~63\ = CARRY((!\inst5|s_count[12]~61\) # (!\inst5|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(13),
	datad => VCC,
	cin => \inst5|s_count[12]~61\,
	combout => \inst5|s_count[13]~62_combout\,
	cout => \inst5|s_count[13]~63\);

-- Location: FF_X75_Y14_N27
\inst5|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[13]~62_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(13));

-- Location: LCCOMB_X75_Y14_N28
\inst5|s_count[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[14]~64_combout\ = (\inst5|s_count\(14) & (\inst5|s_count[13]~63\ $ (GND))) # (!\inst5|s_count\(14) & (!\inst5|s_count[13]~63\ & VCC))
-- \inst5|s_count[14]~65\ = CARRY((\inst5|s_count\(14) & !\inst5|s_count[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(14),
	datad => VCC,
	cin => \inst5|s_count[13]~63\,
	combout => \inst5|s_count[14]~64_combout\,
	cout => \inst5|s_count[14]~65\);

-- Location: FF_X75_Y14_N29
\inst5|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[14]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(14));

-- Location: LCCOMB_X75_Y14_N30
\inst5|s_count[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[15]~66_combout\ = (\inst5|s_count\(15) & (!\inst5|s_count[14]~65\)) # (!\inst5|s_count\(15) & ((\inst5|s_count[14]~65\) # (GND)))
-- \inst5|s_count[15]~67\ = CARRY((!\inst5|s_count[14]~65\) # (!\inst5|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(15),
	datad => VCC,
	cin => \inst5|s_count[14]~65\,
	combout => \inst5|s_count[15]~66_combout\,
	cout => \inst5|s_count[15]~67\);

-- Location: FF_X75_Y14_N31
\inst5|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[15]~66_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(15));

-- Location: LCCOMB_X75_Y13_N0
\inst5|s_count[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[16]~68_combout\ = (\inst5|s_count\(16) & (\inst5|s_count[15]~67\ $ (GND))) # (!\inst5|s_count\(16) & (!\inst5|s_count[15]~67\ & VCC))
-- \inst5|s_count[16]~69\ = CARRY((\inst5|s_count\(16) & !\inst5|s_count[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(16),
	datad => VCC,
	cin => \inst5|s_count[15]~67\,
	combout => \inst5|s_count[16]~68_combout\,
	cout => \inst5|s_count[16]~69\);

-- Location: FF_X75_Y13_N1
\inst5|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[16]~68_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(16));

-- Location: LCCOMB_X75_Y13_N2
\inst5|s_count[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[17]~70_combout\ = (\inst5|s_count\(17) & (!\inst5|s_count[16]~69\)) # (!\inst5|s_count\(17) & ((\inst5|s_count[16]~69\) # (GND)))
-- \inst5|s_count[17]~71\ = CARRY((!\inst5|s_count[16]~69\) # (!\inst5|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(17),
	datad => VCC,
	cin => \inst5|s_count[16]~69\,
	combout => \inst5|s_count[17]~70_combout\,
	cout => \inst5|s_count[17]~71\);

-- Location: FF_X75_Y13_N3
\inst5|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[17]~70_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(17));

-- Location: LCCOMB_X75_Y13_N4
\inst5|s_count[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[18]~72_combout\ = (\inst5|s_count\(18) & (\inst5|s_count[17]~71\ $ (GND))) # (!\inst5|s_count\(18) & (!\inst5|s_count[17]~71\ & VCC))
-- \inst5|s_count[18]~73\ = CARRY((\inst5|s_count\(18) & !\inst5|s_count[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(18),
	datad => VCC,
	cin => \inst5|s_count[17]~71\,
	combout => \inst5|s_count[18]~72_combout\,
	cout => \inst5|s_count[18]~73\);

-- Location: FF_X75_Y13_N5
\inst5|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[18]~72_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(18));

-- Location: LCCOMB_X75_Y13_N6
\inst5|s_count[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[19]~74_combout\ = (\inst5|s_count\(19) & (!\inst5|s_count[18]~73\)) # (!\inst5|s_count\(19) & ((\inst5|s_count[18]~73\) # (GND)))
-- \inst5|s_count[19]~75\ = CARRY((!\inst5|s_count[18]~73\) # (!\inst5|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(19),
	datad => VCC,
	cin => \inst5|s_count[18]~73\,
	combout => \inst5|s_count[19]~74_combout\,
	cout => \inst5|s_count[19]~75\);

-- Location: FF_X75_Y13_N7
\inst5|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[19]~74_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(19));

-- Location: LCCOMB_X75_Y13_N8
\inst5|s_count[20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[20]~76_combout\ = (\inst5|s_count\(20) & (\inst5|s_count[19]~75\ $ (GND))) # (!\inst5|s_count\(20) & (!\inst5|s_count[19]~75\ & VCC))
-- \inst5|s_count[20]~77\ = CARRY((\inst5|s_count\(20) & !\inst5|s_count[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(20),
	datad => VCC,
	cin => \inst5|s_count[19]~75\,
	combout => \inst5|s_count[20]~76_combout\,
	cout => \inst5|s_count[20]~77\);

-- Location: FF_X75_Y13_N9
\inst5|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[20]~76_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(20));

-- Location: LCCOMB_X75_Y13_N10
\inst5|s_count[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[21]~78_combout\ = (\inst5|s_count\(21) & (!\inst5|s_count[20]~77\)) # (!\inst5|s_count\(21) & ((\inst5|s_count[20]~77\) # (GND)))
-- \inst5|s_count[21]~79\ = CARRY((!\inst5|s_count[20]~77\) # (!\inst5|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(21),
	datad => VCC,
	cin => \inst5|s_count[20]~77\,
	combout => \inst5|s_count[21]~78_combout\,
	cout => \inst5|s_count[21]~79\);

-- Location: FF_X75_Y13_N11
\inst5|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[21]~78_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(21));

-- Location: LCCOMB_X75_Y13_N12
\inst5|s_count[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[22]~80_combout\ = (\inst5|s_count\(22) & (\inst5|s_count[21]~79\ $ (GND))) # (!\inst5|s_count\(22) & (!\inst5|s_count[21]~79\ & VCC))
-- \inst5|s_count[22]~81\ = CARRY((\inst5|s_count\(22) & !\inst5|s_count[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(22),
	datad => VCC,
	cin => \inst5|s_count[21]~79\,
	combout => \inst5|s_count[22]~80_combout\,
	cout => \inst5|s_count[22]~81\);

-- Location: FF_X75_Y13_N13
\inst5|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[22]~80_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(22));

-- Location: LCCOMB_X75_Y13_N14
\inst5|s_count[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[23]~82_combout\ = (\inst5|s_count\(23) & (!\inst5|s_count[22]~81\)) # (!\inst5|s_count\(23) & ((\inst5|s_count[22]~81\) # (GND)))
-- \inst5|s_count[23]~83\ = CARRY((!\inst5|s_count[22]~81\) # (!\inst5|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(23),
	datad => VCC,
	cin => \inst5|s_count[22]~81\,
	combout => \inst5|s_count[23]~82_combout\,
	cout => \inst5|s_count[23]~83\);

-- Location: FF_X75_Y13_N15
\inst5|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[23]~82_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(23));

-- Location: LCCOMB_X75_Y13_N16
\inst5|s_count[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[24]~84_combout\ = (\inst5|s_count\(24) & (\inst5|s_count[23]~83\ $ (GND))) # (!\inst5|s_count\(24) & (!\inst5|s_count[23]~83\ & VCC))
-- \inst5|s_count[24]~85\ = CARRY((\inst5|s_count\(24) & !\inst5|s_count[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(24),
	datad => VCC,
	cin => \inst5|s_count[23]~83\,
	combout => \inst5|s_count[24]~84_combout\,
	cout => \inst5|s_count[24]~85\);

-- Location: FF_X75_Y13_N17
\inst5|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[24]~84_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(24));

-- Location: LCCOMB_X75_Y13_N18
\inst5|s_count[25]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[25]~86_combout\ = (\inst5|s_count\(25) & (!\inst5|s_count[24]~85\)) # (!\inst5|s_count\(25) & ((\inst5|s_count[24]~85\) # (GND)))
-- \inst5|s_count[25]~87\ = CARRY((!\inst5|s_count[24]~85\) # (!\inst5|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(25),
	datad => VCC,
	cin => \inst5|s_count[24]~85\,
	combout => \inst5|s_count[25]~86_combout\,
	cout => \inst5|s_count[25]~87\);

-- Location: FF_X75_Y13_N19
\inst5|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[25]~86_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(25));

-- Location: LCCOMB_X76_Y14_N10
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|s_count\(23) & (!\inst5|s_count\(25) & (!\inst5|s_count\(24) & !\inst5|s_count\(22))))

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
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y14_N16
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|s_count\(18) & (!\inst5|s_count\(19) & (!\inst5|s_count\(20) & !\inst5|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(18),
	datab => \inst5|s_count\(19),
	datac => \inst5|s_count\(20),
	datad => \inst5|s_count\(21),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y13_N20
\inst5|s_count[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[26]~88_combout\ = (\inst5|s_count\(26) & (\inst5|s_count[25]~87\ $ (GND))) # (!\inst5|s_count\(26) & (!\inst5|s_count[25]~87\ & VCC))
-- \inst5|s_count[26]~89\ = CARRY((\inst5|s_count\(26) & !\inst5|s_count[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(26),
	datad => VCC,
	cin => \inst5|s_count[25]~87\,
	combout => \inst5|s_count[26]~88_combout\,
	cout => \inst5|s_count[26]~89\);

-- Location: FF_X75_Y13_N21
\inst5|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[26]~88_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(26));

-- Location: LCCOMB_X75_Y13_N22
\inst5|s_count[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[27]~90_combout\ = (\inst5|s_count\(27) & (!\inst5|s_count[26]~89\)) # (!\inst5|s_count\(27) & ((\inst5|s_count[26]~89\) # (GND)))
-- \inst5|s_count[27]~91\ = CARRY((!\inst5|s_count[26]~89\) # (!\inst5|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(27),
	datad => VCC,
	cin => \inst5|s_count[26]~89\,
	combout => \inst5|s_count[27]~90_combout\,
	cout => \inst5|s_count[27]~91\);

-- Location: FF_X75_Y13_N23
\inst5|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[27]~90_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(27));

-- Location: LCCOMB_X75_Y13_N24
\inst5|s_count[28]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[28]~92_combout\ = (\inst5|s_count\(28) & (\inst5|s_count[27]~91\ $ (GND))) # (!\inst5|s_count\(28) & (!\inst5|s_count[27]~91\ & VCC))
-- \inst5|s_count[28]~93\ = CARRY((\inst5|s_count\(28) & !\inst5|s_count[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(28),
	datad => VCC,
	cin => \inst5|s_count[27]~91\,
	combout => \inst5|s_count[28]~92_combout\,
	cout => \inst5|s_count[28]~93\);

-- Location: FF_X75_Y13_N25
\inst5|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[28]~92_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(28));

-- Location: LCCOMB_X75_Y13_N26
\inst5|s_count[29]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[29]~94_combout\ = (\inst5|s_count\(29) & (!\inst5|s_count[28]~93\)) # (!\inst5|s_count\(29) & ((\inst5|s_count[28]~93\) # (GND)))
-- \inst5|s_count[29]~95\ = CARRY((!\inst5|s_count[28]~93\) # (!\inst5|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(29),
	datad => VCC,
	cin => \inst5|s_count[28]~93\,
	combout => \inst5|s_count[29]~94_combout\,
	cout => \inst5|s_count[29]~95\);

-- Location: FF_X75_Y13_N27
\inst5|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[29]~94_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(29));

-- Location: LCCOMB_X75_Y13_N28
\inst5|s_count[30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[30]~96_combout\ = (\inst5|s_count\(30) & (\inst5|s_count[29]~95\ $ (GND))) # (!\inst5|s_count\(30) & (!\inst5|s_count[29]~95\ & VCC))
-- \inst5|s_count[30]~97\ = CARRY((\inst5|s_count\(30) & !\inst5|s_count[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(30),
	datad => VCC,
	cin => \inst5|s_count[29]~95\,
	combout => \inst5|s_count[30]~96_combout\,
	cout => \inst5|s_count[30]~97\);

-- Location: FF_X75_Y13_N29
\inst5|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[30]~96_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(30));

-- Location: LCCOMB_X75_Y13_N30
\inst5|s_count[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[31]~98_combout\ = \inst5|s_count\(31) $ (\inst5|s_count[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(31),
	cin => \inst5|s_count[30]~97\,
	combout => \inst5|s_count[31]~98_combout\);

-- Location: FF_X75_Y13_N31
\inst5|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[31]~98_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(31));

-- Location: LCCOMB_X76_Y14_N24
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|s_count\(27) & (!\inst5|s_count\(26) & (!\inst5|s_count\(29) & !\inst5|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(27),
	datab => \inst5|s_count\(26),
	datac => \inst5|s_count\(29),
	datad => \inst5|s_count\(28),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y14_N14
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (!\inst5|s_count\(30) & (!\inst5|s_count\(31) & \inst5|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(30),
	datac => \inst5|s_count\(31),
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X76_Y14_N6
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|s_count\(13) & (!\inst5|s_count\(10) & (!\inst5|s_count\(12) & !\inst5|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(13),
	datab => \inst5|s_count\(10),
	datac => \inst5|s_count\(12),
	datad => \inst5|s_count\(11),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y14_N28
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|s_count\(8) & (!\inst5|s_count\(9) & (!\inst5|s_count\(0) & !\inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(8),
	datab => \inst5|s_count\(9),
	datac => \inst5|s_count\(0),
	datad => \inst5|s_count\(3),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y14_N8
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (!\inst5|s_count\(14) & (!\inst5|s_count\(15) & (!\inst5|s_count\(16) & !\inst5|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(14),
	datab => \inst5|s_count\(15),
	datac => \inst5|s_count\(16),
	datad => \inst5|s_count\(17),
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y14_N24
\inst23|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~2_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & (!\inst5|s_count\(5) & !\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(4),
	combout => \inst23|LessThan0~2_combout\);

-- Location: LCCOMB_X76_Y14_N18
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~4_combout\ & \inst23|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst23|LessThan0~2_combout\,
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X76_Y14_N20
\inst5|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (\inst5|Equal0~7_combout\ & (\inst5|Equal0~6_combout\ & (\inst5|Equal0~9_combout\ & \inst5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~7_combout\,
	datab => \inst5|Equal0~6_combout\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Equal0~5_combout\,
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X76_Y14_N2
\inst5|s_count[4]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~100_combout\ = ((!\inst5|s_count\(1) & (!\inst5|s_count\(2) & \inst5|Equal0~10_combout\))) # (!\inst25|pState.Timer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datab => \inst5|s_count\(1),
	datac => \inst5|s_count\(2),
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|s_count[4]~100_combout\);

-- Location: LCCOMB_X76_Y14_N4
\inst5|s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~39_combout\ = ((\inst11|pulse~q\ & ((\inst25|pState.TimeProcess~q\) # (!\inst5|s_count[4]~100_combout\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst11|pulse~q\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst5|s_count[4]~100_combout\,
	combout => \inst5|s_count[4]~39_combout\);

-- Location: FF_X75_Y14_N5
\inst5|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[2]~40_combout\,
	asdata => \inst25|pState.Init~_wirecell_combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(2));

-- Location: LCCOMB_X76_Y14_N22
\inst5|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~11_combout\ = (!\inst5|s_count\(1) & (!\inst5|s_count\(2) & \inst5|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|Equal0~11_combout\);

-- Location: LCCOMB_X76_Y14_N30
\inst5|s_count[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[4]~38_combout\ = ((\inst5|Equal0~11_combout\ & (!\inst25|pState.TimeProcess~q\)) # (!\inst5|Equal0~11_combout\ & ((\inst5|Equal1~2_combout\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst5|Equal0~11_combout\,
	datad => \inst5|Equal1~2_combout\,
	combout => \inst5|s_count[4]~38_combout\);

-- Location: FF_X75_Y14_N1
\inst5|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[0]~34_combout\,
	asdata => \inst25|pState.Init~_wirecell_combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(0));

-- Location: FF_X75_Y14_N3
\inst5|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count[1]~36_combout\,
	asdata => \inst25|pState.Init~_wirecell_combout\,
	sload => \inst5|s_count[4]~38_combout\,
	ena => \inst5|s_count[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(1));

-- Location: LCCOMB_X76_Y14_N12
\inst5|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal1~2_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(2) & \inst5|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datad => \inst5|Equal0~10_combout\,
	combout => \inst5|Equal1~2_combout\);

-- Location: LCCOMB_X76_Y14_N0
\inst5|s_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~0_combout\ = (\inst25|en_3~combout\ & ((\inst11|pulse~q\ & ((\inst5|Equal1~2_combout\))) # (!\inst11|pulse~q\ & (\inst5|s_result~q\)))) # (!\inst25|en_3~combout\ & (((\inst5|s_result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst11|pulse~q\,
	datac => \inst5|s_result~q\,
	datad => \inst5|Equal1~2_combout\,
	combout => \inst5|s_result~0_combout\);

-- Location: FF_X76_Y14_N1
\inst5|s_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_result~0_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_result~q\);

-- Location: LCCOMB_X75_Y19_N10
\inst25|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~13_combout\ = (!\inst25|pState.StartPrg~q\ & ((\inst25|pState.TimeProcess~q\ & (\inst5|s_result~q\)) # (!\inst25|pState.TimeProcess~q\ & ((\inst3|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst25|pState.StartPrg~q\,
	combout => \inst25|pState~13_combout\);

-- Location: LCCOMB_X74_Y19_N12
\inst25|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~14_combout\ = (\inst25|pState~12_combout\ & ((\inst25|pState~13_combout\) # (\inst25|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~13_combout\,
	datab => \inst25|pState~12_combout\,
	datac => \inst25|pState.StartPrg~q\,
	combout => \inst25|pState~14_combout\);

-- Location: LCCOMB_X74_Y19_N22
\inst25|pState.StartPrg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState.StartPrg~feeder_combout\ = \inst25|pState~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState~14_combout\,
	combout => \inst25|pState.StartPrg~feeder_combout\);

-- Location: FF_X74_Y19_N23
\inst25|pState.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState.StartPrg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.StartPrg~q\);

-- Location: LCCOMB_X75_Y21_N6
\iaaanst1|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector9~3_combout\ = (\inst25|pState.StartPrg~q\ & (\iaaanst1|Selector9~2_combout\ & ((\iaaanst1|s_currentState.TExtra~q\)))) # (!\inst25|pState.StartPrg~q\ & (((!\iaaanst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \iaaanst1|Selector9~2_combout\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|Selector9~3_combout\);

-- Location: LCCOMB_X74_Y21_N16
\iaaanst1|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~13_combout\ = (!\iaaanst1|Selector9~3_combout\ & \inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Selector9~3_combout\,
	datad => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_currentState~13_combout\);

-- Location: FF_X74_Y21_N17
\iaaanst1|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \iaaanst1|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TInit~q\);

-- Location: LCCOMB_X75_Y21_N16
\iaaanst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector10~0_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\ & (((!\iaaanst1|s_currentState.TInit~q\ & \inst25|pState.StartPrg~q\)) # (!\inst9|s_cntZero~q\))) # (!\iaaanst1|s_currentState.TAmmassar~q\ & (((!\iaaanst1|s_currentState.TInit~q\ & 
-- \inst25|pState.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \inst25|pState.StartPrg~q\,
	combout => \iaaanst1|Selector10~0_combout\);

-- Location: LCCOMB_X75_Y21_N30
\iaaanst1|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~10_combout\ = (\inst25|pState.Init~q\ & \iaaanst1|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datad => \iaaanst1|Selector10~0_combout\,
	combout => \iaaanst1|s_currentState~10_combout\);

-- Location: LCCOMB_X75_Y21_N26
\iaaanst1|s_currentState.TAmmassar~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState.TAmmassar~feeder_combout\ = \iaaanst1|s_currentState~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState~10_combout\,
	combout => \iaaanst1|s_currentState.TAmmassar~feeder_combout\);

-- Location: FF_X75_Y21_N27
\iaaanst1|s_currentState.TAmmassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState.TAmmassar~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TAmmassar~q\);

-- Location: LCCOMB_X77_Y21_N30
\iaaanst1|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~11_combout\ = (\inst25|pState.Init~q\ & ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TAmmassar~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TLevedar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \iaaanst1|s_currentState.TAmmassar~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_currentState~11_combout\);

-- Location: FF_X76_Y21_N27
\iaaanst1|s_currentState.TLevedar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \iaaanst1|s_currentState~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TLevedar~q\);

-- Location: LCCOMB_X75_Y21_N28
\inst9|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~15_combout\ = ((\iaaanst1|s_currentState.TAmmassar~q\ & \iaaanst1|s_currentState.TLevedar~q\)) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~15_combout\);

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

-- Location: LCCOMB_X75_Y19_N16
\inst|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut~0_combout\ = (\inst25|pState.Menu~q\ & (((\SW[0]~input_o\)))) # (!\inst25|pState.Menu~q\ & ((\inst25|pState.Timer~q\ & ((\SW[0]~input_o\))) # (!\inst25|pState.Timer~q\ & (\inst|dataOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Menu~q\,
	datab => \inst25|pState.Timer~q\,
	datac => \inst|dataOut~q\,
	datad => \SW[0]~input_o\,
	combout => \inst|dataOut~0_combout\);

-- Location: FF_X75_Y19_N17
\inst|dataOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|dataOut~0_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataOut~q\);

-- Location: LCCOMB_X76_Y21_N20
\iaaanst1|s_stateChanged~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~4_combout\ = (\iaaanst1|s_currentState.TFim~q\ & ((\iaaanst1|s_currentState.TLevedar~q\ $ (\iaaanst1|s_currentState.TAmmassar~q\)) # (!\iaaanst1|s_currentState.TCozer~q\))) # (!\iaaanst1|s_currentState.TFim~q\ & 
-- ((\iaaanst1|s_currentState.TCozer~q\) # (\iaaanst1|s_currentState.TLevedar~q\ $ (\iaaanst1|s_currentState.TAmmassar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TAmmassar~q\,
	combout => \iaaanst1|s_stateChanged~4_combout\);

-- Location: LCCOMB_X76_Y21_N22
\iaaanst1|s_stateChanged~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~5_combout\ = ((\iaaanst1|s_stateChanged~4_combout\ & \inst9|s_cntZero~q\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_stateChanged~4_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_stateChanged~5_combout\);

-- Location: LCCOMB_X76_Y21_N14
\iaaanst1|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~0_combout\ = \iaaanst1|s_currentState.TExtra~q\ $ (((\iaaanst1|s_currentState.TFim~q\ & \inst9|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_stateChanged~0_combout\);

-- Location: LCCOMB_X76_Y21_N8
\iaaanst1|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~1_combout\ = (\iaaanst1|s_stateChanged~0_combout\) # ((\iaaanst1|s_currentState.TInit~q\ & (\inst9|s_cntZero~q\ & \iaaanst1|s_currentState.TAmmassar~q\)) # (!\iaaanst1|s_currentState.TInit~q\ & 
-- ((!\iaaanst1|s_currentState.TAmmassar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TInit~q\,
	datac => \iaaanst1|s_stateChanged~0_combout\,
	datad => \iaaanst1|s_currentState.TAmmassar~q\,
	combout => \iaaanst1|s_stateChanged~1_combout\);

-- Location: LCCOMB_X76_Y21_N12
\iaaanst1|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~2_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\) # ((\iaaanst1|s_currentState.TFim~q\ & (\inst9|s_cntZero~q\ $ (\iaaanst1|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \iaaanst1|s_currentState.TAmmassar~q\,
	combout => \iaaanst1|s_stateChanged~2_combout\);

-- Location: LCCOMB_X76_Y21_N24
\iaaanst1|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~3_combout\ = (\inst25|pState.StartPrg~q\ & (\iaaanst1|s_stateChanged~1_combout\)) # (!\inst25|pState.StartPrg~q\ & (((\iaaanst1|s_stateChanged~2_combout\ & \inst9|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~1_combout\,
	datab => \iaaanst1|s_stateChanged~2_combout\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_stateChanged~3_combout\);

-- Location: LCCOMB_X76_Y21_N0
\iaaanst1|s_stateChanged~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~6_combout\ = (\iaaanst1|s_stateChanged~5_combout\) # ((\iaaanst1|s_stateChanged~3_combout\) # (\iaaanst1|Selector12~1_combout\ $ (\iaaanst1|s_currentState.TCozer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~5_combout\,
	datab => \iaaanst1|s_stateChanged~3_combout\,
	datac => \iaaanst1|Selector12~1_combout\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|s_stateChanged~6_combout\);

-- Location: LCCOMB_X76_Y21_N30
\iaaanst1|s_stateChanged~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~7_combout\ = (!\iaaanst1|s_stateChanged~6_combout\ & (\iaaanst1|Selector9~3_combout\ $ (\iaaanst1|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Selector9~3_combout\,
	datac => \iaaanst1|s_stateChanged~6_combout\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \iaaanst1|s_stateChanged~7_combout\);

-- Location: FF_X76_Y21_N31
\iaaanst1|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \iaaanst1|s_stateChanged~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_stateChanged~q\);

-- Location: LCCOMB_X76_Y21_N16
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = ((\iaaanst1|s_currentState.TLevedar~q\ & \inst9|s_cntZero~q\)) # (!\iaaanst1|s_stateChanged~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X75_Y21_N24
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = LCELL(((\inst8~0_combout\) # ((\iaaanst1|s_currentState.TAmmassar~q\ & \inst9|s_cntZero~q\))) # (!\iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \inst8~0_combout\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X74_Y21_N10
\iaaanst1|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr9~combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (!\iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \iaaanst1|WideOr9~combout\);

-- Location: LCCOMB_X74_Y21_N12
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst11|pulse~q\ & ((\inst25|pState.StartPrg~q\) # ((\inst9|s_cntZero~q\) # (\iaaanst1|WideOr9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \inst11|pulse~q\,
	datad => \iaaanst1|WideOr9~combout\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X73_Y21_N8
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = \inst9|s_count\(0) $ (VCC)
-- \inst9|Add0~1\ = CARRY(\inst9|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(0),
	datad => VCC,
	combout => \inst9|Add0~0_combout\,
	cout => \inst9|Add0~1\);

-- Location: LCCOMB_X75_Y21_N10
\inst9|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~0_combout\ = (\iaaanst1|s_currentState.TAmmassar~q\) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	combout => \inst9|s_count~0_combout\);

-- Location: LCCOMB_X74_Y21_N14
\inst9|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~1_combout\ = (\inst8~combout\ & (((\inst|dataOut~q\ & \inst9|s_count~0_combout\)))) # (!\inst8~combout\ & (\inst9|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst|dataOut~q\,
	datac => \inst8~combout\,
	datad => \inst9|s_count~0_combout\,
	combout => \inst9|s_count~1_combout\);

-- Location: LCCOMB_X74_Y21_N18
\inst9|s_count[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[4]~2_combout\ = ((\inst8~combout\) # ((\inst10~0_combout\ & !\inst9|Equal0~1_combout\))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst9|Equal0~1_combout\,
	datad => \inst8~combout\,
	combout => \inst9|s_count[4]~2_combout\);

-- Location: FF_X74_Y21_N15
\inst9|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~1_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(0));

-- Location: LCCOMB_X73_Y21_N10
\inst9|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|s_count\(1) & (\inst9|Add0~1\ & VCC)) # (!\inst9|s_count\(1) & (!\inst9|Add0~1\))
-- \inst9|Add0~3\ = CARRY((!\inst9|s_count\(1) & !\inst9|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(1),
	datad => VCC,
	cin => \inst9|Add0~1\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCCOMB_X73_Y21_N0
\inst9|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~3_combout\ = (\inst10~0_combout\ & (((\inst9|Add0~2_combout\ & !\inst9|Equal0~1_combout\)))) # (!\inst10~0_combout\ & (\inst9|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst10~0_combout\,
	datac => \inst9|Add0~2_combout\,
	datad => \inst9|Equal0~1_combout\,
	combout => \inst9|s_count~3_combout\);

-- Location: LCCOMB_X77_Y21_N24
\inst9|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~4_combout\ = (\iaaanst1|s_currentState.TInit~q\ & !\iaaanst1|s_currentState.TLevedar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~4_combout\);

-- Location: LCCOMB_X73_Y21_N24
\inst9|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~5_combout\ = (\inst8~combout\ & (((\inst9|s_count~4_combout\ & !\iaaanst1|s_currentState.TExtra~q\)))) # (!\inst8~combout\ & (\inst9|s_count~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~3_combout\,
	datab => \inst9|s_count~4_combout\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~5_combout\);

-- Location: FF_X73_Y21_N25
\inst9|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~5_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(1));

-- Location: LCCOMB_X73_Y21_N12
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

-- Location: LCCOMB_X74_Y21_N8
\inst9|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~11_combout\ = (\inst|dataOut~q\ & (\iaaanst1|s_currentState.TAmmassar~q\ & !\iaaanst1|s_currentState.TLevedar~q\)) # (!\inst|dataOut~q\ & (!\iaaanst1|s_currentState.TAmmassar~q\ & \iaaanst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut~q\,
	datac => \iaaanst1|s_currentState.TAmmassar~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst9|s_count~11_combout\);

-- Location: LCCOMB_X74_Y21_N20
\inst9|s_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~12_combout\ = (\inst8~combout\ & (((\inst9|s_count~11_combout\ & \iaaanst1|s_currentState.TInit~q\)))) # (!\inst8~combout\ & (\inst9|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~4_combout\,
	datab => \inst9|s_count~11_combout\,
	datac => \inst8~combout\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~12_combout\);

-- Location: FF_X74_Y21_N21
\inst9|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~12_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(2));

-- Location: LCCOMB_X73_Y21_N14
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

-- Location: LCCOMB_X75_Y21_N12
\inst9|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~8_combout\ = ((\iaaanst1|s_currentState.TCozer~q\) # ((\iaaanst1|s_currentState.TLevedar~q\) # (\iaaanst1|s_currentState.TAmmassar~q\))) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TAmmassar~q\,
	combout => \inst9|s_count~8_combout\);

-- Location: LCCOMB_X74_Y21_N24
\inst9|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~9_combout\ = (\iaaanst1|s_currentState.TInit~q\ & ((\iaaanst1|s_currentState.TAmmassar~q\ $ (\inst|dataOut~q\)) # (!\iaaanst1|s_currentState.TLevedar~q\))) # (!\iaaanst1|s_currentState.TInit~q\ & (((!\inst|dataOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TAmmassar~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \inst|dataOut~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|s_count~9_combout\);

-- Location: LCCOMB_X74_Y21_N4
\inst9|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~10_combout\ = (\inst8~combout\ & (((\inst9|s_count~8_combout\ & \inst9|s_count~9_combout\)))) # (!\inst8~combout\ & (\inst9|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~6_combout\,
	datab => \inst9|s_count~8_combout\,
	datac => \inst8~combout\,
	datad => \inst9|s_count~9_combout\,
	combout => \inst9|s_count~10_combout\);

-- Location: FF_X74_Y21_N5
\inst9|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~10_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(3));

-- Location: LCCOMB_X73_Y21_N16
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

-- Location: LCCOMB_X74_Y21_N22
\inst9|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~16_combout\ = (\inst8~combout\ & (\inst9|s_count~15_combout\ & (!\inst|dataOut~q\))) # (!\inst8~combout\ & (((\inst9|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count~15_combout\,
	datab => \inst|dataOut~q\,
	datac => \inst8~combout\,
	datad => \inst9|Add0~8_combout\,
	combout => \inst9|s_count~16_combout\);

-- Location: FF_X74_Y21_N23
\inst9|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~16_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(4));

-- Location: LCCOMB_X73_Y21_N18
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

-- Location: LCCOMB_X77_Y21_N6
\inst9|s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~13_combout\ = (\inst|dataOut~q\ & (\inst8~combout\ & ((\iaaanst1|s_currentState.TAmmassar~q\) # (!\iaaanst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TAmmassar~q\,
	datac => \inst|dataOut~q\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~13_combout\);

-- Location: LCCOMB_X77_Y21_N4
\inst9|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~14_combout\ = (\inst9|Add0~10_combout\ & (((\inst9|s_count~13_combout\ & !\inst9|s_count~4_combout\)) # (!\inst8~combout\))) # (!\inst9|Add0~10_combout\ & (\inst9|s_count~13_combout\ & ((!\inst9|s_count~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~10_combout\,
	datab => \inst9|s_count~13_combout\,
	datac => \inst8~combout\,
	datad => \inst9|s_count~4_combout\,
	combout => \inst9|s_count~14_combout\);

-- Location: FF_X77_Y21_N5
\inst9|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~14_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(5));

-- Location: LCCOMB_X73_Y21_N20
\inst9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|s_count\(6) & ((GND) # (!\inst9|Add0~11\))) # (!\inst9|s_count\(6) & (\inst9|Add0~11\ $ (GND)))
-- \inst9|Add0~13\ = CARRY((\inst9|s_count\(6)) # (!\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X73_Y21_N6
\inst9|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~6_combout\ = (\inst9|Add0~12_combout\ & !\inst8~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~12_combout\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~6_combout\);

-- Location: FF_X73_Y21_N7
\inst9|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~6_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(6));

-- Location: LCCOMB_X73_Y21_N22
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

-- Location: LCCOMB_X73_Y21_N28
\inst9|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count~7_combout\ = (\inst9|Add0~14_combout\ & !\inst8~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~14_combout\,
	datad => \inst8~combout\,
	combout => \inst9|s_count~7_combout\);

-- Location: FF_X73_Y21_N29
\inst9|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_count~7_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(7));

-- Location: LCCOMB_X73_Y21_N4
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & (!\inst9|s_count\(4) & !\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(7),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(5),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y21_N2
\inst6|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal20~0_combout\ = (!\inst9|s_count\(1) & (!\inst9|s_count\(0) & (!\inst9|s_count\(2) & !\inst9|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datab => \inst9|s_count\(0),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(3),
	combout => \inst6|Equal20~0_combout\);

-- Location: LCCOMB_X73_Y21_N26
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (\inst9|Equal0~0_combout\ & \inst6|Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Equal0~0_combout\,
	datad => \inst6|Equal20~0_combout\,
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y21_N28
\inst9|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~0_combout\ = (\inst9|s_cntZero~q\ & !\inst11|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_cntZero~q\,
	datac => \inst11|pulse~q\,
	combout => \inst9|s_cntZero~0_combout\);

-- Location: LCCOMB_X74_Y21_N6
\inst9|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~1_combout\ = (!\inst8~combout\ & ((\inst9|s_cntZero~0_combout\) # ((\inst9|Equal0~1_combout\ & \inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~1_combout\,
	datab => \inst9|s_cntZero~0_combout\,
	datac => \inst8~combout\,
	datad => \inst10~0_combout\,
	combout => \inst9|s_cntZero~1_combout\);

-- Location: FF_X74_Y21_N7
\inst9|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst9|s_cntZero~1_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_cntZero~q\);

-- Location: LCCOMB_X75_Y21_N22
\iaaanst1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector12~0_combout\ = (\inst25|pState.StartPrg~q\ & (\iaaanst1|s_currentState.TExtra~q\ & ((!\iaaanst1|Selector9~0_combout\) # (!\iaaanst1|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|Selector9~1_combout\,
	datad => \iaaanst1|Selector9~0_combout\,
	combout => \iaaanst1|Selector12~0_combout\);

-- Location: LCCOMB_X76_Y21_N10
\iaaanst1|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector12~1_combout\ = (\iaaanst1|Selector12~0_combout\) # ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TLevedar~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|Selector12~0_combout\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|Selector12~1_combout\);

-- Location: LCCOMB_X76_Y21_N28
\iaaanst1|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~9_combout\ = (\iaaanst1|Selector12~1_combout\ & \inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Selector12~1_combout\,
	datac => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_currentState~9_combout\);

-- Location: FF_X76_Y21_N29
\iaaanst1|s_currentState.TCozer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TCozer~q\);

-- Location: LCCOMB_X75_Y21_N20
\iaaanst1|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~8_combout\ = (\inst25|pState.Init~q\ & ((\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TCozer~q\))) # (!\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \inst9|s_cntZero~q\,
	datad => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_currentState~8_combout\);

-- Location: LCCOMB_X75_Y21_N8
\iaaanst1|s_currentState.TFim~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState.TFim~feeder_combout\ = \iaaanst1|s_currentState~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState~8_combout\,
	combout => \iaaanst1|s_currentState.TFim~feeder_combout\);

-- Location: FF_X75_Y21_N9
\iaaanst1|s_currentState.TFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState.TFim~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TFim~q\);

-- Location: LCCOMB_X76_Y21_N2
\iaaanst1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector16~0_combout\ = (!\inst25|pState.StartPrg~q\ & ((\iaaanst1|s_currentState.TLevedar~q\) # ((\iaaanst1|s_currentState.TAmmassar~q\) # (\iaaanst1|s_currentState.TCozer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TLevedar~q\,
	datab => \iaaanst1|s_currentState.TAmmassar~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|Selector16~0_combout\);

-- Location: LCCOMB_X76_Y21_N26
\iaaanst1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector16~1_combout\ = (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TFim~q\) # (\iaaanst1|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|Selector16~0_combout\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|Selector16~1_combout\);

-- Location: LCCOMB_X79_Y14_N22
\inst19|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~4_combout\ = (\inst5|s_count\(4) & ((\inst5|s_count\(2) & ((\inst5|s_count\(3)) # (!\inst5|s_count\(5)))) # (!\inst5|s_count\(2) & (!\inst5|s_count\(5) & \inst5|s_count\(3))))) # (!\inst5|s_count\(4) & (((\inst5|s_count\(5) & 
-- !\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux2~4_combout\);

-- Location: LCCOMB_X80_Y14_N2
\inst19|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~10_combout\ = (\inst5|s_count\(6)) # ((\inst5|s_count\(7)) # (\inst19|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst19|Mux2~4_combout\,
	combout => \inst19|Mux2~10_combout\);

-- Location: LCCOMB_X80_Y14_N12
\inst19|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~9_combout\ = (\inst25|en_3~combout\ & (((\inst25|pState.Extra~q\) # (\inst19|Mux2~10_combout\)))) # (!\inst25|en_3~combout\ & ((\inst4|Counter|s_count\(1)) # ((!\inst25|pState.Extra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst4|Counter|s_count\(1),
	datac => \inst25|pState.Extra~q\,
	datad => \inst19|Mux2~10_combout\,
	combout => \inst19|Mux2~9_combout\);

-- Location: LCCOMB_X80_Y14_N0
\inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~0_combout\ = (\inst25|pState.Extra~q\ & (\inst4|Counter|s_count\(3))) # (!\inst25|pState.Extra~q\ & (((!\inst25|pState.TimeProcess~q\ & !\inst25|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(3),
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst25|pState.Extra~q\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst19|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y14_N24
\inst23|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal2~0_combout\ = (!\inst5|s_count\(7) & !\inst5|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_count\(7),
	datad => \inst5|s_count\(6),
	combout => \inst23|Equal2~0_combout\);

-- Location: LCCOMB_X79_Y14_N14
\inst23|outBCD[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~66_combout\ = (\inst23|Equal2~0_combout\ & (((!\inst5|s_count\(3) & !\inst5|s_count\(4))) # (!\inst5|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst23|Equal2~0_combout\,
	combout => \inst23|outBCD[0]~66_combout\);

-- Location: LCCOMB_X80_Y14_N26
\inst19|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~0_combout\ = (\inst25|pState.Extra~q\ & (((\inst4|Counter|s_count\(2))))) # (!\inst25|pState.Extra~q\ & (((!\inst23|outBCD[0]~66_combout\)) # (!\inst25|en_3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst4|Counter|s_count\(2),
	datac => \inst25|pState.Extra~q\,
	datad => \inst23|outBCD[0]~66_combout\,
	combout => \inst19|Mux1~0_combout\);

-- Location: LCCOMB_X79_Y14_N10
\inst19|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~20_combout\ = (\inst5|s_count\(2) & (((!\inst5|s_count\(3))))) # (!\inst5|s_count\(2) & ((\inst5|s_count\(4) & ((\inst5|s_count\(1)) # (\inst5|s_count\(3)))) # (!\inst5|s_count\(4) & ((!\inst5|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux3~20_combout\);

-- Location: LCCOMB_X79_Y14_N0
\inst19|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~19_combout\ = (\inst5|s_count\(2) & (\inst5|s_count\(3) & ((\inst5|s_count\(1)) # (!\inst5|s_count\(4))))) # (!\inst5|s_count\(2) & ((\inst5|s_count\(4) & ((!\inst5|s_count\(3)))) # (!\inst5|s_count\(4) & (\inst5|s_count\(1) & 
-- \inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux3~19_combout\);

-- Location: LCCOMB_X79_Y14_N28
\inst19|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~18_combout\ = (\inst5|s_count\(5) & (\inst19|Mux3~20_combout\)) # (!\inst5|s_count\(5) & ((\inst19|Mux3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~20_combout\,
	datac => \inst5|s_count\(5),
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux3~18_combout\);

-- Location: LCCOMB_X80_Y14_N20
\inst19|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~24_combout\ = (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst19|Mux3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst19|Mux3~18_combout\,
	combout => \inst19|Mux3~24_combout\);

-- Location: LCCOMB_X80_Y14_N10
\inst19|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~23_combout\ = (\inst25|en_3~combout\ & (((\inst25|pState.Extra~q\) # (\inst19|Mux3~24_combout\)))) # (!\inst25|en_3~combout\ & ((\inst4|Counter|s_count\(0)) # ((!\inst25|pState.Extra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst4|Counter|s_count\(0),
	datac => \inst25|pState.Extra~q\,
	datad => \inst19|Mux3~24_combout\,
	combout => \inst19|Mux3~23_combout\);

-- Location: LCCOMB_X80_Y14_N6
\inst17|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~0_combout\ = (\inst19|Mux3~23_combout\ & (!\inst19|Mux0~0_combout\ & (\inst19|Mux2~9_combout\ $ (!\inst19|Mux1~0_combout\)))) # (!\inst19|Mux3~23_combout\ & (!\inst19|Mux1~0_combout\ & (\inst19|Mux2~9_combout\ $ 
-- (!\inst19|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~0_combout\);

-- Location: LCCOMB_X80_Y14_N4
\inst17|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~1_combout\ = (\inst19|Mux1~0_combout\ & ((\inst19|Mux3~23_combout\ & (\inst19|Mux2~9_combout\)) # (!\inst19|Mux3~23_combout\ & ((\inst19|Mux0~0_combout\))))) # (!\inst19|Mux1~0_combout\ & ((\inst19|Mux3~23_combout\ & 
-- ((!\inst19|Mux0~0_combout\))) # (!\inst19|Mux3~23_combout\ & (\inst19|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~1_combout\);

-- Location: LCCOMB_X80_Y14_N30
\inst17|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~2_combout\ = (\inst19|Mux2~9_combout\ & (\inst19|Mux3~23_combout\ $ (((\inst19|Mux0~0_combout\ & !\inst19|Mux1~0_combout\))))) # (!\inst19|Mux2~9_combout\ & ((\inst19|Mux1~0_combout\ & (!\inst19|Mux0~0_combout\)) # 
-- (!\inst19|Mux1~0_combout\ & ((\inst19|Mux3~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~2_combout\);

-- Location: LCCOMB_X80_Y14_N16
\inst17|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~3_combout\ = (\inst19|Mux3~23_combout\ & (\inst19|Mux1~0_combout\ $ (((\inst19|Mux2~9_combout\) # (\inst19|Mux0~0_combout\))))) # (!\inst19|Mux3~23_combout\ & ((\inst19|Mux2~9_combout\ & (!\inst19|Mux0~0_combout\)) # 
-- (!\inst19|Mux2~9_combout\ & ((\inst19|Mux0~0_combout\) # (!\inst19|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~3_combout\);

-- Location: LCCOMB_X80_Y14_N18
\inst17|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~4_combout\ = (\inst19|Mux1~0_combout\ & (((\inst19|Mux0~0_combout\ & \inst19|Mux3~23_combout\)))) # (!\inst19|Mux1~0_combout\ & (\inst19|Mux2~9_combout\ & ((\inst19|Mux0~0_combout\) # (!\inst19|Mux3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~4_combout\);

-- Location: LCCOMB_X80_Y14_N28
\inst17|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~5_combout\ = (\inst19|Mux2~9_combout\ & ((\inst19|Mux0~0_combout\) # ((\inst19|Mux1~0_combout\ & !\inst19|Mux3~23_combout\)))) # (!\inst19|Mux2~9_combout\ & (\inst19|Mux1~0_combout\ & (\inst19|Mux0~0_combout\ $ 
-- (\inst19|Mux3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~5_combout\);

-- Location: LCCOMB_X80_Y14_N22
\inst17|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~6_combout\ = (\inst19|Mux2~9_combout\ & (\inst19|Mux0~0_combout\)) # (!\inst19|Mux2~9_combout\ & ((\inst19|Mux1~0_combout\ & ((!\inst19|Mux3~23_combout\))) # (!\inst19|Mux1~0_combout\ & (!\inst19|Mux0~0_combout\ & 
-- \inst19|Mux3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~9_combout\,
	datab => \inst19|Mux0~0_combout\,
	datac => \inst19|Mux1~0_combout\,
	datad => \inst19|Mux3~23_combout\,
	combout => \inst17|decOut_n~6_combout\);

-- Location: LCCOMB_X79_Y14_N16
\inst23|outBCD[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~7_combout\ = (((!\inst5|s_count\(3)) # (!\inst5|s_count\(5))) # (!\inst5|s_count\(4))) # (!\inst5|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[0]~7_combout\);

-- Location: LCCOMB_X77_Y14_N20
\inst23|outBCD[0]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[0]~71_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & (\inst5|s_count\(0) & \inst23|outBCD[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(0),
	datad => \inst23|outBCD[0]~7_combout\,
	combout => \inst23|outBCD[0]~71_combout\);

-- Location: LCCOMB_X77_Y14_N30
\inst18|muxOut[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[0]~7_combout\ = (\inst23|outBCD[0]~71_combout\) # ((!\inst25|pState.Timer~q\ & !\inst25|pState.TimeProcess~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Timer~q\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst23|outBCD[0]~71_combout\,
	combout => \inst18|muxOut[0]~7_combout\);

-- Location: LCCOMB_X77_Y14_N4
\inst23|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~3_combout\ = (\inst23|LessThan0~2_combout\ & (((!\inst5|s_count\(1) & !\inst5|s_count\(2))) # (!\inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(2),
	datac => \inst23|LessThan0~2_combout\,
	datad => \inst5|s_count\(3),
	combout => \inst23|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y14_N20
\inst19|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~8_combout\ = (!\inst5|s_count\(5) & (((!\inst5|s_count\(2) & !\inst5|s_count\(3))) # (!\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux2~8_combout\);

-- Location: LCCOMB_X77_Y14_N16
\inst23|outBCD[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~67_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & (!\inst23|LessThan0~3_combout\ & \inst19|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst23|LessThan0~3_combout\,
	datad => \inst19|Mux2~8_combout\,
	combout => \inst23|outBCD[1]~67_combout\);

-- Location: LCCOMB_X79_Y14_N4
\inst23|outBCD[2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~76_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(5) $ (((\inst5|s_count\(4) & \inst5|s_count\(3)))))) # (!\inst5|s_count\(1) & (\inst5|s_count\(3) & ((\inst5|s_count\(5)) # (\inst5|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[2]~76_combout\);

-- Location: LCCOMB_X79_Y14_N6
\inst23|outBCD[2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~77_combout\ = (\inst23|outBCD[2]~76_combout\ & (\inst5|s_count\(2) $ (\inst5|s_count\(4) $ (!\inst5|s_count\(3))))) # (!\inst23|outBCD[2]~76_combout\ & (\inst5|s_count\(2) & (!\inst5|s_count\(4) & !\inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst23|outBCD[2]~76_combout\,
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[2]~77_combout\);

-- Location: LCCOMB_X81_Y14_N28
\inst23|outBCD[2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~73_combout\ = (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst23|outBCD[2]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst23|outBCD[2]~77_combout\,
	combout => \inst23|outBCD[2]~73_combout\);

-- Location: LCCOMB_X77_Y14_N10
\inst23|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal2~1_combout\ = (\inst5|s_count\(3) & (\inst23|LessThan0~2_combout\ & \inst5|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datac => \inst23|LessThan0~2_combout\,
	datad => \inst5|s_count\(2),
	combout => \inst23|Equal2~1_combout\);

-- Location: LCCOMB_X79_Y14_N2
\inst23|outBCD[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~54_combout\ = (!\inst5|s_count\(3) & (!\inst5|s_count\(2) & (!\inst5|s_count\(1) & !\inst5|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(7),
	combout => \inst23|outBCD[2]~54_combout\);

-- Location: LCCOMB_X79_Y14_N8
\inst23|outBCD[2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~75_combout\ = (!\inst5|s_count\(6) & (\inst5|s_count\(4) & (!\inst5|s_count\(5) & \inst23|outBCD[2]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(5),
	datad => \inst23|outBCD[2]~54_combout\,
	combout => \inst23|outBCD[2]~75_combout\);

-- Location: LCCOMB_X77_Y14_N24
\inst23|outBCD[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~68_combout\ = (\inst23|outBCD[2]~75_combout\) # ((\inst23|Equal2~1_combout\ & \inst5|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Equal2~1_combout\,
	datac => \inst5|s_count\(1),
	datad => \inst23|outBCD[2]~75_combout\,
	combout => \inst23|outBCD[2]~68_combout\);

-- Location: LCCOMB_X81_Y14_N16
\inst18|muxOut[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[2]~6_combout\ = (\inst23|outBCD[2]~73_combout\) # (((\inst23|outBCD[1]~67_combout\ & \inst23|outBCD[2]~68_combout\)) # (!\inst25|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~67_combout\,
	datab => \inst23|outBCD[2]~73_combout\,
	datac => \inst25|en_3~combout\,
	datad => \inst23|outBCD[2]~68_combout\,
	combout => \inst18|muxOut[2]~6_combout\);

-- Location: LCCOMB_X79_Y14_N12
\inst23|outBCD[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~25_combout\ = (\inst5|s_count\(4) & (!\inst5|s_count\(1) & (\inst5|s_count\(2) $ (\inst5|s_count\(3))))) # (!\inst5|s_count\(4) & ((\inst5|s_count\(1) $ (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[1]~25_combout\);

-- Location: LCCOMB_X79_Y14_N18
\inst23|outBCD[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~24_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(3) $ (((\inst5|s_count\(2)) # (!\inst5|s_count\(4)))))) # (!\inst5|s_count\(1) & ((\inst5|s_count\(2) & (!\inst5|s_count\(4) & \inst5|s_count\(3))) # (!\inst5|s_count\(2) & 
-- (\inst5|s_count\(4) & !\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[1]~24_combout\);

-- Location: LCCOMB_X79_Y14_N30
\inst23|outBCD[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~23_combout\ = (\inst5|s_count\(5) & (\inst23|outBCD[1]~25_combout\)) # (!\inst5|s_count\(5) & ((\inst23|outBCD[1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~25_combout\,
	datac => \inst5|s_count\(5),
	datad => \inst23|outBCD[1]~24_combout\,
	combout => \inst23|outBCD[1]~23_combout\);

-- Location: LCCOMB_X80_Y14_N8
\inst23|outBCD[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[1]~72_combout\ = (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst23|outBCD[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst23|outBCD[1]~23_combout\,
	combout => \inst23|outBCD[1]~72_combout\);

-- Location: LCCOMB_X81_Y14_N8
\inst18|muxOut[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[1]~8_combout\ = (!\inst23|outBCD[1]~72_combout\ & ((\inst25|pState.TimeProcess~q\) # (\inst25|pState.Timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst25|pState.Timer~q\,
	datad => \inst23|outBCD[1]~72_combout\,
	combout => \inst18|muxOut[1]~8_combout\);

-- Location: LCCOMB_X79_Y14_N26
\inst23|outBCD[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~48_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(5) & (!\inst5|s_count\(4) & !\inst5|s_count\(3)))) # (!\inst5|s_count\(1) & (!\inst5|s_count\(5) & (\inst5|s_count\(4) & \inst5|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[3]~48_combout\);

-- Location: LCCOMB_X79_Y14_N24
\inst23|outBCD[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~47_combout\ = (\inst5|s_count\(1) & (\inst5|s_count\(4) & (\inst5|s_count\(5) $ (!\inst5|s_count\(3))))) # (!\inst5|s_count\(1) & ((\inst5|s_count\(5) & (\inst5|s_count\(4) & !\inst5|s_count\(3))) # (!\inst5|s_count\(5) & 
-- (!\inst5|s_count\(4) & \inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(1),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD[3]~47_combout\);

-- Location: LCCOMB_X80_Y14_N14
\inst23|outBCD[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~46_combout\ = (\inst5|s_count\(2) & (\inst23|outBCD[3]~48_combout\)) # (!\inst5|s_count\(2) & ((\inst23|outBCD[3]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[3]~48_combout\,
	datac => \inst5|s_count\(2),
	datad => \inst23|outBCD[3]~47_combout\,
	combout => \inst23|outBCD[3]~46_combout\);

-- Location: LCCOMB_X81_Y14_N14
\inst23|outBCD[3]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[3]~74_combout\ = (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst23|outBCD[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst23|outBCD[3]~46_combout\,
	combout => \inst23|outBCD[3]~74_combout\);

-- Location: LCCOMB_X81_Y14_N18
\inst18|muxOut[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[3]~9_combout\ = (!\inst23|outBCD[3]~74_combout\ & ((\inst25|pState.Timer~q\) # (\inst25|pState.TimeProcess~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Timer~q\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst23|outBCD[3]~74_combout\,
	combout => \inst18|muxOut[3]~9_combout\);

-- Location: LCCOMB_X81_Y14_N22
\inst16|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~4_combout\ = (\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[2]~6_combout\ $ (!\inst18|muxOut[1]~8_combout\)) # (!\inst18|muxOut[3]~9_combout\))) # (!\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[2]~6_combout\) # 
-- (\inst18|muxOut[1]~8_combout\ $ (\inst18|muxOut[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[0]~7_combout\,
	datab => \inst18|muxOut[2]~6_combout\,
	datac => \inst18|muxOut[1]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~4_combout\);

-- Location: LCCOMB_X77_Y14_N26
\inst16|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~22_combout\ = (!\inst25|pState.Timer~q\ & !\inst25|pState.TimeProcess~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Timer~q\,
	datac => \inst25|pState.TimeProcess~q\,
	combout => \inst16|decOut_n~22_combout\);

-- Location: LCCOMB_X81_Y14_N4
\inst23|outBCD[2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~69_combout\ = (\inst23|outBCD[2]~73_combout\) # ((\inst23|outBCD[2]~68_combout\ & \inst23|outBCD[1]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~68_combout\,
	datac => \inst23|outBCD[1]~67_combout\,
	datad => \inst23|outBCD[2]~73_combout\,
	combout => \inst23|outBCD[2]~69_combout\);

-- Location: LCCOMB_X77_Y14_N14
\inst16|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~5_combout\ = ((\inst23|outBCD[2]~69_combout\ & ((\inst16|decOut_n~22_combout\))) # (!\inst23|outBCD[2]~69_combout\ & (\inst23|outBCD[1]~72_combout\))) # (!\inst25|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst23|outBCD[1]~72_combout\,
	datac => \inst16|decOut_n~22_combout\,
	datad => \inst23|outBCD[2]~69_combout\,
	combout => \inst16|decOut_n~5_combout\);

-- Location: LCCOMB_X81_Y14_N6
\inst16|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~6_combout\ = (\inst25|en_3~combout\ & ((\inst23|outBCD[1]~72_combout\ & ((!\inst23|outBCD[2]~69_combout\))) # (!\inst23|outBCD[1]~72_combout\ & (\inst18|muxOut[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~72_combout\,
	datab => \inst18|muxOut[2]~6_combout\,
	datac => \inst25|en_3~combout\,
	datad => \inst23|outBCD[2]~69_combout\,
	combout => \inst16|decOut_n~6_combout\);

-- Location: LCCOMB_X81_Y14_N12
\inst16|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~7_combout\ = (\inst18|muxOut[3]~9_combout\ & ((\inst16|decOut_n~6_combout\ & (\inst23|outBCD[1]~72_combout\)) # (!\inst16|decOut_n~6_combout\ & ((\inst18|muxOut[0]~7_combout\))))) # (!\inst18|muxOut[3]~9_combout\ & 
-- (((\inst18|muxOut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[1]~72_combout\,
	datab => \inst18|muxOut[3]~9_combout\,
	datac => \inst18|muxOut[0]~7_combout\,
	datad => \inst16|decOut_n~6_combout\,
	combout => \inst16|decOut_n~7_combout\);

-- Location: LCCOMB_X77_Y14_N28
\inst16|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~8_combout\ = (\inst18|muxOut[3]~9_combout\ & (((\inst16|decOut_n~7_combout\)))) # (!\inst18|muxOut[3]~9_combout\ & ((\inst16|decOut_n~7_combout\ & (\inst16|decOut_n~22_combout\)) # (!\inst16|decOut_n~7_combout\ & 
-- ((\inst16|decOut_n~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~22_combout\,
	datab => \inst18|muxOut[3]~9_combout\,
	datac => \inst16|decOut_n~5_combout\,
	datad => \inst16|decOut_n~7_combout\,
	combout => \inst16|decOut_n~8_combout\);

-- Location: LCCOMB_X77_Y14_N0
\inst23|outBCD[2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD[2]~70_combout\ = (\inst23|outBCD[1]~67_combout\ & ((\inst23|outBCD[2]~75_combout\) # ((\inst23|Equal2~1_combout\ & \inst5|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Equal2~1_combout\,
	datab => \inst23|outBCD[1]~67_combout\,
	datac => \inst5|s_count\(1),
	datad => \inst23|outBCD[2]~75_combout\,
	combout => \inst23|outBCD[2]~70_combout\);

-- Location: LCCOMB_X81_Y14_N24
\inst16|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~10_combout\ = (\inst25|en_3~combout\ & (((!\inst23|outBCD[2]~73_combout\ & !\inst23|outBCD[2]~70_combout\)) # (!\inst23|outBCD[3]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst23|outBCD[2]~73_combout\,
	datac => \inst23|outBCD[3]~74_combout\,
	datad => \inst23|outBCD[2]~70_combout\,
	combout => \inst16|decOut_n~10_combout\);

-- Location: LCCOMB_X81_Y14_N30
\inst16|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~11_combout\ = (\inst18|muxOut[1]~8_combout\ & (\inst16|decOut_n~10_combout\)) # (!\inst18|muxOut[1]~8_combout\ & (((\inst18|muxOut[2]~6_combout\) # (\inst18|muxOut[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~10_combout\,
	datab => \inst18|muxOut[2]~6_combout\,
	datac => \inst18|muxOut[1]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~11_combout\);

-- Location: LCCOMB_X81_Y14_N2
\inst16|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~9_combout\ = ((\inst23|outBCD[3]~74_combout\) # ((!\inst23|outBCD[2]~73_combout\ & !\inst23|outBCD[2]~70_combout\))) # (!\inst25|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst23|outBCD[2]~73_combout\,
	datac => \inst23|outBCD[3]~74_combout\,
	datad => \inst23|outBCD[2]~70_combout\,
	combout => \inst16|decOut_n~9_combout\);

-- Location: LCCOMB_X81_Y14_N20
\inst16|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~12_combout\ = (\inst18|muxOut[0]~7_combout\ & (((\inst16|decOut_n~11_combout\)))) # (!\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[1]~8_combout\ & ((!\inst16|decOut_n~9_combout\))) # (!\inst18|muxOut[1]~8_combout\ & 
-- (!\inst16|decOut_n~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[0]~7_combout\,
	datab => \inst18|muxOut[1]~8_combout\,
	datac => \inst16|decOut_n~11_combout\,
	datad => \inst16|decOut_n~9_combout\,
	combout => \inst16|decOut_n~12_combout\);

-- Location: LCCOMB_X81_Y14_N10
\inst16|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~13_combout\ = (\inst18|muxOut[0]~7_combout\ & (\inst18|muxOut[2]~6_combout\ $ (((\inst18|muxOut[1]~8_combout\ & \inst18|muxOut[3]~9_combout\))))) # (!\inst18|muxOut[0]~7_combout\ & ((\inst18|muxOut[1]~8_combout\ & 
-- (\inst18|muxOut[2]~6_combout\ & \inst18|muxOut[3]~9_combout\)) # (!\inst18|muxOut[1]~8_combout\ & ((!\inst18|muxOut[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[0]~7_combout\,
	datab => \inst18|muxOut[2]~6_combout\,
	datac => \inst18|muxOut[1]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~13_combout\);

-- Location: LCCOMB_X81_Y14_N0
\inst16|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~14_combout\ = (!\inst18|muxOut[1]~8_combout\ & ((\inst18|muxOut[0]~7_combout\ & ((!\inst18|muxOut[3]~9_combout\))) # (!\inst18|muxOut[0]~7_combout\ & (!\inst18|muxOut[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[0]~7_combout\,
	datab => \inst18|muxOut[2]~6_combout\,
	datac => \inst18|muxOut[1]~8_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~14_combout\);

-- Location: LCCOMB_X81_Y14_N26
\inst16|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~15_combout\ = (\inst16|decOut_n~14_combout\) # ((\inst18|muxOut[0]~7_combout\ & (!\inst16|decOut_n~10_combout\ & \inst18|muxOut[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|muxOut[0]~7_combout\,
	datab => \inst16|decOut_n~10_combout\,
	datac => \inst18|muxOut[1]~8_combout\,
	datad => \inst16|decOut_n~14_combout\,
	combout => \inst16|decOut_n~15_combout\);

-- Location: LCCOMB_X77_Y14_N8
\inst16|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~17_combout\ = (\inst23|outBCD[2]~69_combout\ & (\inst18|muxOut[3]~9_combout\ & (\inst23|outBCD[0]~71_combout\ $ (\inst23|outBCD[1]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~69_combout\,
	datab => \inst23|outBCD[0]~71_combout\,
	datac => \inst23|outBCD[1]~72_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~17_combout\);

-- Location: LCCOMB_X77_Y14_N22
\inst16|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~16_combout\ = (\inst23|outBCD[2]~69_combout\ & ((\inst16|decOut_n~22_combout\))) # (!\inst23|outBCD[2]~69_combout\ & (\inst23|outBCD[1]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|outBCD[1]~72_combout\,
	datac => \inst16|decOut_n~22_combout\,
	datad => \inst23|outBCD[2]~69_combout\,
	combout => \inst16|decOut_n~16_combout\);

-- Location: LCCOMB_X77_Y14_N6
\inst16|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~18_combout\ = ((\inst16|decOut_n~17_combout\) # ((\inst16|decOut_n~16_combout\ & \inst23|outBCD[3]~74_combout\))) # (!\inst25|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst16|decOut_n~17_combout\,
	datac => \inst16|decOut_n~16_combout\,
	datad => \inst23|outBCD[3]~74_combout\,
	combout => \inst16|decOut_n~18_combout\);

-- Location: LCCOMB_X77_Y14_N12
\inst16|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~19_combout\ = (\inst18|muxOut[3]~9_combout\ & (\inst23|outBCD[2]~69_combout\ $ ((\inst23|outBCD[0]~71_combout\)))) # (!\inst18|muxOut[3]~9_combout\ & (((\inst23|outBCD[0]~71_combout\ & \inst16|decOut_n~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD[2]~69_combout\,
	datab => \inst23|outBCD[0]~71_combout\,
	datac => \inst16|decOut_n~5_combout\,
	datad => \inst18|muxOut[3]~9_combout\,
	combout => \inst16|decOut_n~19_combout\);

-- Location: LCCOMB_X77_Y14_N2
\inst16|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~21_combout\ = (\inst16|decOut_n~16_combout\ & (!\inst23|outBCD[3]~74_combout\ & ((\inst25|pState.Timer~q\) # (\inst25|pState.TimeProcess~q\)))) # (!\inst16|decOut_n~16_combout\ & ((\inst25|pState.Timer~q\) # 
-- ((\inst25|pState.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~16_combout\,
	datab => \inst25|pState.Timer~q\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst23|outBCD[3]~74_combout\,
	combout => \inst16|decOut_n~21_combout\);

-- Location: LCCOMB_X77_Y14_N18
\inst16|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~20_combout\ = (\inst23|outBCD[1]~72_combout\ & (((!\inst16|decOut_n~21_combout\)))) # (!\inst23|outBCD[1]~72_combout\ & ((\inst16|decOut_n~19_combout\) # ((!\inst16|decOut_n~21_combout\ & !\inst23|outBCD[0]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~19_combout\,
	datab => \inst16|decOut_n~21_combout\,
	datac => \inst23|outBCD[1]~72_combout\,
	datad => \inst23|outBCD[0]~71_combout\,
	combout => \inst16|decOut_n~20_combout\);

-- Location: LCCOMB_X73_Y14_N12
\inst6|outBCD[3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~51_combout\ = (\inst9|s_count\(2) & (\inst9|s_count\(5) & (!\inst9|s_count\(4) & \inst9|s_count\(1)))) # (!\inst9|s_count\(2) & (\inst9|s_count\(4) & (\inst9|s_count\(5) $ (\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[3]~51_combout\);

-- Location: LCCOMB_X73_Y14_N18
\inst6|outBCD[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~52_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count\(2) & (\inst9|s_count\(4) & \inst9|s_count\(1)))) # (!\inst9|s_count\(5) & (!\inst9|s_count\(1) & (\inst9|s_count\(2) $ (!\inst9|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[3]~52_combout\);

-- Location: LCCOMB_X73_Y14_N0
\inst6|outBCD[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~50_combout\ = (\inst9|s_count\(3) & ((\inst6|outBCD[3]~52_combout\))) # (!\inst9|s_count\(3) & (\inst6|outBCD[3]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~51_combout\,
	datab => \inst6|outBCD[3]~52_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[3]~50_combout\);

-- Location: LCCOMB_X73_Y14_N30
\inst6|outBCD[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~63_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[3]~50_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[3]~50_combout\,
	datac => \inst9|s_count\(7),
	combout => \inst6|outBCD[3]~63_combout\);

-- Location: LCCOMB_X73_Y14_N6
\inst6|outBCD[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~41_combout\ = (\inst9|s_count\(2) & (!\inst9|s_count\(4) & ((\inst9|s_count\(5)) # (\inst9|s_count\(1))))) # (!\inst9|s_count\(2) & (\inst9|s_count\(4) & ((!\inst9|s_count\(1)) # (!\inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[2]~41_combout\);

-- Location: LCCOMB_X73_Y14_N24
\inst6|outBCD[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~40_combout\ = (\inst9|s_count\(2) & (\inst9|s_count\(4) $ (((!\inst9|s_count\(1)) # (!\inst9|s_count\(5)))))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(5) & (!\inst9|s_count\(4) & \inst9|s_count\(1))) # (!\inst9|s_count\(5) & 
-- (\inst9|s_count\(4) & !\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[2]~40_combout\);

-- Location: LCCOMB_X73_Y14_N4
\inst6|outBCD[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~39_combout\ = (\inst9|s_count\(3) & (\inst6|outBCD[2]~41_combout\)) # (!\inst9|s_count\(3) & ((\inst6|outBCD[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[2]~41_combout\,
	datab => \inst6|outBCD[2]~40_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[2]~39_combout\);

-- Location: LCCOMB_X73_Y14_N14
\inst6|outBCD[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~62_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[2]~39_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[2]~39_combout\,
	datac => \inst9|s_count\(7),
	combout => \inst6|outBCD[2]~62_combout\);

-- Location: LCCOMB_X73_Y20_N0
\inst6|outBCD[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~11_combout\ = (((!\inst9|s_count\(5)) # (!\inst9|s_count\(3))) # (!\inst9|s_count\(4))) # (!\inst9|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(3),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[0]~11_combout\);

-- Location: LCCOMB_X73_Y21_N30
\inst6|outBCD[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~60_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & (\inst9|s_count\(0) & \inst6|outBCD[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(7),
	datac => \inst9|s_count\(0),
	datad => \inst6|outBCD[0]~11_combout\,
	combout => \inst6|outBCD[0]~60_combout\);

-- Location: LCCOMB_X73_Y14_N10
\inst6|outBCD[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~58_combout\ = (\inst9|s_count\(4) & (!\inst9|s_count\(2) & (\inst9|s_count\(5) $ (\inst9|s_count\(1))))) # (!\inst9|s_count\(4) & ((\inst9|s_count\(5) & ((\inst9|s_count\(1)))) # (!\inst9|s_count\(5) & (\inst9|s_count\(2) & 
-- !\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[1]~58_combout\);

-- Location: LCCOMB_X73_Y14_N16
\inst6|outBCD[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~57_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count\(1) & ((\inst9|s_count\(2)) # (!\inst9|s_count\(4))))) # (!\inst9|s_count\(5) & (\inst9|s_count\(1) $ (((!\inst9|s_count\(2) & \inst9|s_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(1),
	combout => \inst6|outBCD[1]~57_combout\);

-- Location: LCCOMB_X73_Y14_N28
\inst6|outBCD[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~26_combout\ = (\inst9|s_count\(3) & (\inst6|outBCD[1]~58_combout\)) # (!\inst9|s_count\(3) & ((\inst6|outBCD[1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~58_combout\,
	datab => \inst6|outBCD[1]~57_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[1]~26_combout\);

-- Location: LCCOMB_X73_Y14_N26
\inst6|outBCD[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~61_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[1]~26_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[1]~26_combout\,
	datac => \inst9|s_count\(7),
	combout => \inst6|outBCD[1]~61_combout\);

-- Location: LCCOMB_X73_Y8_N12
\inst14|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~12_combout\ = (\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[3]~63_combout\) # (\inst6|outBCD[2]~62_combout\ $ (\inst6|outBCD[1]~61_combout\)))) # (!\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[2]~62_combout\) # 
-- (\inst6|outBCD[3]~63_combout\ $ (\inst6|outBCD[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~12_combout\);

-- Location: LCCOMB_X73_Y8_N14
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

-- Location: LCCOMB_X73_Y8_N6
\inst14|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~13_combout\ = (\inst6|outBCD[2]~62_combout\ & ((\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[1]~61_combout\))) # (!\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[3]~63_combout\)))) # (!\inst6|outBCD[2]~62_combout\ & 
-- ((\inst6|outBCD[0]~60_combout\ & (!\inst6|outBCD[3]~63_combout\)) # (!\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[1]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~13_combout\);

-- Location: LCCOMB_X73_Y8_N28
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

-- Location: LCCOMB_X73_Y8_N24
\inst14|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~14_combout\ = (\inst6|outBCD[2]~62_combout\ & ((\inst6|outBCD[1]~61_combout\ & ((\inst6|outBCD[0]~60_combout\))) # (!\inst6|outBCD[1]~61_combout\ & (!\inst6|outBCD[3]~63_combout\)))) # (!\inst6|outBCD[2]~62_combout\ & 
-- (\inst6|outBCD[0]~60_combout\ $ (((\inst6|outBCD[3]~63_combout\ & \inst6|outBCD[1]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~14_combout\);

-- Location: LCCOMB_X73_Y8_N30
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

-- Location: LCCOMB_X73_Y8_N10
\inst14|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~15_combout\ = (\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[2]~62_combout\ $ (((!\inst6|outBCD[3]~63_combout\ & !\inst6|outBCD[1]~61_combout\))))) # (!\inst6|outBCD[0]~60_combout\ & ((\inst6|outBCD[3]~63_combout\ & 
-- ((\inst6|outBCD[1]~61_combout\))) # (!\inst6|outBCD[3]~63_combout\ & (\inst6|outBCD[2]~62_combout\ & !\inst6|outBCD[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~15_combout\);

-- Location: LCCOMB_X73_Y8_N8
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

-- Location: LCCOMB_X73_Y8_N4
\inst14|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~16_combout\ = (\inst6|outBCD[0]~60_combout\ & (\inst6|outBCD[3]~63_combout\ $ (!\inst6|outBCD[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[2]~62_combout\,
	combout => \inst14|decOut_n~16_combout\);

-- Location: LCCOMB_X73_Y8_N2
\inst14|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~17_combout\ = ((\inst6|outBCD[2]~62_combout\ & (\inst14|decOut_n~16_combout\)) # (!\inst6|outBCD[2]~62_combout\ & (!\inst14|decOut_n~16_combout\ & \inst6|outBCD[1]~61_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|timeVal~0_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst14|decOut_n~16_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~17_combout\);

-- Location: LCCOMB_X73_Y8_N16
\inst14|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~18_combout\ = (\inst6|outBCD[3]~63_combout\ & ((\inst6|outBCD[1]~61_combout\) # ((\inst6|outBCD[2]~62_combout\ & !\inst6|outBCD[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~18_combout\);

-- Location: LCCOMB_X73_Y8_N18
\inst14|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~19_combout\ = (!\inst6|outBCD[3]~63_combout\ & (\inst6|outBCD[2]~62_combout\ & (\inst6|outBCD[0]~60_combout\ $ (\inst6|outBCD[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~19_combout\);

-- Location: LCCOMB_X73_Y8_N26
\inst14|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~25_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\inst14|decOut_n~18_combout\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \inst14|decOut_n~18_combout\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~19_combout\,
	combout => \inst14|decOut_n~25_combout\);

-- Location: LCCOMB_X73_Y8_N20
\inst14|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~20_combout\ = (!\inst6|outBCD[3]~63_combout\ & (!\inst6|outBCD[1]~61_combout\ & (\inst6|outBCD[2]~62_combout\ $ (\inst6|outBCD[0]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~63_combout\,
	datab => \inst6|outBCD[2]~62_combout\,
	datac => \inst6|outBCD[0]~60_combout\,
	datad => \inst6|outBCD[1]~61_combout\,
	combout => \inst14|decOut_n~20_combout\);

-- Location: LCCOMB_X73_Y8_N0
\inst14|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~26_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # ((\inst14|decOut_n~18_combout\) # ((\iaaanst1|s_currentState.TFim~q\) # (\inst14|decOut_n~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \inst14|decOut_n~18_combout\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst14|decOut_n~20_combout\,
	combout => \inst14|decOut_n~26_combout\);

-- Location: LCCOMB_X72_Y14_N28
\inst15|decOut_n[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~8_combout\ = (!\inst9|s_count\(5) & (((!\inst9|s_count\(2) & !\inst9|s_count\(3))) # (!\inst9|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(3),
	datad => \inst9|s_count\(5),
	combout => \inst15|decOut_n[6]~8_combout\);

-- Location: LCCOMB_X72_Y14_N2
\inst15|decOut_n[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~14_combout\ = ((!\inst9|s_count\(7) & (!\inst9|s_count\(6) & \inst15|decOut_n[6]~8_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datab => \inst9|s_count\(6),
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst15|decOut_n[6]~8_combout\,
	combout => \inst15|decOut_n[6]~14_combout\);

-- Location: LCCOMB_X72_Y14_N26
\inst6|outBCD2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[1]~15_combout\ = (\inst9|s_count\(4) & ((\inst9|s_count\(2) & ((\inst9|s_count\(3)) # (!\inst9|s_count\(5)))) # (!\inst9|s_count\(2) & (\inst9|s_count\(3) & !\inst9|s_count\(5))))) # (!\inst9|s_count\(4) & (((!\inst9|s_count\(3) & 
-- \inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(3),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD2[1]~15_combout\);

-- Location: LCCOMB_X72_Y14_N16
\inst6|outBCD2[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[1]~23_combout\ = (\inst6|outBCD2[1]~15_combout\) # ((\inst9|s_count\(6)) # (\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~15_combout\,
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	combout => \inst6|outBCD2[1]~23_combout\);

-- Location: LCCOMB_X73_Y14_N22
\inst6|outBCD2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~8_combout\ = (\inst9|s_count\(5) & (((!\inst9|s_count\(3))))) # (!\inst9|s_count\(5) & (\inst9|s_count\(3) & ((\inst9|s_count\(2)) # (\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(1),
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD2[0]~8_combout\);

-- Location: LCCOMB_X73_Y14_N8
\inst6|outBCD2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~9_combout\ = (\inst9|s_count\(2) & ((\inst9|s_count\(5) & ((!\inst9|s_count\(3)))) # (!\inst9|s_count\(5) & (\inst9|s_count\(1) & \inst9|s_count\(3))))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(5) & ((\inst9|s_count\(1)) # 
-- (\inst9|s_count\(3)))) # (!\inst9|s_count\(5) & ((!\inst9|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(1),
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD2[0]~9_combout\);

-- Location: LCCOMB_X73_Y14_N2
\inst6|outBCD2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~7_combout\ = (\inst9|s_count\(4) & ((\inst6|outBCD2[0]~9_combout\))) # (!\inst9|s_count\(4) & (\inst6|outBCD2[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[0]~8_combout\,
	datab => \inst6|outBCD2[0]~9_combout\,
	datac => \inst9|s_count\(4),
	combout => \inst6|outBCD2[0]~7_combout\);

-- Location: LCCOMB_X72_Y14_N14
\inst6|outBCD2[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD2[0]~22_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(7) & \inst6|outBCD2[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(7),
	datad => \inst6|outBCD2[0]~7_combout\,
	combout => \inst6|outBCD2[0]~22_combout\);

-- Location: LCCOMB_X72_Y14_N22
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst9|s_count\(6) & (((!\inst9|s_count\(4) & !\inst9|s_count\(3))) # (!\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(3),
	datad => \inst9|s_count\(5),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X72_Y14_N0
\inst6|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_combout\ = (\inst6|LessThan3~0_combout\ & !\inst9|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~0_combout\,
	datac => \inst9|s_count\(7),
	combout => \inst6|LessThan3~1_combout\);

-- Location: LCCOMB_X72_Y14_N18
\inst15|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~9_combout\ = ((\inst6|outBCD2[1]~23_combout\ & ((\inst6|outBCD2[0]~22_combout\) # (\inst6|LessThan3~1_combout\))) # (!\inst6|outBCD2[1]~23_combout\ & (\inst6|outBCD2[0]~22_combout\ & \inst6|LessThan3~1_combout\))) # 
-- (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~23_combout\,
	datab => \inst6|outBCD2[0]~22_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan3~1_combout\,
	combout => \inst15|decOut_n~9_combout\);

-- Location: LCCOMB_X72_Y14_N20
\inst15|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~10_combout\ = (\inst6|outBCD2[0]~22_combout\) # (((!\inst6|outBCD2[1]~23_combout\ & !\inst6|LessThan3~1_combout\)) # (!\iaaanst1|timeVal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~23_combout\,
	datab => \inst6|outBCD2[0]~22_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan3~1_combout\,
	combout => \inst15|decOut_n~10_combout\);

-- Location: LCCOMB_X72_Y14_N30
\inst15|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~11_combout\ = ((\inst6|outBCD2[1]~23_combout\ & (\inst6|outBCD2[0]~22_combout\ & !\inst6|LessThan3~1_combout\)) # (!\inst6|outBCD2[1]~23_combout\ & (\inst6|outBCD2[0]~22_combout\ $ (!\inst6|LessThan3~1_combout\)))) # 
-- (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~23_combout\,
	datab => \inst6|outBCD2[0]~22_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan3~1_combout\,
	combout => \inst15|decOut_n~11_combout\);

-- Location: LCCOMB_X72_Y14_N24
\inst15|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~12_combout\ = ((\inst6|outBCD2[1]~23_combout\ & (!\inst6|outBCD2[0]~22_combout\ & \inst6|LessThan3~1_combout\))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~23_combout\,
	datab => \inst6|outBCD2[0]~22_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan3~1_combout\,
	combout => \inst15|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X73_Y14_N20
\inst6|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal6~0_combout\ = (!\inst9|s_count\(1) & !\inst9|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(1),
	datad => \inst9|s_count\(2),
	combout => \inst6|Equal6~0_combout\);

-- Location: LCCOMB_X72_Y14_N12
\inst6|outBCD[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~59_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(4) & ((\inst9|s_count\(3)) # (!\inst6|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(3),
	datac => \inst6|Equal6~0_combout\,
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD[1]~59_combout\);

-- Location: LCCOMB_X72_Y14_N4
\inst15|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[1]~15_combout\ = (\inst9|s_count\(7)) # ((\inst9|s_count\(6)) # ((\inst6|outBCD[1]~59_combout\) # (!\iaaanst1|timeVal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(7),
	datab => \inst9|s_count\(6),
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|outBCD[1]~59_combout\,
	combout => \inst15|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X72_Y14_N6
\inst15|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[0]~13_combout\ = ((!\inst6|outBCD2[1]~23_combout\ & (\inst6|outBCD2[0]~22_combout\ $ (!\inst6|LessThan3~1_combout\)))) # (!\iaaanst1|timeVal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD2[1]~23_combout\,
	datab => \inst6|outBCD2[0]~22_combout\,
	datac => \iaaanst1|timeVal~0_combout\,
	datad => \inst6|LessThan3~1_combout\,
	combout => \inst15|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X75_Y19_N12
\inst25|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr0~combout\ = (\inst25|pState.Timer~q\) # ((\inst25|pState.Menu~q\) # (!\inst25|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datab => \inst25|pState.Init~q\,
	datac => \inst25|pState.Menu~q\,
	combout => \inst25|WideOr0~combout\);

-- Location: LCCOMB_X75_Y21_N18
\inst25|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr1~0_combout\ = ((\inst25|pState.TimeProcess~q\) # (\inst25|pState.StartPrg~q\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst25|pState.StartPrg~q\,
	combout => \inst25|WideOr1~0_combout\);

-- Location: LCCOMB_X74_Y19_N30
\inst25|pState~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~30_combout\ = (\inst25|pState.StartPrg~q\ & (\inst3|s_pulsedOut~q\ & !\inst1|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~30_combout\);

-- Location: LCCOMB_X74_Y19_N14
\inst25|pState~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~31_combout\ = (\inst25|pState~30_combout\) # ((\inst25|pState~12_combout\ & (!\inst25|pState~13_combout\ & \inst25|pState.Stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~12_combout\,
	datab => \inst25|pState~13_combout\,
	datac => \inst25|pState.Stop~q\,
	datad => \inst25|pState~30_combout\,
	combout => \inst25|pState~31_combout\);

-- Location: FF_X74_Y19_N15
\inst25|pState.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Stop~q\);

-- Location: LCCOMB_X75_Y19_N26
\inst25|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|WideOr2~0_combout\ = (\inst25|pState.TimeProcess~q\) # ((\inst25|pState.Menu~q\) # (\inst25|pState.Stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst25|pState.Menu~q\,
	datad => \inst25|pState.Stop~q\,
	combout => \inst25|WideOr2~0_combout\);

-- Location: LCCOMB_X76_Y21_N18
\iaaanst1|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr11~combout\ = (\iaaanst1|s_currentState.TLevedar~q\) # (\iaaanst1|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|WideOr11~combout\);

-- Location: LCCOMB_X76_Y21_N4
\iaaanst1|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr12~combout\ = (\iaaanst1|s_currentState.TLevedar~q\) # ((\iaaanst1|s_currentState.TFim~q\) # (!\iaaanst1|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TLevedar~q\,
	datab => \iaaanst1|s_currentState.TInit~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|WideOr12~combout\);

-- Location: LCCOMB_X75_Y21_N14
\inst38|startStop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38|startStop~0_combout\ = !\inst38|startStop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst38|startStop~q\,
	combout => \inst38|startStop~0_combout\);

-- Location: FF_X75_Y21_N15
\inst38|startStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8~combout\,
	d => \inst38|startStop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38|startStop~q\);

-- Location: LCCOMB_X74_Y19_N26
\inst37|startStop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|startStop~0_combout\ = !\inst37|startStop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst37|startStop~q\,
	combout => \inst37|startStop~0_combout\);

-- Location: FF_X74_Y19_N27
\inst37|startStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25|pState.StartPrg~q\,
	d => \inst37|startStop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|startStop~q\);

-- Location: LCCOMB_X75_Y17_N2
\inst36|startStop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst36|startStop~0_combout\ = !\inst36|startStop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst36|startStop~q\,
	combout => \inst36|startStop~0_combout\);

-- Location: FF_X75_Y17_N3
\inst36|startStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25|ALT_INV_pState.Init~q\,
	d => \inst36|startStop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36|startStop~q\);

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

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


