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

-- DATE "05/28/2023 10:13:28"

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
	LCD_RS : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LCD_EN : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END BreadMaker;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
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
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst1|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \inst1|s_dirtyIn~q\ : std_logic;
SIGNAL \inst1|s_previousIn~q\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[15]~0_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[15]~2_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[15]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt[15]~4_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst1|s_pulsedOut~q\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
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
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[13]~2_combout\ : std_logic;
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
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[13]~29_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[13]~4_combout\ : std_logic;
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
SIGNAL \inst3|s_debounceCnt[13]~5_combout\ : std_logic;
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
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|s_count~2_combout\ : std_logic;
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst12|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst12|s_dirtyIn~q\ : std_logic;
SIGNAL \inst12|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst12|s_previousIn~q\ : std_logic;
SIGNAL \inst12|Add0~11\ : std_logic;
SIGNAL \inst12|Add0~12_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \inst12|Add0~37\ : std_logic;
SIGNAL \inst12|Add0~38_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst12|Add0~39\ : std_logic;
SIGNAL \inst12|Add0~40_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst12|Add0~41\ : std_logic;
SIGNAL \inst12|Add0~42_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst12|LessThan0~5_combout\ : std_logic;
SIGNAL \inst12|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_combout\ : std_logic;
SIGNAL \inst12|LessThan0~2_combout\ : std_logic;
SIGNAL \inst12|LessThan0~3_combout\ : std_logic;
SIGNAL \inst12|LessThan0~4_combout\ : std_logic;
SIGNAL \inst12|LessThan0~6_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[2]~0_combout\ : std_logic;
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
SIGNAL \inst12|Add0~35\ : std_logic;
SIGNAL \inst12|Add0~36_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[2]~2_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst12|Add0~43\ : std_logic;
SIGNAL \inst12|Add0~44_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt[2]~4_combout\ : std_logic;
SIGNAL \inst12|s_debounceCnt~24_combout\ : std_logic;
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
SIGNAL \inst12|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst12|s_pulsedOut~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~8_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[0]~9\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~13_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~8_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TExtra~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~14\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~15_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[2]~16\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~17_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[3]~18\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~19_combout\ : std_logic;
SIGNAL \iaaanst1|s_valueExtra[3]~1_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[4]~20\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~21_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[5]~22\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~23_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[6]~24\ : std_logic;
SIGNAL \inst4|Counter|s_count[7]~25_combout\ : std_logic;
SIGNAL \iaaanst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst25|pState~10_combout\ : std_logic;
SIGNAL \inst25|pState~25_combout\ : std_logic;
SIGNAL \inst25|pState~26_combout\ : std_logic;
SIGNAL \inst25|pState~27_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst13|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst13|s_dirtyIn~q\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \inst13|s_previousIn~q\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~3_combout\ : std_logic;
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
SIGNAL \inst13|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
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
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \inst13|LessThan0~5_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|LessThan0~3_combout\ : std_logic;
SIGNAL \inst13|LessThan0~4_combout\ : std_logic;
SIGNAL \inst13|LessThan0~6_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \inst13|Add0~28_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt[22]~4_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst13|s_pulsedOut~q\ : std_logic;
SIGNAL \inst25|pState~28_combout\ : std_logic;
SIGNAL \inst25|pState.Menu~q\ : std_logic;
SIGNAL \inst25|pState~9_combout\ : std_logic;
SIGNAL \inst25|pState~11_combout\ : std_logic;
SIGNAL \inst25|pState~12_combout\ : std_logic;
SIGNAL \inst25|pState~16_combout\ : std_logic;
SIGNAL \inst25|pState~15_combout\ : std_logic;
SIGNAL \inst25|pState~17_combout\ : std_logic;
SIGNAL \inst25|pState.Extra~q\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~12_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~10_combout\ : std_logic;
SIGNAL \inst9|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Counter|s_count[1]~11_combout\ : std_logic;
SIGNAL \iaaanst1|Equal0~0_combout\ : std_logic;
SIGNAL \iaaanst1|Equal0~2_combout\ : std_logic;
SIGNAL \iaaanst1|Selector10~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~9_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TInit~q\ : std_logic;
SIGNAL \iaaanst1|Selector11~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~10_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TAmassar~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~11_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TLevedar~q\ : std_logic;
SIGNAL \iaaanst1|Selector13~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector13~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState~12_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TCozer~q\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~0_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~1_combout\ : std_logic;
SIGNAL \iaaanst1|sync_proc~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~2_combout\ : std_logic;
SIGNAL \iaaanst1|sync_proc~2_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~3_combout\ : std_logic;
SIGNAL \iaaanst1|s_stateChanged~q\ : std_logic;
SIGNAL \iaaanst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst11|s_counter[0]~31_combout\ : std_logic;
SIGNAL \inst11|s_counter[26]~33_combout\ : std_logic;
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
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|s_counter[27]~87\ : std_logic;
SIGNAL \inst11|s_counter[28]~88_combout\ : std_logic;
SIGNAL \inst11|s_counter[28]~89\ : std_logic;
SIGNAL \inst11|s_counter[29]~90_combout\ : std_logic;
SIGNAL \inst11|s_counter[29]~91\ : std_logic;
SIGNAL \inst11|s_counter[30]~92_combout\ : std_logic;
SIGNAL \inst11|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|pulse~0_combout\ : std_logic;
SIGNAL \inst11|pulse~q\ : std_logic;
SIGNAL \iaaanst1|WideOr10~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \iaaanst1|s_temp~q\ : std_logic;
SIGNAL \inst9|Add0~19_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|dataOut~0_combout\ : std_logic;
SIGNAL \inst|dataOut~q\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|Add0~21_combout\ : std_logic;
SIGNAL \inst9|Add0~1_combout\ : std_logic;
SIGNAL \inst9|Add0~3_combout\ : std_logic;
SIGNAL \iaaanst1|addr[2]~4_combout\ : std_logic;
SIGNAL \iaaanst1|addr[1]~5_combout\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|Add0~5_combout\ : std_logic;
SIGNAL \inst9|s_count[2]~0_combout\ : std_logic;
SIGNAL \inst9|Add0~2\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \iaaanst1|WideOr11~combout\ : std_logic;
SIGNAL \inst9|Add0~24_combout\ : std_logic;
SIGNAL \inst9|Add0~25_combout\ : std_logic;
SIGNAL \inst9|Add0~23_combout\ : std_logic;
SIGNAL \inst9|Add0~26_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \iaaanst1|addr[0]~6_combout\ : std_logic;
SIGNAL \inst27|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|Add0~35_combout\ : std_logic;
SIGNAL \inst9|Add0~36_combout\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst27|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Add0~33_combout\ : std_logic;
SIGNAL \inst9|Add0~34_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|Add0~7_combout\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~27_combout\ : std_logic;
SIGNAL \inst9|Add0~29_combout\ : std_logic;
SIGNAL \inst9|Add0~28\ : std_logic;
SIGNAL \inst9|Add0~30_combout\ : std_logic;
SIGNAL \inst9|Add0~32_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal20~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst9|s_cntZero~q\ : std_logic;
SIGNAL \iaaanst1|s_currentState~13_combout\ : std_logic;
SIGNAL \iaaanst1|s_currentState.TFim~q\ : std_logic;
SIGNAL \iaaanst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst25|pState~18_combout\ : std_logic;
SIGNAL \inst25|pState~19_combout\ : std_logic;
SIGNAL \inst25|pState~20_combout\ : std_logic;
SIGNAL \inst25|pState.Timer~q\ : std_logic;
SIGNAL \inst25|pState~21_combout\ : std_logic;
SIGNAL \inst25|pState~22_combout\ : std_logic;
SIGNAL \inst25|pState.TimeProcess~q\ : std_logic;
SIGNAL \inst5|s_count[18]~1_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|s_count~0_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|s_count~7_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|s_count~8_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|s_count~6_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|s_count~5_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|s_count~3_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|s_count~4_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|s_count~9_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|s_count~10_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|s_count~11_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|s_count~12_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|s_count~13_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|s_count~14_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|s_count~15_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|s_count~16_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|s_count~17_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|s_count~18_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|s_count~19_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|s_count~20_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|s_count~21_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|s_count~22_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|s_count~23_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|s_count~24_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|s_count~25_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|s_count~26_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|s_count~27_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|s_count~28_combout\ : std_logic;
SIGNAL \inst5|Add0~55\ : std_logic;
SIGNAL \inst5|Add0~56_combout\ : std_logic;
SIGNAL \inst5|s_count~29_combout\ : std_logic;
SIGNAL \inst5|Add0~57\ : std_logic;
SIGNAL \inst5|Add0~58_combout\ : std_logic;
SIGNAL \inst5|s_count~30_combout\ : std_logic;
SIGNAL \inst5|Add0~59\ : std_logic;
SIGNAL \inst5|Add0~60_combout\ : std_logic;
SIGNAL \inst5|s_count~31_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Add0~61\ : std_logic;
SIGNAL \inst5|Add0~62_combout\ : std_logic;
SIGNAL \inst5|s_count~32_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|s_result~0_combout\ : std_logic;
SIGNAL \inst5|s_result~1_combout\ : std_logic;
SIGNAL \inst5|s_result~q\ : std_logic;
SIGNAL \inst25|pState~13_combout\ : std_logic;
SIGNAL \inst25|pState~14_combout\ : std_logic;
SIGNAL \inst25|pState.StartPrg~q\ : std_logic;
SIGNAL \inst25|pState~23_combout\ : std_logic;
SIGNAL \inst25|pState~24_combout\ : std_logic;
SIGNAL \inst25|pState.Init~q\ : std_logic;
SIGNAL \inst29|clk_count_400hz[0]~20_combout\ : std_logic;
SIGNAL \inst29|LessThan0~0_combout\ : std_logic;
SIGNAL \inst29|LessThan0~1_combout\ : std_logic;
SIGNAL \inst29|LessThan0~2_combout\ : std_logic;
SIGNAL \inst29|LessThan0~3_combout\ : std_logic;
SIGNAL \inst29|LessThan0~4_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[2]~46_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[0]~21\ : std_logic;
SIGNAL \inst29|clk_count_400hz[1]~22_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[1]~23\ : std_logic;
SIGNAL \inst29|clk_count_400hz[2]~24_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[2]~25\ : std_logic;
SIGNAL \inst29|clk_count_400hz[3]~26_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[3]~27\ : std_logic;
SIGNAL \inst29|clk_count_400hz[4]~28_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[4]~29\ : std_logic;
SIGNAL \inst29|clk_count_400hz[5]~30_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[5]~31\ : std_logic;
SIGNAL \inst29|clk_count_400hz[6]~32_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[6]~33\ : std_logic;
SIGNAL \inst29|clk_count_400hz[7]~34_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[7]~35\ : std_logic;
SIGNAL \inst29|clk_count_400hz[8]~36_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[8]~37\ : std_logic;
SIGNAL \inst29|clk_count_400hz[9]~38_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[9]~39\ : std_logic;
SIGNAL \inst29|clk_count_400hz[10]~40_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[10]~41\ : std_logic;
SIGNAL \inst29|clk_count_400hz[11]~42_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[11]~43\ : std_logic;
SIGNAL \inst29|clk_count_400hz[12]~44_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[12]~45\ : std_logic;
SIGNAL \inst29|clk_count_400hz[13]~47_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[13]~48\ : std_logic;
SIGNAL \inst29|clk_count_400hz[14]~49_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[14]~50\ : std_logic;
SIGNAL \inst29|clk_count_400hz[15]~51_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[15]~52\ : std_logic;
SIGNAL \inst29|clk_count_400hz[16]~53_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[16]~54\ : std_logic;
SIGNAL \inst29|clk_count_400hz[17]~55_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[17]~56\ : std_logic;
SIGNAL \inst29|clk_count_400hz[18]~57_combout\ : std_logic;
SIGNAL \inst29|clk_count_400hz[18]~58\ : std_logic;
SIGNAL \inst29|clk_count_400hz[19]~59_combout\ : std_logic;
SIGNAL \inst29|LessThan0~5_combout\ : std_logic;
SIGNAL \inst29|clk_400hz_enable~0_combout\ : std_logic;
SIGNAL \inst29|clk_400hz_enable~q\ : std_logic;
SIGNAL \inst29|state.hold~q\ : std_logic;
SIGNAL \inst29|lcd_rs~0_combout\ : std_logic;
SIGNAL \inst29|state.drop_lcd_e~q\ : std_logic;
SIGNAL \inst29|state.reset1~feeder_combout\ : std_logic;
SIGNAL \inst29|state.reset1~q\ : std_logic;
SIGNAL \inst29|Selector18~0_combout\ : std_logic;
SIGNAL \inst29|next_command.reset2~q\ : std_logic;
SIGNAL \inst29|state~37_combout\ : std_logic;
SIGNAL \inst29|state.reset2~q\ : std_logic;
SIGNAL \inst29|Selector19~0_combout\ : std_logic;
SIGNAL \inst29|next_command.reset3~q\ : std_logic;
SIGNAL \inst29|state~35_combout\ : std_logic;
SIGNAL \inst29|state.reset3~q\ : std_logic;
SIGNAL \inst29|Selector12~0_combout\ : std_logic;
SIGNAL \inst29|next_command.func_set~q\ : std_logic;
SIGNAL \inst29|state~36_combout\ : std_logic;
SIGNAL \inst29|state.func_set~q\ : std_logic;
SIGNAL \inst29|Selector20~0_combout\ : std_logic;
SIGNAL \inst29|next_command.display_off~q\ : std_logic;
SIGNAL \inst29|state~33_combout\ : std_logic;
SIGNAL \inst29|state.display_off~q\ : std_logic;
SIGNAL \inst29|Selector21~0_combout\ : std_logic;
SIGNAL \inst29|next_command.display_clear~q\ : std_logic;
SIGNAL \inst29|state~34_combout\ : std_logic;
SIGNAL \inst29|state.display_clear~q\ : std_logic;
SIGNAL \inst29|Selector13~0_combout\ : std_logic;
SIGNAL \inst29|next_command.display_on~q\ : std_logic;
SIGNAL \inst29|state~32_combout\ : std_logic;
SIGNAL \inst29|state.display_on~q\ : std_logic;
SIGNAL \inst29|Selector14~0_combout\ : std_logic;
SIGNAL \inst29|next_command.mode_set~q\ : std_logic;
SIGNAL \inst29|state~31_combout\ : std_logic;
SIGNAL \inst29|state.mode_set~q\ : std_logic;
SIGNAL \inst29|char_count[0]~5_combout\ : std_logic;
SIGNAL \inst29|Selector26~0_combout\ : std_logic;
SIGNAL \inst29|char_count[4]~7_combout\ : std_logic;
SIGNAL \inst29|char_count[0]~6\ : std_logic;
SIGNAL \inst29|char_count[1]~8_combout\ : std_logic;
SIGNAL \inst29|Selector25~0_combout\ : std_logic;
SIGNAL \inst29|char_count[1]~9\ : std_logic;
SIGNAL \inst29|char_count[2]~10_combout\ : std_logic;
SIGNAL \inst29|Selector24~0_combout\ : std_logic;
SIGNAL \inst29|char_count[2]~11\ : std_logic;
SIGNAL \inst29|char_count[3]~12_combout\ : std_logic;
SIGNAL \inst29|Selector23~0_combout\ : std_logic;
SIGNAL \inst29|Equal1~0_combout\ : std_logic;
SIGNAL \inst29|char_count[3]~13\ : std_logic;
SIGNAL \inst29|char_count[4]~14_combout\ : std_logic;
SIGNAL \inst29|Selector22~0_combout\ : std_logic;
SIGNAL \inst29|Selector16~2_combout\ : std_logic;
SIGNAL \inst29|Selector16~3_combout\ : std_logic;
SIGNAL \inst29|next_command.line2~q\ : std_logic;
SIGNAL \inst29|state~29_combout\ : std_logic;
SIGNAL \inst29|state.line2~q\ : std_logic;
SIGNAL \inst29|Selector17~2_combout\ : std_logic;
SIGNAL \inst29|Selector17~3_combout\ : std_logic;
SIGNAL \inst29|next_command.return_home~q\ : std_logic;
SIGNAL \inst29|state~30_combout\ : std_logic;
SIGNAL \inst29|state.return_home~q\ : std_logic;
SIGNAL \inst29|Selector4~1_combout\ : std_logic;
SIGNAL \inst29|Selector15~0_combout\ : std_logic;
SIGNAL \inst29|Selector15~1_combout\ : std_logic;
SIGNAL \inst29|next_command.print_string~q\ : std_logic;
SIGNAL \inst29|state~28_combout\ : std_logic;
SIGNAL \inst29|state.print_string~q\ : std_logic;
SIGNAL \inst29|Selector1~0_combout\ : std_logic;
SIGNAL \inst29|lcd_rs~q\ : std_logic;
SIGNAL \inst29|lcd_e~0_combout\ : std_logic;
SIGNAL \inst29|lcd_e~q\ : std_logic;
SIGNAL \iaaanst1|ledRed~0_combout\ : std_logic;
SIGNAL \iaaanst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst23|WideOr2~5_combout\ : std_logic;
SIGNAL \inst23|WideOr2~3_combout\ : std_logic;
SIGNAL \inst23|WideOr2~10_combout\ : std_logic;
SIGNAL \inst19|Mux3~26_combout\ : std_logic;
SIGNAL \inst19|Mux3~27_combout\ : std_logic;
SIGNAL \inst19|Mux3~24_combout\ : std_logic;
SIGNAL \inst19|Mux3~20_combout\ : std_logic;
SIGNAL \inst25|en_3~combout\ : std_logic;
SIGNAL \inst23|LessThan1~0_combout\ : std_logic;
SIGNAL \inst23|LessThan1~1_combout\ : std_logic;
SIGNAL \inst23|LessThan4~0_combout\ : std_logic;
SIGNAL \inst23|LessThan0~0_combout\ : std_logic;
SIGNAL \inst23|LessThan0~1_combout\ : std_logic;
SIGNAL \inst19|Mux3~19_combout\ : std_logic;
SIGNAL \inst19|Mux3~21_combout\ : std_logic;
SIGNAL \inst19|Mux3~22_combout\ : std_logic;
SIGNAL \inst19|Mux3~23_combout\ : std_logic;
SIGNAL \inst19|Mux3~combout\ : std_logic;
SIGNAL \inst19|Mux1~6_combout\ : std_logic;
SIGNAL \inst19|Mux1~5_combout\ : std_logic;
SIGNAL \inst19|Mux1~4_combout\ : std_logic;
SIGNAL \inst19|Mux1~14_combout\ : std_logic;
SIGNAL \inst23|WideOr0~5_combout\ : std_logic;
SIGNAL \inst23|WideOr0~combout\ : std_logic;
SIGNAL \inst19|Mux1~12_combout\ : std_logic;
SIGNAL \inst19|Mux1~13_combout\ : std_logic;
SIGNAL \inst19|Mux1~combout\ : std_logic;
SIGNAL \inst19|Mux2~16_combout\ : std_logic;
SIGNAL \inst19|Mux2~17_combout\ : std_logic;
SIGNAL \inst19|Mux2~19_combout\ : std_logic;
SIGNAL \inst19|Mux2~20_combout\ : std_logic;
SIGNAL \inst19|Mux2~18_combout\ : std_logic;
SIGNAL \inst23|WideOr1~3_combout\ : std_logic;
SIGNAL \inst23|WideOr1~12_combout\ : std_logic;
SIGNAL \inst19|Mux2~combout\ : std_logic;
SIGNAL \inst19|Mux0~8_combout\ : std_logic;
SIGNAL \inst19|Mux0~9_combout\ : std_logic;
SIGNAL \inst23|outBCD~1_combout\ : std_logic;
SIGNAL \inst19|Mux0~11_combout\ : std_logic;
SIGNAL \inst19|Mux0~12_combout\ : std_logic;
SIGNAL \inst19|Mux0~10_combout\ : std_logic;
SIGNAL \inst19|Mux0~combout\ : std_logic;
SIGNAL \inst17|decOut_n~0_combout\ : std_logic;
SIGNAL \inst17|decOut_n~1_combout\ : std_logic;
SIGNAL \inst17|decOut_n~2_combout\ : std_logic;
SIGNAL \inst17|decOut_n~3_combout\ : std_logic;
SIGNAL \inst17|decOut_n~4_combout\ : std_logic;
SIGNAL \inst17|decOut_n~5_combout\ : std_logic;
SIGNAL \inst17|decOut_n~6_combout\ : std_logic;
SIGNAL \inst16|decOut_n~7_combout\ : std_logic;
SIGNAL \inst16|decOut_n~29_combout\ : std_logic;
SIGNAL \inst16|decOut_n~28_combout\ : std_logic;
SIGNAL \inst23|Equal2~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~18_combout\ : std_logic;
SIGNAL \inst23|Equal38~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~25_combout\ : std_logic;
SIGNAL \inst23|outBCD~0_combout\ : std_logic;
SIGNAL \inst23|outBCD_2~17_combout\ : std_logic;
SIGNAL \inst23|outBCD_2~16_combout\ : std_logic;
SIGNAL \inst18|muxOut[1]~2_combout\ : std_logic;
SIGNAL \inst23|outBCD_2~19_combout\ : std_logic;
SIGNAL \inst23|outBCD_2~20_combout\ : std_logic;
SIGNAL \inst23|outBCD_2~18_combout\ : std_logic;
SIGNAL \inst16|decOut_n~16_combout\ : std_logic;
SIGNAL \inst16|decOut_n~17_combout\ : std_logic;
SIGNAL \inst16|decOut_n~18_combout\ : std_logic;
SIGNAL \inst16|decOut_n~19_combout\ : std_logic;
SIGNAL \inst16|decOut_n~20_combout\ : std_logic;
SIGNAL \inst16|decOut_n~21_combout\ : std_logic;
SIGNAL \inst16|decOut_n~22_combout\ : std_logic;
SIGNAL \inst16|decOut_n~23_combout\ : std_logic;
SIGNAL \inst16|decOut_n~24_combout\ : std_logic;
SIGNAL \inst16|decOut_n~25_combout\ : std_logic;
SIGNAL \inst16|decOut_n~26_combout\ : std_logic;
SIGNAL \inst16|decOut_n~27_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~60_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~59_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~28_combout\ : std_logic;
SIGNAL \inst6|outBCD[1]~63_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~42_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~43_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~41_combout\ : std_logic;
SIGNAL \inst6|outBCD[2]~64_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~54_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~53_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~52_combout\ : std_logic;
SIGNAL \inst6|outBCD[3]~65_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~13_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~62_combout\ : std_logic;
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
SIGNAL \inst6|outBCD_2[0]~8_combout\ : std_logic;
SIGNAL \inst6|outBCD_2[0]~9_combout\ : std_logic;
SIGNAL \inst6|outBCD_2[0]~7_combout\ : std_logic;
SIGNAL \inst6|outBCD_2[0]~22_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_combout\ : std_logic;
SIGNAL \inst6|outBCD_2[1]~15_combout\ : std_logic;
SIGNAL \inst6|outBCD_2[1]~23_combout\ : std_logic;
SIGNAL \inst15|decOut_n~9_combout\ : std_logic;
SIGNAL \inst15|decOut_n~10_combout\ : std_logic;
SIGNAL \inst15|decOut_n~11_combout\ : std_logic;
SIGNAL \inst15|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \inst6|Equal6~0_combout\ : std_logic;
SIGNAL \inst6|outBCD[0]~61_combout\ : std_logic;
SIGNAL \inst15|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \inst15|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \inst29|Selector2~0_combout\ : std_logic;
SIGNAL \inst29|Selector3~0_combout\ : std_logic;
SIGNAL \inst29|Mux53~0_combout\ : std_logic;
SIGNAL \inst29|Mux53~1_combout\ : std_logic;
SIGNAL \inst29|Mux53~2_combout\ : std_logic;
SIGNAL \inst29|Mux32~0_combout\ : std_logic;
SIGNAL \inst29|Mux51~0_combout\ : std_logic;
SIGNAL \inst29|Mux60~8_combout\ : std_logic;
SIGNAL \inst29|Mux60~10_combout\ : std_logic;
SIGNAL \inst29|Mux19~0_combout\ : std_logic;
SIGNAL \inst29|Mux19~1_combout\ : std_logic;
SIGNAL \inst29|Mux4~1_combout\ : std_logic;
SIGNAL \inst29|Mux4~0_combout\ : std_logic;
SIGNAL \inst29|Mux60~2_combout\ : std_logic;
SIGNAL \inst29|Mux60~3_combout\ : std_logic;
SIGNAL \inst29|Mux60~4_combout\ : std_logic;
SIGNAL \inst29|Mux39~0_combout\ : std_logic;
SIGNAL \inst29|Mux39~1_combout\ : std_logic;
SIGNAL \inst29|Mux60~5_combout\ : std_logic;
SIGNAL \inst29|Mux25~0_combout\ : std_logic;
SIGNAL \inst29|Mux46~0_combout\ : std_logic;
SIGNAL \inst29|Mux60~6_combout\ : std_logic;
SIGNAL \inst29|Mux60~11_combout\ : std_logic;
SIGNAL \inst29|Mux60~12_combout\ : std_logic;
SIGNAL \inst29|Mux60~7_combout\ : std_logic;
SIGNAL \inst29|Mux60~9_combout\ : std_logic;
SIGNAL \inst29|Mux63~2_combout\ : std_logic;
SIGNAL \inst29|Mux63~3_combout\ : std_logic;
SIGNAL \inst29|Mux35~0_combout\ : std_logic;
SIGNAL \inst29|Mux27~0_combout\ : std_logic;
SIGNAL \inst29|Mux48~0_combout\ : std_logic;
SIGNAL \inst29|Mux63~0_combout\ : std_logic;
SIGNAL \inst29|Mux56~0_combout\ : std_logic;
SIGNAL \inst29|Mux63~1_combout\ : std_logic;
SIGNAL \inst29|Mux63~4_combout\ : std_logic;
SIGNAL \inst29|Mux21~0_combout\ : std_logic;
SIGNAL \inst29|Mux56~1_combout\ : std_logic;
SIGNAL \inst29|Mux63~13_combout\ : std_logic;
SIGNAL \inst29|Mux63~14_combout\ : std_logic;
SIGNAL \inst29|Mux49~1_combout\ : std_logic;
SIGNAL \inst29|Mux49~0_combout\ : std_logic;
SIGNAL \inst29|Mux63~5_combout\ : std_logic;
SIGNAL \inst29|Mux63~6_combout\ : std_logic;
SIGNAL \inst29|Mux28~0_combout\ : std_logic;
SIGNAL \inst29|Mux63~7_combout\ : std_logic;
SIGNAL \inst29|Mux63~8_combout\ : std_logic;
SIGNAL \inst29|Mux42~1_combout\ : std_logic;
SIGNAL \inst29|Mux42~0_combout\ : std_logic;
SIGNAL \inst29|Mux63~9_combout\ : std_logic;
SIGNAL \inst29|Mux15~0_combout\ : std_logic;
SIGNAL \inst29|Mux38~0_combout\ : std_logic;
SIGNAL \inst29|Mux38~1_combout\ : std_logic;
SIGNAL \inst29|Mux63~10_combout\ : std_logic;
SIGNAL \inst29|Mux63~11_combout\ : std_logic;
SIGNAL \inst29|Mux63~12_combout\ : std_logic;
SIGNAL \inst29|Mux63~15_combout\ : std_logic;
SIGNAL \inst29|Mux62~8_combout\ : std_logic;
SIGNAL \inst29|Mux58~1_combout\ : std_logic;
SIGNAL \inst29|Mux58~0_combout\ : std_logic;
SIGNAL \inst29|Mux65~1_combout\ : std_logic;
SIGNAL \inst29|Mux65~0_combout\ : std_logic;
SIGNAL \inst29|Mux37~0_combout\ : std_logic;
SIGNAL \inst29|Mux62~29_combout\ : std_logic;
SIGNAL \inst29|Mux65~2_combout\ : std_logic;
SIGNAL \inst29|Mux62~28_combout\ : std_logic;
SIGNAL \inst29|Mux23~0_combout\ : std_logic;
SIGNAL \inst29|Mux23~1_combout\ : std_logic;
SIGNAL \inst29|Mux51~1_combout\ : std_logic;
SIGNAL \inst29|Mux51~2_combout\ : std_logic;
SIGNAL \inst29|Mux62~9_combout\ : std_logic;
SIGNAL \inst29|Mux30~0_combout\ : std_logic;
SIGNAL \inst29|Mux30~1_combout\ : std_logic;
SIGNAL \inst29|Mux62~11_combout\ : std_logic;
SIGNAL \inst29|Mux62~12_combout\ : std_logic;
SIGNAL \inst29|Mux65~9_combout\ : std_logic;
SIGNAL \inst29|Mux64~7_combout\ : std_logic;
SIGNAL \inst29|Mux65~8_combout\ : std_logic;
SIGNAL \inst29|Mux65~10_combout\ : std_logic;
SIGNAL \inst29|Mux65~3_combout\ : std_logic;
SIGNAL \inst29|Mux65~5_combout\ : std_logic;
SIGNAL \inst29|Mux65~6_combout\ : std_logic;
SIGNAL \inst29|Mux65~4_combout\ : std_logic;
SIGNAL \inst29|Mux65~7_combout\ : std_logic;
SIGNAL \inst29|Mux65~11_combout\ : std_logic;
SIGNAL \inst29|Mux65~12_combout\ : std_logic;
SIGNAL \inst29|Mux65~13_combout\ : std_logic;
SIGNAL \inst29|Mux65~14_combout\ : std_logic;
SIGNAL \inst29|Mux62~24_combout\ : std_logic;
SIGNAL \inst29|Mux43~0_combout\ : std_logic;
SIGNAL \inst29|Mux64~12_combout\ : std_logic;
SIGNAL \inst29|Mux64~13_combout\ : std_logic;
SIGNAL \inst29|Mux29~0_combout\ : std_logic;
SIGNAL \inst29|Mux50~0_combout\ : std_logic;
SIGNAL \inst29|Mux64~10_combout\ : std_logic;
SIGNAL \inst29|Mux57~0_combout\ : std_logic;
SIGNAL \inst29|Mux57~1_combout\ : std_logic;
SIGNAL \inst29|Mux57~2_combout\ : std_logic;
SIGNAL \inst29|Mux16~0_combout\ : std_logic;
SIGNAL \inst29|Mux64~8_combout\ : std_logic;
SIGNAL \inst29|Mux64~9_combout\ : std_logic;
SIGNAL \inst29|Mux64~11_combout\ : std_logic;
SIGNAL \inst29|Mux36~0_combout\ : std_logic;
SIGNAL \inst29|Mux36~1_combout\ : std_logic;
SIGNAL \inst29|Mux64~5_combout\ : std_logic;
SIGNAL \inst29|Mux1~0_combout\ : std_logic;
SIGNAL \inst29|Mux1~1_combout\ : std_logic;
SIGNAL \inst29|Mux64~2_combout\ : std_logic;
SIGNAL \inst29|Mux8~0_combout\ : std_logic;
SIGNAL \inst29|Mux61~0_combout\ : std_logic;
SIGNAL \inst29|Mux64~3_combout\ : std_logic;
SIGNAL \inst29|Mux64~15_combout\ : std_logic;
SIGNAL \inst29|Mux64~4_combout\ : std_logic;
SIGNAL \inst29|Mux64~6_combout\ : std_logic;
SIGNAL \inst29|Mux64~14_combout\ : std_logic;
SIGNAL \inst29|Mux55~0_combout\ : std_logic;
SIGNAL \inst29|Mux55~1_combout\ : std_logic;
SIGNAL \inst29|Mux62~27_combout\ : std_logic;
SIGNAL \inst29|Mux34~0_combout\ : std_logic;
SIGNAL \inst29|Mux62~25_combout\ : std_logic;
SIGNAL \inst29|Mux62~26_combout\ : std_logic;
SIGNAL \inst29|Mux48~1_combout\ : std_logic;
SIGNAL \inst29|Mux48~2_combout\ : std_logic;
SIGNAL \inst29|Mux27~1_combout\ : std_logic;
SIGNAL \inst29|Mux27~2_combout\ : std_logic;
SIGNAL \inst29|Mux20~0_combout\ : std_logic;
SIGNAL \inst29|Mux20~1_combout\ : std_logic;
SIGNAL \inst29|Mux62~10_combout\ : std_logic;
SIGNAL \inst29|Mux62~32_combout\ : std_logic;
SIGNAL \inst29|Mux62~13_combout\ : std_logic;
SIGNAL \inst29|Mux62~33_combout\ : std_logic;
SIGNAL \inst29|Mux62~17_combout\ : std_logic;
SIGNAL \inst29|Mux62~14_combout\ : std_logic;
SIGNAL \inst29|Mux62~15_combout\ : std_logic;
SIGNAL \inst29|Mux62~16_combout\ : std_logic;
SIGNAL \inst29|Mux62~18_combout\ : std_logic;
SIGNAL \inst29|Mux62~21_combout\ : std_logic;
SIGNAL \inst29|Mux62~19_combout\ : std_logic;
SIGNAL \inst29|Mux62~20_combout\ : std_logic;
SIGNAL \inst29|Mux62~22_combout\ : std_logic;
SIGNAL \inst29|Mux62~23_combout\ : std_logic;
SIGNAL \inst29|Mux62~30_combout\ : std_logic;
SIGNAL \inst29|Mux62~31_combout\ : std_logic;
SIGNAL \inst29|Mux33~0_combout\ : std_logic;
SIGNAL \inst29|Mux61~12_combout\ : std_logic;
SIGNAL \inst29|Mux61~1_combout\ : std_logic;
SIGNAL \inst29|Mux61~2_combout\ : std_logic;
SIGNAL \inst29|Mux61~3_combout\ : std_logic;
SIGNAL \inst29|Mux61~4_combout\ : std_logic;
SIGNAL \inst29|Mux61~5_combout\ : std_logic;
SIGNAL \inst29|Mux61~6_combout\ : std_logic;
SIGNAL \inst29|Mux61~8_combout\ : std_logic;
SIGNAL \inst29|Mux61~7_combout\ : std_logic;
SIGNAL \inst29|Mux61~9_combout\ : std_logic;
SIGNAL \inst29|Mux61~10_combout\ : std_logic;
SIGNAL \inst29|Mux61~11_combout\ : std_logic;
SIGNAL \inst29|Mux61~13_combout\ : std_logic;
SIGNAL \inst29|Selector4~0_combout\ : std_logic;
SIGNAL \inst29|data_bus_value~0_combout\ : std_logic;
SIGNAL \inst29|Selector3~1_combout\ : std_logic;
SIGNAL \inst29|Selector4~2_combout\ : std_logic;
SIGNAL \inst29|Selector4~3_combout\ : std_logic;
SIGNAL \inst29|Selector4~4_combout\ : std_logic;
SIGNAL \inst29|Selector4~5_combout\ : std_logic;
SIGNAL \inst29|data_bus_value[5]~1_combout\ : std_logic;
SIGNAL \inst29|Selector5~0_combout\ : std_logic;
SIGNAL \inst29|Selector6~0_combout\ : std_logic;
SIGNAL \inst29|Selector6~1_combout\ : std_logic;
SIGNAL \inst29|Mux45~1_combout\ : std_logic;
SIGNAL \inst29|Mux45~0_combout\ : std_logic;
SIGNAL \inst29|Mux66~7_combout\ : std_logic;
SIGNAL \inst29|Mux52~0_combout\ : std_logic;
SIGNAL \inst29|Mux52~1_combout\ : std_logic;
SIGNAL \inst29|Mux66~11_combout\ : std_logic;
SIGNAL \inst29|Mux59~0_combout\ : std_logic;
SIGNAL \inst29|Mux59~1_combout\ : std_logic;
SIGNAL \inst29|Mux66~12_combout\ : std_logic;
SIGNAL \inst29|Mux12~1_combout\ : std_logic;
SIGNAL \inst29|Mux66~9_combout\ : std_logic;
SIGNAL \inst29|Mux31~0_combout\ : std_logic;
SIGNAL \inst29|Mux12~0_combout\ : std_logic;
SIGNAL \inst29|Mux66~8_combout\ : std_logic;
SIGNAL \inst29|Mux66~10_combout\ : std_logic;
SIGNAL \inst29|Mux66~13_combout\ : std_logic;
SIGNAL \inst29|Mux38~2_combout\ : std_logic;
SIGNAL \inst29|Mux38~3_combout\ : std_logic;
SIGNAL \inst29|Mux66~5_combout\ : std_logic;
SIGNAL \inst29|Mux24~0_combout\ : std_logic;
SIGNAL \inst29|Mux66~1_combout\ : std_logic;
SIGNAL \inst29|Mux13~0_combout\ : std_logic;
SIGNAL \inst29|Mux66~0_combout\ : std_logic;
SIGNAL \inst29|Mux3~0_combout\ : std_logic;
SIGNAL \inst29|Mux10~0_combout\ : std_logic;
SIGNAL \inst29|Mux66~2_combout\ : std_logic;
SIGNAL \inst29|Mux66~3_combout\ : std_logic;
SIGNAL \inst29|Mux66~4_combout\ : std_logic;
SIGNAL \inst29|Mux66~6_combout\ : std_logic;
SIGNAL \inst29|Mux66~14_combout\ : std_logic;
SIGNAL \inst29|Selector6~2_combout\ : std_logic;
SIGNAL \inst29|Selector6~3_combout\ : std_logic;
SIGNAL \inst29|Selector7~0_combout\ : std_logic;
SIGNAL \inst29|Add1~0_combout\ : std_logic;
SIGNAL \inst29|Add1~1_combout\ : std_logic;
SIGNAL \inst29|Selector7~1_combout\ : std_logic;
SIGNAL \inst29|Selector7~2_combout\ : std_logic;
SIGNAL \inst29|Selector8~0_combout\ : std_logic;
SIGNAL \inst29|Selector8~1_combout\ : std_logic;
SIGNAL \inst29|Selector8~2_combout\ : std_logic;
SIGNAL \inst29|Selector9~0_combout\ : std_logic;
SIGNAL \inst29|Selector9~1_combout\ : std_logic;
SIGNAL \inst13|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst11|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst4|Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst29|char_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst9|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst29|clk_count_400hz\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst5|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst12|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst29|data_bus_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \iaaanst1|s_valueExtra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst25|ALT_INV_pState.Init~q\ : std_logic;
SIGNAL \inst29|ALT_INV_state.print_string~q\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \inst29|ALT_INV_data_bus_value\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \inst9|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_decOut_n~0_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \iaaanst1|ALT_INV_ledRed~0_combout\ : std_logic;
SIGNAL \inst29|ALT_INV_lcd_e~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LCD_RS <= ww_LCD_RS;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LCD_EN <= ww_LCD_EN;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LCD_DATA <= ww_LCD_DATA;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst25|ALT_INV_pState.Init~q\ <= NOT \inst25|pState.Init~q\;
\inst29|ALT_INV_state.print_string~q\ <= NOT \inst29|state.print_string~q\;
\iaaanst1|ALT_INV_WideOr11~combout\ <= NOT \iaaanst1|WideOr11~combout\;
\iaaanst1|ALT_INV_WideOr10~0_combout\ <= NOT \iaaanst1|WideOr10~0_combout\;
\inst29|ALT_INV_data_bus_value\(3) <= NOT \inst29|data_bus_value\(3);
\inst29|ALT_INV_data_bus_value\(4) <= NOT \inst29|data_bus_value\(4);
\inst29|ALT_INV_data_bus_value\(5) <= NOT \inst29|data_bus_value\(5);
\inst9|ALT_INV_Add0~0_combout\ <= NOT \inst9|Add0~0_combout\;
\inst17|ALT_INV_decOut_n~0_combout\ <= NOT \inst17|decOut_n~0_combout\;
\iaaanst1|ALT_INV_Selector0~1_combout\ <= NOT \iaaanst1|Selector0~1_combout\;
\iaaanst1|ALT_INV_ledRed~0_combout\ <= NOT \iaaanst1|ledRed~0_combout\;
\inst29|ALT_INV_lcd_e~q\ <= NOT \inst29|lcd_e~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|lcd_rs~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|ALT_INV_lcd_e~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \iaaanst1|ALT_INV_Selector0~1_combout\,
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
	i => \inst17|ALT_INV_decOut_n~0_combout\,
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
	i => \inst17|decOut_n~3_combout\,
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
	i => \inst16|decOut_n~28_combout\,
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
	i => \inst16|decOut_n~17_combout\,
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
	i => \inst16|decOut_n~19_combout\,
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
	i => \inst16|decOut_n~21_combout\,
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
	i => \inst16|decOut_n~23_combout\,
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
	i => \inst16|decOut_n~24_combout\,
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
	i => \inst16|decOut_n~27_combout\,
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

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|data_bus_value\(7),
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|data_bus_value\(6),
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|ALT_INV_data_bus_value\(5),
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|ALT_INV_data_bus_value\(4),
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|ALT_INV_data_bus_value\(3),
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|data_bus_value\(2),
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|data_bus_value\(1),
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|data_bus_value\(0),
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Add0~0_combout\,
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
	i => \iaaanst1|ALT_INV_WideOr10~0_combout\,
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
	i => \iaaanst1|ALT_INV_WideOr11~combout\,
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
	i => \iaaanst1|ALT_INV_ledRed~0_combout\,
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

-- Location: LCCOMB_X105_Y49_N20
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

-- Location: LCCOMB_X98_Y44_N0
\inst1|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_dirtyIn~feeder_combout\ = \inst1|s_dirtyIn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_dirtyIn~0_combout\,
	combout => \inst1|s_dirtyIn~feeder_combout\);

-- Location: FF_X98_Y44_N1
\inst1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_dirtyIn~q\);

-- Location: FF_X97_Y44_N3
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

-- Location: LCCOMB_X96_Y45_N10
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

-- Location: LCCOMB_X95_Y44_N10
\inst1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~24_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|s_debounceCnt~24_combout\);

-- Location: FF_X95_Y44_N11
\inst1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~24_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(0));

-- Location: LCCOMB_X96_Y45_N12
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

-- Location: LCCOMB_X96_Y45_N4
\inst1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~20_combout\ = (\inst1|Add0~2_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~20_combout\);

-- Location: FF_X96_Y45_N5
\inst1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~20_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(1));

-- Location: LCCOMB_X96_Y45_N14
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|s_debounceCnt\(2) & ((GND) # (!\inst1|Add0~3\))) # (!\inst1|s_debounceCnt\(2) & (\inst1|Add0~3\ $ (GND)))
-- \inst1|Add0~5\ = CARRY((\inst1|s_debounceCnt\(2)) # (!\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X96_Y45_N6
\inst1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~21_combout\ = (\inst1|Add0~4_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~4_combout\,
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~21_combout\);

-- Location: FF_X96_Y45_N7
\inst1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~21_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y45_N16
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

-- Location: LCCOMB_X96_Y45_N0
\inst1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~22_combout\ = (\inst1|Add0~6_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~22_combout\);

-- Location: FF_X96_Y45_N1
\inst1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~22_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(3));

-- Location: LCCOMB_X96_Y45_N18
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

-- Location: LCCOMB_X96_Y45_N2
\inst1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~23_combout\ = (\inst1|Add0~8_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y45_N3
\inst1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~23_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(4));

-- Location: LCCOMB_X96_Y45_N20
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

-- Location: LCCOMB_X96_Y45_N22
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

-- Location: LCCOMB_X96_Y45_N26
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

-- Location: LCCOMB_X96_Y45_N28
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

-- Location: LCCOMB_X97_Y44_N22
\inst1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~14_combout\ = (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~18_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt~14_combout\);

-- Location: FF_X97_Y44_N23
\inst1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~14_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y45_N30
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

-- Location: LCCOMB_X95_Y44_N8
\inst1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~15_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y44_N9
\inst1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~15_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(10));

-- Location: LCCOMB_X96_Y44_N0
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

-- Location: LCCOMB_X97_Y44_N12
\inst1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~16_combout\ = (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~22_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt~16_combout\);

-- Location: FF_X97_Y44_N13
\inst1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~16_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(11));

-- Location: LCCOMB_X96_Y44_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|s_debounceCnt\(12) & ((GND) # (!\inst1|Add0~23\))) # (!\inst1|s_debounceCnt\(12) & (\inst1|Add0~23\ $ (GND)))
-- \inst1|Add0~25\ = CARRY((\inst1|s_debounceCnt\(12)) # (!\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X96_Y44_N24
\inst1|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~10_combout\ = (\inst1|Add0~24_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~24_combout\,
	datad => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~10_combout\);

-- Location: FF_X96_Y44_N25
\inst1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~10_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y44_N4
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|s_debounceCnt\(13) & (\inst1|Add0~25\ & VCC)) # (!\inst1|s_debounceCnt\(13) & (!\inst1|Add0~25\))
-- \inst1|Add0~27\ = CARRY((!\inst1|s_debounceCnt\(13) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X96_Y44_N26
\inst1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~11_combout\ = (\inst1|Add0~26_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~26_combout\,
	datad => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~11_combout\);

-- Location: FF_X96_Y44_N27
\inst1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~11_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(13));

-- Location: LCCOMB_X96_Y44_N6
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

-- Location: LCCOMB_X97_Y44_N26
\inst1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~17_combout\ = (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~28_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~28_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt~17_combout\);

-- Location: FF_X97_Y44_N27
\inst1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~17_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(14));

-- Location: LCCOMB_X96_Y44_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|s_debounceCnt\(15) & (\inst1|Add0~29\ & VCC)) # (!\inst1|s_debounceCnt\(15) & (!\inst1|Add0~29\))
-- \inst1|Add0~31\ = CARRY((!\inst1|s_debounceCnt\(15) & !\inst1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X97_Y44_N30
\inst1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~5_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|s_debounceCnt~5_combout\);

-- Location: FF_X97_Y44_N31
\inst1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~5_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(15));

-- Location: LCCOMB_X96_Y44_N10
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|s_debounceCnt\(16) & ((GND) # (!\inst1|Add0~31\))) # (!\inst1|s_debounceCnt\(16) & (\inst1|Add0~31\ $ (GND)))
-- \inst1|Add0~33\ = CARRY((\inst1|s_debounceCnt\(16)) # (!\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCCOMB_X97_Y44_N0
\inst1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~6_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~32_combout\,
	combout => \inst1|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y44_N1
\inst1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~6_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y44_N12
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

-- Location: LCCOMB_X96_Y44_N28
\inst1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~7_combout\ = (\inst1|Add0~34_combout\ & \inst1|s_debounceCnt[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~34_combout\,
	datad => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt~7_combout\);

-- Location: FF_X96_Y44_N29
\inst1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~7_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y44_N14
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

-- Location: LCCOMB_X97_Y44_N20
\inst1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[18]~18_combout\ = (\inst1|s_debounceCnt[15]~3_combout\ & (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~36_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[15]~3_combout\,
	datac => \inst1|Add0~36_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X97_Y44_N21
\inst1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(18));

-- Location: LCCOMB_X96_Y44_N16
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

-- Location: LCCOMB_X97_Y44_N14
\inst1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[19]~19_combout\ = (\inst1|s_debounceCnt[15]~3_combout\ & (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~38_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[15]~3_combout\,
	datac => \inst1|Add0~38_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y44_N15
\inst1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(19));

-- Location: LCCOMB_X94_Y44_N16
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (!\inst1|s_debounceCnt\(21) & !\inst1|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(21),
	datad => \inst1|s_debounceCnt\(20),
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X97_Y44_N10
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|s_debounceCnt\(16) & (!\inst1|s_debounceCnt\(15) & !\inst1|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(16),
	datac => \inst1|s_debounceCnt\(15),
	datad => \inst1|s_debounceCnt\(17),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y45_N8
\inst1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~5_combout\ = (!\inst1|s_debounceCnt\(2) & (!\inst1|s_debounceCnt\(4) & (!\inst1|s_debounceCnt\(1) & !\inst1|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(2),
	datab => \inst1|s_debounceCnt\(4),
	datac => \inst1|s_debounceCnt\(1),
	datad => \inst1|s_debounceCnt\(3),
	combout => \inst1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X95_Y44_N6
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|s_debounceCnt\(6) & ((\inst1|s_debounceCnt\(0)) # ((\inst1|s_debounceCnt\(5)) # (!\inst1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_debounceCnt\(6),
	datad => \inst1|s_pulsedOut~5_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X95_Y44_N16
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|s_debounceCnt\(8) & (\inst1|s_debounceCnt\(9) & ((\inst1|s_debounceCnt\(7)) # (\inst1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datab => \inst1|s_debounceCnt\(7),
	datac => \inst1|s_debounceCnt\(9),
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X95_Y44_N2
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|s_debounceCnt\(13)) # ((\inst1|s_debounceCnt\(11) & ((\inst1|s_debounceCnt\(10)) # (\inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(11),
	datab => \inst1|s_debounceCnt\(13),
	datac => \inst1|s_debounceCnt\(10),
	datad => \inst1|LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X95_Y44_N12
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = ((\inst1|s_debounceCnt\(14) & ((\inst1|s_debounceCnt\(12)) # (\inst1|LessThan0~3_combout\)))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|s_debounceCnt\(14),
	datac => \inst1|s_debounceCnt\(12),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y44_N18
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

-- Location: LCCOMB_X97_Y44_N24
\inst1|s_debounceCnt[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[15]~0_combout\ = (\inst1|s_dirtyIn~q\ & ((!\inst1|LessThan0~6_combout\) # (!\inst1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|s_debounceCnt[15]~0_combout\);

-- Location: LCCOMB_X97_Y44_N4
\inst1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~1_combout\ = (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~12_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt~1_combout\);

-- Location: FF_X97_Y44_N5
\inst1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~1_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(6));

-- Location: LCCOMB_X96_Y45_N24
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

-- Location: LCCOMB_X95_Y44_N14
\inst1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~12_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|s_debounceCnt~12_combout\);

-- Location: FF_X95_Y44_N15
\inst1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~12_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y44_N28
\inst1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~13_combout\ = (\inst1|s_debounceCnt[15]~0_combout\ & ((\inst1|Add0~16_combout\) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|s_debounceCnt[15]~0_combout\,
	combout => \inst1|s_debounceCnt~13_combout\);

-- Location: FF_X97_Y44_N29
\inst1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~13_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(8));

-- Location: LCCOMB_X95_Y44_N30
\inst1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~2_combout\ = (!\inst1|s_debounceCnt\(8) & (!\inst1|s_debounceCnt\(7) & (!\inst1|s_debounceCnt\(10) & !\inst1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(8),
	datab => \inst1|s_debounceCnt\(7),
	datac => \inst1|s_debounceCnt\(10),
	datad => \inst1|s_debounceCnt\(9),
	combout => \inst1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X95_Y44_N20
\inst1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~1_combout\ = (!\inst1|s_debounceCnt\(21) & (!\inst1|s_debounceCnt\(13) & (!\inst1|s_debounceCnt\(20) & !\inst1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(21),
	datab => \inst1|s_debounceCnt\(13),
	datac => \inst1|s_debounceCnt\(20),
	datad => \inst1|s_debounceCnt\(12),
	combout => \inst1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X97_Y44_N8
\inst1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~3_combout\ = (!\inst1|s_debounceCnt\(14) & (!\inst1|s_debounceCnt\(18) & (!\inst1|s_debounceCnt\(19) & !\inst1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(14),
	datab => \inst1|s_debounceCnt\(18),
	datac => \inst1|s_debounceCnt\(19),
	datad => \inst1|s_debounceCnt\(11),
	combout => \inst1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X97_Y44_N6
\inst1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~0_combout\ = (!\inst1|s_debounceCnt\(15) & (!\inst1|s_debounceCnt\(16) & (!\inst1|s_debounceCnt\(6) & !\inst1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(15),
	datab => \inst1|s_debounceCnt\(16),
	datac => \inst1|s_debounceCnt\(6),
	datad => \inst1|s_debounceCnt\(17),
	combout => \inst1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X95_Y44_N4
\inst1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~4_combout\ = (\inst1|s_pulsedOut~2_combout\ & (\inst1|s_pulsedOut~1_combout\ & (\inst1|s_pulsedOut~3_combout\ & \inst1|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~2_combout\,
	datab => \inst1|s_pulsedOut~1_combout\,
	datac => \inst1|s_pulsedOut~3_combout\,
	datad => \inst1|s_pulsedOut~0_combout\,
	combout => \inst1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X95_Y44_N28
\inst1|s_debounceCnt[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[15]~2_combout\ = (\inst1|s_debounceCnt\(0)) # ((\inst1|s_debounceCnt\(5)) # ((!\inst1|s_pulsedOut~5_combout\) # (!\inst1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(0),
	datab => \inst1|s_debounceCnt\(5),
	datac => \inst1|s_pulsedOut~4_combout\,
	datad => \inst1|s_pulsedOut~5_combout\,
	combout => \inst1|s_debounceCnt[15]~2_combout\);

-- Location: LCCOMB_X97_Y44_N2
\inst1|s_debounceCnt[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[15]~3_combout\ = (\inst1|s_debounceCnt\(22)) # (((\inst1|s_debounceCnt[15]~2_combout\) # (!\inst1|s_previousIn~q\)) # (!\inst1|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|s_debounceCnt[15]~2_combout\,
	combout => \inst1|s_debounceCnt[15]~3_combout\);

-- Location: LCCOMB_X96_Y44_N18
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|s_debounceCnt\(20) & ((GND) # (!\inst1|Add0~39\))) # (!\inst1|s_debounceCnt\(20) & (\inst1|Add0~39\ $ (GND)))
-- \inst1|Add0~41\ = CARRY((\inst1|s_debounceCnt\(20)) # (!\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X96_Y44_N30
\inst1|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[20]~8_combout\ = (\inst1|s_debounceCnt[15]~3_combout\ & (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt[15]~3_combout\,
	datab => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~40_combout\,
	combout => \inst1|s_debounceCnt[20]~8_combout\);

-- Location: FF_X96_Y44_N31
\inst1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y44_N20
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

-- Location: LCCOMB_X95_Y44_N26
\inst1|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[21]~9_combout\ = (\inst1|Add0~42_combout\ & (\inst1|s_debounceCnt[15]~3_combout\ & \inst1|s_debounceCnt[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~42_combout\,
	datab => \inst1|s_debounceCnt[15]~3_combout\,
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	combout => \inst1|s_debounceCnt[21]~9_combout\);

-- Location: FF_X95_Y44_N27
\inst1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(21));

-- Location: LCCOMB_X96_Y44_N22
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

-- Location: LCCOMB_X97_Y44_N18
\inst1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~25_combout\ = (\inst1|s_debounceCnt\(22) & (((!\inst1|LessThan0~6_combout\)))) # (!\inst1|s_debounceCnt\(22) & (((\inst1|s_debounceCnt[15]~2_combout\)) # (!\inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|s_debounceCnt[15]~2_combout\,
	datac => \inst1|LessThan0~6_combout\,
	datad => \inst1|s_debounceCnt\(22),
	combout => \inst1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y44_N16
\inst1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[22]~26_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt[22]~25_combout\ & ((\inst1|Add0~44_combout\) # (!\inst1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_previousIn~q\,
	datab => \inst1|Add0~44_combout\,
	datac => \inst1|s_dirtyIn~q\,
	datad => \inst1|s_debounceCnt[22]~25_combout\,
	combout => \inst1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X97_Y44_N17
\inst1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(22));

-- Location: LCCOMB_X95_Y44_N22
\inst1|s_debounceCnt[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt[15]~4_combout\ = (\inst1|s_dirtyIn~q\ & (\inst1|s_previousIn~q\ & ((!\inst1|LessThan0~6_combout\) # (!\inst1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_dirtyIn~q\,
	datab => \inst1|s_debounceCnt\(22),
	datac => \inst1|s_previousIn~q\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|s_debounceCnt[15]~4_combout\);

-- Location: LCCOMB_X95_Y44_N0
\inst1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_debounceCnt~27_combout\ = (\inst1|s_debounceCnt[15]~4_combout\ & \inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_debounceCnt[15]~4_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|s_debounceCnt~27_combout\);

-- Location: FF_X95_Y44_N1
\inst1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_debounceCnt~27_combout\,
	ena => \inst1|s_debounceCnt[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y44_N26
\inst1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~6_combout\ = (!\inst1|s_debounceCnt\(22) & (\inst1|s_dirtyIn~q\ & (\inst1|s_debounceCnt\(0) & \inst1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(22),
	datab => \inst1|s_dirtyIn~q\,
	datac => \inst1|s_debounceCnt\(0),
	datad => \inst1|s_previousIn~q\,
	combout => \inst1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X95_Y44_N24
\inst1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_pulsedOut~7_combout\ = (!\inst1|s_debounceCnt\(5) & (\inst1|s_pulsedOut~5_combout\ & (\inst1|s_pulsedOut~4_combout\ & \inst1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_debounceCnt\(5),
	datab => \inst1|s_pulsedOut~5_combout\,
	datac => \inst1|s_pulsedOut~4_combout\,
	datad => \inst1|s_pulsedOut~6_combout\,
	combout => \inst1|s_pulsedOut~7_combout\);

-- Location: FF_X95_Y44_N25
\inst1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y43_N10
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

-- Location: LCCOMB_X107_Y43_N28
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

-- Location: FF_X107_Y43_N29
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

-- Location: FF_X99_Y43_N27
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

-- Location: LCCOMB_X97_Y43_N22
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(1) & (!\inst3|s_debounceCnt\(2) & (!\inst3|s_debounceCnt\(3) & !\inst3|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(1),
	datab => \inst3|s_debounceCnt\(2),
	datac => \inst3|s_debounceCnt\(3),
	datad => \inst3|s_debounceCnt\(4),
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X98_Y43_N20
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

-- Location: LCCOMB_X98_Y43_N22
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

-- Location: LCCOMB_X98_Y42_N2
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

-- Location: LCCOMB_X98_Y42_N4
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

-- Location: LCCOMB_X97_Y43_N30
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|Add0~26_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X97_Y43_N31
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y42_N6
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

-- Location: LCCOMB_X99_Y43_N16
\inst3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~18_combout\ = (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~28_combout\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt~18_combout\);

-- Location: FF_X99_Y43_N17
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~18_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y42_N8
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

-- Location: LCCOMB_X99_Y42_N12
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|s_debounceCnt[13]~5_combout\ & \inst3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	datad => \inst3|Add0~30_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X99_Y42_N13
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y42_N10
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

-- Location: LCCOMB_X98_Y42_N24
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|Add0~32_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~32_combout\,
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X98_Y42_N25
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y42_N12
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

-- Location: LCCOMB_X98_Y42_N26
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~34_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X98_Y42_N27
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y42_N14
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

-- Location: LCCOMB_X99_Y43_N2
\inst3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~19_combout\ = (\inst3|s_debounceCnt[13]~4_combout\ & (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~36_combout\,
	datac => \inst3|s_debounceCnt[13]~4_combout\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X99_Y43_N3
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

-- Location: LCCOMB_X99_Y42_N26
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_debounceCnt\(17) & (!\inst3|s_debounceCnt\(16) & !\inst3|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datab => \inst3|s_debounceCnt\(16),
	datad => \inst3|s_debounceCnt\(15),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X97_Y43_N2
\inst3|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~8_combout\ = (!\inst3|s_debounceCnt\(5) & \inst3|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datac => \inst3|s_pulsedOut~7_combout\,
	combout => \inst3|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X97_Y43_N18
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(7)) # ((\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~8_combout\))))

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
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X97_Y43_N28
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

-- Location: LCCOMB_X97_Y43_N6
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(11) & \inst3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(13),
	datab => \inst3|s_debounceCnt\(12),
	datac => \inst3|s_debounceCnt\(11),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y42_N16
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

-- Location: LCCOMB_X99_Y43_N0
\inst3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~20_combout\ = (\inst3|s_debounceCnt[13]~4_combout\ & (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|Add0~38_combout\,
	datac => \inst3|s_debounceCnt[13]~4_combout\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X99_Y43_N1
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

-- Location: LCCOMB_X99_Y43_N20
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(19) & (((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~3_combout\)) # (!\inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~0_combout\,
	datab => \inst3|s_debounceCnt\(14),
	datac => \inst3|LessThan0~3_combout\,
	datad => \inst3|s_debounceCnt\(19),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y43_N6
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(20)) # ((\inst3|s_debounceCnt\(21)) # ((\inst3|s_debounceCnt\(18) & \inst3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(18),
	datab => \inst3|s_debounceCnt\(20),
	datac => \inst3|s_debounceCnt\(21),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X99_Y43_N24
\inst3|s_debounceCnt[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[13]~2_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[13]~2_combout\);

-- Location: LCCOMB_X98_Y43_N4
\inst3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~3_combout\ = (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~12_combout\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt~3_combout\);

-- Location: FF_X98_Y43_N5
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~3_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y43_N24
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

-- Location: LCCOMB_X99_Y43_N4
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|s_debounceCnt[13]~5_combout\ & \inst3|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	datad => \inst3|Add0~14_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X99_Y43_N5
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y43_N26
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

-- Location: LCCOMB_X98_Y43_N2
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X98_Y43_N3
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y43_N28
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

-- Location: LCCOMB_X98_Y43_N0
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~18_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X98_Y43_N1
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y43_N30
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

-- Location: LCCOMB_X99_Y43_N14
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|s_debounceCnt[13]~5_combout\ & \inst3|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	datad => \inst3|Add0~20_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y43_N15
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y42_N0
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

-- Location: LCCOMB_X98_Y43_N8
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[13]~2_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~22_combout\,
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[13]~2_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X98_Y43_N9
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y43_N20
\inst3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~11_combout\ = (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~24_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~11_combout\);

-- Location: FF_X97_Y43_N21
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~11_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y43_N8
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(21) & (!\inst3|s_debounceCnt\(12) & (!\inst3|s_debounceCnt\(20) & !\inst3|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(21),
	datab => \inst3|s_debounceCnt\(12),
	datac => \inst3|s_debounceCnt\(20),
	datad => \inst3|s_debounceCnt\(13),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X98_Y43_N6
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (!\inst3|s_debounceCnt\(7) & (!\inst3|s_debounceCnt\(8) & (!\inst3|s_debounceCnt\(10) & !\inst3|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(7),
	datab => \inst3|s_debounceCnt\(8),
	datac => \inst3|s_debounceCnt\(10),
	datad => \inst3|s_debounceCnt\(9),
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X99_Y43_N22
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(11) & (!\inst3|s_debounceCnt\(19) & (!\inst3|s_debounceCnt\(18) & !\inst3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datab => \inst3|s_debounceCnt\(19),
	datac => \inst3|s_debounceCnt\(18),
	datad => \inst3|s_debounceCnt\(14),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X98_Y42_N28
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

-- Location: LCCOMB_X99_Y43_N12
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_pulsedOut~3_combout\ & (\inst3|s_pulsedOut~4_combout\ & (\inst3|s_pulsedOut~5_combout\ & \inst3|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~3_combout\,
	datab => \inst3|s_pulsedOut~4_combout\,
	datac => \inst3|s_pulsedOut~5_combout\,
	datad => \inst3|s_pulsedOut~2_combout\,
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X99_Y43_N10
\inst3|s_debounceCnt[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[13]~29_combout\ = (\inst3|s_debounceCnt\(5)) # (((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~6_combout\)) # (!\inst3|s_pulsedOut~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~7_combout\,
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_pulsedOut~6_combout\,
	combout => \inst3|s_debounceCnt[13]~29_combout\);

-- Location: LCCOMB_X99_Y43_N26
\inst3|s_debounceCnt[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[13]~4_combout\ = ((\inst3|s_debounceCnt\(22)) # ((\inst3|s_debounceCnt[13]~29_combout\) # (!\inst3|s_previousIn~q\))) # (!\inst3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[13]~29_combout\,
	combout => \inst3|s_debounceCnt[13]~4_combout\);

-- Location: LCCOMB_X98_Y42_N18
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

-- Location: LCCOMB_X98_Y42_N30
\inst3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~9_combout\ = (\inst3|s_debounceCnt[13]~4_combout\ & (\inst3|Add0~40_combout\ & \inst3|s_debounceCnt[13]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[13]~4_combout\,
	datab => \inst3|Add0~40_combout\,
	datac => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X98_Y42_N31
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

-- Location: LCCOMB_X98_Y42_N20
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

-- Location: LCCOMB_X97_Y43_N26
\inst3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~10_combout\ = (\inst3|Add0~42_combout\ & (\inst3|s_debounceCnt[13]~4_combout\ & \inst3|s_debounceCnt[13]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~42_combout\,
	datac => \inst3|s_debounceCnt[13]~4_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X97_Y43_N27
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

-- Location: LCCOMB_X98_Y42_N22
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

-- Location: LCCOMB_X99_Y43_N28
\inst3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~27_combout\ = (\inst3|s_debounceCnt\(22) & (((!\inst3|LessThan0~5_combout\)))) # (!\inst3|s_debounceCnt\(22) & ((\inst3|s_debounceCnt[13]~29_combout\) # ((!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[13]~29_combout\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X99_Y43_N8
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

-- Location: FF_X99_Y43_N9
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

-- Location: LCCOMB_X99_Y43_N30
\inst3|s_debounceCnt[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[13]~5_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & ((!\inst3|LessThan0~5_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|s_debounceCnt[13]~5_combout\);

-- Location: LCCOMB_X97_Y43_N16
\inst3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~26_combout\ = (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~26_combout\);

-- Location: FF_X97_Y43_N17
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~26_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y43_N12
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

-- Location: LCCOMB_X97_Y43_N10
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y43_N11
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y43_N14
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

-- Location: LCCOMB_X97_Y43_N4
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y43_N5
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y43_N16
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_debounceCnt\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst3|s_debounceCnt\(3) & (!\inst3|Add0~5\))
-- \inst3|Add0~7\ = CARRY((!\inst3|s_debounceCnt\(3) & !\inst3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X97_Y43_N14
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X97_Y43_N15
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y43_N18
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

-- Location: LCCOMB_X97_Y43_N0
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y43_N1
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y43_N12
\inst3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~25_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[13]~5_combout\,
	combout => \inst3|s_debounceCnt~25_combout\);

-- Location: FF_X97_Y43_N13
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~25_combout\,
	ena => \inst3|s_debounceCnt[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X99_Y43_N18
\inst3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~9_combout\ = (\inst3|s_previousIn~q\ & (!\inst3|s_debounceCnt\(22) & (\inst3|s_dirtyIn~q\ & \inst3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|s_debounceCnt\(0),
	combout => \inst3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X97_Y43_N24
\inst3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~10_combout\ = (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~6_combout\ & (\inst3|s_pulsedOut~7_combout\ & \inst3|s_pulsedOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~6_combout\,
	datac => \inst3|s_pulsedOut~7_combout\,
	datad => \inst3|s_pulsedOut~9_combout\,
	combout => \inst3|s_pulsedOut~10_combout\);

-- Location: FF_X97_Y43_N25
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

-- Location: LCCOMB_X76_Y39_N0
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|s_count\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X77_Y39_N20
\inst5|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~2_combout\ = (\inst25|pState.Init~q\ & ((\inst5|Equal0~9_combout\ & ((!\inst5|s_count\(0)))) # (!\inst5|Equal0~9_combout\ & (\inst5|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~0_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|s_count\(0),
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~2_combout\);

-- Location: LCCOMB_X86_Y38_N10
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

-- Location: LCCOMB_X87_Y38_N6
\inst12|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~5_combout\ = (!\inst12|s_debounceCnt\(3) & (!\inst12|s_debounceCnt\(2) & (!\inst12|s_debounceCnt\(1) & !\inst12|s_debounceCnt\(4))))

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
	combout => \inst12|s_pulsedOut~5_combout\);

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

-- Location: LCCOMB_X88_Y38_N28
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

-- Location: FF_X88_Y38_N29
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

-- Location: LCCOMB_X88_Y38_N30
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

-- Location: FF_X88_Y38_N31
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

-- Location: LCCOMB_X86_Y38_N20
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

-- Location: LCCOMB_X86_Y38_N22
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

-- Location: LCCOMB_X87_Y38_N18
\inst12|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[2]~3_combout\ = (((\inst12|s_debounceCnt\(22)) # (\inst12|s_debounceCnt[2]~2_combout\)) # (!\inst12|s_dirtyIn~q\)) # (!\inst12|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|s_debounceCnt[2]~2_combout\,
	combout => \inst12|s_debounceCnt[2]~3_combout\);

-- Location: LCCOMB_X86_Y37_N14
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

-- Location: LCCOMB_X86_Y37_N16
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

-- Location: LCCOMB_X86_Y37_N24
\inst12|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[19]~19_combout\ = (\inst12|s_debounceCnt[2]~3_combout\ & (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~38_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[2]~3_combout\,
	datab => \inst12|Add0~38_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt[19]~19_combout\);

-- Location: FF_X86_Y37_N25
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

-- Location: LCCOMB_X86_Y37_N18
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

-- Location: LCCOMB_X87_Y37_N14
\inst12|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[20]~8_combout\ = (\inst12|Add0~40_combout\ & (\inst12|s_debounceCnt[2]~3_combout\ & \inst12|s_debounceCnt[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~40_combout\,
	datac => \inst12|s_debounceCnt[2]~3_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt[20]~8_combout\);

-- Location: FF_X87_Y37_N15
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

-- Location: LCCOMB_X86_Y37_N20
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

-- Location: LCCOMB_X87_Y37_N28
\inst12|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[21]~9_combout\ = (\inst12|Add0~42_combout\ & (\inst12|s_debounceCnt[2]~3_combout\ & \inst12|s_debounceCnt[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~42_combout\,
	datac => \inst12|s_debounceCnt[2]~3_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt[21]~9_combout\);

-- Location: FF_X87_Y37_N29
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

-- Location: LCCOMB_X86_Y37_N30
\inst12|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_combout\ = (!\inst12|s_debounceCnt\(21) & !\inst12|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(20),
	combout => \inst12|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y38_N12
\inst12|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~0_combout\ = (\inst12|s_debounceCnt\(6) & ((\inst12|s_debounceCnt\(5)) # ((\inst12|s_debounceCnt\(0)) # (!\inst12|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(5),
	datab => \inst12|s_debounceCnt\(0),
	datac => \inst12|s_debounceCnt\(6),
	datad => \inst12|s_pulsedOut~5_combout\,
	combout => \inst12|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y38_N30
\inst12|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_combout\ = (\inst12|s_debounceCnt\(9) & ((\inst12|s_debounceCnt\(7)) # (\inst12|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(9),
	datac => \inst12|s_debounceCnt\(7),
	datad => \inst12|LessThan0~0_combout\,
	combout => \inst12|LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y37_N10
\inst12|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~2_combout\ = (\inst12|s_debounceCnt\(11) & ((\inst12|s_debounceCnt\(10)) # ((\inst12|s_debounceCnt\(8) & \inst12|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(11),
	datab => \inst12|s_debounceCnt\(8),
	datac => \inst12|LessThan0~1_combout\,
	datad => \inst12|s_debounceCnt\(10),
	combout => \inst12|LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y37_N16
\inst12|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_combout\ = (\inst12|s_debounceCnt\(14) & ((\inst12|s_debounceCnt\(12)) # ((\inst12|s_debounceCnt\(13)) # (\inst12|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(12),
	datab => \inst12|s_debounceCnt\(13),
	datac => \inst12|s_debounceCnt\(14),
	datad => \inst12|LessThan0~2_combout\,
	combout => \inst12|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y37_N18
\inst12|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~4_combout\ = (\inst12|s_debounceCnt\(17)) # ((\inst12|s_debounceCnt\(15)) # ((\inst12|s_debounceCnt\(16)) # (\inst12|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(17),
	datab => \inst12|s_debounceCnt\(15),
	datac => \inst12|s_debounceCnt\(16),
	datad => \inst12|LessThan0~3_combout\,
	combout => \inst12|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y37_N24
\inst12|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~6_combout\ = ((\inst12|s_debounceCnt\(19) & (\inst12|s_debounceCnt\(18) & \inst12|LessThan0~4_combout\))) # (!\inst12|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(19),
	datab => \inst12|s_debounceCnt\(18),
	datac => \inst12|LessThan0~5_combout\,
	datad => \inst12|LessThan0~4_combout\,
	combout => \inst12|LessThan0~6_combout\);

-- Location: LCCOMB_X87_Y37_N2
\inst12|s_debounceCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[2]~0_combout\ = (\inst12|s_dirtyIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_debounceCnt\(22),
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[2]~0_combout\);

-- Location: LCCOMB_X87_Y38_N4
\inst12|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~1_combout\ = (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~12_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~12_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt~1_combout\);

-- Location: FF_X87_Y38_N5
\inst12|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~1_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(6));

-- Location: LCCOMB_X86_Y38_N24
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

-- Location: LCCOMB_X87_Y38_N26
\inst12|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~12_combout\ = (\inst12|Add0~14_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~14_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~12_combout\);

-- Location: FF_X87_Y38_N27
\inst12|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~12_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(7));

-- Location: LCCOMB_X86_Y38_N26
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

-- Location: LCCOMB_X86_Y38_N2
\inst12|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~13_combout\ = (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~16_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~16_combout\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt~13_combout\);

-- Location: FF_X86_Y38_N3
\inst12|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~13_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(8));

-- Location: LCCOMB_X86_Y38_N28
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

-- Location: LCCOMB_X87_Y38_N8
\inst12|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~14_combout\ = (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~18_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~18_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt~14_combout\);

-- Location: FF_X87_Y38_N9
\inst12|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~14_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(9));

-- Location: LCCOMB_X86_Y38_N30
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

-- Location: LCCOMB_X87_Y37_N6
\inst12|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~15_combout\ = (\inst12|Add0~20_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~20_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~15_combout\);

-- Location: FF_X87_Y37_N7
\inst12|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~15_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(10));

-- Location: LCCOMB_X86_Y37_N0
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

-- Location: LCCOMB_X86_Y37_N26
\inst12|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~16_combout\ = (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~22_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~22_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt~16_combout\);

-- Location: FF_X86_Y37_N27
\inst12|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~16_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(11));

-- Location: LCCOMB_X86_Y37_N2
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

-- Location: LCCOMB_X87_Y37_N30
\inst12|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~10_combout\ = (\inst12|Add0~24_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~24_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~10_combout\);

-- Location: FF_X87_Y37_N31
\inst12|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~10_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(12));

-- Location: LCCOMB_X86_Y37_N4
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

-- Location: LCCOMB_X87_Y37_N4
\inst12|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~11_combout\ = (\inst12|Add0~26_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~26_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~11_combout\);

-- Location: FF_X87_Y37_N5
\inst12|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~11_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(13));

-- Location: LCCOMB_X86_Y37_N6
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

-- Location: LCCOMB_X86_Y38_N8
\inst12|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~17_combout\ = (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~28_combout\) # (!\inst12|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_previousIn~q\,
	datac => \inst12|Add0~28_combout\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt~17_combout\);

-- Location: FF_X86_Y38_N9
\inst12|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~17_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(14));

-- Location: LCCOMB_X86_Y37_N8
\inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~30_combout\ = (\inst12|s_debounceCnt\(15) & (\inst12|Add0~29\ & VCC)) # (!\inst12|s_debounceCnt\(15) & (!\inst12|Add0~29\))
-- \inst12|Add0~31\ = CARRY((!\inst12|s_debounceCnt\(15) & !\inst12|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst12|Add0~29\,
	combout => \inst12|Add0~30_combout\,
	cout => \inst12|Add0~31\);

-- Location: LCCOMB_X87_Y37_N20
\inst12|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~5_combout\ = (\inst12|Add0~30_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~30_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~5_combout\);

-- Location: FF_X87_Y37_N21
\inst12|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~5_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(15));

-- Location: LCCOMB_X86_Y37_N10
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

-- Location: LCCOMB_X87_Y37_N22
\inst12|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~6_combout\ = (\inst12|Add0~32_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~32_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~6_combout\);

-- Location: FF_X87_Y37_N23
\inst12|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~6_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(16));

-- Location: LCCOMB_X86_Y37_N12
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

-- Location: LCCOMB_X87_Y37_N12
\inst12|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~7_combout\ = (\inst12|Add0~34_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~34_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~7_combout\);

-- Location: FF_X87_Y37_N13
\inst12|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~7_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(17));

-- Location: LCCOMB_X86_Y38_N6
\inst12|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[18]~18_combout\ = (\inst12|s_debounceCnt[2]~3_combout\ & (\inst12|s_debounceCnt[2]~0_combout\ & ((\inst12|Add0~36_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~36_combout\,
	datab => \inst12|s_debounceCnt[2]~3_combout\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_debounceCnt[2]~0_combout\,
	combout => \inst12|s_debounceCnt[18]~18_combout\);

-- Location: FF_X86_Y38_N7
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

-- Location: LCCOMB_X86_Y38_N0
\inst12|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~3_combout\ = (!\inst12|s_debounceCnt\(18) & (!\inst12|s_debounceCnt\(14) & (!\inst12|s_debounceCnt\(19) & !\inst12|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(18),
	datab => \inst12|s_debounceCnt\(14),
	datac => \inst12|s_debounceCnt\(19),
	datad => \inst12|s_debounceCnt\(11),
	combout => \inst12|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X86_Y37_N28
\inst12|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~1_combout\ = (!\inst12|s_debounceCnt\(12) & (!\inst12|s_debounceCnt\(21) & (!\inst12|s_debounceCnt\(20) & !\inst12|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(12),
	datab => \inst12|s_debounceCnt\(21),
	datac => \inst12|s_debounceCnt\(20),
	datad => \inst12|s_debounceCnt\(13),
	combout => \inst12|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X86_Y38_N4
\inst12|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~0_combout\ = (!\inst12|s_debounceCnt\(6) & (!\inst12|s_debounceCnt\(16) & (!\inst12|s_debounceCnt\(17) & !\inst12|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(6),
	datab => \inst12|s_debounceCnt\(16),
	datac => \inst12|s_debounceCnt\(17),
	datad => \inst12|s_debounceCnt\(15),
	combout => \inst12|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X87_Y38_N2
\inst12|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~2_combout\ = (!\inst12|s_debounceCnt\(8) & (!\inst12|s_debounceCnt\(9) & (!\inst12|s_debounceCnt\(7) & !\inst12|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(8),
	datab => \inst12|s_debounceCnt\(9),
	datac => \inst12|s_debounceCnt\(7),
	datad => \inst12|s_debounceCnt\(10),
	combout => \inst12|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X87_Y38_N24
\inst12|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~4_combout\ = (\inst12|s_pulsedOut~3_combout\ & (\inst12|s_pulsedOut~1_combout\ & (\inst12|s_pulsedOut~0_combout\ & \inst12|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~3_combout\,
	datab => \inst12|s_pulsedOut~1_combout\,
	datac => \inst12|s_pulsedOut~0_combout\,
	datad => \inst12|s_pulsedOut~2_combout\,
	combout => \inst12|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X87_Y38_N28
\inst12|s_debounceCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[2]~2_combout\ = ((\inst12|s_debounceCnt\(0)) # ((\inst12|s_debounceCnt\(5)) # (!\inst12|s_pulsedOut~4_combout\))) # (!\inst12|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_pulsedOut~5_combout\,
	datab => \inst12|s_debounceCnt\(0),
	datac => \inst12|s_debounceCnt\(5),
	datad => \inst12|s_pulsedOut~4_combout\,
	combout => \inst12|s_debounceCnt[2]~2_combout\);

-- Location: LCCOMB_X87_Y37_N26
\inst12|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~25_combout\ = (\inst12|s_debounceCnt\(22) & (((!\inst12|LessThan0~6_combout\)))) # (!\inst12|s_debounceCnt\(22) & ((\inst12|s_debounceCnt[2]~2_combout\) # ((!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[2]~2_combout\,
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X86_Y37_N22
\inst12|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~44_combout\ = \inst12|s_debounceCnt\(22) $ (\inst12|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(22),
	cin => \inst12|Add0~43\,
	combout => \inst12|Add0~44_combout\);

-- Location: LCCOMB_X87_Y37_N8
\inst12|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[22]~26_combout\ = (\inst12|s_debounceCnt[22]~25_combout\ & (\inst12|s_dirtyIn~q\ & ((\inst12|Add0~44_combout\) # (!\inst12|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt[22]~25_combout\,
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|Add0~44_combout\,
	combout => \inst12|s_debounceCnt[22]~26_combout\);

-- Location: FF_X87_Y37_N9
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

-- Location: LCCOMB_X87_Y37_N0
\inst12|s_debounceCnt[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt[2]~4_combout\ = (\inst12|s_dirtyIn~q\ & (\inst12|s_previousIn~q\ & ((!\inst12|LessThan0~6_combout\) # (!\inst12|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(22),
	datab => \inst12|s_dirtyIn~q\,
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|LessThan0~6_combout\,
	combout => \inst12|s_debounceCnt[2]~4_combout\);

-- Location: LCCOMB_X87_Y38_N0
\inst12|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~24_combout\ = (\inst12|Add0~0_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~0_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~24_combout\);

-- Location: FF_X87_Y38_N1
\inst12|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~24_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(0));

-- Location: LCCOMB_X86_Y38_N12
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

-- Location: LCCOMB_X87_Y38_N14
\inst12|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~20_combout\ = (\inst12|Add0~2_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~2_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~20_combout\);

-- Location: FF_X87_Y38_N15
\inst12|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~20_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(1));

-- Location: LCCOMB_X86_Y38_N14
\inst12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~4_combout\ = (\inst12|s_debounceCnt\(2) & ((GND) # (!\inst12|Add0~3\))) # (!\inst12|s_debounceCnt\(2) & (\inst12|Add0~3\ $ (GND)))
-- \inst12|Add0~5\ = CARRY((\inst12|s_debounceCnt\(2)) # (!\inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst12|Add0~3\,
	combout => \inst12|Add0~4_combout\,
	cout => \inst12|Add0~5\);

-- Location: LCCOMB_X87_Y38_N20
\inst12|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~21_combout\ = (\inst12|Add0~4_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~4_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~21_combout\);

-- Location: FF_X87_Y38_N21
\inst12|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~21_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(2));

-- Location: LCCOMB_X86_Y38_N16
\inst12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Add0~6_combout\ = (\inst12|s_debounceCnt\(3) & (\inst12|Add0~5\ & VCC)) # (!\inst12|s_debounceCnt\(3) & (!\inst12|Add0~5\))
-- \inst12|Add0~7\ = CARRY((!\inst12|s_debounceCnt\(3) & !\inst12|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst12|Add0~5\,
	combout => \inst12|Add0~6_combout\,
	cout => \inst12|Add0~7\);

-- Location: LCCOMB_X87_Y38_N22
\inst12|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~22_combout\ = (\inst12|Add0~6_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~6_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~22_combout\);

-- Location: FF_X87_Y38_N23
\inst12|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~22_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(3));

-- Location: LCCOMB_X86_Y38_N18
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

-- Location: LCCOMB_X87_Y38_N16
\inst12|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~23_combout\ = (\inst12|Add0~8_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Add0~8_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~23_combout\);

-- Location: FF_X87_Y38_N17
\inst12|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~23_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(4));

-- Location: LCCOMB_X87_Y38_N10
\inst12|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_debounceCnt~27_combout\ = (\inst12|Add0~10_combout\ & \inst12|s_debounceCnt[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Add0~10_combout\,
	datad => \inst12|s_debounceCnt[2]~4_combout\,
	combout => \inst12|s_debounceCnt~27_combout\);

-- Location: FF_X87_Y38_N11
\inst12|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst12|s_debounceCnt~27_combout\,
	ena => \inst12|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|s_debounceCnt\(5));

-- Location: LCCOMB_X88_Y38_N18
\inst12|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~6_combout\ = (\inst12|s_debounceCnt\(0) & (!\inst12|s_debounceCnt\(22) & (\inst12|s_previousIn~q\ & \inst12|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(0),
	datab => \inst12|s_debounceCnt\(22),
	datac => \inst12|s_previousIn~q\,
	datad => \inst12|s_dirtyIn~q\,
	combout => \inst12|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X88_Y38_N20
\inst12|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|s_pulsedOut~7_combout\ = (!\inst12|s_debounceCnt\(5) & (\inst12|s_pulsedOut~6_combout\ & (\inst12|s_pulsedOut~5_combout\ & \inst12|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s_debounceCnt\(5),
	datab => \inst12|s_pulsedOut~6_combout\,
	datac => \inst12|s_pulsedOut~5_combout\,
	datad => \inst12|s_pulsedOut~4_combout\,
	combout => \inst12|s_pulsedOut~7_combout\);

-- Location: FF_X88_Y38_N21
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

-- Location: LCCOMB_X73_Y40_N12
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

-- Location: LCCOMB_X73_Y40_N14
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

-- Location: LCCOMB_X69_Y41_N30
\iaaanst1|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~8_combout\ = (\inst25|pState.Init~q\ & ((\iaaanst1|Selector15~0_combout\) # ((!\inst25|pState.StartPrg~q\ & \iaaanst1|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|Selector15~0_combout\,
	combout => \iaaanst1|s_currentState~8_combout\);

-- Location: FF_X68_Y41_N5
\iaaanst1|s_currentState.TExtra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \iaaanst1|s_currentState~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TExtra~q\);

-- Location: LCCOMB_X73_Y40_N16
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

-- Location: FF_X73_Y40_N17
\inst4|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[2]~15_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(2));

-- Location: LCCOMB_X73_Y40_N18
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

-- Location: FF_X73_Y40_N19
\inst4|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[3]~17_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(3));

-- Location: LCCOMB_X73_Y40_N20
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

-- Location: FF_X73_Y40_N21
\inst4|Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[4]~19_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(4));

-- Location: LCCOMB_X73_Y40_N0
\iaaanst1|s_valueExtra[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_valueExtra[3]~1_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & \inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_valueExtra[3]~1_combout\);

-- Location: FF_X72_Y40_N27
\iaaanst1|s_valueExtra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(4),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(4));

-- Location: LCCOMB_X73_Y40_N22
\inst4|Counter|s_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[5]~21_combout\ = (\inst4|Counter|s_count\(5) & (!\inst4|Counter|s_count[4]~20\)) # (!\inst4|Counter|s_count\(5) & ((\inst4|Counter|s_count[4]~20\) # (GND)))
-- \inst4|Counter|s_count[5]~22\ = CARRY((!\inst4|Counter|s_count[4]~20\) # (!\inst4|Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(5),
	datad => VCC,
	cin => \inst4|Counter|s_count[4]~20\,
	combout => \inst4|Counter|s_count[5]~21_combout\,
	cout => \inst4|Counter|s_count[5]~22\);

-- Location: FF_X73_Y40_N23
\inst4|Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[5]~21_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(5));

-- Location: LCCOMB_X73_Y40_N24
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

-- Location: FF_X73_Y40_N25
\inst4|Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[6]~23_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(6));

-- Location: FF_X72_Y40_N15
\iaaanst1|s_valueExtra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(6),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(6));

-- Location: LCCOMB_X73_Y40_N26
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

-- Location: FF_X73_Y40_N27
\inst4|Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[7]~25_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(7));

-- Location: FF_X72_Y40_N9
\iaaanst1|s_valueExtra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(7),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(7));

-- Location: FF_X72_Y40_N25
\iaaanst1|s_valueExtra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(5),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(5));

-- Location: LCCOMB_X72_Y40_N22
\iaaanst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Equal0~1_combout\ = (!\iaaanst1|s_valueExtra\(4) & (!\iaaanst1|s_valueExtra\(6) & (!\iaaanst1|s_valueExtra\(7) & !\iaaanst1|s_valueExtra\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_valueExtra\(4),
	datab => \iaaanst1|s_valueExtra\(6),
	datac => \iaaanst1|s_valueExtra\(7),
	datad => \iaaanst1|s_valueExtra\(5),
	combout => \iaaanst1|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y41_N10
\inst25|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~10_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & (\iaaanst1|Equal0~1_combout\ & \iaaanst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|Equal0~1_combout\,
	datad => \iaaanst1|Equal0~0_combout\,
	combout => \inst25|pState~10_combout\);

-- Location: LCCOMB_X72_Y41_N6
\inst25|pState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~25_combout\ = (\inst25|pState.TimeProcess~q\) # ((\inst25|pState.StartPrg~q\ & ((!\inst25|pState~10_combout\))) # (!\inst25|pState.StartPrg~q\ & (!\inst3|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.TimeProcess~q\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst25|pState~10_combout\,
	combout => \inst25|pState~25_combout\);

-- Location: LCCOMB_X72_Y41_N20
\inst25|pState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~26_combout\ = (\inst25|pState.Menu~q\ & ((!\inst25|pState.TimeProcess~q\) # (!\inst5|s_result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datac => \inst25|pState.Menu~q\,
	datad => \inst25|pState.TimeProcess~q\,
	combout => \inst25|pState~26_combout\);

-- Location: LCCOMB_X72_Y41_N26
\inst25|pState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~27_combout\ = (\inst25|pState~9_combout\ & (((\inst25|pState~25_combout\ & \inst25|pState~26_combout\)) # (!\inst25|pState.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~25_combout\,
	datab => \inst25|pState~26_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst25|pState~9_combout\,
	combout => \inst25|pState~27_combout\);

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

-- Location: LCCOMB_X77_Y48_N10
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

-- Location: FF_X77_Y48_N11
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

-- Location: LCCOMB_X75_Y49_N10
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

-- Location: LCCOMB_X77_Y48_N24
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

-- Location: FF_X77_Y48_N25
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

-- Location: LCCOMB_X75_Y49_N12
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

-- Location: LCCOMB_X75_Y49_N0
\inst13|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~20_combout\ = (\inst13|Add0~2_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~2_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~20_combout\);

-- Location: LCCOMB_X77_Y48_N30
\inst13|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~3_combout\ = (((\inst13|s_debounceCnt\(22)) # (\inst13|s_debounceCnt[22]~2_combout\)) # (!\inst13|s_previousIn~q\)) # (!\inst13|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|s_debounceCnt[22]~2_combout\,
	combout => \inst13|s_debounceCnt[22]~3_combout\);

-- Location: FF_X75_Y49_N1
\inst13|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~20_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(1));

-- Location: LCCOMB_X75_Y49_N14
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

-- Location: LCCOMB_X75_Y49_N2
\inst13|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~21_combout\ = (\inst13|Add0~4_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~4_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~21_combout\);

-- Location: FF_X75_Y49_N3
\inst13|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~21_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(2));

-- Location: LCCOMB_X75_Y49_N16
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

-- Location: LCCOMB_X75_Y49_N8
\inst13|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~22_combout\ = (\inst13|Add0~6_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~6_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~22_combout\);

-- Location: FF_X75_Y49_N9
\inst13|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~22_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(3));

-- Location: LCCOMB_X75_Y49_N18
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

-- Location: LCCOMB_X75_Y49_N6
\inst13|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~23_combout\ = (\inst13|Add0~8_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~8_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~23_combout\);

-- Location: FF_X75_Y49_N7
\inst13|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~23_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(4));

-- Location: LCCOMB_X75_Y49_N20
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|s_debounceCnt\(5) & (\inst13|Add0~9\ & VCC)) # (!\inst13|s_debounceCnt\(5) & (!\inst13|Add0~9\))
-- \inst13|Add0~11\ = CARRY((!\inst13|s_debounceCnt\(5) & !\inst13|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: LCCOMB_X76_Y48_N22
\inst13|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~27_combout\ = (\inst13|Add0~10_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~10_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~27_combout\);

-- Location: FF_X76_Y48_N23
\inst13|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~27_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(5));

-- Location: LCCOMB_X75_Y49_N4
\inst13|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~5_combout\ = (!\inst13|s_debounceCnt\(4) & (!\inst13|s_debounceCnt\(1) & (!\inst13|s_debounceCnt\(3) & !\inst13|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(4),
	datab => \inst13|s_debounceCnt\(1),
	datac => \inst13|s_debounceCnt\(3),
	datad => \inst13|s_debounceCnt\(2),
	combout => \inst13|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X75_Y49_N22
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

-- Location: LCCOMB_X76_Y48_N8
\inst13|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~1_combout\ = (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~12_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~12_combout\,
	datad => \inst13|s_debounceCnt[22]~0_combout\,
	combout => \inst13|s_debounceCnt~1_combout\);

-- Location: FF_X76_Y48_N9
\inst13|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~1_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(6));

-- Location: LCCOMB_X75_Y49_N24
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

-- Location: LCCOMB_X76_Y48_N2
\inst13|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~12_combout\ = (\inst13|Add0~14_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~14_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~12_combout\);

-- Location: FF_X76_Y48_N3
\inst13|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~12_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(7));

-- Location: LCCOMB_X75_Y49_N26
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

-- Location: LCCOMB_X77_Y48_N0
\inst13|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~13_combout\ = (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~16_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt[22]~0_combout\,
	datad => \inst13|Add0~16_combout\,
	combout => \inst13|s_debounceCnt~13_combout\);

-- Location: FF_X77_Y48_N1
\inst13|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~13_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(8));

-- Location: LCCOMB_X75_Y49_N28
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

-- Location: LCCOMB_X77_Y48_N2
\inst13|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~14_combout\ = (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~18_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt[22]~0_combout\,
	datad => \inst13|Add0~18_combout\,
	combout => \inst13|s_debounceCnt~14_combout\);

-- Location: FF_X77_Y48_N3
\inst13|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~14_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(9));

-- Location: LCCOMB_X75_Y49_N30
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

-- Location: LCCOMB_X76_Y48_N20
\inst13|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~15_combout\ = (\inst13|Add0~20_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~20_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~15_combout\);

-- Location: FF_X76_Y48_N21
\inst13|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~15_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(10));

-- Location: LCCOMB_X75_Y48_N0
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

-- Location: LCCOMB_X77_Y48_N6
\inst13|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~16_combout\ = (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~22_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt[22]~0_combout\,
	datad => \inst13|Add0~22_combout\,
	combout => \inst13|s_debounceCnt~16_combout\);

-- Location: FF_X77_Y48_N7
\inst13|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~16_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(11));

-- Location: LCCOMB_X75_Y48_N2
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

-- Location: LCCOMB_X76_Y48_N14
\inst13|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~10_combout\ = (\inst13|Add0~24_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~24_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~10_combout\);

-- Location: FF_X76_Y48_N15
\inst13|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~10_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(12));

-- Location: LCCOMB_X75_Y48_N4
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

-- Location: LCCOMB_X76_Y48_N16
\inst13|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~11_combout\ = (\inst13|Add0~26_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~26_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~11_combout\);

-- Location: FF_X76_Y48_N17
\inst13|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~11_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(13));

-- Location: LCCOMB_X75_Y48_N6
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

-- Location: LCCOMB_X75_Y48_N8
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

-- Location: LCCOMB_X77_Y48_N4
\inst13|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~5_combout\ = (\inst13|Add0~30_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~30_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~5_combout\);

-- Location: FF_X77_Y48_N5
\inst13|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~5_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(15));

-- Location: LCCOMB_X75_Y48_N10
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

-- Location: LCCOMB_X77_Y48_N14
\inst13|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~6_combout\ = (\inst13|Add0~32_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~32_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~6_combout\);

-- Location: FF_X77_Y48_N15
\inst13|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~6_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(16));

-- Location: LCCOMB_X75_Y48_N12
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

-- Location: LCCOMB_X75_Y48_N24
\inst13|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~7_combout\ = (\inst13|s_debounceCnt[22]~4_combout\ & \inst13|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|s_debounceCnt[22]~4_combout\,
	datad => \inst13|Add0~34_combout\,
	combout => \inst13|s_debounceCnt~7_combout\);

-- Location: FF_X75_Y48_N25
\inst13|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~7_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(17));

-- Location: LCCOMB_X75_Y48_N14
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

-- Location: LCCOMB_X77_Y48_N26
\inst13|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[18]~18_combout\ = (\inst13|s_debounceCnt[22]~3_combout\ & (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~36_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[22]~3_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~36_combout\,
	datad => \inst13|s_debounceCnt[22]~0_combout\,
	combout => \inst13|s_debounceCnt[18]~18_combout\);

-- Location: FF_X77_Y48_N27
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

-- Location: LCCOMB_X75_Y48_N16
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

-- Location: LCCOMB_X77_Y48_N28
\inst13|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[19]~19_combout\ = (\inst13|s_debounceCnt[22]~3_combout\ & (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~38_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[22]~3_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|Add0~38_combout\,
	datad => \inst13|s_debounceCnt[22]~0_combout\,
	combout => \inst13|s_debounceCnt[19]~19_combout\);

-- Location: FF_X77_Y48_N29
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

-- Location: LCCOMB_X75_Y48_N18
\inst13|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~40_combout\ = (\inst13|s_debounceCnt\(20) & ((GND) # (!\inst13|Add0~39\))) # (!\inst13|s_debounceCnt\(20) & (\inst13|Add0~39\ $ (GND)))
-- \inst13|Add0~41\ = CARRY((\inst13|s_debounceCnt\(20)) # (!\inst13|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst13|Add0~39\,
	combout => \inst13|Add0~40_combout\,
	cout => \inst13|Add0~41\);

-- Location: LCCOMB_X75_Y48_N26
\inst13|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[20]~8_combout\ = (\inst13|s_debounceCnt[22]~3_combout\ & (\inst13|s_debounceCnt[22]~4_combout\ & \inst13|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[22]~3_combout\,
	datac => \inst13|s_debounceCnt[22]~4_combout\,
	datad => \inst13|Add0~40_combout\,
	combout => \inst13|s_debounceCnt[20]~8_combout\);

-- Location: FF_X75_Y48_N27
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

-- Location: LCCOMB_X75_Y48_N20
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

-- Location: LCCOMB_X75_Y48_N28
\inst13|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[21]~9_combout\ = (\inst13|s_debounceCnt[22]~3_combout\ & (\inst13|s_debounceCnt[22]~4_combout\ & \inst13|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt[22]~3_combout\,
	datac => \inst13|s_debounceCnt[22]~4_combout\,
	datad => \inst13|Add0~42_combout\,
	combout => \inst13|s_debounceCnt[21]~9_combout\);

-- Location: FF_X75_Y48_N29
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

-- Location: LCCOMB_X74_Y48_N22
\inst13|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~5_combout\ = (!\inst13|s_debounceCnt\(21) & !\inst13|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(21),
	datac => \inst13|s_debounceCnt\(20),
	combout => \inst13|LessThan0~5_combout\);

-- Location: LCCOMB_X76_Y48_N0
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

-- Location: LCCOMB_X76_Y48_N18
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|s_debounceCnt\(9) & ((\inst13|s_debounceCnt\(7)) # (\inst13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(9),
	datab => \inst13|s_debounceCnt\(7),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y48_N28
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

-- Location: LCCOMB_X76_Y48_N10
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

-- Location: LCCOMB_X76_Y48_N24
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

-- Location: LCCOMB_X76_Y48_N6
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

-- Location: LCCOMB_X77_Y48_N22
\inst13|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~0_combout\ = (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X77_Y48_N12
\inst13|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~17_combout\ = (\inst13|s_debounceCnt[22]~0_combout\ & ((\inst13|Add0~28_combout\) # (!\inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt[22]~0_combout\,
	datad => \inst13|Add0~28_combout\,
	combout => \inst13|s_debounceCnt~17_combout\);

-- Location: FF_X77_Y48_N13
\inst13|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~17_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(14));

-- Location: LCCOMB_X77_Y48_N18
\inst13|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~3_combout\ = (!\inst13|s_debounceCnt\(14) & (!\inst13|s_debounceCnt\(19) & (!\inst13|s_debounceCnt\(18) & !\inst13|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(14),
	datab => \inst13|s_debounceCnt\(19),
	datac => \inst13|s_debounceCnt\(18),
	datad => \inst13|s_debounceCnt\(11),
	combout => \inst13|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X74_Y48_N2
\inst13|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~0_combout\ = (!\inst13|s_debounceCnt\(6) & (!\inst13|s_debounceCnt\(17) & (!\inst13|s_debounceCnt\(15) & !\inst13|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(6),
	datab => \inst13|s_debounceCnt\(17),
	datac => \inst13|s_debounceCnt\(15),
	datad => \inst13|s_debounceCnt\(16),
	combout => \inst13|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X75_Y48_N30
\inst13|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~1_combout\ = (!\inst13|s_debounceCnt\(20) & (!\inst13|s_debounceCnt\(21) & (!\inst13|s_debounceCnt\(12) & !\inst13|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(20),
	datab => \inst13|s_debounceCnt\(21),
	datac => \inst13|s_debounceCnt\(12),
	datad => \inst13|s_debounceCnt\(13),
	combout => \inst13|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X77_Y48_N20
\inst13|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~2_combout\ = (!\inst13|s_debounceCnt\(7) & (!\inst13|s_debounceCnt\(9) & (!\inst13|s_debounceCnt\(8) & !\inst13|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(7),
	datab => \inst13|s_debounceCnt\(9),
	datac => \inst13|s_debounceCnt\(8),
	datad => \inst13|s_debounceCnt\(10),
	combout => \inst13|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X74_Y48_N24
\inst13|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~4_combout\ = (\inst13|s_pulsedOut~3_combout\ & (\inst13|s_pulsedOut~0_combout\ & (\inst13|s_pulsedOut~1_combout\ & \inst13|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~3_combout\,
	datab => \inst13|s_pulsedOut~0_combout\,
	datac => \inst13|s_pulsedOut~1_combout\,
	datad => \inst13|s_pulsedOut~2_combout\,
	combout => \inst13|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X77_Y48_N16
\inst13|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~2_combout\ = (\inst13|s_debounceCnt\(5)) # ((\inst13|s_debounceCnt\(0)) # ((!\inst13|s_pulsedOut~4_combout\) # (!\inst13|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt\(5),
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_pulsedOut~5_combout\,
	datad => \inst13|s_pulsedOut~4_combout\,
	combout => \inst13|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X76_Y48_N26
\inst13|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~25_combout\ = (\inst13|s_debounceCnt\(22) & (((!\inst13|LessThan0~6_combout\)))) # (!\inst13|s_debounceCnt\(22) & ((\inst13|s_debounceCnt[22]~2_combout\) # ((!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[22]~2_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X75_Y48_N22
\inst13|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~44_combout\ = \inst13|s_debounceCnt\(22) $ (\inst13|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|s_debounceCnt\(22),
	cin => \inst13|Add0~43\,
	combout => \inst13|Add0~44_combout\);

-- Location: LCCOMB_X76_Y48_N4
\inst13|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~26_combout\ = (\inst13|s_debounceCnt[22]~25_combout\ & (\inst13|s_dirtyIn~q\ & ((\inst13|Add0~44_combout\) # (!\inst13|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_debounceCnt[22]~25_combout\,
	datab => \inst13|s_previousIn~q\,
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|Add0~44_combout\,
	combout => \inst13|s_debounceCnt[22]~26_combout\);

-- Location: FF_X76_Y48_N5
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

-- Location: LCCOMB_X76_Y48_N12
\inst13|s_debounceCnt[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt[22]~4_combout\ = (\inst13|s_previousIn~q\ & (\inst13|s_dirtyIn~q\ & ((!\inst13|LessThan0~6_combout\) # (!\inst13|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_previousIn~q\,
	datab => \inst13|s_debounceCnt\(22),
	datac => \inst13|s_dirtyIn~q\,
	datad => \inst13|LessThan0~6_combout\,
	combout => \inst13|s_debounceCnt[22]~4_combout\);

-- Location: LCCOMB_X76_Y48_N30
\inst13|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_debounceCnt~24_combout\ = (\inst13|Add0~0_combout\ & \inst13|s_debounceCnt[22]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~0_combout\,
	datad => \inst13|s_debounceCnt[22]~4_combout\,
	combout => \inst13|s_debounceCnt~24_combout\);

-- Location: FF_X76_Y48_N31
\inst13|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst13|s_debounceCnt~24_combout\,
	ena => \inst13|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|s_debounceCnt\(0));

-- Location: LCCOMB_X77_Y48_N8
\inst13|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~6_combout\ = (\inst13|s_dirtyIn~q\ & (\inst13|s_debounceCnt\(0) & (!\inst13|s_debounceCnt\(22) & \inst13|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_dirtyIn~q\,
	datab => \inst13|s_debounceCnt\(0),
	datac => \inst13|s_debounceCnt\(22),
	datad => \inst13|s_previousIn~q\,
	combout => \inst13|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X74_Y48_N0
\inst13|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|s_pulsedOut~7_combout\ = (\inst13|s_pulsedOut~6_combout\ & (\inst13|s_pulsedOut~5_combout\ & (!\inst13|s_debounceCnt\(5) & \inst13|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|s_pulsedOut~6_combout\,
	datab => \inst13|s_pulsedOut~5_combout\,
	datac => \inst13|s_debounceCnt\(5),
	datad => \inst13|s_pulsedOut~4_combout\,
	combout => \inst13|s_pulsedOut~7_combout\);

-- Location: FF_X74_Y48_N1
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

-- Location: LCCOMB_X72_Y41_N30
\inst25|pState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~28_combout\ = (\inst25|pState~18_combout\ & ((\inst25|pState~27_combout\) # ((\inst25|pState.Timer~q\ & \inst13|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datab => \inst25|pState~18_combout\,
	datac => \inst25|pState~27_combout\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst25|pState~28_combout\);

-- Location: FF_X72_Y41_N31
\inst25|pState.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Menu~q\);

-- Location: LCCOMB_X72_Y41_N24
\inst25|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~9_combout\ = (!\inst25|pState.Timer~q\ & ((!\inst13|s_pulsedOut~q\) # (!\inst25|pState.Menu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Menu~q\,
	datac => \inst25|pState.Timer~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst25|pState~9_combout\);

-- Location: LCCOMB_X72_Y41_N16
\inst25|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~11_combout\ = (\inst25|pState.StartPrg~q\ & ((\inst25|pState~10_combout\) # ((\inst3|s_pulsedOut~q\) # (\iaaanst1|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~10_combout\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \iaaanst1|Selector15~0_combout\,
	combout => \inst25|pState~11_combout\);

-- Location: LCCOMB_X72_Y41_N2
\inst25|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~12_combout\ = (!\inst1|s_pulsedOut~q\ & (\inst25|pState~9_combout\ & (\inst25|pState.Init~q\ & !\inst25|pState~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst25|pState~9_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst25|pState~11_combout\,
	combout => \inst25|pState~12_combout\);

-- Location: LCCOMB_X72_Y41_N18
\inst25|pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~16_combout\ = (\inst25|pState~13_combout\) # (!\inst25|pState~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState~13_combout\,
	datad => \inst25|pState~12_combout\,
	combout => \inst25|pState~16_combout\);

-- Location: LCCOMB_X69_Y41_N20
\inst25|pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~15_combout\ = (\iaaanst1|s_currentState.TFim~q\ & (!\inst1|s_pulsedOut~q\ & (!\inst3|s_pulsedOut~q\ & \inst9|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \inst1|s_pulsedOut~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst25|pState~15_combout\);

-- Location: LCCOMB_X69_Y41_N10
\inst25|pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~17_combout\ = (\inst25|pState~16_combout\ & (\inst25|pState.StartPrg~q\ & ((\inst25|pState~15_combout\)))) # (!\inst25|pState~16_combout\ & ((\inst25|pState.Extra~q\) # ((\inst25|pState.StartPrg~q\ & \inst25|pState~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState~16_combout\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \inst25|pState.Extra~q\,
	datad => \inst25|pState~15_combout\,
	combout => \inst25|pState~17_combout\);

-- Location: FF_X69_Y41_N11
\inst25|pState.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Extra~q\);

-- Location: LCCOMB_X73_Y40_N30
\inst4|Counter|s_count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~12_combout\ = ((\inst25|pState.Extra~q\) # ((!\iaaanst1|s_currentState.TFim~q\ & !\iaaanst1|s_currentState.TExtra~q\))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst25|pState.Extra~q\,
	combout => \inst4|Counter|s_count[1]~12_combout\);

-- Location: FF_X73_Y40_N15
\inst4|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[1]~13_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(1));

-- Location: LCCOMB_X73_Y40_N6
\inst4|Counter|s_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~10_combout\ = (!\inst4|Counter|s_count\(2)) # (!\inst4|Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Counter|s_count\(1),
	datad => \inst4|Counter|s_count\(2),
	combout => \inst4|Counter|s_count[1]~10_combout\);

-- Location: LCCOMB_X68_Y41_N2
\inst9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~0_combout\ = (!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_currentState.TFim~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \inst9|Add0~0_combout\);

-- Location: LCCOMB_X73_Y40_N28
\inst4|Counter|s_count[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Counter|s_count[1]~11_combout\ = (((!\inst25|pState.Extra~q\ & \inst9|Add0~0_combout\)) # (!\inst25|pState.Init~q\)) # (!\inst4|Counter|s_count[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count[1]~10_combout\,
	datab => \inst25|pState.Extra~q\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst25|pState.Init~q\,
	combout => \inst4|Counter|s_count[1]~11_combout\);

-- Location: FF_X73_Y40_N13
\inst4|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|Counter|s_count[0]~8_combout\,
	sclr => \inst4|Counter|s_count[1]~11_combout\,
	ena => \inst4|Counter|s_count[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Counter|s_count\(0));

-- Location: FF_X72_Y40_N7
\iaaanst1|s_valueExtra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(0),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(0));

-- Location: FF_X72_Y40_N19
\iaaanst1|s_valueExtra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(2),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(2));

-- Location: FF_X72_Y40_N5
\iaaanst1|s_valueExtra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(3),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(3));

-- Location: FF_X72_Y40_N21
\iaaanst1|s_valueExtra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|Counter|s_count\(1),
	sload => VCC,
	ena => \iaaanst1|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_valueExtra\(1));

-- Location: LCCOMB_X72_Y40_N0
\iaaanst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Equal0~0_combout\ = (!\iaaanst1|s_valueExtra\(0) & (!\iaaanst1|s_valueExtra\(2) & (!\iaaanst1|s_valueExtra\(3) & !\iaaanst1|s_valueExtra\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_valueExtra\(0),
	datab => \iaaanst1|s_valueExtra\(2),
	datac => \iaaanst1|s_valueExtra\(3),
	datad => \iaaanst1|s_valueExtra\(1),
	combout => \iaaanst1|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y41_N12
\iaaanst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Equal0~2_combout\ = (!\iaaanst1|Equal0~1_combout\) # (!\iaaanst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|Equal0~0_combout\,
	datad => \iaaanst1|Equal0~1_combout\,
	combout => \iaaanst1|Equal0~2_combout\);

-- Location: LCCOMB_X69_Y41_N18
\iaaanst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector10~0_combout\ = (\inst25|pState.StartPrg~q\ & (!\iaaanst1|Equal0~2_combout\ & (\iaaanst1|s_currentState.TExtra~q\))) # (!\inst25|pState.StartPrg~q\ & (((!\iaaanst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Equal0~2_combout\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \iaaanst1|Selector10~0_combout\);

-- Location: LCCOMB_X68_Y41_N30
\iaaanst1|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~9_combout\ = (\inst25|pState.Init~q\ & !\iaaanst1|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datad => \iaaanst1|Selector10~0_combout\,
	combout => \iaaanst1|s_currentState~9_combout\);

-- Location: FF_X68_Y41_N31
\iaaanst1|s_currentState.TInit\ : dffeas
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
	q => \iaaanst1|s_currentState.TInit~q\);

-- Location: LCCOMB_X68_Y40_N30
\iaaanst1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector11~0_combout\ = (\inst25|pState.StartPrg~q\ & (((\iaaanst1|s_currentState.TAmassar~q\ & !\inst9|s_cntZero~q\)) # (!\iaaanst1|s_currentState.TInit~q\))) # (!\inst25|pState.StartPrg~q\ & (\iaaanst1|s_currentState.TAmassar~q\ & 
-- ((!\inst9|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|Selector11~0_combout\);

-- Location: LCCOMB_X68_Y40_N20
\iaaanst1|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~10_combout\ = (\inst25|pState.Init~q\ & \iaaanst1|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \iaaanst1|Selector11~0_combout\,
	combout => \iaaanst1|s_currentState~10_combout\);

-- Location: FF_X68_Y40_N21
\iaaanst1|s_currentState.TAmassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TAmassar~q\);

-- Location: LCCOMB_X68_Y41_N16
\iaaanst1|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~11_combout\ = (\inst25|pState.Init~q\ & ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TAmassar~q\)) # (!\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TLevedar~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_cntZero~q\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_currentState~11_combout\);

-- Location: FF_X68_Y41_N17
\iaaanst1|s_currentState.TLevedar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \iaaanst1|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TLevedar~q\);

-- Location: LCCOMB_X69_Y41_N24
\iaaanst1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector13~0_combout\ = (\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TLevedar~q\))) # (!\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TCozer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|Selector13~0_combout\);

-- Location: LCCOMB_X69_Y41_N14
\iaaanst1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector13~1_combout\ = (\iaaanst1|Selector13~0_combout\) # ((\iaaanst1|Equal0~2_combout\ & (\iaaanst1|s_currentState.TExtra~q\ & \inst25|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|Equal0~2_combout\,
	datab => \iaaanst1|Selector13~0_combout\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst25|pState.StartPrg~q\,
	combout => \iaaanst1|Selector13~1_combout\);

-- Location: LCCOMB_X68_Y41_N22
\iaaanst1|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~12_combout\ = (\iaaanst1|Selector13~1_combout\ & \inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|Selector13~1_combout\,
	datad => \inst25|pState.Init~q\,
	combout => \iaaanst1|s_currentState~12_combout\);

-- Location: FF_X68_Y41_N23
\iaaanst1|s_currentState.TCozer\ : dffeas
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
	q => \iaaanst1|s_currentState.TCozer~q\);

-- Location: LCCOMB_X68_Y40_N12
\iaaanst1|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~0_combout\ = ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TCozer~q\ $ (\iaaanst1|s_currentState.TFim~q\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst25|pState.Init~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_stateChanged~0_combout\);

-- Location: LCCOMB_X68_Y40_N22
\iaaanst1|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~1_combout\ = (\iaaanst1|s_stateChanged~0_combout\) # ((\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TAmassar~q\ $ (\iaaanst1|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~0_combout\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|s_stateChanged~1_combout\);

-- Location: LCCOMB_X68_Y40_N2
\iaaanst1|sync_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|sync_proc~1_combout\ = (\iaaanst1|s_currentState.TExtra~q\ & (\inst25|pState.StartPrg~q\ & ((!\iaaanst1|s_currentState.TFim~q\) # (!\inst9|s_cntZero~q\)))) # (!\iaaanst1|s_currentState.TExtra~q\ & (((\inst9|s_cntZero~q\ & 
-- \iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|sync_proc~1_combout\);

-- Location: LCCOMB_X68_Y40_N28
\iaaanst1|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~2_combout\ = (\iaaanst1|s_stateChanged~1_combout\) # ((\iaaanst1|sync_proc~1_combout\) # (\iaaanst1|s_currentState.TAmassar~q\ $ (\iaaanst1|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_stateChanged~1_combout\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|Selector11~0_combout\,
	datad => \iaaanst1|sync_proc~1_combout\,
	combout => \iaaanst1|s_stateChanged~2_combout\);

-- Location: LCCOMB_X68_Y40_N6
\iaaanst1|sync_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|sync_proc~2_combout\ = (\iaaanst1|s_currentState.TInit~q\ $ (((\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|Equal0~2_combout\)))) # (!\inst25|pState.StartPrg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|Equal0~2_combout\,
	combout => \iaaanst1|sync_proc~2_combout\);

-- Location: LCCOMB_X68_Y40_N4
\iaaanst1|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_stateChanged~3_combout\ = (!\iaaanst1|s_stateChanged~2_combout\ & (\iaaanst1|sync_proc~2_combout\ & (\iaaanst1|s_currentState.TCozer~q\ $ (!\iaaanst1|Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_stateChanged~2_combout\,
	datac => \iaaanst1|Selector13~1_combout\,
	datad => \iaaanst1|sync_proc~2_combout\,
	combout => \iaaanst1|s_stateChanged~3_combout\);

-- Location: FF_X68_Y40_N5
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

-- Location: LCCOMB_X68_Y40_N18
\iaaanst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector0~0_combout\ = (\iaaanst1|s_currentState.TCozer~q\) # ((\iaaanst1|s_currentState.TLevedar~q\) # (\iaaanst1|s_currentState.TAmassar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TAmassar~q\,
	combout => \iaaanst1|Selector0~0_combout\);

-- Location: LCCOMB_X68_Y40_N10
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (((\inst9|s_cntZero~q\ & \iaaanst1|Selector0~0_combout\)) # (!\iaaanst1|s_stateChanged~q\)) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_stateChanged~q\,
	datad => \iaaanst1|Selector0~0_combout\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X65_Y41_N2
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

-- Location: LCCOMB_X66_Y40_N0
\inst11|s_counter[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|s_counter[26]~33_combout\ = (!\inst11|Equal0~9_combout\) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.Init~q\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|s_counter[26]~33_combout\);

-- Location: FF_X65_Y41_N3
\inst11|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[0]~31_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(0));

-- Location: LCCOMB_X65_Y41_N4
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

-- Location: FF_X65_Y41_N5
\inst11|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[1]~34_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(1));

-- Location: LCCOMB_X65_Y41_N6
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

-- Location: FF_X65_Y41_N7
\inst11|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[2]~36_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(2));

-- Location: LCCOMB_X65_Y41_N8
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

-- Location: FF_X65_Y41_N9
\inst11|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[3]~38_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(3));

-- Location: LCCOMB_X65_Y41_N10
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

-- Location: FF_X65_Y41_N11
\inst11|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[4]~40_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(4));

-- Location: LCCOMB_X65_Y41_N12
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

-- Location: FF_X65_Y41_N13
\inst11|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[5]~42_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(5));

-- Location: LCCOMB_X65_Y41_N14
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

-- Location: FF_X65_Y41_N15
\inst11|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[6]~44_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(6));

-- Location: LCCOMB_X65_Y41_N16
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

-- Location: FF_X65_Y41_N17
\inst11|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[7]~46_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(7));

-- Location: LCCOMB_X65_Y41_N18
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

-- Location: FF_X65_Y41_N19
\inst11|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[8]~48_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(8));

-- Location: LCCOMB_X65_Y41_N20
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

-- Location: FF_X65_Y41_N21
\inst11|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[9]~50_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(9));

-- Location: LCCOMB_X65_Y41_N22
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

-- Location: FF_X65_Y41_N23
\inst11|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[10]~52_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(10));

-- Location: LCCOMB_X65_Y41_N24
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

-- Location: FF_X65_Y41_N25
\inst11|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[11]~54_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(11));

-- Location: LCCOMB_X65_Y41_N26
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

-- Location: FF_X65_Y41_N27
\inst11|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[12]~56_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(12));

-- Location: LCCOMB_X65_Y41_N28
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

-- Location: FF_X65_Y41_N29
\inst11|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[13]~58_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(13));

-- Location: LCCOMB_X65_Y41_N30
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

-- Location: FF_X65_Y41_N31
\inst11|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[14]~60_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(14));

-- Location: LCCOMB_X65_Y40_N0
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

-- Location: FF_X65_Y40_N1
\inst11|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[15]~62_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(15));

-- Location: LCCOMB_X65_Y40_N2
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

-- Location: FF_X65_Y40_N3
\inst11|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[16]~64_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(16));

-- Location: LCCOMB_X65_Y40_N4
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

-- Location: FF_X65_Y40_N5
\inst11|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[17]~66_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(17));

-- Location: LCCOMB_X65_Y40_N6
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

-- Location: FF_X65_Y40_N7
\inst11|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[18]~68_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(18));

-- Location: LCCOMB_X65_Y40_N8
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

-- Location: FF_X65_Y40_N9
\inst11|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[19]~70_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(19));

-- Location: LCCOMB_X65_Y40_N10
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

-- Location: FF_X65_Y40_N11
\inst11|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[20]~72_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(20));

-- Location: LCCOMB_X65_Y40_N12
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

-- Location: FF_X65_Y40_N13
\inst11|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[21]~74_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(21));

-- Location: LCCOMB_X65_Y40_N14
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

-- Location: FF_X65_Y40_N15
\inst11|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[22]~76_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(22));

-- Location: LCCOMB_X65_Y40_N16
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

-- Location: FF_X65_Y40_N17
\inst11|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[23]~78_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(23));

-- Location: LCCOMB_X66_Y40_N12
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (((!\inst11|s_counter\(22)) # (!\inst11|s_counter\(23))) # (!\inst11|s_counter\(21))) # (!\inst11|s_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(20),
	datab => \inst11|s_counter\(21),
	datac => \inst11|s_counter\(23),
	datad => \inst11|s_counter\(22),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y40_N18
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

-- Location: FF_X65_Y40_N19
\inst11|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[24]~80_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(24));

-- Location: LCCOMB_X65_Y40_N20
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

-- Location: FF_X65_Y40_N21
\inst11|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[25]~82_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(25));

-- Location: LCCOMB_X65_Y40_N22
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

-- Location: FF_X65_Y40_N23
\inst11|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[26]~84_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(26));

-- Location: LCCOMB_X65_Y40_N24
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

-- Location: FF_X65_Y40_N25
\inst11|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[27]~86_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(27));

-- Location: LCCOMB_X66_Y40_N10
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (\inst11|s_counter\(26)) # ((\inst11|s_counter\(27)) # ((\inst11|s_counter\(24)) # (!\inst11|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(26),
	datab => \inst11|s_counter\(27),
	datac => \inst11|s_counter\(25),
	datad => \inst11|s_counter\(24),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y40_N26
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

-- Location: FF_X65_Y40_N27
\inst11|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[28]~88_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(28));

-- Location: LCCOMB_X65_Y40_N28
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

-- Location: FF_X65_Y40_N29
\inst11|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[29]~90_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(29));

-- Location: LCCOMB_X65_Y40_N30
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

-- Location: FF_X65_Y40_N31
\inst11|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst11|s_counter[30]~92_combout\,
	sclr => \inst11|s_counter[26]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|s_counter\(30));

-- Location: LCCOMB_X66_Y40_N4
\inst11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~8_combout\ = (\inst11|Equal0~7_combout\) # ((\inst11|s_counter\(30)) # ((\inst11|s_counter\(28)) # (\inst11|s_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~7_combout\,
	datab => \inst11|s_counter\(30),
	datac => \inst11|s_counter\(28),
	datad => \inst11|s_counter\(29),
	combout => \inst11|Equal0~8_combout\);

-- Location: LCCOMB_X66_Y40_N26
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (\inst11|s_counter\(16)) # ((\inst11|s_counter\(18)) # ((!\inst11|s_counter\(19)) # (!\inst11|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(16),
	datab => \inst11|s_counter\(18),
	datac => \inst11|s_counter\(17),
	datad => \inst11|s_counter\(19),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y41_N30
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (((\inst11|s_counter\(7)) # (!\inst11|s_counter\(4))) # (!\inst11|s_counter\(6))) # (!\inst11|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(5),
	datab => \inst11|s_counter\(6),
	datac => \inst11|s_counter\(7),
	datad => \inst11|s_counter\(4),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y41_N20
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (((!\inst11|s_counter\(0)) # (!\inst11|s_counter\(2))) # (!\inst11|s_counter\(1))) # (!\inst11|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(3),
	datab => \inst11|s_counter\(1),
	datac => \inst11|s_counter\(2),
	datad => \inst11|s_counter\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y41_N0
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (\inst11|s_counter\(9)) # ((\inst11|s_counter\(11)) # ((\inst11|s_counter\(10)) # (\inst11|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(9),
	datab => \inst11|s_counter\(11),
	datac => \inst11|s_counter\(10),
	datad => \inst11|s_counter\(8),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y40_N6
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (((!\inst11|s_counter\(14)) # (!\inst11|s_counter\(13))) # (!\inst11|s_counter\(12))) # (!\inst11|s_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|s_counter\(15),
	datab => \inst11|s_counter\(12),
	datac => \inst11|s_counter\(13),
	datad => \inst11|s_counter\(14),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y40_N24
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~1_combout\) # ((\inst11|Equal0~0_combout\) # ((\inst11|Equal0~2_combout\) # (\inst11|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~1_combout\,
	datab => \inst11|Equal0~0_combout\,
	datac => \inst11|Equal0~2_combout\,
	datad => \inst11|Equal0~3_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X66_Y40_N18
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

-- Location: LCCOMB_X66_Y40_N8
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

-- Location: FF_X66_Y40_N9
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

-- Location: LCCOMB_X68_Y41_N0
\iaaanst1|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr10~0_combout\ = (!\iaaanst1|s_currentState.TCozer~q\ & !\iaaanst1|s_currentState.TLevedar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TCozer~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \iaaanst1|WideOr10~0_combout\);

-- Location: LCCOMB_X68_Y40_N16
\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\iaaanst1|WideOr10~0_combout\ & (\iaaanst1|s_currentState.TAmassar~q\ & ((\inst25|pState.StartPrg~q\) # (\inst9|s_cntZero~q\)))) # (!\iaaanst1|WideOr10~0_combout\ & (((\inst25|pState.StartPrg~q\) # (\inst9|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X68_Y40_N14
\inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst11|pulse~q\ & (((\iaaanst1|s_currentState.TFim~q\) # (\inst10~0_combout\)) # (!\iaaanst1|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \inst11|pulse~q\,
	datad => \inst10~0_combout\,
	combout => \inst10~1_combout\);

-- Location: FF_X68_Y44_N21
\iaaanst1|s_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \iaaanst1|Equal0~2_combout\,
	sload => VCC,
	ena => \inst25|pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_temp~q\);

-- Location: LCCOMB_X69_Y40_N12
\inst9|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~19_combout\ = (\iaaanst1|s_currentState.TCozer~q\ & (\iaaanst1|s_temp~q\ & \iaaanst1|s_valueExtra\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_valueExtra\(4),
	combout => \inst9|Add0~19_combout\);

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

-- Location: LCCOMB_X69_Y41_N8
\inst|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataOut~0_combout\ = (\inst25|pState.Timer~q\ & (\SW[0]~input_o\)) # (!\inst25|pState.Timer~q\ & ((\inst25|pState.Menu~q\ & (\SW[0]~input_o\)) # (!\inst25|pState.Menu~q\ & ((\inst|dataOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst25|pState.Timer~q\,
	datac => \inst|dataOut~q\,
	datad => \inst25|pState.Menu~q\,
	combout => \inst|dataOut~0_combout\);

-- Location: FF_X69_Y41_N9
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

-- Location: LCCOMB_X69_Y41_N26
\inst9|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = (!\iaaanst1|s_currentState.TFim~q\ & (!\inst|dataOut~q\ & (!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_currentState.TInit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \inst|dataOut~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TInit~q\,
	combout => \inst9|Add0~20_combout\);

-- Location: LCCOMB_X68_Y40_N24
\inst9|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~21_combout\ = (\inst9|Add0~19_combout\) # ((!\iaaanst1|s_currentState.TCozer~q\ & (!\iaaanst1|s_currentState.TAmassar~q\ & \inst9|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \inst9|Add0~19_combout\,
	datad => \inst9|Add0~20_combout\,
	combout => \inst9|Add0~21_combout\);

-- Location: LCCOMB_X70_Y40_N8
\inst9|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~1_combout\ = \inst9|s_count\(0) $ (VCC)
-- \inst9|Add0~2\ = CARRY(\inst9|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(0),
	datad => VCC,
	combout => \inst9|Add0~1_combout\,
	cout => \inst9|Add0~2\);

-- Location: LCCOMB_X72_Y40_N8
\inst9|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~3_combout\ = (\iaaanst1|s_valueExtra\(0) & (\iaaanst1|s_temp~q\ & \iaaanst1|s_currentState.TCozer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_valueExtra\(0),
	datab => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \inst9|Add0~3_combout\);

-- Location: LCCOMB_X72_Y40_N14
\iaaanst1|addr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|addr[2]~4_combout\ = (\inst|dataOut~q\ & !\iaaanst1|s_currentState.TFim~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataOut~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|addr[2]~4_combout\);

-- Location: LCCOMB_X72_Y40_N28
\iaaanst1|addr[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|addr[1]~5_combout\ = (\iaaanst1|s_currentState.TInit~q\ & (!\iaaanst1|s_currentState.TAmassar~q\ & ((\iaaanst1|s_currentState.TLevedar~q\) # (!\iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|s_currentState.TAmassar~q\,
	combout => \iaaanst1|addr[1]~5_combout\);

-- Location: LCCOMB_X72_Y40_N10
\inst9|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\iaaanst1|addr[2]~4_combout\ & (!\iaaanst1|s_currentState.TCozer~q\ & (!\iaaanst1|addr[1]~5_combout\ & !\iaaanst1|s_currentState.TExtra~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|addr[2]~4_combout\,
	datab => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|addr[1]~5_combout\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \inst9|Add0~4_combout\);

-- Location: LCCOMB_X69_Y40_N16
\inst9|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~5_combout\ = (\inst8~0_combout\ & (((\inst9|Add0~3_combout\) # (\inst9|Add0~4_combout\)))) # (!\inst8~0_combout\ & (\inst9|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~0_combout\,
	datab => \inst9|Add0~1_combout\,
	datac => \inst9|Add0~3_combout\,
	datad => \inst9|Add0~4_combout\,
	combout => \inst9|Add0~5_combout\);

-- Location: LCCOMB_X69_Y40_N18
\inst9|s_count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_count[2]~0_combout\ = ((\inst8~0_combout\) # ((\inst10~1_combout\ & !\inst9|Equal0~1_combout\))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~1_combout\,
	datab => \inst9|Equal0~1_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst8~0_combout\,
	combout => \inst9|s_count[2]~0_combout\);

-- Location: FF_X69_Y40_N17
\inst9|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~5_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(0));

-- Location: LCCOMB_X70_Y40_N10
\inst9|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|s_count\(1) & (\inst9|Add0~2\ & VCC)) # (!\inst9|s_count\(1) & (!\inst9|Add0~2\))
-- \inst9|Add0~9\ = CARRY((!\inst9|s_count\(1) & !\inst9|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(1),
	datad => VCC,
	cin => \inst9|Add0~2\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X68_Y41_N4
\iaaanst1|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|WideOr11~combout\ = ((\iaaanst1|s_currentState.TLevedar~q\) # (\iaaanst1|s_currentState.TFim~q\)) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|WideOr11~combout\);

-- Location: LCCOMB_X72_Y40_N26
\inst9|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~24_combout\ = (\iaaanst1|s_currentState.TCozer~q\ & ((!\iaaanst1|s_temp~q\))) # (!\iaaanst1|s_currentState.TCozer~q\ & (!\iaaanst1|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TExtra~q\,
	datab => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \inst9|Add0~24_combout\);

-- Location: LCCOMB_X72_Y40_N30
\inst9|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~25_combout\ = (\inst9|Add0~24_combout\ & ((\iaaanst1|s_currentState.TFim~q\) # ((\iaaanst1|s_currentState.TAmassar~q\) # (!\iaaanst1|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|WideOr11~combout\,
	datac => \inst9|Add0~24_combout\,
	datad => \iaaanst1|s_currentState.TAmassar~q\,
	combout => \inst9|Add0~25_combout\);

-- Location: LCCOMB_X72_Y40_N6
\inst9|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~23_combout\ = (\iaaanst1|s_currentState.TCozer~q\ & (\iaaanst1|s_temp~q\ & \iaaanst1|s_valueExtra\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_valueExtra\(1),
	combout => \inst9|Add0~23_combout\);

-- Location: LCCOMB_X70_Y40_N26
\inst9|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~26_combout\ = (\inst8~0_combout\ & (((\inst9|Add0~25_combout\) # (\inst9|Add0~23_combout\)))) # (!\inst8~0_combout\ & (\inst9|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~8_combout\,
	datab => \inst8~0_combout\,
	datac => \inst9|Add0~25_combout\,
	datad => \inst9|Add0~23_combout\,
	combout => \inst9|Add0~26_combout\);

-- Location: FF_X70_Y40_N27
\inst9|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~26_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(1));

-- Location: LCCOMB_X70_Y40_N12
\inst9|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|s_count\(2) & ((GND) # (!\inst9|Add0~9\))) # (!\inst9|s_count\(2) & (\inst9|Add0~9\ $ (GND)))
-- \inst9|Add0~11\ = CARRY((\inst9|s_count\(2)) # (!\inst9|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X72_Y40_N12
\iaaanst1|addr[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|addr[0]~6_combout\ = (\iaaanst1|s_currentState.TAmassar~q\) # ((!\iaaanst1|s_currentState.TLevedar~q\ & (\iaaanst1|s_currentState.TInit~q\ & !\iaaanst1|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TLevedar~q\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \iaaanst1|addr[0]~6_combout\);

-- Location: LCCOMB_X72_Y40_N2
\inst27|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux3~0_combout\ = (\iaaanst1|addr[2]~4_combout\ & (((\iaaanst1|s_currentState.TAmassar~q\)))) # (!\iaaanst1|addr[2]~4_combout\ & (!\iaaanst1|addr[0]~6_combout\ & ((\iaaanst1|addr[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|addr[0]~6_combout\,
	datab => \iaaanst1|s_currentState.TAmassar~q\,
	datac => \iaaanst1|addr[1]~5_combout\,
	datad => \iaaanst1|addr[2]~4_combout\,
	combout => \inst27|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y40_N20
\inst9|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\iaaanst1|s_temp~q\ & \iaaanst1|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \inst9|Add0~6_combout\);

-- Location: LCCOMB_X72_Y40_N18
\inst9|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~35_combout\ = (\inst9|Add0~24_combout\ & ((\inst27|Mux3~0_combout\) # ((\iaaanst1|s_valueExtra\(2) & \inst9|Add0~6_combout\)))) # (!\inst9|Add0~24_combout\ & (((\iaaanst1|s_valueExtra\(2) & \inst9|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~24_combout\,
	datab => \inst27|Mux3~0_combout\,
	datac => \iaaanst1|s_valueExtra\(2),
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|Add0~35_combout\);

-- Location: LCCOMB_X70_Y40_N30
\inst9|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~36_combout\ = (\inst8~0_combout\ & ((\inst9|Add0~35_combout\))) # (!\inst8~0_combout\ & (\inst9|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~10_combout\,
	datab => \inst8~0_combout\,
	datad => \inst9|Add0~35_combout\,
	combout => \inst9|Add0~36_combout\);

-- Location: FF_X70_Y40_N31
\inst9|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~36_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(2));

-- Location: LCCOMB_X70_Y40_N14
\inst9|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|s_count\(3) & (\inst9|Add0~11\ & VCC)) # (!\inst9|s_count\(3) & (!\inst9|Add0~11\))
-- \inst9|Add0~13\ = CARRY((!\inst9|s_count\(3) & !\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(3),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X72_Y40_N16
\inst27|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux2~0_combout\ = (!\iaaanst1|addr[0]~6_combout\ & ((\iaaanst1|s_currentState.TFim~q\) # (\inst|dataOut~q\ $ (\iaaanst1|addr[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|addr[0]~6_combout\,
	datab => \inst|dataOut~q\,
	datac => \iaaanst1|addr[1]~5_combout\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \inst27|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y40_N4
\inst9|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~33_combout\ = (\inst9|Add0~24_combout\ & (((\iaaanst1|s_valueExtra\(3) & \inst9|Add0~6_combout\)) # (!\inst27|Mux2~0_combout\))) # (!\inst9|Add0~24_combout\ & (((\iaaanst1|s_valueExtra\(3) & \inst9|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~24_combout\,
	datab => \inst27|Mux2~0_combout\,
	datac => \iaaanst1|s_valueExtra\(3),
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|Add0~33_combout\);

-- Location: LCCOMB_X70_Y40_N24
\inst9|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~34_combout\ = (\inst8~0_combout\ & ((\inst9|Add0~33_combout\))) # (!\inst8~0_combout\ & (\inst9|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8~0_combout\,
	datac => \inst9|Add0~12_combout\,
	datad => \inst9|Add0~33_combout\,
	combout => \inst9|Add0~34_combout\);

-- Location: FF_X70_Y40_N25
\inst9|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~34_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(3));

-- Location: LCCOMB_X70_Y40_N16
\inst9|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst9|s_count\(4) & ((GND) # (!\inst9|Add0~13\))) # (!\inst9|s_count\(4) & (\inst9|Add0~13\ $ (GND)))
-- \inst9|Add0~15\ = CARRY((\inst9|s_count\(4)) # (!\inst9|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X69_Y40_N14
\inst9|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = (\inst8~0_combout\ & (\inst9|Add0~21_combout\)) # (!\inst8~0_combout\ & ((\inst9|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~0_combout\,
	datab => \inst9|Add0~21_combout\,
	datad => \inst9|Add0~14_combout\,
	combout => \inst9|Add0~22_combout\);

-- Location: FF_X69_Y40_N15
\inst9|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~22_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(4));

-- Location: LCCOMB_X70_Y40_N18
\inst9|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = (\inst9|s_count\(5) & (\inst9|Add0~15\ & VCC)) # (!\inst9|s_count\(5) & (!\inst9|Add0~15\))
-- \inst9|Add0~17\ = CARRY((!\inst9|s_count\(5) & !\inst9|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(5),
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCCOMB_X72_Y40_N24
\inst9|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~7_combout\ = (\inst9|Add0~4_combout\ & (((\inst9|Add0~6_combout\ & \iaaanst1|s_valueExtra\(5))) # (!\iaaanst1|addr[0]~6_combout\))) # (!\inst9|Add0~4_combout\ & (\inst9|Add0~6_combout\ & (\iaaanst1|s_valueExtra\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~4_combout\,
	datab => \inst9|Add0~6_combout\,
	datac => \iaaanst1|s_valueExtra\(5),
	datad => \iaaanst1|addr[0]~6_combout\,
	combout => \inst9|Add0~7_combout\);

-- Location: LCCOMB_X70_Y40_N28
\inst9|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst8~0_combout\ & ((\inst9|Add0~7_combout\))) # (!\inst8~0_combout\ & (\inst9|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Add0~16_combout\,
	datac => \inst8~0_combout\,
	datad => \inst9|Add0~7_combout\,
	combout => \inst9|Add0~18_combout\);

-- Location: FF_X70_Y40_N29
\inst9|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~18_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(5));

-- Location: LCCOMB_X70_Y40_N20
\inst9|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~27_combout\ = (\inst9|s_count\(6) & ((GND) # (!\inst9|Add0~17\))) # (!\inst9|s_count\(6) & (\inst9|Add0~17\ $ (GND)))
-- \inst9|Add0~28\ = CARRY((\inst9|s_count\(6)) # (!\inst9|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(6),
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~27_combout\,
	cout => \inst9|Add0~28\);

-- Location: LCCOMB_X70_Y40_N4
\inst9|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~29_combout\ = (\inst8~0_combout\ & (\iaaanst1|s_valueExtra\(6) & ((\inst9|Add0~6_combout\)))) # (!\inst8~0_combout\ & (((\inst9|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_valueExtra\(6),
	datab => \inst9|Add0~27_combout\,
	datac => \inst8~0_combout\,
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|Add0~29_combout\);

-- Location: FF_X70_Y40_N5
\inst9|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~29_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(6));

-- Location: LCCOMB_X70_Y40_N22
\inst9|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~30_combout\ = \inst9|Add0~28\ $ (!\inst9|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|s_count\(7),
	cin => \inst9|Add0~28\,
	combout => \inst9|Add0~30_combout\);

-- Location: LCCOMB_X70_Y40_N2
\inst9|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add0~32_combout\ = (\inst8~0_combout\ & (\iaaanst1|s_valueExtra\(7) & ((\inst9|Add0~6_combout\)))) # (!\inst8~0_combout\ & (((\inst9|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_valueExtra\(7),
	datab => \inst8~0_combout\,
	datac => \inst9|Add0~30_combout\,
	datad => \inst9|Add0~6_combout\,
	combout => \inst9|Add0~32_combout\);

-- Location: FF_X70_Y40_N3
\inst9|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|Add0~32_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	ena => \inst9|s_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_count\(7));

-- Location: LCCOMB_X69_Y40_N6
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|s_count\(6) & (!\inst9|s_count\(5) & (!\inst9|s_count\(4) & !\inst9|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(7),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X69_Y40_N0
\inst6|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal20~0_combout\ = (!\inst9|s_count\(2) & (!\inst9|s_count\(0) & (!\inst9|s_count\(1) & !\inst9|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(0),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|Equal20~0_combout\);

-- Location: LCCOMB_X69_Y40_N4
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (\inst9|Equal0~0_combout\ & \inst6|Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~0_combout\,
	datad => \inst6|Equal20~0_combout\,
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X68_Y40_N0
\inst9|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|s_cntZero~0_combout\ = (!\inst8~0_combout\ & ((\inst10~1_combout\ & ((\inst9|Equal0~1_combout\))) # (!\inst10~1_combout\ & (\inst9|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~0_combout\,
	datab => \inst10~1_combout\,
	datac => \inst9|s_cntZero~q\,
	datad => \inst9|Equal0~1_combout\,
	combout => \inst9|s_cntZero~0_combout\);

-- Location: FF_X68_Y40_N1
\inst9|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst9|s_cntZero~0_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|s_cntZero~q\);

-- Location: LCCOMB_X69_Y41_N0
\iaaanst1|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|s_currentState~13_combout\ = (\inst25|pState.Init~q\ & ((\inst9|s_cntZero~q\ & ((\iaaanst1|s_currentState.TCozer~q\))) # (!\inst9|s_cntZero~q\ & (\iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst9|s_cntZero~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \iaaanst1|s_currentState.TCozer~q\,
	combout => \iaaanst1|s_currentState~13_combout\);

-- Location: FF_X68_Y41_N25
\iaaanst1|s_currentState.TFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \iaaanst1|s_currentState~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iaaanst1|s_currentState.TFim~q\);

-- Location: LCCOMB_X69_Y41_N16
\iaaanst1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector15~0_combout\ = (\iaaanst1|s_currentState.TFim~q\ & \inst9|s_cntZero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|Selector15~0_combout\);

-- Location: LCCOMB_X72_Y41_N4
\inst25|pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~18_combout\ = (!\inst1|s_pulsedOut~q\ & (((!\inst3|s_pulsedOut~q\ & !\iaaanst1|Selector15~0_combout\)) # (!\inst25|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \iaaanst1|Selector15~0_combout\,
	combout => \inst25|pState~18_combout\);

-- Location: LCCOMB_X72_Y41_N14
\inst25|pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~19_combout\ = (\inst25|pState.Timer~q\ & (((!\inst3|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\)))) # (!\inst25|pState.Timer~q\ & (\inst25|pState.Menu~q\ & ((\inst13|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Menu~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst25|pState.Timer~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst25|pState~19_combout\);

-- Location: LCCOMB_X72_Y41_N22
\inst25|pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~20_combout\ = (\inst25|pState~18_combout\ & \inst25|pState~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState~18_combout\,
	datac => \inst25|pState~19_combout\,
	combout => \inst25|pState~20_combout\);

-- Location: FF_X72_Y41_N23
\inst25|pState.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.Timer~q\);

-- Location: LCCOMB_X72_Y41_N28
\inst25|pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~21_combout\ = (\inst25|pState.Timer~q\ & (\inst3|s_pulsedOut~q\ & !\inst13|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst13|s_pulsedOut~q\,
	combout => \inst25|pState~21_combout\);

-- Location: LCCOMB_X72_Y41_N12
\inst25|pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~22_combout\ = (!\inst1|s_pulsedOut~q\ & ((\inst25|pState~21_combout\) # ((!\inst5|s_result~q\ & \inst25|pState.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst25|pState~21_combout\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst1|s_pulsedOut~q\,
	combout => \inst25|pState~22_combout\);

-- Location: FF_X72_Y41_N13
\inst25|pState.TimeProcess\ : dffeas
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
	q => \inst25|pState.TimeProcess~q\);

-- Location: LCCOMB_X77_Y38_N0
\inst5|s_count[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count[18]~1_combout\ = ((\inst25|pState.TimeProcess~q\ & \inst11|pulse~q\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst11|pulse~q\,
	combout => \inst5|s_count[18]~1_combout\);

-- Location: FF_X77_Y39_N21
\inst5|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~2_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(0));

-- Location: LCCOMB_X76_Y39_N2
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|s_count\(1) & (\inst5|Add0~1\ & VCC)) # (!\inst5|s_count\(1) & (!\inst5|Add0~1\))
-- \inst5|Add0~3\ = CARRY((!\inst5|s_count\(1) & !\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X75_Y38_N12
\inst5|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~0_combout\ = ((!\inst5|Equal0~9_combout\ & \inst5|Add0~2_combout\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~2_combout\,
	combout => \inst5|s_count~0_combout\);

-- Location: FF_X75_Y38_N13
\inst5|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~0_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(1));

-- Location: LCCOMB_X76_Y39_N4
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|s_count\(2) & ((GND) # (!\inst5|Add0~3\))) # (!\inst5|s_count\(2) & (\inst5|Add0~3\ $ (GND)))
-- \inst5|Add0~5\ = CARRY((\inst5|s_count\(2)) # (!\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X77_Y39_N30
\inst5|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~7_combout\ = ((\inst5|Equal0~9_combout\ & (!\inst5|s_count\(0))) # (!\inst5|Equal0~9_combout\ & ((\inst5|Add0~4_combout\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~7_combout\);

-- Location: FF_X76_Y39_N13
\inst5|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count~7_combout\,
	sload => VCC,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(2));

-- Location: LCCOMB_X76_Y39_N6
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|s_count\(3) & (\inst5|Add0~5\ & VCC)) # (!\inst5|s_count\(3) & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((!\inst5|s_count\(3) & !\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X77_Y39_N0
\inst5|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~8_combout\ = ((\inst5|Equal0~9_combout\ & (!\inst5|s_count\(0))) # (!\inst5|Equal0~9_combout\ & ((\inst5|Add0~6_combout\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~6_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~8_combout\);

-- Location: FF_X76_Y39_N3
\inst5|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count~8_combout\,
	sload => VCC,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(3));

-- Location: LCCOMB_X76_Y39_N8
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|s_count\(4) & ((GND) # (!\inst5|Add0~7\))) # (!\inst5|s_count\(4) & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((\inst5|s_count\(4)) # (!\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X75_Y39_N6
\inst5|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~6_combout\ = ((\inst5|Equal0~9_combout\ & (!\inst5|s_count\(0))) # (!\inst5|Equal0~9_combout\ & ((\inst5|Add0~8_combout\)))) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datab => \inst5|s_count\(0),
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~6_combout\);

-- Location: FF_X76_Y39_N11
\inst5|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst5|s_count~6_combout\,
	sload => VCC,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(4));

-- Location: LCCOMB_X76_Y39_N10
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|s_count\(5) & (\inst5|Add0~9\ & VCC)) # (!\inst5|s_count\(5) & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((!\inst5|s_count\(5) & !\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X75_Y39_N8
\inst5|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~5_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~10_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~10_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~5_combout\);

-- Location: FF_X75_Y39_N9
\inst5|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~5_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(5));

-- Location: LCCOMB_X76_Y39_N12
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|s_count\(6) & ((GND) # (!\inst5|Add0~11\))) # (!\inst5|s_count\(6) & (\inst5|Add0~11\ $ (GND)))
-- \inst5|Add0~13\ = CARRY((\inst5|s_count\(6)) # (!\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X75_Y39_N12
\inst5|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~3_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~12_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~3_combout\);

-- Location: FF_X75_Y39_N13
\inst5|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~3_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(6));

-- Location: LCCOMB_X76_Y39_N14
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|s_count\(7) & (\inst5|Add0~13\ & VCC)) # (!\inst5|s_count\(7) & (!\inst5|Add0~13\))
-- \inst5|Add0~15\ = CARRY((!\inst5|s_count\(7) & !\inst5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X75_Y39_N18
\inst5|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~4_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~14_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~4_combout\);

-- Location: FF_X75_Y39_N19
\inst5|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~4_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(7));

-- Location: LCCOMB_X76_Y39_N16
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|s_count\(8) & ((GND) # (!\inst5|Add0~15\))) # (!\inst5|s_count\(8) & (\inst5|Add0~15\ $ (GND)))
-- \inst5|Add0~17\ = CARRY((\inst5|s_count\(8)) # (!\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X75_Y39_N26
\inst5|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~9_combout\ = (\inst5|Add0~16_combout\ & (\inst25|pState.Init~q\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~16_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~9_combout\);

-- Location: FF_X75_Y39_N27
\inst5|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~9_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(8));

-- Location: LCCOMB_X76_Y39_N18
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|s_count\(9) & (\inst5|Add0~17\ & VCC)) # (!\inst5|s_count\(9) & (!\inst5|Add0~17\))
-- \inst5|Add0~19\ = CARRY((!\inst5|s_count\(9) & !\inst5|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X75_Y39_N2
\inst5|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~10_combout\ = (\inst5|Add0~18_combout\ & (\inst25|pState.Init~q\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~18_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~10_combout\);

-- Location: FF_X75_Y39_N3
\inst5|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~10_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(9));

-- Location: LCCOMB_X76_Y39_N20
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|s_count\(10) & ((GND) # (!\inst5|Add0~19\))) # (!\inst5|s_count\(10) & (\inst5|Add0~19\ $ (GND)))
-- \inst5|Add0~21\ = CARRY((\inst5|s_count\(10)) # (!\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X75_Y39_N28
\inst5|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~11_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~20_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~20_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~11_combout\);

-- Location: FF_X75_Y39_N29
\inst5|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~11_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(10));

-- Location: LCCOMB_X76_Y39_N22
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|s_count\(11) & (\inst5|Add0~21\ & VCC)) # (!\inst5|s_count\(11) & (!\inst5|Add0~21\))
-- \inst5|Add0~23\ = CARRY((!\inst5|s_count\(11) & !\inst5|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X75_Y39_N10
\inst5|s_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~12_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~22_combout\,
	combout => \inst5|s_count~12_combout\);

-- Location: FF_X75_Y39_N11
\inst5|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~12_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(11));

-- Location: LCCOMB_X76_Y39_N24
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|s_count\(12) & ((GND) # (!\inst5|Add0~23\))) # (!\inst5|s_count\(12) & (\inst5|Add0~23\ $ (GND)))
-- \inst5|Add0~25\ = CARRY((\inst5|s_count\(12)) # (!\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X75_Y39_N4
\inst5|s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~13_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~24_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~24_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~13_combout\);

-- Location: FF_X75_Y39_N5
\inst5|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~13_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(12));

-- Location: LCCOMB_X76_Y39_N26
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|s_count\(13) & (\inst5|Add0~25\ & VCC)) # (!\inst5|s_count\(13) & (!\inst5|Add0~25\))
-- \inst5|Add0~27\ = CARRY((!\inst5|s_count\(13) & !\inst5|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X75_Y39_N0
\inst5|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~14_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~26_combout\,
	combout => \inst5|s_count~14_combout\);

-- Location: FF_X75_Y39_N1
\inst5|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~14_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(13));

-- Location: LCCOMB_X76_Y39_N28
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|s_count\(14) & ((GND) # (!\inst5|Add0~27\))) # (!\inst5|s_count\(14) & (\inst5|Add0~27\ $ (GND)))
-- \inst5|Add0~29\ = CARRY((\inst5|s_count\(14)) # (!\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X75_Y39_N14
\inst5|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~15_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~28_combout\,
	combout => \inst5|s_count~15_combout\);

-- Location: FF_X75_Y39_N15
\inst5|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~15_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(14));

-- Location: LCCOMB_X76_Y39_N30
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|s_count\(15) & (\inst5|Add0~29\ & VCC)) # (!\inst5|s_count\(15) & (!\inst5|Add0~29\))
-- \inst5|Add0~31\ = CARRY((!\inst5|s_count\(15) & !\inst5|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X75_Y39_N16
\inst5|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~16_combout\ = (\inst25|pState.Init~q\ & (\inst5|Add0~30_combout\ & !\inst5|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Add0~30_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_count~16_combout\);

-- Location: FF_X75_Y39_N17
\inst5|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~16_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(15));

-- Location: LCCOMB_X76_Y38_N0
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|s_count\(16) & ((GND) # (!\inst5|Add0~31\))) # (!\inst5|s_count\(16) & (\inst5|Add0~31\ $ (GND)))
-- \inst5|Add0~33\ = CARRY((\inst5|s_count\(16)) # (!\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: LCCOMB_X75_Y39_N22
\inst5|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~17_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~32_combout\,
	combout => \inst5|s_count~17_combout\);

-- Location: FF_X75_Y39_N23
\inst5|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~17_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(16));

-- Location: LCCOMB_X76_Y38_N2
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|s_count\(17) & (\inst5|Add0~33\ & VCC)) # (!\inst5|s_count\(17) & (!\inst5|Add0~33\))
-- \inst5|Add0~35\ = CARRY((!\inst5|s_count\(17) & !\inst5|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: LCCOMB_X77_Y38_N6
\inst5|s_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~18_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~34_combout\,
	combout => \inst5|s_count~18_combout\);

-- Location: FF_X77_Y38_N7
\inst5|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~18_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(17));

-- Location: LCCOMB_X76_Y38_N4
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|s_count\(18) & ((GND) # (!\inst5|Add0~35\))) # (!\inst5|s_count\(18) & (\inst5|Add0~35\ $ (GND)))
-- \inst5|Add0~37\ = CARRY((\inst5|s_count\(18)) # (!\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: LCCOMB_X77_Y38_N8
\inst5|s_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~19_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~36_combout\,
	combout => \inst5|s_count~19_combout\);

-- Location: FF_X77_Y38_N9
\inst5|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~19_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(18));

-- Location: LCCOMB_X76_Y38_N6
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|s_count\(19) & (\inst5|Add0~37\ & VCC)) # (!\inst5|s_count\(19) & (!\inst5|Add0~37\))
-- \inst5|Add0~39\ = CARRY((!\inst5|s_count\(19) & !\inst5|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X77_Y38_N18
\inst5|s_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~20_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~38_combout\,
	combout => \inst5|s_count~20_combout\);

-- Location: FF_X77_Y38_N19
\inst5|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~20_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(19));

-- Location: LCCOMB_X76_Y38_N8
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|s_count\(20) & ((GND) # (!\inst5|Add0~39\))) # (!\inst5|s_count\(20) & (\inst5|Add0~39\ $ (GND)))
-- \inst5|Add0~41\ = CARRY((\inst5|s_count\(20)) # (!\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: LCCOMB_X77_Y38_N12
\inst5|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~21_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~40_combout\,
	combout => \inst5|s_count~21_combout\);

-- Location: FF_X77_Y38_N13
\inst5|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~21_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(20));

-- Location: LCCOMB_X76_Y38_N10
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|s_count\(21) & (\inst5|Add0~41\ & VCC)) # (!\inst5|s_count\(21) & (!\inst5|Add0~41\))
-- \inst5|Add0~43\ = CARRY((!\inst5|s_count\(21) & !\inst5|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: LCCOMB_X75_Y38_N6
\inst5|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~22_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~42_combout\,
	combout => \inst5|s_count~22_combout\);

-- Location: FF_X75_Y38_N7
\inst5|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~22_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(21));

-- Location: LCCOMB_X76_Y38_N12
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|s_count\(22) & ((GND) # (!\inst5|Add0~43\))) # (!\inst5|s_count\(22) & (\inst5|Add0~43\ $ (GND)))
-- \inst5|Add0~45\ = CARRY((\inst5|s_count\(22)) # (!\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: LCCOMB_X75_Y38_N16
\inst5|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~23_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~44_combout\,
	combout => \inst5|s_count~23_combout\);

-- Location: FF_X75_Y38_N17
\inst5|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~23_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(22));

-- Location: LCCOMB_X76_Y38_N14
\inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|s_count\(23) & (\inst5|Add0~45\ & VCC)) # (!\inst5|s_count\(23) & (!\inst5|Add0~45\))
-- \inst5|Add0~47\ = CARRY((!\inst5|s_count\(23) & !\inst5|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: LCCOMB_X75_Y38_N22
\inst5|s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~24_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~46_combout\,
	combout => \inst5|s_count~24_combout\);

-- Location: FF_X75_Y38_N23
\inst5|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~24_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(23));

-- Location: LCCOMB_X76_Y38_N16
\inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|s_count\(24) & ((GND) # (!\inst5|Add0~47\))) # (!\inst5|s_count\(24) & (\inst5|Add0~47\ $ (GND)))
-- \inst5|Add0~49\ = CARRY((\inst5|s_count\(24)) # (!\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: LCCOMB_X75_Y38_N8
\inst5|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~25_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~48_combout\,
	combout => \inst5|s_count~25_combout\);

-- Location: FF_X75_Y38_N9
\inst5|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~25_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(24));

-- Location: LCCOMB_X75_Y38_N10
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|s_count\(21) & (!\inst5|s_count\(24) & (!\inst5|s_count\(23) & !\inst5|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(21),
	datab => \inst5|s_count\(24),
	datac => \inst5|s_count\(23),
	datad => \inst5|s_count\(22),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y38_N18
\inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|s_count\(25) & (\inst5|Add0~49\ & VCC)) # (!\inst5|s_count\(25) & (!\inst5|Add0~49\))
-- \inst5|Add0~51\ = CARRY((!\inst5|s_count\(25) & !\inst5|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: LCCOMB_X75_Y38_N28
\inst5|s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~26_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~50_combout\,
	combout => \inst5|s_count~26_combout\);

-- Location: FF_X75_Y38_N29
\inst5|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~26_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(25));

-- Location: LCCOMB_X76_Y38_N20
\inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|s_count\(26) & ((GND) # (!\inst5|Add0~51\))) # (!\inst5|s_count\(26) & (\inst5|Add0~51\ $ (GND)))
-- \inst5|Add0~53\ = CARRY((\inst5|s_count\(26)) # (!\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: LCCOMB_X75_Y38_N26
\inst5|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~27_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~52_combout\,
	combout => \inst5|s_count~27_combout\);

-- Location: FF_X75_Y38_N27
\inst5|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~27_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(26));

-- Location: LCCOMB_X76_Y38_N22
\inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = (\inst5|s_count\(27) & (\inst5|Add0~53\ & VCC)) # (!\inst5|s_count\(27) & (!\inst5|Add0~53\))
-- \inst5|Add0~55\ = CARRY((!\inst5|s_count\(27) & !\inst5|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(27),
	datad => VCC,
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\,
	cout => \inst5|Add0~55\);

-- Location: LCCOMB_X75_Y38_N24
\inst5|s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~28_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~54_combout\,
	combout => \inst5|s_count~28_combout\);

-- Location: FF_X75_Y38_N25
\inst5|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~28_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(27));

-- Location: LCCOMB_X76_Y38_N24
\inst5|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~56_combout\ = (\inst5|s_count\(28) & ((GND) # (!\inst5|Add0~55\))) # (!\inst5|s_count\(28) & (\inst5|Add0~55\ $ (GND)))
-- \inst5|Add0~57\ = CARRY((\inst5|s_count\(28)) # (!\inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(28),
	datad => VCC,
	cin => \inst5|Add0~55\,
	combout => \inst5|Add0~56_combout\,
	cout => \inst5|Add0~57\);

-- Location: LCCOMB_X75_Y38_N14
\inst5|s_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~29_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~56_combout\,
	combout => \inst5|s_count~29_combout\);

-- Location: FF_X75_Y38_N15
\inst5|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~29_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(28));

-- Location: LCCOMB_X76_Y38_N26
\inst5|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~58_combout\ = (\inst5|s_count\(29) & (\inst5|Add0~57\ & VCC)) # (!\inst5|s_count\(29) & (!\inst5|Add0~57\))
-- \inst5|Add0~59\ = CARRY((!\inst5|s_count\(29) & !\inst5|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(29),
	datad => VCC,
	cin => \inst5|Add0~57\,
	combout => \inst5|Add0~58_combout\,
	cout => \inst5|Add0~59\);

-- Location: LCCOMB_X75_Y38_N2
\inst5|s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~30_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~58_combout\,
	combout => \inst5|s_count~30_combout\);

-- Location: FF_X75_Y38_N3
\inst5|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~30_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(29));

-- Location: LCCOMB_X76_Y38_N28
\inst5|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~60_combout\ = (\inst5|s_count\(30) & ((GND) # (!\inst5|Add0~59\))) # (!\inst5|s_count\(30) & (\inst5|Add0~59\ $ (GND)))
-- \inst5|Add0~61\ = CARRY((\inst5|s_count\(30)) # (!\inst5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(30),
	datad => VCC,
	cin => \inst5|Add0~59\,
	combout => \inst5|Add0~60_combout\,
	cout => \inst5|Add0~61\);

-- Location: LCCOMB_X75_Y38_N20
\inst5|s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~31_combout\ = (\inst25|pState.Init~q\ & (!\inst5|Equal0~9_combout\ & \inst5|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~60_combout\,
	combout => \inst5|s_count~31_combout\);

-- Location: FF_X75_Y38_N21
\inst5|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~31_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(30));

-- Location: LCCOMB_X75_Y38_N4
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|s_count\(26) & (!\inst5|s_count\(27) & (!\inst5|s_count\(28) & !\inst5|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(26),
	datab => \inst5|s_count\(27),
	datac => \inst5|s_count\(28),
	datad => \inst5|s_count\(25),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y38_N30
\inst5|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~62_combout\ = \inst5|Add0~61\ $ (!\inst5|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|s_count\(31),
	cin => \inst5|Add0~61\,
	combout => \inst5|Add0~62_combout\);

-- Location: LCCOMB_X75_Y38_N18
\inst5|s_count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_count~32_combout\ = (!\inst5|Equal0~9_combout\ & (\inst25|pState.Init~q\ & \inst5|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst25|pState.Init~q\,
	datac => \inst5|Add0~62_combout\,
	combout => \inst5|s_count~32_combout\);

-- Location: FF_X75_Y38_N19
\inst5|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_count~32_combout\,
	ena => \inst5|s_count[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_count\(31));

-- Location: LCCOMB_X75_Y38_N0
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|s_count\(29) & (!\inst5|s_count\(30) & (\inst5|Equal0~7_combout\ & !\inst5|s_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(29),
	datab => \inst5|s_count\(30),
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|s_count\(31),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y38_N22
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|s_count\(20) & (!\inst5|s_count\(19) & (!\inst5|s_count\(18) & !\inst5|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(20),
	datab => \inst5|s_count\(19),
	datac => \inst5|s_count\(18),
	datad => \inst5|s_count\(17),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y39_N20
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|s_count\(16) & (!\inst5|s_count\(13) & (!\inst5|s_count\(14) & !\inst5|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(16),
	datab => \inst5|s_count\(13),
	datac => \inst5|s_count\(14),
	datad => \inst5|s_count\(15),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y39_N8
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|s_count\(4) & (!\inst5|s_count\(2) & (!\inst5|s_count\(3) & !\inst5|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(3),
	datad => \inst5|s_count\(1),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y39_N30
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|s_count\(11) & (!\inst5|s_count\(10) & (!\inst5|s_count\(12) & !\inst5|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(11),
	datab => \inst5|s_count\(10),
	datac => \inst5|s_count\(12),
	datad => \inst5|s_count\(9),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y39_N24
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|s_count\(8) & (!\inst5|s_count\(7) & (!\inst5|s_count\(5) & !\inst5|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(8),
	datab => \inst5|s_count\(7),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(6),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y39_N30
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~1_combout\ & (\inst5|Equal0~2_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y38_N30
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~6_combout\ & (\inst5|Equal0~8_combout\ & (\inst5|Equal0~5_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~6_combout\,
	datab => \inst5|Equal0~8_combout\,
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y38_N10
\inst5|s_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~0_combout\ = (\inst25|pState.TimeProcess~q\ & \inst11|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst11|pulse~q\,
	combout => \inst5|s_result~0_combout\);

-- Location: LCCOMB_X77_Y38_N16
\inst5|s_result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_result~1_combout\ = (\inst5|s_result~0_combout\ & (\inst5|Equal0~9_combout\ & (\inst5|s_count\(0)))) # (!\inst5|s_result~0_combout\ & (((\inst5|s_result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datab => \inst5|s_count\(0),
	datac => \inst5|s_result~q\,
	datad => \inst5|s_result~0_combout\,
	combout => \inst5|s_result~1_combout\);

-- Location: FF_X77_Y38_N17
\inst5|s_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_result~1_combout\,
	sclr => \inst25|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_result~q\);

-- Location: LCCOMB_X72_Y41_N0
\inst25|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~13_combout\ = (!\inst25|pState.StartPrg~q\ & ((\inst25|pState.TimeProcess~q\ & (\inst5|s_result~q\)) # (!\inst25|pState.TimeProcess~q\ & ((\inst3|s_pulsedOut~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_result~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst25|pState~13_combout\);

-- Location: LCCOMB_X72_Y41_N8
\inst25|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~14_combout\ = (\inst25|pState~12_combout\ & ((\inst25|pState~13_combout\) # (\inst25|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState~13_combout\,
	datac => \inst25|pState.StartPrg~q\,
	datad => \inst25|pState~12_combout\,
	combout => \inst25|pState~14_combout\);

-- Location: FF_X72_Y41_N9
\inst25|pState.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst25|pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|pState.StartPrg~q\);

-- Location: LCCOMB_X69_Y41_N22
\inst25|pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~23_combout\ = (!\inst3|s_pulsedOut~q\ & (\inst25|pState.StartPrg~q\ & (\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~q\,
	datab => \inst25|pState.StartPrg~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|Equal0~2_combout\,
	combout => \inst25|pState~23_combout\);

-- Location: LCCOMB_X70_Y44_N14
\inst25|pState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|pState~24_combout\ = (\inst25|pState~16_combout\ & (!\inst1|s_pulsedOut~q\ & (!\inst25|pState~23_combout\))) # (!\inst25|pState~16_combout\ & (((\inst25|pState.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_pulsedOut~q\,
	datab => \inst25|pState~23_combout\,
	datac => \inst25|pState.Init~q\,
	datad => \inst25|pState~16_combout\,
	combout => \inst25|pState~24_combout\);

-- Location: FF_X70_Y44_N15
\inst25|pState.Init\ : dffeas
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
	q => \inst25|pState.Init~q\);

-- Location: LCCOMB_X66_Y45_N12
\inst29|clk_count_400hz[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[0]~20_combout\ = \inst29|clk_count_400hz\(0) $ (VCC)
-- \inst29|clk_count_400hz[0]~21\ = CARRY(\inst29|clk_count_400hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(0),
	datad => VCC,
	combout => \inst29|clk_count_400hz[0]~20_combout\,
	cout => \inst29|clk_count_400hz[0]~21\);

-- Location: LCCOMB_X66_Y44_N26
\inst29|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~0_combout\ = (\inst29|clk_count_400hz\(13) & (\inst29|clk_count_400hz\(12) & (\inst29|clk_count_400hz\(14) & \inst29|clk_count_400hz\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(13),
	datab => \inst29|clk_count_400hz\(12),
	datac => \inst29|clk_count_400hz\(14),
	datad => \inst29|clk_count_400hz\(15),
	combout => \inst29|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y45_N4
\inst29|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~1_combout\ = (\inst29|clk_count_400hz\(7)) # ((\inst29|clk_count_400hz\(8)) # ((\inst29|clk_count_400hz\(9)) # (\inst29|clk_count_400hz\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(7),
	datab => \inst29|clk_count_400hz\(8),
	datac => \inst29|clk_count_400hz\(9),
	datad => \inst29|clk_count_400hz\(6),
	combout => \inst29|LessThan0~1_combout\);

-- Location: LCCOMB_X66_Y45_N10
\inst29|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~2_combout\ = (\inst29|clk_count_400hz\(3)) # ((\inst29|clk_count_400hz\(2) & ((\inst29|clk_count_400hz\(0)) # (\inst29|clk_count_400hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(0),
	datab => \inst29|clk_count_400hz\(2),
	datac => \inst29|clk_count_400hz\(1),
	datad => \inst29|clk_count_400hz\(3),
	combout => \inst29|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y45_N8
\inst29|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~3_combout\ = (\inst29|LessThan0~1_combout\) # ((\inst29|clk_count_400hz\(5) & ((\inst29|clk_count_400hz\(4)) # (\inst29|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(5),
	datab => \inst29|clk_count_400hz\(4),
	datac => \inst29|LessThan0~1_combout\,
	datad => \inst29|LessThan0~2_combout\,
	combout => \inst29|LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y44_N20
\inst29|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~4_combout\ = (\inst29|LessThan0~0_combout\ & ((\inst29|clk_count_400hz\(11)) # ((\inst29|clk_count_400hz\(10) & \inst29|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|LessThan0~0_combout\,
	datab => \inst29|clk_count_400hz\(10),
	datac => \inst29|LessThan0~3_combout\,
	datad => \inst29|clk_count_400hz\(11),
	combout => \inst29|LessThan0~4_combout\);

-- Location: LCCOMB_X66_Y44_N30
\inst29|clk_count_400hz[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[2]~46_combout\ = ((\inst29|LessThan0~5_combout\) # (\inst29|LessThan0~4_combout\)) # (!\inst25|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst29|LessThan0~5_combout\,
	datad => \inst29|LessThan0~4_combout\,
	combout => \inst29|clk_count_400hz[2]~46_combout\);

-- Location: FF_X66_Y45_N13
\inst29|clk_count_400hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[0]~20_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(0));

-- Location: LCCOMB_X66_Y45_N14
\inst29|clk_count_400hz[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[1]~22_combout\ = (\inst29|clk_count_400hz\(1) & (!\inst29|clk_count_400hz[0]~21\)) # (!\inst29|clk_count_400hz\(1) & ((\inst29|clk_count_400hz[0]~21\) # (GND)))
-- \inst29|clk_count_400hz[1]~23\ = CARRY((!\inst29|clk_count_400hz[0]~21\) # (!\inst29|clk_count_400hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(1),
	datad => VCC,
	cin => \inst29|clk_count_400hz[0]~21\,
	combout => \inst29|clk_count_400hz[1]~22_combout\,
	cout => \inst29|clk_count_400hz[1]~23\);

-- Location: FF_X66_Y45_N15
\inst29|clk_count_400hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[1]~22_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(1));

-- Location: LCCOMB_X66_Y45_N16
\inst29|clk_count_400hz[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[2]~24_combout\ = (\inst29|clk_count_400hz\(2) & (\inst29|clk_count_400hz[1]~23\ $ (GND))) # (!\inst29|clk_count_400hz\(2) & (!\inst29|clk_count_400hz[1]~23\ & VCC))
-- \inst29|clk_count_400hz[2]~25\ = CARRY((\inst29|clk_count_400hz\(2) & !\inst29|clk_count_400hz[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(2),
	datad => VCC,
	cin => \inst29|clk_count_400hz[1]~23\,
	combout => \inst29|clk_count_400hz[2]~24_combout\,
	cout => \inst29|clk_count_400hz[2]~25\);

-- Location: FF_X66_Y45_N17
\inst29|clk_count_400hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[2]~24_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(2));

-- Location: LCCOMB_X66_Y45_N18
\inst29|clk_count_400hz[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[3]~26_combout\ = (\inst29|clk_count_400hz\(3) & (!\inst29|clk_count_400hz[2]~25\)) # (!\inst29|clk_count_400hz\(3) & ((\inst29|clk_count_400hz[2]~25\) # (GND)))
-- \inst29|clk_count_400hz[3]~27\ = CARRY((!\inst29|clk_count_400hz[2]~25\) # (!\inst29|clk_count_400hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(3),
	datad => VCC,
	cin => \inst29|clk_count_400hz[2]~25\,
	combout => \inst29|clk_count_400hz[3]~26_combout\,
	cout => \inst29|clk_count_400hz[3]~27\);

-- Location: FF_X66_Y45_N19
\inst29|clk_count_400hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[3]~26_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(3));

-- Location: LCCOMB_X66_Y45_N20
\inst29|clk_count_400hz[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[4]~28_combout\ = (\inst29|clk_count_400hz\(4) & (\inst29|clk_count_400hz[3]~27\ $ (GND))) # (!\inst29|clk_count_400hz\(4) & (!\inst29|clk_count_400hz[3]~27\ & VCC))
-- \inst29|clk_count_400hz[4]~29\ = CARRY((\inst29|clk_count_400hz\(4) & !\inst29|clk_count_400hz[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(4),
	datad => VCC,
	cin => \inst29|clk_count_400hz[3]~27\,
	combout => \inst29|clk_count_400hz[4]~28_combout\,
	cout => \inst29|clk_count_400hz[4]~29\);

-- Location: FF_X66_Y45_N21
\inst29|clk_count_400hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[4]~28_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(4));

-- Location: LCCOMB_X66_Y45_N22
\inst29|clk_count_400hz[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[5]~30_combout\ = (\inst29|clk_count_400hz\(5) & (!\inst29|clk_count_400hz[4]~29\)) # (!\inst29|clk_count_400hz\(5) & ((\inst29|clk_count_400hz[4]~29\) # (GND)))
-- \inst29|clk_count_400hz[5]~31\ = CARRY((!\inst29|clk_count_400hz[4]~29\) # (!\inst29|clk_count_400hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(5),
	datad => VCC,
	cin => \inst29|clk_count_400hz[4]~29\,
	combout => \inst29|clk_count_400hz[5]~30_combout\,
	cout => \inst29|clk_count_400hz[5]~31\);

-- Location: FF_X66_Y45_N23
\inst29|clk_count_400hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[5]~30_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(5));

-- Location: LCCOMB_X66_Y45_N24
\inst29|clk_count_400hz[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[6]~32_combout\ = (\inst29|clk_count_400hz\(6) & (\inst29|clk_count_400hz[5]~31\ $ (GND))) # (!\inst29|clk_count_400hz\(6) & (!\inst29|clk_count_400hz[5]~31\ & VCC))
-- \inst29|clk_count_400hz[6]~33\ = CARRY((\inst29|clk_count_400hz\(6) & !\inst29|clk_count_400hz[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(6),
	datad => VCC,
	cin => \inst29|clk_count_400hz[5]~31\,
	combout => \inst29|clk_count_400hz[6]~32_combout\,
	cout => \inst29|clk_count_400hz[6]~33\);

-- Location: FF_X66_Y45_N25
\inst29|clk_count_400hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[6]~32_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(6));

-- Location: LCCOMB_X66_Y45_N26
\inst29|clk_count_400hz[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[7]~34_combout\ = (\inst29|clk_count_400hz\(7) & (!\inst29|clk_count_400hz[6]~33\)) # (!\inst29|clk_count_400hz\(7) & ((\inst29|clk_count_400hz[6]~33\) # (GND)))
-- \inst29|clk_count_400hz[7]~35\ = CARRY((!\inst29|clk_count_400hz[6]~33\) # (!\inst29|clk_count_400hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(7),
	datad => VCC,
	cin => \inst29|clk_count_400hz[6]~33\,
	combout => \inst29|clk_count_400hz[7]~34_combout\,
	cout => \inst29|clk_count_400hz[7]~35\);

-- Location: FF_X66_Y45_N27
\inst29|clk_count_400hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[7]~34_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(7));

-- Location: LCCOMB_X66_Y45_N28
\inst29|clk_count_400hz[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[8]~36_combout\ = (\inst29|clk_count_400hz\(8) & (\inst29|clk_count_400hz[7]~35\ $ (GND))) # (!\inst29|clk_count_400hz\(8) & (!\inst29|clk_count_400hz[7]~35\ & VCC))
-- \inst29|clk_count_400hz[8]~37\ = CARRY((\inst29|clk_count_400hz\(8) & !\inst29|clk_count_400hz[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(8),
	datad => VCC,
	cin => \inst29|clk_count_400hz[7]~35\,
	combout => \inst29|clk_count_400hz[8]~36_combout\,
	cout => \inst29|clk_count_400hz[8]~37\);

-- Location: FF_X66_Y45_N29
\inst29|clk_count_400hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[8]~36_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(8));

-- Location: LCCOMB_X66_Y45_N30
\inst29|clk_count_400hz[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[9]~38_combout\ = (\inst29|clk_count_400hz\(9) & (!\inst29|clk_count_400hz[8]~37\)) # (!\inst29|clk_count_400hz\(9) & ((\inst29|clk_count_400hz[8]~37\) # (GND)))
-- \inst29|clk_count_400hz[9]~39\ = CARRY((!\inst29|clk_count_400hz[8]~37\) # (!\inst29|clk_count_400hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(9),
	datad => VCC,
	cin => \inst29|clk_count_400hz[8]~37\,
	combout => \inst29|clk_count_400hz[9]~38_combout\,
	cout => \inst29|clk_count_400hz[9]~39\);

-- Location: FF_X66_Y45_N31
\inst29|clk_count_400hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[9]~38_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(9));

-- Location: LCCOMB_X66_Y44_N0
\inst29|clk_count_400hz[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[10]~40_combout\ = (\inst29|clk_count_400hz\(10) & (\inst29|clk_count_400hz[9]~39\ $ (GND))) # (!\inst29|clk_count_400hz\(10) & (!\inst29|clk_count_400hz[9]~39\ & VCC))
-- \inst29|clk_count_400hz[10]~41\ = CARRY((\inst29|clk_count_400hz\(10) & !\inst29|clk_count_400hz[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(10),
	datad => VCC,
	cin => \inst29|clk_count_400hz[9]~39\,
	combout => \inst29|clk_count_400hz[10]~40_combout\,
	cout => \inst29|clk_count_400hz[10]~41\);

-- Location: FF_X66_Y44_N1
\inst29|clk_count_400hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[10]~40_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(10));

-- Location: LCCOMB_X66_Y44_N2
\inst29|clk_count_400hz[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[11]~42_combout\ = (\inst29|clk_count_400hz\(11) & (!\inst29|clk_count_400hz[10]~41\)) # (!\inst29|clk_count_400hz\(11) & ((\inst29|clk_count_400hz[10]~41\) # (GND)))
-- \inst29|clk_count_400hz[11]~43\ = CARRY((!\inst29|clk_count_400hz[10]~41\) # (!\inst29|clk_count_400hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(11),
	datad => VCC,
	cin => \inst29|clk_count_400hz[10]~41\,
	combout => \inst29|clk_count_400hz[11]~42_combout\,
	cout => \inst29|clk_count_400hz[11]~43\);

-- Location: FF_X66_Y44_N3
\inst29|clk_count_400hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[11]~42_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(11));

-- Location: LCCOMB_X66_Y44_N4
\inst29|clk_count_400hz[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[12]~44_combout\ = (\inst29|clk_count_400hz\(12) & (\inst29|clk_count_400hz[11]~43\ $ (GND))) # (!\inst29|clk_count_400hz\(12) & (!\inst29|clk_count_400hz[11]~43\ & VCC))
-- \inst29|clk_count_400hz[12]~45\ = CARRY((\inst29|clk_count_400hz\(12) & !\inst29|clk_count_400hz[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(12),
	datad => VCC,
	cin => \inst29|clk_count_400hz[11]~43\,
	combout => \inst29|clk_count_400hz[12]~44_combout\,
	cout => \inst29|clk_count_400hz[12]~45\);

-- Location: FF_X66_Y44_N5
\inst29|clk_count_400hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[12]~44_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(12));

-- Location: LCCOMB_X66_Y44_N6
\inst29|clk_count_400hz[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[13]~47_combout\ = (\inst29|clk_count_400hz\(13) & (!\inst29|clk_count_400hz[12]~45\)) # (!\inst29|clk_count_400hz\(13) & ((\inst29|clk_count_400hz[12]~45\) # (GND)))
-- \inst29|clk_count_400hz[13]~48\ = CARRY((!\inst29|clk_count_400hz[12]~45\) # (!\inst29|clk_count_400hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(13),
	datad => VCC,
	cin => \inst29|clk_count_400hz[12]~45\,
	combout => \inst29|clk_count_400hz[13]~47_combout\,
	cout => \inst29|clk_count_400hz[13]~48\);

-- Location: FF_X66_Y44_N7
\inst29|clk_count_400hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[13]~47_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(13));

-- Location: LCCOMB_X66_Y44_N8
\inst29|clk_count_400hz[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[14]~49_combout\ = (\inst29|clk_count_400hz\(14) & (\inst29|clk_count_400hz[13]~48\ $ (GND))) # (!\inst29|clk_count_400hz\(14) & (!\inst29|clk_count_400hz[13]~48\ & VCC))
-- \inst29|clk_count_400hz[14]~50\ = CARRY((\inst29|clk_count_400hz\(14) & !\inst29|clk_count_400hz[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(14),
	datad => VCC,
	cin => \inst29|clk_count_400hz[13]~48\,
	combout => \inst29|clk_count_400hz[14]~49_combout\,
	cout => \inst29|clk_count_400hz[14]~50\);

-- Location: FF_X66_Y44_N9
\inst29|clk_count_400hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[14]~49_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(14));

-- Location: LCCOMB_X66_Y44_N10
\inst29|clk_count_400hz[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[15]~51_combout\ = (\inst29|clk_count_400hz\(15) & (!\inst29|clk_count_400hz[14]~50\)) # (!\inst29|clk_count_400hz\(15) & ((\inst29|clk_count_400hz[14]~50\) # (GND)))
-- \inst29|clk_count_400hz[15]~52\ = CARRY((!\inst29|clk_count_400hz[14]~50\) # (!\inst29|clk_count_400hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(15),
	datad => VCC,
	cin => \inst29|clk_count_400hz[14]~50\,
	combout => \inst29|clk_count_400hz[15]~51_combout\,
	cout => \inst29|clk_count_400hz[15]~52\);

-- Location: FF_X66_Y44_N11
\inst29|clk_count_400hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[15]~51_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(15));

-- Location: LCCOMB_X66_Y44_N12
\inst29|clk_count_400hz[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[16]~53_combout\ = (\inst29|clk_count_400hz\(16) & (\inst29|clk_count_400hz[15]~52\ $ (GND))) # (!\inst29|clk_count_400hz\(16) & (!\inst29|clk_count_400hz[15]~52\ & VCC))
-- \inst29|clk_count_400hz[16]~54\ = CARRY((\inst29|clk_count_400hz\(16) & !\inst29|clk_count_400hz[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(16),
	datad => VCC,
	cin => \inst29|clk_count_400hz[15]~52\,
	combout => \inst29|clk_count_400hz[16]~53_combout\,
	cout => \inst29|clk_count_400hz[16]~54\);

-- Location: FF_X66_Y44_N13
\inst29|clk_count_400hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[16]~53_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(16));

-- Location: LCCOMB_X66_Y44_N14
\inst29|clk_count_400hz[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[17]~55_combout\ = (\inst29|clk_count_400hz\(17) & (!\inst29|clk_count_400hz[16]~54\)) # (!\inst29|clk_count_400hz\(17) & ((\inst29|clk_count_400hz[16]~54\) # (GND)))
-- \inst29|clk_count_400hz[17]~56\ = CARRY((!\inst29|clk_count_400hz[16]~54\) # (!\inst29|clk_count_400hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(17),
	datad => VCC,
	cin => \inst29|clk_count_400hz[16]~54\,
	combout => \inst29|clk_count_400hz[17]~55_combout\,
	cout => \inst29|clk_count_400hz[17]~56\);

-- Location: FF_X66_Y44_N15
\inst29|clk_count_400hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[17]~55_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(17));

-- Location: LCCOMB_X66_Y44_N16
\inst29|clk_count_400hz[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[18]~57_combout\ = (\inst29|clk_count_400hz\(18) & (\inst29|clk_count_400hz[17]~56\ $ (GND))) # (!\inst29|clk_count_400hz\(18) & (!\inst29|clk_count_400hz[17]~56\ & VCC))
-- \inst29|clk_count_400hz[18]~58\ = CARRY((\inst29|clk_count_400hz\(18) & !\inst29|clk_count_400hz[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|clk_count_400hz\(18),
	datad => VCC,
	cin => \inst29|clk_count_400hz[17]~56\,
	combout => \inst29|clk_count_400hz[18]~57_combout\,
	cout => \inst29|clk_count_400hz[18]~58\);

-- Location: FF_X66_Y44_N17
\inst29|clk_count_400hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[18]~57_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(18));

-- Location: LCCOMB_X66_Y44_N18
\inst29|clk_count_400hz[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_count_400hz[19]~59_combout\ = \inst29|clk_count_400hz[18]~58\ $ (\inst29|clk_count_400hz\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst29|clk_count_400hz\(19),
	cin => \inst29|clk_count_400hz[18]~58\,
	combout => \inst29|clk_count_400hz[19]~59_combout\);

-- Location: FF_X66_Y44_N19
\inst29|clk_count_400hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_count_400hz[19]~59_combout\,
	sclr => \inst29|clk_count_400hz[2]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_count_400hz\(19));

-- Location: LCCOMB_X66_Y44_N22
\inst29|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|LessThan0~5_combout\ = (\inst29|clk_count_400hz\(16)) # ((\inst29|clk_count_400hz\(18)) # ((\inst29|clk_count_400hz\(17)) # (\inst29|clk_count_400hz\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|clk_count_400hz\(16),
	datab => \inst29|clk_count_400hz\(18),
	datac => \inst29|clk_count_400hz\(17),
	datad => \inst29|clk_count_400hz\(19),
	combout => \inst29|LessThan0~5_combout\);

-- Location: LCCOMB_X66_Y44_N24
\inst29|clk_400hz_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|clk_400hz_enable~0_combout\ = (\inst25|pState.Init~q\ & ((\inst29|LessThan0~5_combout\) # (\inst29|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datac => \inst29|LessThan0~5_combout\,
	datad => \inst29|LessThan0~4_combout\,
	combout => \inst29|clk_400hz_enable~0_combout\);

-- Location: FF_X66_Y44_N25
\inst29|clk_400hz_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|clk_400hz_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|clk_400hz_enable~q\);

-- Location: FF_X72_Y44_N21
\inst29|state.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|state.drop_lcd_e~q\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.hold~q\);

-- Location: LCCOMB_X70_Y44_N20
\inst29|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|lcd_rs~0_combout\ = (!\inst29|state.drop_lcd_e~q\ & !\inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|state.drop_lcd_e~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|lcd_rs~0_combout\);

-- Location: FF_X70_Y44_N21
\inst29|state.drop_lcd_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|lcd_rs~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.drop_lcd_e~q\);

-- Location: LCCOMB_X70_Y44_N0
\inst29|state.reset1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state.reset1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst29|state.reset1~feeder_combout\);

-- Location: FF_X70_Y44_N1
\inst29|state.reset1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state.reset1~feeder_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.reset1~q\);

-- Location: LCCOMB_X72_Y44_N28
\inst29|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector18~0_combout\ = (\inst29|state.reset1~q\ & ((\inst29|next_command.reset2~q\) # ((!\inst29|state.drop_lcd_e~q\ & !\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|state.hold~q\,
	datac => \inst29|next_command.reset2~q\,
	datad => \inst29|state.reset1~q\,
	combout => \inst29|Selector18~0_combout\);

-- Location: FF_X72_Y44_N29
\inst29|next_command.reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector18~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.reset2~q\);

-- Location: LCCOMB_X72_Y44_N16
\inst29|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~37_combout\ = (!\inst29|next_command.reset2~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|next_command.reset2~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~37_combout\);

-- Location: FF_X72_Y44_N17
\inst29|state.reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~37_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.reset2~q\);

-- Location: LCCOMB_X72_Y44_N10
\inst29|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector19~0_combout\ = (\inst29|state.reset2~q\) # ((\inst29|next_command.reset3~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|state.reset2~q\,
	datac => \inst29|next_command.reset3~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector19~0_combout\);

-- Location: FF_X70_Y44_N11
\inst29|next_command.reset3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|Selector19~0_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.reset3~q\);

-- Location: LCCOMB_X70_Y44_N26
\inst29|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~35_combout\ = (\inst29|next_command.reset3~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|next_command.reset3~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~35_combout\);

-- Location: FF_X70_Y44_N27
\inst29|state.reset3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~35_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.reset3~q\);

-- Location: LCCOMB_X72_Y44_N6
\inst29|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector12~0_combout\ = (\inst29|state.reset3~q\) # ((\inst29|next_command.func_set~q\ & ((\inst29|state.hold~q\) # (\inst29|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.reset3~q\,
	datab => \inst29|state.hold~q\,
	datac => \inst29|next_command.func_set~q\,
	datad => \inst29|state.drop_lcd_e~q\,
	combout => \inst29|Selector12~0_combout\);

-- Location: FF_X72_Y44_N7
\inst29|next_command.func_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector12~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.func_set~q\);

-- Location: LCCOMB_X72_Y44_N20
\inst29|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~36_combout\ = (\inst29|state.hold~q\ & \inst29|next_command.func_set~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|state.hold~q\,
	datad => \inst29|next_command.func_set~q\,
	combout => \inst29|state~36_combout\);

-- Location: FF_X70_Y44_N5
\inst29|state.func_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|state~36_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.func_set~q\);

-- Location: LCCOMB_X72_Y44_N12
\inst29|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector20~0_combout\ = (\inst29|state.func_set~q\) # ((\inst29|next_command.display_off~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|state.func_set~q\,
	datac => \inst29|next_command.display_off~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector20~0_combout\);

-- Location: FF_X72_Y44_N13
\inst29|next_command.display_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector20~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.display_off~q\);

-- Location: LCCOMB_X72_Y44_N0
\inst29|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~33_combout\ = (\inst29|next_command.display_off~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|next_command.display_off~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~33_combout\);

-- Location: FF_X72_Y44_N1
\inst29|state.display_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~33_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.display_off~q\);

-- Location: LCCOMB_X72_Y44_N30
\inst29|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector21~0_combout\ = (\inst29|state.display_off~q\) # ((\inst29|next_command.display_clear~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|state.display_off~q\,
	datac => \inst29|next_command.display_clear~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector21~0_combout\);

-- Location: FF_X72_Y44_N31
\inst29|next_command.display_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector21~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.display_clear~q\);

-- Location: LCCOMB_X72_Y44_N4
\inst29|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~34_combout\ = (\inst29|next_command.display_clear~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|next_command.display_clear~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~34_combout\);

-- Location: FF_X69_Y44_N11
\inst29|state.display_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|state~34_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.display_clear~q\);

-- Location: LCCOMB_X68_Y44_N2
\inst29|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector13~0_combout\ = (\inst29|state.display_clear~q\) # ((\inst29|next_command.display_on~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|next_command.display_on~q\,
	datac => \inst29|state.display_clear~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector13~0_combout\);

-- Location: FF_X69_Y44_N21
\inst29|next_command.display_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|Selector13~0_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.display_on~q\);

-- Location: LCCOMB_X72_Y44_N22
\inst29|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~32_combout\ = (\inst29|next_command.display_on~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|next_command.display_on~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~32_combout\);

-- Location: FF_X72_Y44_N23
\inst29|state.display_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~32_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.display_on~q\);

-- Location: LCCOMB_X72_Y44_N8
\inst29|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector14~0_combout\ = (\inst29|state.display_on~q\) # ((\inst29|next_command.mode_set~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.display_on~q\,
	datab => \inst29|state.drop_lcd_e~q\,
	datac => \inst29|next_command.mode_set~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector14~0_combout\);

-- Location: FF_X72_Y44_N9
\inst29|next_command.mode_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector14~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.mode_set~q\);

-- Location: LCCOMB_X72_Y44_N26
\inst29|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~31_combout\ = (\inst29|next_command.mode_set~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|next_command.mode_set~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~31_combout\);

-- Location: FF_X70_Y44_N9
\inst29|state.mode_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|state~31_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.mode_set~q\);

-- Location: LCCOMB_X68_Y42_N14
\inst29|char_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[0]~5_combout\ = \inst29|char_count\(0) $ (VCC)
-- \inst29|char_count[0]~6\ = CARRY(\inst29|char_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(0),
	datad => VCC,
	combout => \inst29|char_count[0]~5_combout\,
	cout => \inst29|char_count[0]~6\);

-- Location: LCCOMB_X69_Y45_N20
\inst29|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector26~0_combout\ = (\inst29|char_count\(0) & \inst29|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(0),
	datad => \inst29|state.reset1~q\,
	combout => \inst29|Selector26~0_combout\);

-- Location: LCCOMB_X66_Y44_N28
\inst29|char_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[4]~7_combout\ = (\inst25|pState.Init~q\ & \inst29|clk_400hz_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Init~q\,
	datad => \inst29|clk_400hz_enable~q\,
	combout => \inst29|char_count[4]~7_combout\);

-- Location: FF_X68_Y42_N15
\inst29|char_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|char_count[0]~5_combout\,
	asdata => \inst29|Selector26~0_combout\,
	sload => \inst29|ALT_INV_state.print_string~q\,
	ena => \inst29|char_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|char_count\(0));

-- Location: LCCOMB_X68_Y42_N16
\inst29|char_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[1]~8_combout\ = (\inst29|char_count\(1) & (!\inst29|char_count[0]~6\)) # (!\inst29|char_count\(1) & ((\inst29|char_count[0]~6\) # (GND)))
-- \inst29|char_count[1]~9\ = CARRY((!\inst29|char_count[0]~6\) # (!\inst29|char_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(1),
	datad => VCC,
	cin => \inst29|char_count[0]~6\,
	combout => \inst29|char_count[1]~8_combout\,
	cout => \inst29|char_count[1]~9\);

-- Location: LCCOMB_X69_Y45_N14
\inst29|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector25~0_combout\ = (\inst29|char_count\(1) & \inst29|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|char_count\(1),
	datad => \inst29|state.reset1~q\,
	combout => \inst29|Selector25~0_combout\);

-- Location: FF_X68_Y42_N17
\inst29|char_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|char_count[1]~8_combout\,
	asdata => \inst29|Selector25~0_combout\,
	sload => \inst29|ALT_INV_state.print_string~q\,
	ena => \inst29|char_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|char_count\(1));

-- Location: LCCOMB_X68_Y42_N18
\inst29|char_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[2]~10_combout\ = (\inst29|char_count\(2) & (\inst29|char_count[1]~9\ $ (GND))) # (!\inst29|char_count\(2) & (!\inst29|char_count[1]~9\ & VCC))
-- \inst29|char_count[2]~11\ = CARRY((\inst29|char_count\(2) & !\inst29|char_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(2),
	datad => VCC,
	cin => \inst29|char_count[1]~9\,
	combout => \inst29|char_count[2]~10_combout\,
	cout => \inst29|char_count[2]~11\);

-- Location: LCCOMB_X69_Y45_N8
\inst29|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector24~0_combout\ = (\inst29|state.reset1~q\ & \inst29|char_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|state.reset1~q\,
	datad => \inst29|char_count\(2),
	combout => \inst29|Selector24~0_combout\);

-- Location: FF_X68_Y42_N19
\inst29|char_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|char_count[2]~10_combout\,
	asdata => \inst29|Selector24~0_combout\,
	sload => \inst29|ALT_INV_state.print_string~q\,
	ena => \inst29|char_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|char_count\(2));

-- Location: LCCOMB_X68_Y42_N20
\inst29|char_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[3]~12_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count[2]~11\)) # (!\inst29|char_count\(3) & ((\inst29|char_count[2]~11\) # (GND)))
-- \inst29|char_count[3]~13\ = CARRY((!\inst29|char_count[2]~11\) # (!\inst29|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(3),
	datad => VCC,
	cin => \inst29|char_count[2]~11\,
	combout => \inst29|char_count[3]~12_combout\,
	cout => \inst29|char_count[3]~13\);

-- Location: LCCOMB_X69_Y45_N0
\inst29|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector23~0_combout\ = (\inst29|state.reset1~q\ & \inst29|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|state.reset1~q\,
	datad => \inst29|char_count\(3),
	combout => \inst29|Selector23~0_combout\);

-- Location: FF_X68_Y42_N21
\inst29|char_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|char_count[3]~12_combout\,
	asdata => \inst29|Selector23~0_combout\,
	sload => \inst29|ALT_INV_state.print_string~q\,
	ena => \inst29|char_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|char_count\(3));

-- Location: LCCOMB_X67_Y45_N22
\inst29|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Equal1~0_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(2) & \inst29|char_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(1),
	combout => \inst29|Equal1~0_combout\);

-- Location: LCCOMB_X68_Y42_N22
\inst29|char_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|char_count[4]~14_combout\ = \inst29|char_count\(4) $ (!\inst29|char_count[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	cin => \inst29|char_count[3]~13\,
	combout => \inst29|char_count[4]~14_combout\);

-- Location: LCCOMB_X69_Y45_N10
\inst29|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector22~0_combout\ = (\inst29|state.reset1~q\ & \inst29|char_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|state.reset1~q\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Selector22~0_combout\);

-- Location: FF_X68_Y42_N23
\inst29|char_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|char_count[4]~14_combout\,
	asdata => \inst29|Selector22~0_combout\,
	sload => \inst29|ALT_INV_state.print_string~q\,
	ena => \inst29|char_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|char_count\(4));

-- Location: LCCOMB_X67_Y43_N22
\inst29|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector16~2_combout\ = (\inst29|char_count\(3) & (\inst29|Equal1~0_combout\ & (\inst29|state.print_string~q\ & !\inst29|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|Equal1~0_combout\,
	datac => \inst29|state.print_string~q\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Selector16~2_combout\);

-- Location: LCCOMB_X70_Y44_N16
\inst29|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector16~3_combout\ = (\inst29|Selector16~2_combout\) # ((\inst29|next_command.line2~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|Selector16~2_combout\,
	datac => \inst29|next_command.line2~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector16~3_combout\);

-- Location: FF_X70_Y44_N17
\inst29|next_command.line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector16~3_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.line2~q\);

-- Location: LCCOMB_X70_Y44_N8
\inst29|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~29_combout\ = (\inst29|next_command.line2~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|next_command.line2~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~29_combout\);

-- Location: FF_X70_Y44_N29
\inst29|state.line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst29|state~29_combout\,
	clrn => \inst25|pState.Init~q\,
	sload => VCC,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.line2~q\);

-- Location: LCCOMB_X67_Y43_N0
\inst29|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector17~2_combout\ = (\inst29|char_count\(3) & (\inst29|Equal1~0_combout\ & (\inst29|state.print_string~q\ & \inst29|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|Equal1~0_combout\,
	datac => \inst29|state.print_string~q\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Selector17~2_combout\);

-- Location: LCCOMB_X70_Y44_N6
\inst29|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector17~3_combout\ = (\inst29|Selector17~2_combout\) # ((\inst29|next_command.return_home~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|Selector17~2_combout\,
	datac => \inst29|next_command.return_home~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector17~3_combout\);

-- Location: FF_X70_Y44_N7
\inst29|next_command.return_home\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector17~3_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.return_home~q\);

-- Location: LCCOMB_X70_Y44_N18
\inst29|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~30_combout\ = (\inst29|next_command.return_home~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|next_command.return_home~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~30_combout\);

-- Location: FF_X70_Y44_N19
\inst29|state.return_home\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~30_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.return_home~q\);

-- Location: LCCOMB_X70_Y44_N10
\inst29|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~1_combout\ = (!\inst29|state.mode_set~q\ & (!\inst29|state.line2~q\ & !\inst29|state.return_home~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.mode_set~q\,
	datab => \inst29|state.line2~q\,
	datad => \inst29|state.return_home~q\,
	combout => \inst29|Selector4~1_combout\);

-- Location: LCCOMB_X67_Y43_N20
\inst29|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector15~0_combout\ = (\inst29|state.print_string~q\ & ((!\inst29|Equal1~0_combout\) # (!\inst29|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.print_string~q\,
	datac => \inst29|char_count\(3),
	datad => \inst29|Equal1~0_combout\,
	combout => \inst29|Selector15~0_combout\);

-- Location: LCCOMB_X70_Y44_N22
\inst29|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector15~1_combout\ = ((\inst29|Selector15~0_combout\) # ((!\inst29|lcd_rs~0_combout\ & \inst29|next_command.print_string~q\))) # (!\inst29|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector4~1_combout\,
	datab => \inst29|lcd_rs~0_combout\,
	datac => \inst29|next_command.print_string~q\,
	datad => \inst29|Selector15~0_combout\,
	combout => \inst29|Selector15~1_combout\);

-- Location: FF_X70_Y44_N23
\inst29|next_command.print_string\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector15~1_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|next_command.print_string~q\);

-- Location: LCCOMB_X70_Y44_N30
\inst29|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|state~28_combout\ = (\inst29|next_command.print_string~q\ & \inst29|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|next_command.print_string~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|state~28_combout\);

-- Location: FF_X70_Y44_N31
\inst29|state.print_string\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|state~28_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|state.print_string~q\);

-- Location: LCCOMB_X70_Y44_N12
\inst29|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector1~0_combout\ = (\inst29|state.print_string~q\) # ((\inst29|lcd_rs~q\ & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|state.print_string~q\,
	datac => \inst29|lcd_rs~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector1~0_combout\);

-- Location: FF_X70_Y44_N13
\inst29|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector1~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|lcd_rs~q\);

-- Location: LCCOMB_X70_Y44_N2
\inst29|lcd_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|lcd_e~0_combout\ = (\inst29|clk_400hz_enable~q\ & ((\inst29|state.hold~q\ & ((\inst29|lcd_e~q\))) # (!\inst29|state.hold~q\ & (\inst29|state.drop_lcd_e~q\)))) # (!\inst29|clk_400hz_enable~q\ & (((\inst29|lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|clk_400hz_enable~q\,
	datac => \inst29|lcd_e~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|lcd_e~0_combout\);

-- Location: FF_X70_Y44_N3
\inst29|lcd_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|lcd_e~0_combout\,
	clrn => \inst25|pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|lcd_e~q\);

-- Location: LCCOMB_X68_Y40_N26
\iaaanst1|ledRed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|ledRed~0_combout\ = (\iaaanst1|s_currentState.TExtra~q\) # (!\iaaanst1|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datad => \iaaanst1|s_currentState.TExtra~q\,
	combout => \iaaanst1|ledRed~0_combout\);

-- Location: LCCOMB_X68_Y40_N8
\iaaanst1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iaaanst1|Selector0~1_combout\ = (\iaaanst1|ledRed~0_combout\) # ((!\inst25|pState.StartPrg~q\ & (\iaaanst1|Selector0~0_combout\ & !\inst9|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.StartPrg~q\,
	datab => \iaaanst1|Selector0~0_combout\,
	datac => \iaaanst1|ledRed~0_combout\,
	datad => \inst9|s_cntZero~q\,
	combout => \iaaanst1|Selector0~1_combout\);

-- Location: LCCOMB_X75_Y36_N30
\inst23|WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr2~5_combout\ = (\inst5|s_count\(3) & (!\inst5|s_count\(4) & ((\inst5|s_count\(1)) # (\inst5|s_count\(2))))) # (!\inst5|s_count\(3) & (\inst5|s_count\(4) & ((!\inst5|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(2),
	combout => \inst23|WideOr2~5_combout\);

-- Location: LCCOMB_X75_Y36_N12
\inst23|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr2~3_combout\ = (!\inst5|s_count\(5) & \inst23|WideOr2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(5),
	datac => \inst23|WideOr2~5_combout\,
	combout => \inst23|WideOr2~3_combout\);

-- Location: LCCOMB_X75_Y36_N22
\inst23|WideOr2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr2~10_combout\ = (!\inst5|s_count\(0) & (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst23|WideOr2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst23|WideOr2~3_combout\,
	combout => \inst23|WideOr2~10_combout\);

-- Location: LCCOMB_X75_Y36_N10
\inst19|Mux3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~26_combout\ = ((\inst5|s_count\(0) & ((!\inst5|s_count\(3)) # (!\inst5|s_count\(2)))) # (!\inst5|s_count\(0) & (!\inst5|s_count\(2) & !\inst5|s_count\(3)))) # (!\inst5|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(3),
	combout => \inst19|Mux3~26_combout\);

-- Location: LCCOMB_X75_Y36_N20
\inst19|Mux3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~27_combout\ = (\inst5|s_count\(0) & ((\inst19|Mux3~26_combout\) # ((\inst5|s_count\(2) & !\inst5|s_count\(5))))) # (!\inst5|s_count\(0) & (((!\inst5|s_count\(5) & \inst19|Mux3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(0),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(5),
	datad => \inst19|Mux3~26_combout\,
	combout => \inst19|Mux3~27_combout\);

-- Location: LCCOMB_X75_Y36_N18
\inst19|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~24_combout\ = (!\inst5|s_count\(7) & (\inst19|Mux3~27_combout\ & !\inst5|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst19|Mux3~27_combout\,
	datac => \inst5|s_count\(6),
	combout => \inst19|Mux3~24_combout\);

-- Location: LCCOMB_X74_Y40_N24
\inst19|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~20_combout\ = (\inst25|pState.Extra~q\) # (\inst5|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Extra~q\,
	datad => \inst5|s_count\(0),
	combout => \inst19|Mux3~20_combout\);

-- Location: LCCOMB_X76_Y32_N14
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

-- Location: LCCOMB_X77_Y36_N18
\inst23|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan1~0_combout\ = (!\inst5|s_count\(5) & (((!\inst5|s_count\(3) & !\inst5|s_count\(2))) # (!\inst5|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(2),
	combout => \inst23|LessThan1~0_combout\);

-- Location: LCCOMB_X77_Y36_N8
\inst23|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan1~1_combout\ = (!\inst5|s_count\(6) & \inst23|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_count\(6),
	datad => \inst23|LessThan1~0_combout\,
	combout => \inst23|LessThan1~1_combout\);

-- Location: LCCOMB_X77_Y36_N12
\inst23|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan4~0_combout\ = (!\inst5|s_count\(2) & !\inst5|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(1),
	combout => \inst23|LessThan4~0_combout\);

-- Location: LCCOMB_X77_Y36_N24
\inst23|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~0_combout\ = (!\inst5|s_count\(5) & (!\inst5|s_count\(7) & !\inst5|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(7),
	datac => \inst5|s_count\(6),
	combout => \inst23|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y36_N26
\inst23|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|LessThan0~1_combout\ = (!\inst5|s_count\(4) & (\inst23|LessThan0~0_combout\ & ((\inst23|LessThan4~0_combout\) # (!\inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst23|LessThan4~0_combout\,
	datac => \inst5|s_count\(3),
	datad => \inst23|LessThan0~0_combout\,
	combout => \inst23|LessThan0~1_combout\);

-- Location: LCCOMB_X76_Y32_N20
\inst19|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~19_combout\ = (\inst25|pState.Extra~q\) # ((\inst23|LessThan0~1_combout\) # ((!\inst25|pState.TimeProcess~q\ & !\inst25|pState.Timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst19|Mux3~19_combout\);

-- Location: LCCOMB_X77_Y36_N22
\inst19|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~21_combout\ = (\inst19|Mux3~19_combout\ & (\inst25|en_3~combout\)) # (!\inst19|Mux3~19_combout\ & (((!\inst5|s_count\(7) & \inst23|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst5|s_count\(7),
	datac => \inst23|LessThan1~1_combout\,
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux3~21_combout\);

-- Location: LCCOMB_X77_Y36_N20
\inst19|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~22_combout\ = (\inst19|Mux3~19_combout\ & ((\inst19|Mux3~21_combout\) # (\inst25|pState.Extra~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~21_combout\,
	datac => \inst25|pState.Extra~q\,
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux3~22_combout\);

-- Location: LCCOMB_X73_Y40_N4
\inst19|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~23_combout\ = (\inst19|Mux3~21_combout\ & (((\inst19|Mux3~20_combout\ & \inst19|Mux3~22_combout\)))) # (!\inst19|Mux3~21_combout\ & ((\inst4|Counter|s_count\(0)) # ((!\inst19|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Counter|s_count\(0),
	datab => \inst19|Mux3~20_combout\,
	datac => \inst19|Mux3~21_combout\,
	datad => \inst19|Mux3~22_combout\,
	combout => \inst19|Mux3~23_combout\);

-- Location: LCCOMB_X75_Y36_N8
\inst19|Mux3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~combout\ = (\inst19|Mux3~23_combout\ & (((\inst19|Mux3~24_combout\) # (\inst19|Mux3~19_combout\)))) # (!\inst19|Mux3~23_combout\ & (!\inst23|WideOr2~10_combout\ & ((!\inst19|Mux3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|WideOr2~10_combout\,
	datab => \inst19|Mux3~24_combout\,
	datac => \inst19|Mux3~23_combout\,
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux3~combout\);

-- Location: LCCOMB_X76_Y36_N4
\inst19|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~6_combout\ = (\inst5|s_count\(4) & ((\inst5|s_count\(3) & (!\inst5|s_count\(2) & !\inst5|s_count\(5))) # (!\inst5|s_count\(3) & (\inst5|s_count\(2) & \inst5|s_count\(5))))) # (!\inst5|s_count\(4) & (\inst5|s_count\(5) & (\inst5|s_count\(3) $ 
-- (!\inst5|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(5),
	combout => \inst19|Mux1~6_combout\);

-- Location: LCCOMB_X76_Y36_N18
\inst19|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~5_combout\ = (\inst5|s_count\(4) & (\inst5|s_count\(3) & (!\inst5|s_count\(2)))) # (!\inst5|s_count\(4) & (((\inst5|s_count\(2) & \inst5|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(5),
	combout => \inst19|Mux1~5_combout\);

-- Location: LCCOMB_X76_Y36_N6
\inst19|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~4_combout\ = (\inst5|s_count\(1) & (\inst19|Mux1~6_combout\)) # (!\inst5|s_count\(1) & ((\inst19|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(1),
	datac => \inst19|Mux1~6_combout\,
	datad => \inst19|Mux1~5_combout\,
	combout => \inst19|Mux1~4_combout\);

-- Location: LCCOMB_X76_Y36_N20
\inst19|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~14_combout\ = (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst19|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst19|Mux1~4_combout\,
	combout => \inst19|Mux1~14_combout\);

-- Location: LCCOMB_X76_Y36_N24
\inst23|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr0~5_combout\ = (\inst5|s_count\(4) & (!\inst5|s_count\(3) & (!\inst5|s_count\(2) & !\inst5|s_count\(1)))) # (!\inst5|s_count\(4) & (\inst5|s_count\(3) & (\inst5|s_count\(2) & \inst5|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(1),
	combout => \inst23|WideOr0~5_combout\);

-- Location: LCCOMB_X76_Y36_N2
\inst23|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr0~combout\ = (!\inst5|s_count\(5) & (!\inst5|s_count\(6) & (!\inst5|s_count\(7) & \inst23|WideOr0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	datad => \inst23|WideOr0~5_combout\,
	combout => \inst23|WideOr0~combout\);

-- Location: LCCOMB_X74_Y40_N30
\inst19|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~12_combout\ = (\inst25|pState.Extra~q\) # (\inst5|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|pState.Extra~q\,
	datad => \inst5|s_count\(2),
	combout => \inst19|Mux1~12_combout\);

-- Location: LCCOMB_X73_Y40_N10
\inst19|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~13_combout\ = (\inst19|Mux3~21_combout\ & (((\inst19|Mux1~12_combout\ & \inst19|Mux3~22_combout\)))) # (!\inst19|Mux3~21_combout\ & ((\inst4|Counter|s_count\(2)) # ((!\inst19|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~21_combout\,
	datab => \inst4|Counter|s_count\(2),
	datac => \inst19|Mux1~12_combout\,
	datad => \inst19|Mux3~22_combout\,
	combout => \inst19|Mux1~13_combout\);

-- Location: LCCOMB_X76_Y36_N10
\inst19|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux1~combout\ = (\inst19|Mux1~13_combout\ & ((\inst19|Mux1~14_combout\) # ((\inst19|Mux3~19_combout\)))) # (!\inst19|Mux1~13_combout\ & (((\inst23|WideOr0~combout\ & !\inst19|Mux3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux1~14_combout\,
	datab => \inst23|WideOr0~combout\,
	datac => \inst19|Mux1~13_combout\,
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux1~combout\);

-- Location: LCCOMB_X77_Y36_N2
\inst19|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~16_combout\ = (\inst25|pState.Extra~q\) # (\inst5|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|pState.Extra~q\,
	datad => \inst5|s_count\(1),
	combout => \inst19|Mux2~16_combout\);

-- Location: LCCOMB_X77_Y36_N4
\inst19|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~17_combout\ = (\inst19|Mux3~21_combout\ & (\inst19|Mux3~22_combout\ & ((\inst19|Mux2~16_combout\)))) # (!\inst19|Mux3~21_combout\ & (((\inst4|Counter|s_count\(1))) # (!\inst19|Mux3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~21_combout\,
	datab => \inst19|Mux3~22_combout\,
	datac => \inst4|Counter|s_count\(1),
	datad => \inst19|Mux2~16_combout\,
	combout => \inst19|Mux2~17_combout\);

-- Location: LCCOMB_X75_Y36_N6
\inst19|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~19_combout\ = \inst5|s_count\(3) $ (((\inst5|s_count\(4) & ((\inst5|s_count\(2)))) # (!\inst5|s_count\(4) & (!\inst5|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(4),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(2),
	combout => \inst19|Mux2~19_combout\);

-- Location: LCCOMB_X75_Y36_N28
\inst19|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~20_combout\ = (\inst19|Mux2~19_combout\ & (\inst5|s_count\(5) $ (((\inst5|s_count\(4) & \inst5|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(1),
	datad => \inst19|Mux2~19_combout\,
	combout => \inst19|Mux2~20_combout\);

-- Location: LCCOMB_X75_Y36_N24
\inst19|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~18_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & \inst19|Mux2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datac => \inst5|s_count\(6),
	datad => \inst19|Mux2~20_combout\,
	combout => \inst19|Mux2~18_combout\);

-- Location: LCCOMB_X75_Y36_N2
\inst23|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr1~3_combout\ = (!\inst5|s_count\(5) & ((\inst5|s_count\(4) & (!\inst5|s_count\(2) & !\inst5|s_count\(3))) # (!\inst5|s_count\(4) & (\inst5|s_count\(2) & \inst5|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(3),
	combout => \inst23|WideOr1~3_combout\);

-- Location: LCCOMB_X75_Y36_N16
\inst23|WideOr1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|WideOr1~12_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & (!\inst5|s_count\(1) & \inst23|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(1),
	datad => \inst23|WideOr1~3_combout\,
	combout => \inst23|WideOr1~12_combout\);

-- Location: LCCOMB_X76_Y36_N8
\inst19|Mux2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux2~combout\ = (\inst19|Mux2~17_combout\ & ((\inst19|Mux2~18_combout\) # ((\inst19|Mux3~19_combout\)))) # (!\inst19|Mux2~17_combout\ & (((\inst23|WideOr1~12_combout\ & !\inst19|Mux3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux2~17_combout\,
	datab => \inst19|Mux2~18_combout\,
	datac => \inst23|WideOr1~12_combout\,
	datad => \inst19|Mux3~19_combout\,
	combout => \inst19|Mux2~combout\);

-- Location: LCCOMB_X74_Y40_N4
\inst19|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~8_combout\ = (\inst5|s_count\(3)) # (\inst25|pState.Extra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datad => \inst25|pState.Extra~q\,
	combout => \inst19|Mux0~8_combout\);

-- Location: LCCOMB_X73_Y40_N8
\inst19|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~9_combout\ = (\inst19|Mux3~21_combout\ & (\inst19|Mux0~8_combout\ & ((\inst19|Mux3~22_combout\)))) # (!\inst19|Mux3~21_combout\ & (((\inst4|Counter|s_count\(3)) # (!\inst19|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux0~8_combout\,
	datab => \inst4|Counter|s_count\(3),
	datac => \inst19|Mux3~21_combout\,
	datad => \inst19|Mux3~22_combout\,
	combout => \inst19|Mux0~9_combout\);

-- Location: LCCOMB_X77_Y36_N14
\inst23|outBCD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD~1_combout\ = ((\inst5|s_count\(4) & ((\inst5|s_count\(3)) # (!\inst23|LessThan4~0_combout\))) # (!\inst5|s_count\(4) & ((\inst23|LessThan4~0_combout\) # (!\inst5|s_count\(3))))) # (!\inst23|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst23|LessThan0~0_combout\,
	datac => \inst5|s_count\(3),
	datad => \inst23|LessThan4~0_combout\,
	combout => \inst23|outBCD~1_combout\);

-- Location: LCCOMB_X77_Y36_N16
\inst19|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~11_combout\ = (\inst5|s_count\(3) & ((\inst5|s_count\(5) & (!\inst5|s_count\(2) & \inst5|s_count\(1))) # (!\inst5|s_count\(5) & (\inst5|s_count\(2) & !\inst5|s_count\(1))))) # (!\inst5|s_count\(3) & (\inst5|s_count\(2) $ 
-- (((!\inst5|s_count\(1)) # (!\inst5|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(2),
	datad => \inst5|s_count\(1),
	combout => \inst19|Mux0~11_combout\);

-- Location: LCCOMB_X77_Y36_N26
\inst19|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~12_combout\ = (\inst5|s_count\(5) & (\inst19|Mux0~11_combout\ & (\inst5|s_count\(2) $ (\inst5|s_count\(4))))) # (!\inst5|s_count\(5) & (((\inst19|Mux0~11_combout\) # (!\inst5|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(5),
	datab => \inst5|s_count\(2),
	datac => \inst5|s_count\(4),
	datad => \inst19|Mux0~11_combout\,
	combout => \inst19|Mux0~12_combout\);

-- Location: LCCOMB_X77_Y36_N0
\inst19|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~10_combout\ = (\inst19|Mux0~12_combout\ & (!\inst5|s_count\(7) & !\inst5|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux0~12_combout\,
	datab => \inst5|s_count\(7),
	datac => \inst5|s_count\(6),
	combout => \inst19|Mux0~10_combout\);

-- Location: LCCOMB_X77_Y36_N28
\inst19|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux0~combout\ = (\inst19|Mux0~9_combout\ & ((\inst19|Mux3~19_combout\) # ((\inst19|Mux0~10_combout\)))) # (!\inst19|Mux0~9_combout\ & (!\inst19|Mux3~19_combout\ & (\inst23|outBCD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux0~9_combout\,
	datab => \inst19|Mux3~19_combout\,
	datac => \inst23|outBCD~1_combout\,
	datad => \inst19|Mux0~10_combout\,
	combout => \inst19|Mux0~combout\);

-- Location: LCCOMB_X82_Y4_N24
\inst17|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~0_combout\ = (\inst19|Mux3~combout\ & ((\inst19|Mux0~combout\) # (\inst19|Mux1~combout\ $ (\inst19|Mux2~combout\)))) # (!\inst19|Mux3~combout\ & ((\inst19|Mux1~combout\) # (\inst19|Mux2~combout\ $ (\inst19|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~0_combout\);

-- Location: LCCOMB_X82_Y4_N26
\inst17|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~1_combout\ = (\inst19|Mux3~combout\ & ((\inst19|Mux1~combout\ & (\inst19|Mux2~combout\)) # (!\inst19|Mux1~combout\ & ((!\inst19|Mux0~combout\))))) # (!\inst19|Mux3~combout\ & ((\inst19|Mux1~combout\ & ((\inst19|Mux0~combout\))) # 
-- (!\inst19|Mux1~combout\ & (\inst19|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~1_combout\);

-- Location: LCCOMB_X82_Y4_N28
\inst17|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~2_combout\ = (\inst19|Mux1~combout\ & ((\inst19|Mux2~combout\ & (\inst19|Mux3~combout\)) # (!\inst19|Mux2~combout\ & ((!\inst19|Mux0~combout\))))) # (!\inst19|Mux1~combout\ & (\inst19|Mux3~combout\ $ (((\inst19|Mux2~combout\ & 
-- \inst19|Mux0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~2_combout\);

-- Location: LCCOMB_X82_Y4_N22
\inst17|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~3_combout\ = (\inst19|Mux3~combout\ & (\inst19|Mux1~combout\ $ (((!\inst19|Mux2~combout\ & !\inst19|Mux0~combout\))))) # (!\inst19|Mux3~combout\ & ((\inst19|Mux2~combout\ & ((\inst19|Mux0~combout\))) # (!\inst19|Mux2~combout\ & 
-- (\inst19|Mux1~combout\ & !\inst19|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~3_combout\);

-- Location: LCCOMB_X82_Y4_N8
\inst17|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~4_combout\ = (\inst19|Mux3~combout\ & (\inst19|Mux0~combout\ & ((\inst19|Mux1~combout\) # (\inst19|Mux2~combout\)))) # (!\inst19|Mux3~combout\ & (!\inst19|Mux1~combout\ & (\inst19|Mux2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~4_combout\);

-- Location: LCCOMB_X82_Y4_N14
\inst17|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~5_combout\ = (\inst19|Mux2~combout\ & ((\inst19|Mux0~combout\) # ((!\inst19|Mux3~combout\ & \inst19|Mux1~combout\)))) # (!\inst19|Mux2~combout\ & (\inst19|Mux1~combout\ & (\inst19|Mux3~combout\ $ (\inst19|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~5_combout\);

-- Location: LCCOMB_X82_Y4_N12
\inst17|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|decOut_n~6_combout\ = (\inst19|Mux2~combout\ & (((\inst19|Mux0~combout\)))) # (!\inst19|Mux2~combout\ & ((\inst19|Mux3~combout\ & (!\inst19|Mux1~combout\ & !\inst19|Mux0~combout\)) # (!\inst19|Mux3~combout\ & (\inst19|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux3~combout\,
	datab => \inst19|Mux1~combout\,
	datac => \inst19|Mux2~combout\,
	datad => \inst19|Mux0~combout\,
	combout => \inst17|decOut_n~6_combout\);

-- Location: LCCOMB_X76_Y36_N22
\inst16|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~7_combout\ = ((!\inst5|s_count\(3) & !\inst5|s_count\(2))) # (!\inst5|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(2),
	combout => \inst16|decOut_n~7_combout\);

-- Location: LCCOMB_X76_Y36_N12
\inst16|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~29_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & (\inst16|decOut_n~7_combout\ & !\inst5|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst16|decOut_n~7_combout\,
	datad => \inst5|s_count\(5),
	combout => \inst16|decOut_n~29_combout\);

-- Location: LCCOMB_X76_Y32_N30
\inst16|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~28_combout\ = (\inst25|pState.Extra~q\) # ((\inst16|decOut_n~29_combout\ & ((\inst25|pState.Timer~q\) # (\inst25|pState.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Timer~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst16|decOut_n~29_combout\,
	datad => \inst25|pState.Extra~q\,
	combout => \inst16|decOut_n~28_combout\);

-- Location: LCCOMB_X76_Y36_N14
\inst23|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal2~0_combout\ = (!\inst5|s_count\(6) & !\inst5|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_count\(6),
	datac => \inst5|s_count\(7),
	combout => \inst23|Equal2~0_combout\);

-- Location: LCCOMB_X76_Y36_N16
\inst19|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~18_combout\ = (\inst23|Equal2~0_combout\ & (((!\inst5|s_count\(4) & !\inst5|s_count\(3))) # (!\inst5|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst23|Equal2~0_combout\,
	datac => \inst5|s_count\(3),
	datad => \inst5|s_count\(5),
	combout => \inst19|Mux3~18_combout\);

-- Location: LCCOMB_X76_Y36_N28
\inst23|Equal38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|Equal38~0_combout\ = (\inst5|s_count\(4) & \inst5|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|s_count\(4),
	datad => \inst5|s_count\(5),
	combout => \inst23|Equal38~0_combout\);

-- Location: LCCOMB_X76_Y36_N30
\inst19|Mux3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~25_combout\ = (\inst23|Equal2~0_combout\ & (((!\inst23|Equal38~0_combout\) # (!\inst5|s_count\(3))) # (!\inst5|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(2),
	datab => \inst5|s_count\(3),
	datac => \inst23|Equal2~0_combout\,
	datad => \inst23|Equal38~0_combout\,
	combout => \inst19|Mux3~25_combout\);

-- Location: LCCOMB_X77_Y36_N30
\inst23|outBCD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD~0_combout\ = (\inst5|s_count\(4) & (\inst5|s_count\(5) & ((\inst5|s_count\(3)) # (!\inst23|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst5|s_count\(3),
	datac => \inst5|s_count\(5),
	datad => \inst23|LessThan4~0_combout\,
	combout => \inst23|outBCD~0_combout\);

-- Location: LCCOMB_X77_Y36_N6
\inst23|outBCD_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD_2~17_combout\ = (!\inst23|outBCD~0_combout\ & (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & !\inst23|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD~0_combout\,
	datab => \inst5|s_count\(7),
	datac => \inst5|s_count\(6),
	datad => \inst23|LessThan1~0_combout\,
	combout => \inst23|outBCD_2~17_combout\);

-- Location: LCCOMB_X76_Y36_N0
\inst23|outBCD_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD_2~16_combout\ = ((\inst19|Mux3~18_combout\ & \inst23|outBCD_2~17_combout\)) # (!\inst19|Mux3~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Mux3~18_combout\,
	datac => \inst19|Mux3~25_combout\,
	datad => \inst23|outBCD_2~17_combout\,
	combout => \inst23|outBCD_2~16_combout\);

-- Location: LCCOMB_X76_Y32_N16
\inst18|muxOut[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|muxOut[1]~2_combout\ = (\inst23|LessThan0~1_combout\ & (((!\inst25|pState.TimeProcess~q\ & !\inst25|pState.Timer~q\)))) # (!\inst23|LessThan0~1_combout\ & ((\inst23|outBCD_2~16_combout\) # ((!\inst25|pState.TimeProcess~q\ & 
-- !\inst25|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LessThan0~1_combout\,
	datab => \inst23|outBCD_2~16_combout\,
	datac => \inst25|pState.TimeProcess~q\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst18|muxOut[1]~2_combout\);

-- Location: LCCOMB_X75_Y36_N14
\inst23|outBCD_2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD_2~19_combout\ = (\inst5|s_count\(3) & ((\inst5|s_count\(5) & ((!\inst5|s_count\(2)))) # (!\inst5|s_count\(5) & (\inst5|s_count\(1) & \inst5|s_count\(2))))) # (!\inst5|s_count\(3) & ((\inst5|s_count\(5) & ((\inst5|s_count\(1)) # 
-- (\inst5|s_count\(2)))) # (!\inst5|s_count\(5) & ((!\inst5|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(3),
	datab => \inst5|s_count\(5),
	datac => \inst5|s_count\(1),
	datad => \inst5|s_count\(2),
	combout => \inst23|outBCD_2~19_combout\);

-- Location: LCCOMB_X75_Y36_N4
\inst23|outBCD_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD_2~20_combout\ = (\inst5|s_count\(4) & (\inst23|outBCD_2~19_combout\)) # (!\inst5|s_count\(4) & (((!\inst5|s_count\(3)) # (!\inst5|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(4),
	datab => \inst23|outBCD_2~19_combout\,
	datac => \inst5|s_count\(5),
	datad => \inst5|s_count\(3),
	combout => \inst23|outBCD_2~20_combout\);

-- Location: LCCOMB_X75_Y36_N0
\inst23|outBCD_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|outBCD_2~18_combout\ = (!\inst5|s_count\(7) & (!\inst5|s_count\(6) & \inst23|outBCD_2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_count\(7),
	datab => \inst5|s_count\(6),
	datac => \inst23|outBCD_2~20_combout\,
	combout => \inst23|outBCD_2~18_combout\);

-- Location: LCCOMB_X76_Y32_N4
\inst16|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~16_combout\ = (\inst25|en_3~combout\ & (\inst19|Mux3~18_combout\ $ (((\inst23|LessThan0~1_combout\) # (!\inst23|outBCD_2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD_2~18_combout\,
	datab => \inst25|en_3~combout\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~16_combout\);

-- Location: LCCOMB_X76_Y32_N6
\inst16|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~17_combout\ = (\inst25|pState.Extra~q\) # ((\inst16|decOut_n~16_combout\ & ((\inst19|Mux3~18_combout\))) # (!\inst16|decOut_n~16_combout\ & (\inst18|muxOut[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst18|muxOut[1]~2_combout\,
	datac => \inst16|decOut_n~16_combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~17_combout\);

-- Location: LCCOMB_X76_Y32_N8
\inst16|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~18_combout\ = (\inst25|pState.Extra~q\) # (((!\inst23|LessThan0~1_combout\ & \inst23|outBCD_2~18_combout\)) # (!\inst25|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst25|en_3~combout\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst23|outBCD_2~18_combout\,
	combout => \inst16|decOut_n~18_combout\);

-- Location: LCCOMB_X76_Y32_N10
\inst16|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~19_combout\ = (\inst16|decOut_n~18_combout\) # ((!\inst18|muxOut[1]~2_combout\ & ((!\inst19|Mux3~18_combout\) # (!\inst25|en_3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~18_combout\,
	datab => \inst18|muxOut[1]~2_combout\,
	datac => \inst25|en_3~combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~19_combout\);

-- Location: LCCOMB_X76_Y32_N0
\inst16|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~20_combout\ = (\inst25|en_3~combout\ & (\inst19|Mux3~18_combout\ $ (((\inst23|LessThan0~1_combout\) # (!\inst23|outBCD_2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD_2~18_combout\,
	datab => \inst25|en_3~combout\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~20_combout\);

-- Location: LCCOMB_X76_Y32_N22
\inst16|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~21_combout\ = (\inst25|pState.Extra~q\) # (((\inst16|decOut_n~20_combout\ & !\inst18|muxOut[1]~2_combout\)) # (!\inst25|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst16|decOut_n~20_combout\,
	datac => \inst25|en_3~combout\,
	datad => \inst18|muxOut[1]~2_combout\,
	combout => \inst16|decOut_n~21_combout\);

-- Location: LCCOMB_X76_Y32_N24
\inst16|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~22_combout\ = ((\inst19|Mux3~18_combout\ & ((\inst23|LessThan0~1_combout\) # (!\inst23|outBCD_2~18_combout\)))) # (!\inst25|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD_2~18_combout\,
	datab => \inst25|en_3~combout\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~22_combout\);

-- Location: LCCOMB_X76_Y32_N2
\inst16|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~23_combout\ = (\inst25|pState.Extra~q\) # ((\inst16|decOut_n~22_combout\ & \inst18|muxOut[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst16|decOut_n~22_combout\,
	datad => \inst18|muxOut[1]~2_combout\,
	combout => \inst16|decOut_n~23_combout\);

-- Location: LCCOMB_X77_Y36_N10
\inst16|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~24_combout\ = ((\inst25|pState.Extra~q\) # ((\inst23|outBCD~0_combout\) # (!\inst23|Equal2~0_combout\))) # (!\inst25|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|en_3~combout\,
	datab => \inst25|pState.Extra~q\,
	datac => \inst23|outBCD~0_combout\,
	datad => \inst23|Equal2~0_combout\,
	combout => \inst16|decOut_n~24_combout\);

-- Location: LCCOMB_X76_Y32_N12
\inst16|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~25_combout\ = (\inst23|LessThan0~1_combout\) # (\inst23|outBCD_2~18_combout\ $ (\inst19|Mux3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|outBCD_2~18_combout\,
	datac => \inst23|LessThan0~1_combout\,
	datad => \inst19|Mux3~18_combout\,
	combout => \inst16|decOut_n~25_combout\);

-- Location: LCCOMB_X76_Y32_N18
\inst16|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~26_combout\ = (\inst25|pState.Extra~q\ & (((!\inst23|outBCD_2~16_combout\)))) # (!\inst25|pState.Extra~q\ & (\inst23|outBCD_2~16_combout\ & ((\inst25|pState.TimeProcess~q\) # (\inst25|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|pState.Extra~q\,
	datab => \inst25|pState.TimeProcess~q\,
	datac => \inst23|outBCD_2~16_combout\,
	datad => \inst25|pState.Timer~q\,
	combout => \inst16|decOut_n~26_combout\);

-- Location: LCCOMB_X76_Y32_N28
\inst16|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|decOut_n~27_combout\ = (\inst23|outBCD_2~16_combout\ & (((!\inst16|decOut_n~26_combout\)))) # (!\inst23|outBCD_2~16_combout\ & (((\inst16|decOut_n~26_combout\) # (!\inst25|en_3~combout\)) # (!\inst16|decOut_n~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|decOut_n~25_combout\,
	datab => \inst25|en_3~combout\,
	datac => \inst23|outBCD_2~16_combout\,
	datad => \inst16|decOut_n~26_combout\,
	combout => \inst16|decOut_n~27_combout\);

-- Location: LCCOMB_X69_Y40_N26
\inst6|outBCD[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~60_combout\ = (\inst9|s_count\(4) & (!\inst9|s_count\(2) & (\inst9|s_count\(1) $ (\inst9|s_count\(5))))) # (!\inst9|s_count\(4) & ((\inst9|s_count\(1) & ((\inst9|s_count\(5)))) # (!\inst9|s_count\(1) & (\inst9|s_count\(2) & 
-- !\inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[1]~60_combout\);

-- Location: LCCOMB_X69_Y40_N20
\inst6|outBCD[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~59_combout\ = (\inst9|s_count\(1) & (!\inst9|s_count\(5) & ((\inst9|s_count\(2)) # (!\inst9|s_count\(4))))) # (!\inst9|s_count\(1) & (\inst9|s_count\(5) $ (((!\inst9|s_count\(2) & \inst9|s_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(4),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(5),
	combout => \inst6|outBCD[1]~59_combout\);

-- Location: LCCOMB_X69_Y40_N24
\inst6|outBCD[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~28_combout\ = (\inst9|s_count\(3) & (\inst6|outBCD[1]~60_combout\)) # (!\inst9|s_count\(3) & ((\inst6|outBCD[1]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~60_combout\,
	datab => \inst6|outBCD[1]~59_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[1]~28_combout\);

-- Location: LCCOMB_X69_Y40_N22
\inst6|outBCD[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[1]~63_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[1]~28_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[1]~28_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD[1]~63_combout\);

-- Location: LCCOMB_X67_Y40_N10
\inst6|outBCD[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~42_combout\ = (\inst9|s_count\(2) & (\inst9|s_count\(4) $ (((!\inst9|s_count\(1)) # (!\inst9|s_count\(5)))))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(5) & (\inst9|s_count\(1) & !\inst9|s_count\(4))) # (!\inst9|s_count\(5) & 
-- (!\inst9|s_count\(1) & \inst9|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD[2]~42_combout\);

-- Location: LCCOMB_X67_Y40_N16
\inst6|outBCD[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~43_combout\ = (\inst9|s_count\(2) & (!\inst9|s_count\(4) & ((\inst9|s_count\(5)) # (\inst9|s_count\(1))))) # (!\inst9|s_count\(2) & (\inst9|s_count\(4) & ((!\inst9|s_count\(1)) # (!\inst9|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD[2]~43_combout\);

-- Location: LCCOMB_X67_Y40_N30
\inst6|outBCD[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~41_combout\ = (\inst9|s_count\(3) & ((\inst6|outBCD[2]~43_combout\))) # (!\inst9|s_count\(3) & (\inst6|outBCD[2]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[2]~42_combout\,
	datab => \inst6|outBCD[2]~43_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[2]~41_combout\);

-- Location: LCCOMB_X67_Y40_N20
\inst6|outBCD[2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[2]~64_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[2]~41_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst6|outBCD[2]~41_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD[2]~64_combout\);

-- Location: LCCOMB_X67_Y40_N12
\inst6|outBCD[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~54_combout\ = (\inst9|s_count\(5) & (!\inst9|s_count\(2) & (\inst9|s_count\(1) & \inst9|s_count\(4)))) # (!\inst9|s_count\(5) & (!\inst9|s_count\(1) & (\inst9|s_count\(2) $ (!\inst9|s_count\(4)))))

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
	combout => \inst6|outBCD[3]~54_combout\);

-- Location: LCCOMB_X67_Y40_N14
\inst6|outBCD[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~53_combout\ = (\inst9|s_count\(2) & (\inst9|s_count\(5) & (\inst9|s_count\(1) & !\inst9|s_count\(4)))) # (!\inst9|s_count\(2) & (\inst9|s_count\(4) & (\inst9|s_count\(5) $ (\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(4),
	combout => \inst6|outBCD[3]~53_combout\);

-- Location: LCCOMB_X67_Y40_N18
\inst6|outBCD[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~52_combout\ = (\inst9|s_count\(3) & (\inst6|outBCD[3]~54_combout\)) # (!\inst9|s_count\(3) & ((\inst6|outBCD[3]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[3]~54_combout\,
	datab => \inst6|outBCD[3]~53_combout\,
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[3]~52_combout\);

-- Location: LCCOMB_X67_Y40_N0
\inst6|outBCD[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[3]~65_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD[3]~52_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[3]~52_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD[3]~65_combout\);

-- Location: LCCOMB_X70_Y40_N6
\inst6|outBCD[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~13_combout\ = (((!\inst9|s_count\(3)) # (!\inst9|s_count\(2))) # (!\inst9|s_count\(5))) # (!\inst9|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(2),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD[0]~13_combout\);

-- Location: LCCOMB_X70_Y40_N0
\inst6|outBCD[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~62_combout\ = (\inst6|outBCD[0]~13_combout\ & (!\inst9|s_count\(6) & (\inst9|s_count\(0) & !\inst9|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[0]~13_combout\,
	datab => \inst9|s_count\(6),
	datac => \inst9|s_count\(0),
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD[0]~62_combout\);

-- Location: LCCOMB_X70_Y41_N28
\inst14|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~12_combout\ = (\inst6|outBCD[0]~62_combout\ & ((\inst6|outBCD[3]~65_combout\) # (\inst6|outBCD[1]~63_combout\ $ (\inst6|outBCD[2]~64_combout\)))) # (!\inst6|outBCD[0]~62_combout\ & ((\inst6|outBCD[2]~64_combout\) # 
-- (\inst6|outBCD[1]~63_combout\ $ (\inst6|outBCD[3]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~12_combout\);

-- Location: LCCOMB_X70_Y41_N26
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

-- Location: LCCOMB_X70_Y41_N10
\inst14|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~13_combout\ = (\inst6|outBCD[2]~64_combout\ & ((\inst6|outBCD[0]~62_combout\ & (\inst6|outBCD[1]~63_combout\)) # (!\inst6|outBCD[0]~62_combout\ & ((\inst6|outBCD[3]~65_combout\))))) # (!\inst6|outBCD[2]~64_combout\ & 
-- ((\inst6|outBCD[0]~62_combout\ & ((!\inst6|outBCD[3]~65_combout\))) # (!\inst6|outBCD[0]~62_combout\ & (\inst6|outBCD[1]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~13_combout\);

-- Location: LCCOMB_X70_Y41_N4
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

-- Location: LCCOMB_X70_Y41_N24
\inst14|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~14_combout\ = (\inst6|outBCD[1]~63_combout\ & (\inst6|outBCD[0]~62_combout\ $ (((!\inst6|outBCD[2]~64_combout\ & \inst6|outBCD[3]~65_combout\))))) # (!\inst6|outBCD[1]~63_combout\ & ((\inst6|outBCD[2]~64_combout\ & 
-- (!\inst6|outBCD[3]~65_combout\)) # (!\inst6|outBCD[2]~64_combout\ & ((\inst6|outBCD[0]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~14_combout\);

-- Location: LCCOMB_X70_Y41_N30
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

-- Location: LCCOMB_X70_Y41_N6
\inst14|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~15_combout\ = (\inst6|outBCD[0]~62_combout\ & (\inst6|outBCD[2]~64_combout\ $ (((!\inst6|outBCD[1]~63_combout\ & !\inst6|outBCD[3]~65_combout\))))) # (!\inst6|outBCD[0]~62_combout\ & ((\inst6|outBCD[1]~63_combout\ & 
-- ((\inst6|outBCD[3]~65_combout\))) # (!\inst6|outBCD[1]~63_combout\ & (\inst6|outBCD[2]~64_combout\ & !\inst6|outBCD[3]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~15_combout\);

-- Location: LCCOMB_X70_Y41_N20
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

-- Location: LCCOMB_X70_Y41_N16
\inst14|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~16_combout\ = (\inst6|outBCD[0]~62_combout\ & (\inst6|outBCD[2]~64_combout\ $ (!\inst6|outBCD[3]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~16_combout\);

-- Location: LCCOMB_X70_Y41_N2
\inst14|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~17_combout\ = ((\inst6|outBCD[2]~64_combout\ & ((\inst14|decOut_n~16_combout\))) # (!\inst6|outBCD[2]~64_combout\ & (\inst6|outBCD[1]~63_combout\ & !\inst14|decOut_n~16_combout\))) # (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst6|outBCD[2]~64_combout\,
	datad => \inst14|decOut_n~16_combout\,
	combout => \inst14|decOut_n~17_combout\);

-- Location: LCCOMB_X70_Y41_N8
\inst14|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~18_combout\ = (\inst6|outBCD[3]~65_combout\ & ((\inst6|outBCD[1]~63_combout\) # ((\inst6|outBCD[2]~64_combout\ & !\inst6|outBCD[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~18_combout\);

-- Location: LCCOMB_X70_Y41_N18
\inst14|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~19_combout\ = (\inst6|outBCD[2]~64_combout\ & (!\inst6|outBCD[3]~65_combout\ & (\inst6|outBCD[1]~63_combout\ $ (\inst6|outBCD[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~19_combout\);

-- Location: LCCOMB_X70_Y41_N14
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

-- Location: LCCOMB_X70_Y41_N0
\inst14|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|decOut_n~20_combout\ = (!\inst6|outBCD[1]~63_combout\ & (!\inst6|outBCD[3]~65_combout\ & (\inst6|outBCD[2]~64_combout\ $ (\inst6|outBCD[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD[1]~63_combout\,
	datab => \inst6|outBCD[2]~64_combout\,
	datac => \inst6|outBCD[3]~65_combout\,
	datad => \inst6|outBCD[0]~62_combout\,
	combout => \inst14|decOut_n~20_combout\);

-- Location: LCCOMB_X70_Y41_N12
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

-- Location: LCCOMB_X67_Y40_N2
\inst15|decOut_n[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~8_combout\ = (!\inst9|s_count\(5) & (((!\inst9|s_count\(3) & !\inst9|s_count\(2))) # (!\inst9|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(2),
	combout => \inst15|decOut_n[6]~8_combout\);

-- Location: LCCOMB_X67_Y40_N22
\inst15|decOut_n[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[6]~14_combout\ = ((!\inst9|s_count\(6) & (\inst15|decOut_n[6]~8_combout\ & !\inst9|s_count\(7)))) # (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst15|decOut_n[6]~8_combout\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst15|decOut_n[6]~14_combout\);

-- Location: LCCOMB_X69_Y40_N10
\inst6|outBCD_2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[0]~8_combout\ = (\inst9|s_count\(5) & (((!\inst9|s_count\(3))))) # (!\inst9|s_count\(5) & (\inst9|s_count\(3) & ((\inst9|s_count\(2)) # (\inst9|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(2),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD_2[0]~8_combout\);

-- Location: LCCOMB_X67_Y40_N6
\inst6|outBCD_2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[0]~9_combout\ = (\inst9|s_count\(5) & ((\inst9|s_count\(2) & ((!\inst9|s_count\(3)))) # (!\inst9|s_count\(2) & ((\inst9|s_count\(1)) # (\inst9|s_count\(3)))))) # (!\inst9|s_count\(5) & ((\inst9|s_count\(2) & (\inst9|s_count\(1) & 
-- \inst9|s_count\(3))) # (!\inst9|s_count\(2) & ((!\inst9|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(5),
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	datad => \inst9|s_count\(3),
	combout => \inst6|outBCD_2[0]~9_combout\);

-- Location: LCCOMB_X69_Y40_N28
\inst6|outBCD_2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[0]~7_combout\ = (\inst9|s_count\(4) & ((\inst6|outBCD_2[0]~9_combout\))) # (!\inst9|s_count\(4) & (\inst6|outBCD_2[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|outBCD_2[0]~8_combout\,
	datab => \inst9|s_count\(4),
	datad => \inst6|outBCD_2[0]~9_combout\,
	combout => \inst6|outBCD_2[0]~7_combout\);

-- Location: LCCOMB_X69_Y40_N2
\inst6|outBCD_2[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[0]~22_combout\ = (!\inst9|s_count\(6) & (\inst6|outBCD_2[0]~7_combout\ & !\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD_2[0]~7_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD_2[0]~22_combout\);

-- Location: LCCOMB_X69_Y40_N8
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst9|s_count\(6) & (((!\inst9|s_count\(4) & !\inst9|s_count\(3))) # (!\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst9|s_count\(5),
	datac => \inst9|s_count\(4),
	datad => \inst9|s_count\(3),
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X69_Y40_N30
\inst6|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_combout\ = (\inst6|LessThan3~0_combout\ & !\inst9|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|LessThan3~0_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|LessThan3~1_combout\);

-- Location: LCCOMB_X67_Y40_N26
\inst6|outBCD_2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[1]~15_combout\ = (\inst9|s_count\(4) & ((\inst9|s_count\(3) & ((\inst9|s_count\(2)) # (!\inst9|s_count\(5)))) # (!\inst9|s_count\(3) & (!\inst9|s_count\(5) & \inst9|s_count\(2))))) # (!\inst9|s_count\(4) & (!\inst9|s_count\(3) & 
-- (\inst9|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(4),
	datab => \inst9|s_count\(3),
	datac => \inst9|s_count\(5),
	datad => \inst9|s_count\(2),
	combout => \inst6|outBCD_2[1]~15_combout\);

-- Location: LCCOMB_X67_Y40_N24
\inst6|outBCD_2[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD_2[1]~23_combout\ = (\inst9|s_count\(6)) # ((\inst6|outBCD_2[1]~15_combout\) # (\inst9|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datac => \inst6|outBCD_2[1]~15_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst6|outBCD_2[1]~23_combout\);

-- Location: LCCOMB_X69_Y39_N28
\inst15|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~9_combout\ = ((\inst6|outBCD_2[0]~22_combout\ & ((\inst6|LessThan3~1_combout\) # (\inst6|outBCD_2[1]~23_combout\))) # (!\inst6|outBCD_2[0]~22_combout\ & (\inst6|LessThan3~1_combout\ & \inst6|outBCD_2[1]~23_combout\))) # 
-- (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst6|outBCD_2[0]~22_combout\,
	datac => \inst6|LessThan3~1_combout\,
	datad => \inst6|outBCD_2[1]~23_combout\,
	combout => \inst15|decOut_n~9_combout\);

-- Location: LCCOMB_X69_Y39_N6
\inst15|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~10_combout\ = ((\inst6|outBCD_2[0]~22_combout\) # ((!\inst6|LessThan3~1_combout\ & !\inst6|outBCD_2[1]~23_combout\))) # (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst6|outBCD_2[0]~22_combout\,
	datac => \inst6|LessThan3~1_combout\,
	datad => \inst6|outBCD_2[1]~23_combout\,
	combout => \inst15|decOut_n~10_combout\);

-- Location: LCCOMB_X69_Y39_N12
\inst15|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n~11_combout\ = ((\inst6|outBCD_2[0]~22_combout\ & (\inst6|LessThan3~1_combout\ $ (\inst6|outBCD_2[1]~23_combout\))) # (!\inst6|outBCD_2[0]~22_combout\ & (!\inst6|LessThan3~1_combout\ & !\inst6|outBCD_2[1]~23_combout\))) # 
-- (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst6|outBCD_2[0]~22_combout\,
	datac => \inst6|LessThan3~1_combout\,
	datad => \inst6|outBCD_2[1]~23_combout\,
	combout => \inst15|decOut_n~11_combout\);

-- Location: LCCOMB_X69_Y39_N22
\inst15|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[2]~12_combout\ = ((!\inst6|outBCD_2[0]~22_combout\ & (\inst6|LessThan3~1_combout\ & \inst6|outBCD_2[1]~23_combout\))) # (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst6|outBCD_2[0]~22_combout\,
	datac => \inst6|LessThan3~1_combout\,
	datad => \inst6|outBCD_2[1]~23_combout\,
	combout => \inst15|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X67_Y40_N8
\inst6|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal6~0_combout\ = (!\inst9|s_count\(2) & !\inst9|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|s_count\(2),
	datac => \inst9|s_count\(1),
	combout => \inst6|Equal6~0_combout\);

-- Location: LCCOMB_X67_Y40_N4
\inst6|outBCD[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|outBCD[0]~61_combout\ = (\inst9|s_count\(5) & (\inst9|s_count\(4) & ((\inst9|s_count\(3)) # (!\inst6|Equal6~0_combout\))))

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
	combout => \inst6|outBCD[0]~61_combout\);

-- Location: LCCOMB_X67_Y40_N28
\inst15|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[1]~15_combout\ = (\inst9|s_count\(6)) # ((\inst6|outBCD[0]~61_combout\) # ((\inst9|s_count\(7)) # (!\inst9|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|s_count\(6),
	datab => \inst6|outBCD[0]~61_combout\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst9|s_count\(7),
	combout => \inst15|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X69_Y39_N24
\inst15|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|decOut_n[0]~13_combout\ = ((!\inst6|outBCD_2[1]~23_combout\ & (\inst6|outBCD_2[0]~22_combout\ $ (!\inst6|LessThan3~1_combout\)))) # (!\inst9|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst6|outBCD_2[0]~22_combout\,
	datac => \inst6|LessThan3~1_combout\,
	datad => \inst6|outBCD_2[1]~23_combout\,
	combout => \inst15|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X70_Y44_N24
\inst29|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector2~0_combout\ = (\inst29|state.return_home~q\) # ((\inst29|state.line2~q\) # ((!\inst29|lcd_rs~0_combout\ & \inst29|data_bus_value\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|lcd_rs~0_combout\,
	datab => \inst29|state.return_home~q\,
	datac => \inst29|data_bus_value\(7),
	datad => \inst29|state.line2~q\,
	combout => \inst29|Selector2~0_combout\);

-- Location: FF_X70_Y44_N25
\inst29|data_bus_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector2~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(7));

-- Location: LCCOMB_X70_Y44_N28
\inst29|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector3~0_combout\ = (\inst29|state.line2~q\) # ((\inst29|data_bus_value\(6) & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|data_bus_value\(6),
	datac => \inst29|state.line2~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector3~0_combout\);

-- Location: LCCOMB_X68_Y42_N8
\inst29|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux53~0_combout\ = (\inst29|char_count\(1) & (((!\inst29|char_count\(2))) # (!\inst29|char_count\(3)))) # (!\inst29|char_count\(1) & ((\inst29|char_count\(2)) # ((\inst29|char_count\(3) & !\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux53~0_combout\);

-- Location: LCCOMB_X68_Y42_N6
\inst29|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux53~1_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((\inst29|char_count\(1)) # (\inst29|char_count\(0))))) # (!\inst29|char_count\(2) & (!\inst29|char_count\(1) & ((\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux53~1_combout\);

-- Location: LCCOMB_X68_Y42_N12
\inst29|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux53~2_combout\ = (\inst29|char_count\(4) & (\inst29|Mux53~0_combout\)) # (!\inst29|char_count\(4) & ((\inst29|Mux53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datac => \inst29|Mux53~0_combout\,
	datad => \inst29|Mux53~1_combout\,
	combout => \inst29|Mux53~2_combout\);

-- Location: LCCOMB_X70_Y42_N18
\inst29|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux32~0_combout\ = (\inst29|char_count\(2) & (\inst29|char_count\(3) $ (((\inst29|char_count\(1)) # (\inst29|char_count\(0)))))) # (!\inst29|char_count\(2) & ((\inst29|char_count\(3)) # ((\inst29|char_count\(1) & \inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux32~0_combout\);

-- Location: LCCOMB_X69_Y42_N8
\inst29|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux51~0_combout\ = (!\inst29|char_count\(0) & (\inst29|char_count\(3) & (!\inst29|char_count\(1) & !\inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux51~0_combout\);

-- Location: LCCOMB_X70_Y42_N8
\inst29|Mux60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~8_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|Mux32~0_combout\,
	datac => \inst29|char_count\(4),
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux60~8_combout\);

-- Location: LCCOMB_X70_Y42_N2
\inst29|Mux60~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~10_combout\ = (\inst29|Mux60~8_combout\) # ((\inst29|Mux53~2_combout\ & ((\iaaanst1|s_currentState.TCozer~q\) # (\iaaanst1|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \inst29|Mux53~2_combout\,
	datac => \iaaanst1|s_currentState.TLevedar~q\,
	datad => \inst29|Mux60~8_combout\,
	combout => \inst29|Mux60~10_combout\);

-- Location: LCCOMB_X70_Y42_N14
\inst29|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux19~0_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((\inst29|char_count\(1)) # (\inst29|char_count\(0))))) # (!\inst29|char_count\(2) & ((\inst29|char_count\(3)) # ((\inst29|char_count\(1) & \inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux19~0_combout\);

-- Location: LCCOMB_X70_Y42_N4
\inst29|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux19~1_combout\ = (\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datac => \inst29|Mux19~0_combout\,
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux19~1_combout\);

-- Location: LCCOMB_X70_Y42_N26
\inst29|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux4~1_combout\ = (\inst29|char_count\(1)) # ((\inst29|char_count\(4) & ((\inst29|char_count\(0)) # (!\inst29|char_count\(2)))) # (!\inst29|char_count\(4) & ((\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(4),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux4~1_combout\);

-- Location: LCCOMB_X70_Y42_N24
\inst29|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux4~0_combout\ = (\inst29|char_count\(1) & (((\inst29|char_count\(4)) # (\inst29|char_count\(2))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(4) & ((\inst29|char_count\(0)) # (\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(4),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y42_N0
\inst29|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~2_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst29|char_count\(3) & (!\inst29|Mux4~1_combout\)) # (!\inst29|char_count\(3) & ((\inst29|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|char_count\(3),
	datac => \inst29|Mux4~1_combout\,
	datad => \inst29|Mux4~0_combout\,
	combout => \inst29|Mux60~2_combout\);

-- Location: LCCOMB_X70_Y42_N10
\inst29|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~3_combout\ = (!\iaaanst1|s_temp~q\ & ((\inst29|Mux60~2_combout\) # ((!\iaaanst1|WideOr10~0_combout\ & \inst29|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux19~1_combout\,
	datad => \inst29|Mux60~2_combout\,
	combout => \inst29|Mux60~3_combout\);

-- Location: LCCOMB_X70_Y42_N28
\inst29|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~4_combout\ = (\inst29|Mux60~3_combout\) # ((\iaaanst1|s_temp~q\ & \inst29|Mux53~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux53~2_combout\,
	datad => \inst29|Mux60~3_combout\,
	combout => \inst29|Mux60~4_combout\);

-- Location: LCCOMB_X69_Y42_N22
\inst29|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux39~0_combout\ = (\inst29|char_count\(3) & (((!\inst29|char_count\(4)) # (!\inst29|char_count\(1))) # (!\inst29|char_count\(0)))) # (!\inst29|char_count\(3) & (((\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux39~0_combout\);

-- Location: LCCOMB_X69_Y42_N4
\inst29|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux39~1_combout\ = (\inst29|char_count\(3) & ((\inst29|char_count\(0)) # ((\inst29|char_count\(1))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(1) & (\inst29|char_count\(0) $ (\inst29|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux39~1_combout\);

-- Location: LCCOMB_X69_Y42_N14
\inst29|Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~5_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst29|char_count\(2) & ((!\inst29|Mux39~1_combout\))) # (!\inst29|char_count\(2) & (\inst29|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux39~0_combout\,
	datab => \inst29|char_count\(2),
	datac => \inst29|Mux39~1_combout\,
	datad => \iaaanst1|WideOr10~0_combout\,
	combout => \inst29|Mux60~5_combout\);

-- Location: LCCOMB_X69_Y42_N12
\inst29|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux25~0_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((\inst29|char_count\(1)) # (!\inst29|char_count\(0))))) # (!\inst29|char_count\(2) & (\inst29|char_count\(3) & ((!\inst29|char_count\(1)) # (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux25~0_combout\);

-- Location: LCCOMB_X69_Y42_N28
\inst29|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux46~0_combout\ = (\inst29|char_count\(2) & ((\inst29|char_count\(0) & (!\inst29|char_count\(1) & !\inst29|char_count\(3))) # (!\inst29|char_count\(0) & ((!\inst29|char_count\(3)) # (!\inst29|char_count\(1)))))) # (!\inst29|char_count\(2) & 
-- (((\inst29|char_count\(1)) # (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux46~0_combout\);

-- Location: LCCOMB_X69_Y42_N10
\inst29|Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~6_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\iaaanst1|s_temp~q\ & (\inst29|Mux53~2_combout\)) # (!\iaaanst1|s_temp~q\ & ((\inst29|Mux19~1_combout\))))) # (!\iaaanst1|WideOr10~0_combout\ & (((\iaaanst1|s_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux53~2_combout\,
	datab => \iaaanst1|WideOr10~0_combout\,
	datac => \iaaanst1|s_temp~q\,
	datad => \inst29|Mux19~1_combout\,
	combout => \inst29|Mux60~6_combout\);

-- Location: LCCOMB_X69_Y42_N24
\inst29|Mux60~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~11_combout\ = (\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux60~6_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux60~6_combout\ & (\inst29|Mux46~0_combout\)) # (!\inst29|Mux60~6_combout\ & ((\inst29|Mux51~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux46~0_combout\,
	datab => \iaaanst1|WideOr10~0_combout\,
	datac => \inst29|Mux51~0_combout\,
	datad => \inst29|Mux60~6_combout\,
	combout => \inst29|Mux60~11_combout\);

-- Location: LCCOMB_X69_Y42_N18
\inst29|Mux60~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~12_combout\ = (\inst29|char_count\(4) & (((\inst29|Mux60~11_combout\)))) # (!\inst29|char_count\(4) & ((\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux60~11_combout\))) # (!\iaaanst1|WideOr10~0_combout\ & (\inst29|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux25~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \iaaanst1|WideOr10~0_combout\,
	datad => \inst29|Mux60~11_combout\,
	combout => \inst29|Mux60~12_combout\);

-- Location: LCCOMB_X69_Y42_N2
\inst29|Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~7_combout\ = (\inst9|Add0~0_combout\ & (!\iaaanst1|WideOr11~combout\ & ((\inst29|Mux60~12_combout\)))) # (!\inst9|Add0~0_combout\ & ((\iaaanst1|WideOr11~combout\) # ((\inst29|Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \iaaanst1|WideOr11~combout\,
	datac => \inst29|Mux60~5_combout\,
	datad => \inst29|Mux60~12_combout\,
	combout => \inst29|Mux60~7_combout\);

-- Location: LCCOMB_X69_Y44_N18
\inst29|Mux60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux60~9_combout\ = (\iaaanst1|WideOr11~combout\ & ((\inst29|Mux60~7_combout\ & (\inst29|Mux60~10_combout\)) # (!\inst29|Mux60~7_combout\ & ((\inst29|Mux60~4_combout\))))) # (!\iaaanst1|WideOr11~combout\ & (((\inst29|Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux60~10_combout\,
	datab => \iaaanst1|WideOr11~combout\,
	datac => \inst29|Mux60~4_combout\,
	datad => \inst29|Mux60~7_combout\,
	combout => \inst29|Mux60~9_combout\);

-- Location: LCCOMB_X67_Y45_N24
\inst29|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~2_combout\ = (\inst29|char_count\(2) & ((\inst29|char_count\(1) & ((!\inst29|char_count\(3)))) # (!\inst29|char_count\(1) & (\inst29|char_count\(4))))) # (!\inst29|char_count\(2) & (((\inst29|char_count\(3) & !\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(1),
	combout => \inst29|Mux63~2_combout\);

-- Location: LCCOMB_X68_Y45_N0
\inst29|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~3_combout\ = (!\iaaanst1|s_temp~q\ & (\inst29|Mux63~2_combout\ & (\inst29|char_count\(4) $ (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|char_count\(0),
	datad => \inst29|Mux63~2_combout\,
	combout => \inst29|Mux63~3_combout\);

-- Location: LCCOMB_X67_Y45_N8
\inst29|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux35~0_combout\ = (\inst29|char_count\(2)) # ((\inst29|char_count\(0) & (\inst29|char_count\(1))) # (!\inst29|char_count\(0) & ((\inst29|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux35~0_combout\);

-- Location: LCCOMB_X67_Y45_N12
\inst29|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux27~0_combout\ = (!\inst29|char_count\(3) & \inst29|char_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux27~0_combout\);

-- Location: LCCOMB_X67_Y45_N2
\inst29|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux48~0_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(1) & (\inst29|char_count\(0) & \inst29|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|Mux27~0_combout\,
	combout => \inst29|Mux48~0_combout\);

-- Location: LCCOMB_X67_Y45_N6
\inst29|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~0_combout\ = (!\inst9|Add0~0_combout\ & ((\inst29|Mux48~0_combout\) # ((\inst29|char_count\(3) & !\inst29|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst29|char_count\(3),
	datac => \inst29|Mux35~0_combout\,
	datad => \inst29|Mux48~0_combout\,
	combout => \inst29|Mux63~0_combout\);

-- Location: LCCOMB_X68_Y45_N12
\inst29|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux56~0_combout\ = (\inst29|char_count\(1) & (((!\inst29|char_count\(3)) # (!\inst29|char_count\(0))) # (!\inst29|char_count\(2)))) # (!\inst29|char_count\(1) & ((\inst29|char_count\(2)) # ((\inst29|char_count\(0)) # (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux56~0_combout\);

-- Location: LCCOMB_X68_Y45_N6
\inst29|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~1_combout\ = (\iaaanst1|s_temp~q\ & ((\inst29|char_count\(4) & ((!\inst29|Mux56~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux51~0_combout\,
	datad => \inst29|Mux56~0_combout\,
	combout => \inst29|Mux63~1_combout\);

-- Location: LCCOMB_X68_Y45_N2
\inst29|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~4_combout\ = (\inst29|Mux63~0_combout\) # ((\inst9|Add0~0_combout\ & ((\inst29|Mux63~3_combout\) # (\inst29|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \inst29|Mux63~3_combout\,
	datac => \inst29|Mux63~0_combout\,
	datad => \inst29|Mux63~1_combout\,
	combout => \inst29|Mux63~4_combout\);

-- Location: LCCOMB_X67_Y45_N30
\inst29|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux21~0_combout\ = (\inst29|char_count\(0) & ((\inst29|char_count\(2) & ((!\inst29|char_count\(3)))) # (!\inst29|char_count\(2) & (\inst29|char_count\(4) & \inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux21~0_combout\);

-- Location: LCCOMB_X68_Y45_N30
\inst29|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux56~1_combout\ = (\inst29|char_count\(4) & ((!\inst29|Mux56~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datac => \inst29|Mux51~0_combout\,
	datad => \inst29|Mux56~0_combout\,
	combout => \inst29|Mux56~1_combout\);

-- Location: LCCOMB_X69_Y41_N6
\inst29|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~13_combout\ = (!\iaaanst1|s_currentState.TFim~q\ & (!\iaaanst1|s_currentState.TExtra~q\ & !\iaaanst1|s_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_temp~q\,
	combout => \inst29|Mux63~13_combout\);

-- Location: LCCOMB_X68_Y45_N4
\inst29|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~14_combout\ = (\inst29|Mux63~13_combout\ & (!\inst29|char_count\(1) & (\inst29|Mux21~0_combout\))) # (!\inst29|Mux63~13_combout\ & (((\inst29|Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|Mux21~0_combout\,
	datac => \inst29|Mux56~1_combout\,
	datad => \inst29|Mux63~13_combout\,
	combout => \inst29|Mux63~14_combout\);

-- Location: LCCOMB_X67_Y43_N30
\inst29|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux49~1_combout\ = (\inst29|char_count\(1) & ((\inst29|char_count\(0)) # ((!\inst29|char_count\(2))))) # (!\inst29|char_count\(1) & ((\inst29|char_count\(0) & ((\inst29|char_count\(2)) # (!\inst29|char_count\(3)))) # (!\inst29|char_count\(0) & 
-- (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux49~1_combout\);

-- Location: LCCOMB_X67_Y43_N28
\inst29|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux49~0_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(3) & (\inst29|char_count\(1) & \inst29|char_count\(2)))) # (!\inst29|char_count\(0) & (\inst29|char_count\(3) & (!\inst29|char_count\(1) & !\inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux49~0_combout\);

-- Location: LCCOMB_X67_Y43_N24
\inst29|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~5_combout\ = (\iaaanst1|s_temp~q\ & ((\inst29|char_count\(4) & (!\inst29|Mux49~1_combout\)) # (!\inst29|char_count\(4) & ((\inst29|Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_temp~q\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux49~1_combout\,
	datad => \inst29|Mux49~0_combout\,
	combout => \inst29|Mux63~5_combout\);

-- Location: LCCOMB_X67_Y45_N4
\inst29|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~6_combout\ = (!\inst29|char_count\(4) & !\inst29|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(4),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux63~6_combout\);

-- Location: LCCOMB_X67_Y45_N18
\inst29|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux28~0_combout\ = (\inst29|char_count\(2) & (\inst29|char_count\(4) & (\inst29|char_count\(0) & !\inst29|char_count\(3)))) # (!\inst29|char_count\(2) & (\inst29|char_count\(3) & (\inst29|char_count\(4) $ (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux28~0_combout\);

-- Location: LCCOMB_X67_Y45_N20
\inst29|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~7_combout\ = (\inst29|Equal1~0_combout\ & ((\inst29|Mux63~6_combout\) # ((!\inst29|char_count\(1) & \inst29|Mux28~0_combout\)))) # (!\inst29|Equal1~0_combout\ & (!\inst29|char_count\(1) & ((\inst29|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Equal1~0_combout\,
	datab => \inst29|char_count\(1),
	datac => \inst29|Mux63~6_combout\,
	datad => \inst29|Mux28~0_combout\,
	combout => \inst29|Mux63~7_combout\);

-- Location: LCCOMB_X68_Y45_N8
\inst29|Mux63~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~8_combout\ = (\inst9|Add0~0_combout\ & ((\inst29|Mux63~5_combout\) # ((!\iaaanst1|s_temp~q\ & \inst29|Mux63~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Add0~0_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux63~5_combout\,
	datad => \inst29|Mux63~7_combout\,
	combout => \inst29|Mux63~8_combout\);

-- Location: LCCOMB_X68_Y45_N16
\inst29|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux42~1_combout\ = (\inst29|char_count\(0) & ((\inst29|char_count\(1) & ((\inst29|char_count\(3)) # (!\inst29|char_count\(2)))) # (!\inst29|char_count\(1) & ((\inst29|char_count\(2)) # (!\inst29|char_count\(3)))))) # (!\inst29|char_count\(0) & 
-- (\inst29|char_count\(3) $ (((\inst29|char_count\(1)) # (\inst29|char_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux42~1_combout\);

-- Location: LCCOMB_X68_Y45_N10
\inst29|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux42~0_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(1) & (!\inst29|char_count\(2) & \inst29|char_count\(3)))) # (!\inst29|char_count\(0) & (((\inst29|char_count\(2) & !\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux42~0_combout\);

-- Location: LCCOMB_X68_Y45_N26
\inst29|Mux63~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~9_combout\ = (!\inst9|Add0~0_combout\ & ((\inst29|char_count\(4) & (!\inst29|Mux42~1_combout\)) # (!\inst29|char_count\(4) & ((\inst29|Mux42~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|Mux42~1_combout\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst29|Mux42~0_combout\,
	combout => \inst29|Mux63~9_combout\);

-- Location: LCCOMB_X68_Y45_N22
\inst29|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux15~0_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(1) & (\inst29|char_count\(2) $ (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux15~0_combout\);

-- Location: LCCOMB_X69_Y43_N12
\inst29|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux38~0_combout\ = (!\inst29|char_count\(4) & (\inst29|char_count\(1) & !\inst29|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux38~0_combout\);

-- Location: LCCOMB_X68_Y45_N24
\inst29|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux38~1_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(0) & \inst29|Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|Mux38~0_combout\,
	combout => \inst29|Mux38~1_combout\);

-- Location: LCCOMB_X68_Y45_N20
\inst29|Mux63~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~10_combout\ = (!\iaaanst1|s_temp~q\ & ((\inst29|Mux38~1_combout\) # ((\inst29|char_count\(4) & \inst29|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux15~0_combout\,
	datad => \inst29|Mux38~1_combout\,
	combout => \inst29|Mux63~10_combout\);

-- Location: LCCOMB_X68_Y45_N18
\inst29|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~11_combout\ = (\inst29|Mux63~9_combout\) # ((\inst9|Add0~0_combout\ & ((\inst29|Mux63~1_combout\) # (\inst29|Mux63~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux63~1_combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst29|Mux63~9_combout\,
	datad => \inst29|Mux63~10_combout\,
	combout => \inst29|Mux63~11_combout\);

-- Location: LCCOMB_X68_Y45_N28
\inst29|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~12_combout\ = (\iaaanst1|WideOr11~combout\ & (!\iaaanst1|WideOr10~0_combout\)) # (!\iaaanst1|WideOr11~combout\ & ((\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux63~11_combout\))) # (!\iaaanst1|WideOr10~0_combout\ & 
-- (\inst29|Mux63~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \iaaanst1|WideOr10~0_combout\,
	datac => \inst29|Mux63~8_combout\,
	datad => \inst29|Mux63~11_combout\,
	combout => \inst29|Mux63~12_combout\);

-- Location: LCCOMB_X68_Y45_N14
\inst29|Mux63~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux63~15_combout\ = (\iaaanst1|WideOr11~combout\ & ((\inst29|Mux63~12_combout\ & ((\inst29|Mux63~14_combout\))) # (!\inst29|Mux63~12_combout\ & (\inst29|Mux63~4_combout\)))) # (!\iaaanst1|WideOr11~combout\ & (((\inst29|Mux63~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst29|Mux63~4_combout\,
	datac => \inst29|Mux63~14_combout\,
	datad => \inst29|Mux63~12_combout\,
	combout => \inst29|Mux63~15_combout\);

-- Location: LCCOMB_X68_Y41_N14
\inst29|Mux62~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~8_combout\ = (\inst9|Add0~0_combout\ & (\iaaanst1|s_temp~q\ & ((\iaaanst1|WideOr11~combout\) # (\iaaanst1|WideOr10~0_combout\)))) # (!\inst9|Add0~0_combout\ & (((!\iaaanst1|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_temp~q\,
	datab => \inst9|Add0~0_combout\,
	datac => \iaaanst1|WideOr11~combout\,
	datad => \iaaanst1|WideOr10~0_combout\,
	combout => \inst29|Mux62~8_combout\);

-- Location: LCCOMB_X67_Y41_N2
\inst29|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux58~1_combout\ = (\inst29|char_count\(4) & (\inst29|char_count\(1) $ ((\inst29|char_count\(2))))) # (!\inst29|char_count\(4) & ((\inst29|char_count\(1) & (\inst29|char_count\(2) & !\inst29|char_count\(3))) # (!\inst29|char_count\(1) & 
-- (!\inst29|char_count\(2) & \inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux58~1_combout\);

-- Location: LCCOMB_X69_Y41_N28
\inst29|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux58~0_combout\ = (\inst29|char_count\(1) & (((!\inst29|char_count\(3) & \inst29|char_count\(2))))) # (!\inst29|char_count\(1) & (!\inst29|char_count\(4) & (\inst29|char_count\(3) & !\inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux58~0_combout\);

-- Location: LCCOMB_X68_Y41_N10
\inst29|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~1_combout\ = (\inst29|Mux62~8_combout\ & ((\inst29|char_count\(0) & ((\inst29|Mux58~0_combout\))) # (!\inst29|char_count\(0) & (\inst29|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|Mux62~8_combout\,
	datac => \inst29|Mux58~1_combout\,
	datad => \inst29|Mux58~0_combout\,
	combout => \inst29|Mux65~1_combout\);

-- Location: LCCOMB_X68_Y44_N20
\inst29|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~0_combout\ = (\inst9|Add0~0_combout\ & (((!\iaaanst1|WideOr11~combout\ & !\iaaanst1|WideOr10~0_combout\)) # (!\iaaanst1|s_temp~q\))) # (!\inst9|Add0~0_combout\ & (!\iaaanst1|WideOr11~combout\ & ((\iaaanst1|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|WideOr10~0_combout\,
	combout => \inst29|Mux65~0_combout\);

-- Location: LCCOMB_X67_Y43_N12
\inst29|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux37~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(0) & (\inst29|char_count\(2) $ (\inst29|char_count\(1))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(2) & (\inst29|char_count\(1) & \inst29|char_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(0),
	combout => \inst29|Mux37~0_combout\);

-- Location: LCCOMB_X68_Y41_N8
\inst29|Mux62~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~29_combout\ = (!\iaaanst1|s_currentState.TCozer~q\ & (!\inst9|Add0~0_combout\ & (\iaaanst1|WideOr11~combout\ & !\iaaanst1|s_currentState.TLevedar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \inst9|Add0~0_combout\,
	datac => \iaaanst1|WideOr11~combout\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst29|Mux62~29_combout\);

-- Location: LCCOMB_X67_Y43_N18
\inst29|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~2_combout\ = (\inst29|Mux62~29_combout\ & ((\inst29|char_count\(4) & ((\inst29|Mux49~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux37~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux62~29_combout\,
	datad => \inst29|Mux49~0_combout\,
	combout => \inst29|Mux65~2_combout\);

-- Location: LCCOMB_X68_Y41_N26
\inst29|Mux62~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~28_combout\ = (\iaaanst1|s_currentState.TCozer~q\ & ((\iaaanst1|s_temp~q\) # ((\iaaanst1|WideOr11~combout\)))) # (!\iaaanst1|s_currentState.TCozer~q\ & (\iaaanst1|s_currentState.TLevedar~q\ & ((\iaaanst1|s_temp~q\) # 
-- (\iaaanst1|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_temp~q\,
	datac => \iaaanst1|WideOr11~combout\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst29|Mux62~28_combout\);

-- Location: LCCOMB_X68_Y42_N30
\inst29|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux23~0_combout\ = (\inst29|char_count\(1) & (\inst29|char_count\(0) & (\inst29|char_count\(2) $ (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux23~0_combout\);

-- Location: LCCOMB_X68_Y42_N28
\inst29|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux23~1_combout\ = (\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datac => \inst29|Mux23~0_combout\,
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux23~1_combout\);

-- Location: LCCOMB_X67_Y41_N22
\inst29|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux51~1_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((!\inst29|char_count\(0)) # (!\inst29|char_count\(4))))) # (!\inst29|char_count\(2) & (\inst29|char_count\(3) & (\inst29|char_count\(4) $ (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux51~1_combout\);

-- Location: LCCOMB_X67_Y41_N20
\inst29|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux51~2_combout\ = (\inst29|char_count\(4) & (\inst29|char_count\(1) & (\inst29|Mux51~1_combout\))) # (!\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\) # ((\inst29|char_count\(1) & \inst29|Mux51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(1),
	datac => \inst29|Mux51~1_combout\,
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux51~2_combout\);

-- Location: LCCOMB_X68_Y41_N12
\inst29|Mux62~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~9_combout\ = (\iaaanst1|s_temp~q\) # ((!\iaaanst1|s_currentState.TCozer~q\ & !\iaaanst1|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datac => \iaaanst1|s_temp~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst29|Mux62~9_combout\);

-- Location: LCCOMB_X67_Y41_N28
\inst29|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux30~0_combout\ = (\inst29|char_count\(2) & (((\inst29|char_count\(1) & !\inst29|char_count\(3))))) # (!\inst29|char_count\(2) & (!\inst29|char_count\(0) & ((\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux30~0_combout\);

-- Location: LCCOMB_X67_Y41_N26
\inst29|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux30~1_combout\ = (\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|Mux30~0_combout\,
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux30~1_combout\);

-- Location: LCCOMB_X68_Y41_N6
\inst29|Mux62~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~11_combout\ = (!\iaaanst1|s_currentState.TExtra~q\ & (!\iaaanst1|s_currentState.TFim~q\ & ((\iaaanst1|s_currentState.TLevedar~q\) # (!\iaaanst1|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TInit~q\,
	datab => \iaaanst1|s_currentState.TLevedar~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \iaaanst1|s_currentState.TFim~q\,
	combout => \inst29|Mux62~11_combout\);

-- Location: LCCOMB_X68_Y41_N28
\inst29|Mux62~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~12_combout\ = (\iaaanst1|s_currentState.TFim~q\) # ((\iaaanst1|s_currentState.TExtra~q\) # ((\inst|dataOut~q\ & \inst29|Mux62~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \inst|dataOut~q\,
	datad => \inst29|Mux62~11_combout\,
	combout => \inst29|Mux62~12_combout\);

-- Location: LCCOMB_X68_Y41_N20
\inst29|Mux65~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~9_combout\ = (\inst29|char_count\(1) & (((\inst29|Mux62~11_combout\)) # (!\inst29|char_count\(0)))) # (!\inst29|char_count\(1) & ((\inst29|Mux62~11_combout\ & (\inst29|char_count\(0))) # (!\inst29|Mux62~11_combout\ & 
-- ((\inst29|Mux62~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|Mux62~11_combout\,
	datad => \inst29|Mux62~12_combout\,
	combout => \inst29|Mux65~9_combout\);

-- Location: LCCOMB_X67_Y41_N24
\inst29|Mux64~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~7_combout\ = (!\inst29|char_count\(0) & (\inst29|char_count\(1) & \inst29|char_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux64~7_combout\);

-- Location: LCCOMB_X67_Y41_N18
\inst29|Mux65~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~8_combout\ = (!\inst29|char_count\(3) & (\inst29|Mux64~7_combout\ & ((\iaaanst1|s_currentState.TFim~q\) # (\iaaanst1|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \iaaanst1|s_currentState.TFim~q\,
	datac => \iaaanst1|s_currentState.TExtra~q\,
	datad => \inst29|Mux64~7_combout\,
	combout => \inst29|Mux65~8_combout\);

-- Location: LCCOMB_X67_Y41_N8
\inst29|Mux65~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~10_combout\ = (\inst29|Mux65~8_combout\) # ((\inst29|char_count\(3) & (!\inst29|char_count\(2) & !\inst29|Mux65~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(2),
	datac => \inst29|Mux65~9_combout\,
	datad => \inst29|Mux65~8_combout\,
	combout => \inst29|Mux65~10_combout\);

-- Location: LCCOMB_X67_Y41_N4
\inst29|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~3_combout\ = (\inst29|char_count\(3) & ((\inst29|char_count\(1) & ((\inst29|Mux62~12_combout\))) # (!\inst29|char_count\(1) & (!\inst29|char_count\(0) & !\inst29|Mux62~12_combout\)))) # (!\inst29|char_count\(3) & (\inst29|char_count\(0) & 
-- ((\inst29|Mux62~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux62~12_combout\,
	combout => \inst29|Mux65~3_combout\);

-- Location: LCCOMB_X67_Y41_N0
\inst29|Mux65~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~5_combout\ = (\inst29|char_count\(2) & ((\inst29|char_count\(1) & ((!\inst29|char_count\(3)))) # (!\inst29|char_count\(1) & (!\inst29|char_count\(0) & \inst29|char_count\(3))))) # (!\inst29|char_count\(2) & ((\inst29|char_count\(3) & 
-- ((\inst29|char_count\(1)))) # (!\inst29|char_count\(3) & (\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux65~5_combout\);

-- Location: LCCOMB_X67_Y41_N14
\inst29|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~6_combout\ = \inst29|Mux65~5_combout\ $ (((!\inst29|char_count\(1) & !\inst29|Mux62~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(1),
	datac => \inst29|Mux62~11_combout\,
	datad => \inst29|Mux65~5_combout\,
	combout => \inst29|Mux65~6_combout\);

-- Location: LCCOMB_X67_Y41_N6
\inst29|Mux65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~4_combout\ = (((\inst29|char_count\(1) & \inst29|Mux62~12_combout\)) # (!\inst29|char_count\(0))) # (!\inst29|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux62~12_combout\,
	combout => \inst29|Mux65~4_combout\);

-- Location: LCCOMB_X67_Y41_N16
\inst29|Mux65~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~7_combout\ = (\inst29|Mux65~6_combout\ & ((\inst29|Mux62~11_combout\ & ((\inst29|Mux65~4_combout\))) # (!\inst29|Mux62~11_combout\ & (\inst29|Mux65~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~11_combout\,
	datab => \inst29|Mux65~3_combout\,
	datac => \inst29|Mux65~6_combout\,
	datad => \inst29|Mux65~4_combout\,
	combout => \inst29|Mux65~7_combout\);

-- Location: LCCOMB_X67_Y41_N10
\inst29|Mux65~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~11_combout\ = (\inst29|char_count\(4) & ((\inst29|Mux65~7_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux65~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datac => \inst29|Mux65~10_combout\,
	datad => \inst29|Mux65~7_combout\,
	combout => \inst29|Mux65~11_combout\);

-- Location: LCCOMB_X67_Y41_N12
\inst29|Mux65~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~12_combout\ = (\inst29|Mux62~9_combout\ & ((\inst29|Mux62~28_combout\) # ((\inst29|Mux65~11_combout\)))) # (!\inst29|Mux62~9_combout\ & (!\inst29|Mux62~28_combout\ & (\inst29|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~9_combout\,
	datab => \inst29|Mux62~28_combout\,
	datac => \inst29|Mux30~1_combout\,
	datad => \inst29|Mux65~11_combout\,
	combout => \inst29|Mux65~12_combout\);

-- Location: LCCOMB_X67_Y41_N30
\inst29|Mux65~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~13_combout\ = (\inst29|Mux62~28_combout\ & ((\inst29|Mux65~12_combout\ & ((\inst29|Mux51~2_combout\))) # (!\inst29|Mux65~12_combout\ & (\inst29|Mux23~1_combout\)))) # (!\inst29|Mux62~28_combout\ & (((\inst29|Mux65~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~28_combout\,
	datab => \inst29|Mux23~1_combout\,
	datac => \inst29|Mux51~2_combout\,
	datad => \inst29|Mux65~12_combout\,
	combout => \inst29|Mux65~13_combout\);

-- Location: LCCOMB_X68_Y44_N18
\inst29|Mux65~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux65~14_combout\ = (\inst29|Mux65~1_combout\) # ((\inst29|Mux65~2_combout\) # ((\inst29|Mux65~0_combout\ & \inst29|Mux65~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux65~1_combout\,
	datab => \inst29|Mux65~0_combout\,
	datac => \inst29|Mux65~2_combout\,
	datad => \inst29|Mux65~13_combout\,
	combout => \inst29|Mux65~14_combout\);

-- Location: LCCOMB_X68_Y41_N24
\inst29|Mux62~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~24_combout\ = (!\iaaanst1|s_currentState.TCozer~q\ & (!\iaaanst1|s_currentState.TLevedar~q\ & ((\iaaanst1|s_currentState.TExtra~q\) # (\iaaanst1|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TCozer~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \iaaanst1|s_currentState.TFim~q\,
	datad => \iaaanst1|s_currentState.TLevedar~q\,
	combout => \inst29|Mux62~24_combout\);

-- Location: LCCOMB_X69_Y43_N10
\inst29|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux43~0_combout\ = (\inst29|char_count\(3) & ((\inst29|char_count\(4) & (!\inst29|char_count\(1))) # (!\inst29|char_count\(4) & ((!\inst29|char_count\(2)))))) # (!\inst29|char_count\(3) & ((\inst29|char_count\(2) & ((!\inst29|char_count\(4)))) # 
-- (!\inst29|char_count\(2) & (\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux43~0_combout\);

-- Location: LCCOMB_X69_Y43_N16
\inst29|Mux64~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~12_combout\ = (\inst29|char_count\(0) & (((!\inst29|char_count\(2) & \inst29|Mux38~0_combout\)))) # (!\inst29|char_count\(0) & (\inst29|Mux43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux43~0_combout\,
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|Mux38~0_combout\,
	combout => \inst29|Mux64~12_combout\);

-- Location: LCCOMB_X68_Y43_N6
\inst29|Mux64~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~13_combout\ = (\inst29|Mux62~24_combout\ & \inst29|Mux64~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|Mux62~24_combout\,
	datad => \inst29|Mux64~12_combout\,
	combout => \inst29|Mux64~13_combout\);

-- Location: LCCOMB_X67_Y43_N8
\inst29|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux29~0_combout\ = (\inst29|char_count\(0) & ((\inst29|char_count\(1) & (!\inst29|char_count\(3) & \inst29|char_count\(2))) # (!\inst29|char_count\(1) & (\inst29|char_count\(3) & !\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux29~0_combout\);

-- Location: LCCOMB_X67_Y43_N26
\inst29|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux50~0_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((!\inst29|char_count\(0))))) # (!\inst29|char_count\(2) & ((\inst29|char_count\(3) & ((!\inst29|char_count\(0)))) # (!\inst29|char_count\(3) & (\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(0),
	combout => \inst29|Mux50~0_combout\);

-- Location: LCCOMB_X67_Y43_N14
\inst29|Mux64~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~10_combout\ = (\inst29|char_count\(4) & (\iaaanst1|s_temp~q\ & ((\inst29|Mux50~0_combout\)))) # (!\inst29|char_count\(4) & (((\inst29|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_temp~q\,
	datab => \inst29|Mux29~0_combout\,
	datac => \inst29|Mux50~0_combout\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux64~10_combout\);

-- Location: LCCOMB_X67_Y42_N26
\inst29|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux57~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(0) & ((!\inst29|char_count\(2)) # (!\inst29|char_count\(1))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(0) & (\inst29|char_count\(1) $ (\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux57~0_combout\);

-- Location: LCCOMB_X67_Y42_N20
\inst29|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux57~1_combout\ = (!\inst29|char_count\(1) & ((\inst29|char_count\(3) & (!\inst29|char_count\(0) & !\inst29|char_count\(2))) # (!\inst29|char_count\(3) & (\inst29|char_count\(0) & \inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux57~1_combout\);

-- Location: LCCOMB_X67_Y42_N6
\inst29|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux57~2_combout\ = (\inst29|char_count\(4) & (\inst29|Mux57~0_combout\)) # (!\inst29|char_count\(4) & ((\inst29|Mux57~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux57~0_combout\,
	datad => \inst29|Mux57~1_combout\,
	combout => \inst29|Mux57~2_combout\);

-- Location: LCCOMB_X68_Y43_N26
\inst29|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux16~0_combout\ = (\inst29|char_count\(1) & (\inst29|char_count\(2) & (\inst29|char_count\(0) $ (!\inst29|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux16~0_combout\);

-- Location: LCCOMB_X68_Y43_N24
\inst29|Mux64~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~8_combout\ = (\inst|dataOut~q\ & (((\inst29|Mux16~0_combout\)))) # (!\inst|dataOut~q\ & (!\inst29|char_count\(4) & ((\inst29|Mux64~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst|dataOut~q\,
	datac => \inst29|Mux16~0_combout\,
	datad => \inst29|Mux64~7_combout\,
	combout => \inst29|Mux64~8_combout\);

-- Location: LCCOMB_X68_Y43_N10
\inst29|Mux64~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~9_combout\ = (\iaaanst1|s_temp~q\ & (((\inst29|Mux57~2_combout\)))) # (!\iaaanst1|s_temp~q\ & (!\inst29|char_count\(3) & ((\inst29|Mux64~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_temp~q\,
	datab => \inst29|char_count\(3),
	datac => \inst29|Mux57~2_combout\,
	datad => \inst29|Mux64~8_combout\,
	combout => \inst29|Mux64~9_combout\);

-- Location: LCCOMB_X68_Y43_N4
\inst29|Mux64~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~11_combout\ = (\inst9|Add0~0_combout\ & ((\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux64~9_combout\))) # (!\iaaanst1|WideOr10~0_combout\ & (\inst29|Mux64~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux64~10_combout\,
	datab => \iaaanst1|WideOr10~0_combout\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst29|Mux64~9_combout\,
	combout => \inst29|Mux64~11_combout\);

-- Location: LCCOMB_X68_Y43_N22
\inst29|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux36~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(0) & ((!\inst29|char_count\(2))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(2) & (\inst29|char_count\(0) $ (\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux36~0_combout\);

-- Location: LCCOMB_X68_Y43_N20
\inst29|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux36~1_combout\ = (\inst29|Mux36~0_combout\ & !\inst29|char_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|Mux36~0_combout\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux36~1_combout\);

-- Location: LCCOMB_X68_Y43_N14
\inst29|Mux64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~5_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst9|Add0~0_combout\ & (\inst29|Mux57~2_combout\)) # (!\inst9|Add0~0_combout\ & ((\inst29|Mux36~1_combout\))))) # (!\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst29|Mux57~2_combout\,
	datad => \inst29|Mux36~1_combout\,
	combout => \inst29|Mux64~5_combout\);

-- Location: LCCOMB_X68_Y43_N8
\inst29|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux1~0_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(1) & (\inst29|char_count\(3) $ (\inst29|char_count\(2))))) # (!\inst29|char_count\(0) & (!\inst29|char_count\(3) & (!\inst29|char_count\(1) & \inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y42_N0
\inst29|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux1~1_combout\ = (\inst29|char_count\(1) & ((\inst29|char_count\(3)) # (!\inst29|char_count\(2)))) # (!\inst29|char_count\(1) & ((\inst29|char_count\(2)) # (!\inst29|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux1~1_combout\);

-- Location: LCCOMB_X68_Y43_N18
\inst29|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~2_combout\ = (!\inst|dataOut~q\ & ((\inst29|char_count\(4) & (\inst29|Mux1~0_combout\)) # (!\inst29|char_count\(4) & ((!\inst29|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst|dataOut~q\,
	datac => \inst29|Mux1~0_combout\,
	datad => \inst29|Mux1~1_combout\,
	combout => \inst29|Mux64~2_combout\);

-- Location: LCCOMB_X68_Y43_N16
\inst29|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux8~0_combout\ = (\inst29|char_count\(1) & (\inst29|char_count\(2) $ (((!\inst29|char_count\(0) & \inst29|char_count\(4)))))) # (!\inst29|char_count\(1) & (!\inst29|char_count\(0) & (\inst29|char_count\(4) & \inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux8~0_combout\);

-- Location: LCCOMB_X69_Y42_N0
\inst29|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~0_combout\ = (!\inst29|char_count\(1) & (!\inst29|char_count\(2) & (\inst29|char_count\(3) & !\inst29|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux61~0_combout\);

-- Location: LCCOMB_X68_Y43_N30
\inst29|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~3_combout\ = (\inst|dataOut~q\ & ((\inst29|Mux61~0_combout\) # ((\inst29|Mux8~0_combout\ & !\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux8~0_combout\,
	datab => \inst|dataOut~q\,
	datac => \inst29|Mux61~0_combout\,
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux64~3_combout\);

-- Location: LCCOMB_X68_Y42_N2
\inst29|Mux64~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~15_combout\ = (\inst29|char_count\(4) & (((!\inst29|char_count\(3) & \inst29|Equal1~0_combout\)))) # (!\inst29|char_count\(4) & (\inst29|Mux53~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux53~1_combout\,
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(4),
	datad => \inst29|Equal1~0_combout\,
	combout => \inst29|Mux64~15_combout\);

-- Location: LCCOMB_X68_Y43_N28
\inst29|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~4_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux64~2_combout\) # ((\inst29|Mux64~3_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux64~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|Mux64~2_combout\,
	datac => \inst29|Mux64~3_combout\,
	datad => \inst29|Mux64~15_combout\,
	combout => \inst29|Mux64~4_combout\);

-- Location: LCCOMB_X68_Y43_N12
\inst29|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~6_combout\ = (\iaaanst1|s_temp~q\ & (((\inst29|Mux64~5_combout\)))) # (!\iaaanst1|s_temp~q\ & ((\inst9|Add0~0_combout\ & ((\inst29|Mux64~4_combout\))) # (!\inst9|Add0~0_combout\ & (\inst29|Mux64~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_temp~q\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst29|Mux64~5_combout\,
	datad => \inst29|Mux64~4_combout\,
	combout => \inst29|Mux64~6_combout\);

-- Location: LCCOMB_X68_Y43_N0
\inst29|Mux64~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux64~14_combout\ = (\iaaanst1|WideOr11~combout\ & (((\inst29|Mux64~6_combout\)))) # (!\iaaanst1|WideOr11~combout\ & ((\inst29|Mux64~13_combout\) # ((\inst29|Mux64~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux64~13_combout\,
	datab => \iaaanst1|WideOr11~combout\,
	datac => \inst29|Mux64~11_combout\,
	datad => \inst29|Mux64~6_combout\,
	combout => \inst29|Mux64~14_combout\);

-- Location: LCCOMB_X69_Y43_N22
\inst29|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux55~0_combout\ = (\inst29|char_count\(1) & (((\inst29|char_count\(2) & !\inst29|char_count\(3))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(0) & (!\inst29|char_count\(2) & \inst29|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux55~0_combout\);

-- Location: LCCOMB_X67_Y45_N0
\inst29|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux55~1_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(2) & (\inst29|char_count\(0) $ (!\inst29|char_count\(1))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(2) $ (((!\inst29|char_count\(0) & \inst29|char_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux55~1_combout\);

-- Location: LCCOMB_X67_Y44_N12
\inst29|Mux62~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~27_combout\ = (\inst29|Mux62~8_combout\ & ((\inst29|char_count\(4) & ((\inst29|Mux55~1_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux55~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux62~8_combout\,
	datad => \inst29|Mux55~1_combout\,
	combout => \inst29|Mux62~27_combout\);

-- Location: LCCOMB_X68_Y42_N26
\inst29|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux34~0_combout\ = (\inst29|char_count\(4) & (\inst29|char_count\(1) & ((!\inst29|char_count\(3))))) # (!\inst29|char_count\(4) & ((\inst29|char_count\(0) & ((!\inst29|char_count\(3)))) # (!\inst29|char_count\(0) & (!\inst29|char_count\(1) & 
-- \inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux34~0_combout\);

-- Location: LCCOMB_X68_Y44_N24
\inst29|Mux62~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~25_combout\ = (\inst29|char_count\(2) & ((\inst29|Mux34~0_combout\) # ((\inst29|char_count\(4) & \inst29|Mux51~0_combout\)))) # (!\inst29|char_count\(2) & (\inst29|char_count\(4) & ((\inst29|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux34~0_combout\,
	datad => \inst29|Mux51~0_combout\,
	combout => \inst29|Mux62~25_combout\);

-- Location: LCCOMB_X68_Y44_N14
\inst29|Mux62~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~26_combout\ = (\iaaanst1|WideOr11~combout\ & (\inst29|Mux62~24_combout\ & (!\inst29|Mux62~8_combout\ & \inst29|Mux62~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst29|Mux62~24_combout\,
	datac => \inst29|Mux62~8_combout\,
	datad => \inst29|Mux62~25_combout\,
	combout => \inst29|Mux62~26_combout\);

-- Location: LCCOMB_X67_Y45_N26
\inst29|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux48~1_combout\ = (\inst29|char_count\(0) & (((\inst29|char_count\(3) & \inst29|char_count\(4))))) # (!\inst29|char_count\(0) & ((\inst29|char_count\(4) & (\inst29|char_count\(1))) # (!\inst29|char_count\(4) & ((\inst29|char_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux48~1_combout\);

-- Location: LCCOMB_X67_Y45_N16
\inst29|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux48~2_combout\ = (\inst29|Mux48~0_combout\) # ((!\inst29|char_count\(2) & \inst29|Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datac => \inst29|Mux48~1_combout\,
	datad => \inst29|Mux48~0_combout\,
	combout => \inst29|Mux48~2_combout\);

-- Location: LCCOMB_X67_Y45_N14
\inst29|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux27~1_combout\ = (\inst29|char_count\(2) & (\inst29|char_count\(4) & (\inst29|char_count\(1) & !\inst29|char_count\(3)))) # (!\inst29|char_count\(2) & (\inst29|char_count\(3) & ((!\inst29|char_count\(1)) # (!\inst29|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux27~1_combout\);

-- Location: LCCOMB_X67_Y45_N28
\inst29|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux27~2_combout\ = (\inst29|Equal1~0_combout\ & ((\inst29|Mux27~0_combout\) # ((!\inst29|char_count\(0) & \inst29|Mux27~1_combout\)))) # (!\inst29|Equal1~0_combout\ & (!\inst29|char_count\(0) & (\inst29|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Equal1~0_combout\,
	datab => \inst29|char_count\(0),
	datac => \inst29|Mux27~1_combout\,
	datad => \inst29|Mux27~0_combout\,
	combout => \inst29|Mux27~2_combout\);

-- Location: LCCOMB_X66_Y42_N24
\inst29|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux20~0_combout\ = (\inst29|char_count\(4) & (((\inst29|char_count\(2) & !\inst29|char_count\(3))))) # (!\inst29|char_count\(4) & (\inst29|char_count\(0) & (\inst29|char_count\(2) $ (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux20~0_combout\);

-- Location: LCCOMB_X67_Y44_N16
\inst29|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux20~1_combout\ = (\inst29|Mux51~0_combout\ & ((\inst29|char_count\(4)) # ((\inst29|char_count\(1) & \inst29|Mux20~0_combout\)))) # (!\inst29|Mux51~0_combout\ & (((\inst29|char_count\(1) & \inst29|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux51~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux20~0_combout\,
	combout => \inst29|Mux20~1_combout\);

-- Location: LCCOMB_X67_Y44_N30
\inst29|Mux62~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~10_combout\ = (\inst29|Mux62~28_combout\ & ((\inst29|Mux62~9_combout\) # ((\inst29|Mux20~1_combout\)))) # (!\inst29|Mux62~28_combout\ & (!\inst29|Mux62~9_combout\ & (\inst29|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~28_combout\,
	datab => \inst29|Mux62~9_combout\,
	datac => \inst29|Mux27~2_combout\,
	datad => \inst29|Mux20~1_combout\,
	combout => \inst29|Mux62~10_combout\);

-- Location: LCCOMB_X68_Y41_N18
\inst29|Mux62~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~32_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(1) & ((\iaaanst1|s_currentState.TFim~q\) # (\iaaanst1|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|s_currentState.TFim~q\,
	datab => \iaaanst1|s_currentState.TExtra~q\,
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(1),
	combout => \inst29|Mux62~32_combout\);

-- Location: LCCOMB_X67_Y44_N0
\inst29|Mux62~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~13_combout\ = (\inst29|char_count\(1) & (!\inst29|Mux62~12_combout\ & ((!\inst29|char_count\(0)) # (!\inst29|Mux62~11_combout\)))) # (!\inst29|char_count\(1) & (\inst29|Mux62~12_combout\ & (\inst29|Mux62~11_combout\ $ 
-- (\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~11_combout\,
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux62~12_combout\,
	combout => \inst29|Mux62~13_combout\);

-- Location: LCCOMB_X67_Y44_N22
\inst29|Mux62~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~33_combout\ = (!\inst29|char_count\(3) & ((\inst29|char_count\(4) & ((\inst29|Mux62~13_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux62~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux62~32_combout\,
	datad => \inst29|Mux62~13_combout\,
	combout => \inst29|Mux62~33_combout\);

-- Location: LCCOMB_X67_Y44_N8
\inst29|Mux62~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~17_combout\ = (\inst29|char_count\(1) & (((\inst29|char_count\(4)) # (!\inst29|Mux62~11_combout\)))) # (!\inst29|char_count\(1) & (\inst29|char_count\(0) & ((!\inst29|Mux62~11_combout\) # (!\inst29|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux62~11_combout\,
	combout => \inst29|Mux62~17_combout\);

-- Location: LCCOMB_X67_Y44_N26
\inst29|Mux62~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~14_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(4) $ (((\inst29|char_count\(1) & \inst29|Mux62~11_combout\))))) # (!\inst29|char_count\(0) & ((\inst29|char_count\(1) & ((!\inst29|Mux62~11_combout\) # (!\inst29|char_count\(4)))) 
-- # (!\inst29|char_count\(1) & ((\inst29|Mux62~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(4),
	datad => \inst29|Mux62~11_combout\,
	combout => \inst29|Mux62~14_combout\);

-- Location: LCCOMB_X67_Y44_N24
\inst29|Mux62~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~15_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(1) & (\inst29|char_count\(4) & \inst29|Mux62~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(4),
	datad => \inst29|Mux62~11_combout\,
	combout => \inst29|Mux62~15_combout\);

-- Location: LCCOMB_X67_Y44_N2
\inst29|Mux62~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~16_combout\ = (\inst29|char_count\(3) & ((\inst29|Mux62~12_combout\) # ((!\inst29|Mux62~14_combout\)))) # (!\inst29|char_count\(3) & (!\inst29|Mux62~12_combout\ & ((\inst29|Mux62~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|Mux62~12_combout\,
	datac => \inst29|Mux62~14_combout\,
	datad => \inst29|Mux62~15_combout\,
	combout => \inst29|Mux62~16_combout\);

-- Location: LCCOMB_X67_Y44_N14
\inst29|Mux62~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~18_combout\ = (\inst29|Mux62~12_combout\ & ((\inst29|Mux62~17_combout\) # (!\inst29|Mux62~16_combout\))) # (!\inst29|Mux62~12_combout\ & ((\inst29|Mux62~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|Mux62~12_combout\,
	datac => \inst29|Mux62~17_combout\,
	datad => \inst29|Mux62~16_combout\,
	combout => \inst29|Mux62~18_combout\);

-- Location: LCCOMB_X67_Y44_N6
\inst29|Mux62~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~21_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(4) & ((\inst29|char_count\(1)) # (\inst29|Mux62~11_combout\)))) # (!\inst29|char_count\(0) & (\inst29|char_count\(1) & ((\inst29|char_count\(4)) # (!\inst29|Mux62~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(4),
	datac => \inst29|char_count\(1),
	datad => \inst29|Mux62~11_combout\,
	combout => \inst29|Mux62~21_combout\);

-- Location: LCCOMB_X68_Y44_N30
\inst29|Mux62~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~19_combout\ = (!\inst29|char_count\(0) & (\inst29|char_count\(3) & !\inst29|char_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(3),
	datad => \inst29|char_count\(1),
	combout => \inst29|Mux62~19_combout\);

-- Location: LCCOMB_X67_Y44_N4
\inst29|Mux62~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~20_combout\ = (\inst29|char_count\(4) & (\inst29|Mux62~19_combout\ & ((\inst29|Mux62~11_combout\) # (\inst29|Mux62~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~11_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux62~19_combout\,
	datad => \inst29|Mux62~12_combout\,
	combout => \inst29|Mux62~20_combout\);

-- Location: LCCOMB_X67_Y44_N28
\inst29|Mux62~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~22_combout\ = (\inst29|char_count\(2) & (((\inst29|Mux62~20_combout\)))) # (!\inst29|char_count\(2) & ((\inst29|Mux62~21_combout\) # ((\inst29|Mux62~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~21_combout\,
	datab => \inst29|char_count\(2),
	datac => \inst29|Mux62~20_combout\,
	datad => \inst29|Mux62~16_combout\,
	combout => \inst29|Mux62~22_combout\);

-- Location: LCCOMB_X67_Y44_N10
\inst29|Mux62~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~23_combout\ = (\inst29|char_count\(2) & ((\inst29|Mux62~33_combout\) # ((\inst29|Mux62~22_combout\)))) # (!\inst29|char_count\(2) & (((\inst29|Mux62~18_combout\ & \inst29|Mux62~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~33_combout\,
	datab => \inst29|char_count\(2),
	datac => \inst29|Mux62~18_combout\,
	datad => \inst29|Mux62~22_combout\,
	combout => \inst29|Mux62~23_combout\);

-- Location: LCCOMB_X67_Y44_N18
\inst29|Mux62~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~30_combout\ = (\inst29|Mux62~9_combout\ & ((\inst29|Mux62~10_combout\ & (\inst29|Mux48~2_combout\)) # (!\inst29|Mux62~10_combout\ & ((\inst29|Mux62~23_combout\))))) # (!\inst29|Mux62~9_combout\ & (((\inst29|Mux62~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~9_combout\,
	datab => \inst29|Mux48~2_combout\,
	datac => \inst29|Mux62~10_combout\,
	datad => \inst29|Mux62~23_combout\,
	combout => \inst29|Mux62~30_combout\);

-- Location: LCCOMB_X67_Y44_N20
\inst29|Mux62~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux62~31_combout\ = (\inst29|Mux62~27_combout\) # ((\inst29|Mux62~26_combout\) # ((\inst29|Mux65~0_combout\ & \inst29|Mux62~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~27_combout\,
	datab => \inst29|Mux65~0_combout\,
	datac => \inst29|Mux62~26_combout\,
	datad => \inst29|Mux62~30_combout\,
	combout => \inst29|Mux62~31_combout\);

-- Location: LCCOMB_X70_Y42_N30
\inst29|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux33~0_combout\ = (!\inst29|char_count\(3) & (\inst29|char_count\(0) & (\inst29|char_count\(1) $ (\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux33~0_combout\);

-- Location: LCCOMB_X69_Y42_N16
\inst29|Mux61~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~12_combout\ = (\inst29|Mux63~13_combout\ & (((\inst29|char_count\(4))) # (!\inst29|Mux33~0_combout\))) # (!\inst29|Mux63~13_combout\ & (((!\inst29|Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux33~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux63~13_combout\,
	datad => \inst29|Mux53~2_combout\,
	combout => \inst29|Mux61~12_combout\);

-- Location: LCCOMB_X70_Y42_N6
\inst29|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~1_combout\ = (!\iaaanst1|s_temp~q\ & ((\inst29|Mux61~0_combout\) # ((!\inst29|char_count\(3) & \inst29|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux61~0_combout\,
	datad => \inst29|Mux4~0_combout\,
	combout => \inst29|Mux61~1_combout\);

-- Location: LCCOMB_X70_Y42_N16
\inst29|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~2_combout\ = (\inst9|Add0~0_combout\ & (!\inst29|Mux61~1_combout\ & ((!\iaaanst1|s_temp~q\) # (!\inst29|Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux53~2_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst29|Mux61~1_combout\,
	combout => \inst29|Mux61~2_combout\);

-- Location: LCCOMB_X70_Y42_N12
\inst29|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~3_combout\ = (\inst29|Mux61~2_combout\) # ((!\inst9|Add0~0_combout\ & ((\inst29|char_count\(4)) # (!\inst29|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux33~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst9|Add0~0_combout\,
	datad => \inst29|Mux61~2_combout\,
	combout => \inst29|Mux61~3_combout\);

-- Location: LCCOMB_X69_Y42_N26
\inst29|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~4_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(4))) # (!\inst29|char_count\(0) & (\inst29|char_count\(4) & \iaaanst1|s_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(4),
	datac => \iaaanst1|s_temp~q\,
	combout => \inst29|Mux61~4_combout\);

-- Location: LCCOMB_X69_Y42_N20
\inst29|Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~5_combout\ = (\inst29|char_count\(2) & (((\inst29|char_count\(3)) # (\inst29|char_count\(4))))) # (!\inst29|char_count\(2) & (\inst29|char_count\(4) & (\inst29|char_count\(1) $ (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux61~5_combout\);

-- Location: LCCOMB_X69_Y42_N6
\inst29|Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~6_combout\ = (\inst9|Add0~0_combout\ & ((\inst29|Mux61~4_combout\ & ((\inst29|char_count\(2)) # (!\inst29|Mux61~5_combout\))) # (!\inst29|Mux61~4_combout\ & ((\inst29|Mux61~5_combout\) # (!\inst29|char_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux61~4_combout\,
	datab => \inst29|Mux61~5_combout\,
	datac => \inst29|char_count\(2),
	datad => \inst9|Add0~0_combout\,
	combout => \inst29|Mux61~6_combout\);

-- Location: LCCOMB_X68_Y42_N10
\inst29|Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~8_combout\ = (\inst29|char_count\(0) & (\inst29|char_count\(3) $ (((\inst29|char_count\(2)) # (\inst29|char_count\(1)))))) # (!\inst29|char_count\(0) & (\inst29|char_count\(3) & (\inst29|char_count\(2) $ (\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(1),
	combout => \inst29|Mux61~8_combout\);

-- Location: LCCOMB_X68_Y42_N24
\inst29|Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~7_combout\ = (\inst29|char_count\(1) & ((\inst29|char_count\(2) & (\inst29|char_count\(0) & !\inst29|char_count\(3))) # (!\inst29|char_count\(2) & (!\inst29|char_count\(0))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(3) & 
-- ((!\inst29|char_count\(0)) # (!\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux61~7_combout\);

-- Location: LCCOMB_X68_Y42_N4
\inst29|Mux61~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~9_combout\ = (\inst29|Mux61~7_combout\ & (!\inst9|Add0~0_combout\ & ((\inst29|char_count\(4)) # (!\inst29|Mux61~8_combout\)))) # (!\inst29|Mux61~7_combout\ & (\inst29|Mux61~8_combout\ & (!\inst29|char_count\(4) & \inst9|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux61~8_combout\,
	datab => \inst29|Mux61~7_combout\,
	datac => \inst29|char_count\(4),
	datad => \inst9|Add0~0_combout\,
	combout => \inst29|Mux61~9_combout\);

-- Location: LCCOMB_X68_Y42_N0
\inst29|Mux61~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~10_combout\ = (\iaaanst1|s_temp~q\ & ((\inst9|Add0~0_combout\ & (!\inst29|Mux53~2_combout\)) # (!\inst9|Add0~0_combout\ & ((!\inst29|Mux61~9_combout\))))) # (!\iaaanst1|s_temp~q\ & (((!\inst29|Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux53~2_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux61~9_combout\,
	datad => \inst9|Add0~0_combout\,
	combout => \inst29|Mux61~10_combout\);

-- Location: LCCOMB_X68_Y44_N28
\inst29|Mux61~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~11_combout\ = (\iaaanst1|WideOr11~combout\ & (((!\iaaanst1|WideOr10~0_combout\)))) # (!\iaaanst1|WideOr11~combout\ & ((\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux61~10_combout\))) # (!\iaaanst1|WideOr10~0_combout\ & 
-- (\inst29|Mux61~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst29|Mux61~6_combout\,
	datac => \inst29|Mux61~10_combout\,
	datad => \iaaanst1|WideOr10~0_combout\,
	combout => \inst29|Mux61~11_combout\);

-- Location: LCCOMB_X69_Y44_N8
\inst29|Mux61~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux61~13_combout\ = (\iaaanst1|WideOr11~combout\ & ((\inst29|Mux61~11_combout\ & (\inst29|Mux61~12_combout\)) # (!\inst29|Mux61~11_combout\ & ((\inst29|Mux61~3_combout\))))) # (!\iaaanst1|WideOr11~combout\ & (((\inst29|Mux61~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst29|Mux61~12_combout\,
	datac => \inst29|Mux61~3_combout\,
	datad => \inst29|Mux61~11_combout\,
	combout => \inst29|Mux61~13_combout\);

-- Location: LCCOMB_X69_Y44_N10
\inst29|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~0_combout\ = (!\inst29|Mux62~31_combout\ & (!\inst29|Mux61~13_combout\ & !\inst29|Mux60~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux62~31_combout\,
	datab => \inst29|Mux61~13_combout\,
	datad => \inst29|Mux60~9_combout\,
	combout => \inst29|Selector4~0_combout\);

-- Location: LCCOMB_X69_Y44_N12
\inst29|data_bus_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|data_bus_value~0_combout\ = (\inst29|Mux63~15_combout\ & (\inst29|Selector4~0_combout\ & ((\inst29|Mux65~14_combout\) # (\inst29|Mux64~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux63~15_combout\,
	datab => \inst29|Mux65~14_combout\,
	datac => \inst29|Mux64~14_combout\,
	datad => \inst29|Selector4~0_combout\,
	combout => \inst29|data_bus_value~0_combout\);

-- Location: LCCOMB_X69_Y44_N28
\inst29|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector3~1_combout\ = (\inst29|Selector3~0_combout\) # ((\inst29|state.print_string~q\ & ((\inst29|Mux60~9_combout\) # (\inst29|data_bus_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector3~0_combout\,
	datab => \inst29|Mux60~9_combout\,
	datac => \inst29|state.print_string~q\,
	datad => \inst29|data_bus_value~0_combout\,
	combout => \inst29|Selector3~1_combout\);

-- Location: FF_X69_Y44_N29
\inst29|data_bus_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector3~1_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(6));

-- Location: LCCOMB_X72_Y44_N18
\inst29|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~2_combout\ = (!\inst29|state.display_on~q\ & !\inst29|state.display_off~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|state.display_on~q\,
	datad => \inst29|state.display_off~q\,
	combout => \inst29|Selector4~2_combout\);

-- Location: LCCOMB_X68_Y44_N16
\inst29|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~3_combout\ = (\inst29|Selector4~1_combout\ & (!\inst29|state.print_string~q\ & (!\inst29|state.display_clear~q\ & \inst29|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector4~1_combout\,
	datab => \inst29|state.print_string~q\,
	datac => \inst29|state.display_clear~q\,
	datad => \inst29|Selector4~2_combout\,
	combout => \inst29|Selector4~3_combout\);

-- Location: LCCOMB_X69_Y44_N26
\inst29|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~4_combout\ = (\inst29|Selector4~0_combout\ & (((!\inst29|Mux65~14_combout\ & !\inst29|Mux64~14_combout\)) # (!\inst29|Mux63~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux63~15_combout\,
	datab => \inst29|Mux65~14_combout\,
	datac => \inst29|Mux64~14_combout\,
	datad => \inst29|Selector4~0_combout\,
	combout => \inst29|Selector4~4_combout\);

-- Location: LCCOMB_X69_Y44_N22
\inst29|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector4~5_combout\ = (!\inst29|Selector4~3_combout\ & (((!\inst29|Selector4~4_combout\ & !\inst29|Mux61~13_combout\)) # (!\inst29|state.print_string~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector4~3_combout\,
	datab => \inst29|state.print_string~q\,
	datac => \inst29|Selector4~4_combout\,
	datad => \inst29|Mux61~13_combout\,
	combout => \inst29|Selector4~5_combout\);

-- Location: LCCOMB_X70_Y44_N4
\inst29|data_bus_value[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|data_bus_value[5]~1_combout\ = (!\inst29|state.drop_lcd_e~q\ & (\inst29|clk_400hz_enable~q\ & !\inst29|state.hold~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|clk_400hz_enable~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|data_bus_value[5]~1_combout\);

-- Location: FF_X69_Y44_N23
\inst29|data_bus_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector4~5_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|data_bus_value[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(5));

-- Location: LCCOMB_X69_Y44_N16
\inst29|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector5~0_combout\ = (!\inst29|Selector4~3_combout\ & (((!\inst29|Mux62~31_combout\ & !\inst29|Selector4~4_combout\)) # (!\inst29|state.print_string~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector4~3_combout\,
	datab => \inst29|Mux62~31_combout\,
	datac => \inst29|Selector4~4_combout\,
	datad => \inst29|state.print_string~q\,
	combout => \inst29|Selector5~0_combout\);

-- Location: FF_X69_Y44_N17
\inst29|data_bus_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector5~0_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|data_bus_value[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(4));

-- Location: LCCOMB_X72_Y44_N2
\inst29|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector6~0_combout\ = (\inst29|state.reset3~q\) # ((\inst29|state.reset2~q\) # ((\inst29|state.func_set~q\) # (!\inst29|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.reset3~q\,
	datab => \inst29|state.reset2~q\,
	datac => \inst29|state.func_set~q\,
	datad => \inst29|Selector4~2_combout\,
	combout => \inst29|Selector6~0_combout\);

-- Location: LCCOMB_X72_Y44_N24
\inst29|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector6~1_combout\ = ((\inst29|Selector6~0_combout\) # ((!\inst29|data_bus_value\(3) & !\inst29|lcd_rs~0_combout\))) # (!\inst29|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.reset1~q\,
	datab => \inst29|data_bus_value\(3),
	datac => \inst29|lcd_rs~0_combout\,
	datad => \inst29|Selector6~0_combout\,
	combout => \inst29|Selector6~1_combout\);

-- Location: LCCOMB_X69_Y42_N30
\inst29|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux45~1_combout\ = (\inst29|char_count\(0) & (!\inst29|char_count\(2) & (\inst29|char_count\(1) & !\inst29|char_count\(3)))) # (!\inst29|char_count\(0) & ((\inst29|char_count\(3) & ((!\inst29|char_count\(1)))) # (!\inst29|char_count\(3) & 
-- (\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(0),
	datab => \inst29|char_count\(2),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux45~1_combout\);

-- Location: LCCOMB_X68_Y43_N2
\inst29|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux45~0_combout\ = (\inst29|char_count\(2) & (\inst29|char_count\(0) $ (((\inst29|char_count\(3)) # (!\inst29|char_count\(1)))))) # (!\inst29|char_count\(2) & ((\inst29|char_count\(3)) # ((\inst29|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(2),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(1),
	datad => \inst29|char_count\(0),
	combout => \inst29|Mux45~0_combout\);

-- Location: LCCOMB_X68_Y44_N6
\inst29|Mux66~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~7_combout\ = (\inst29|Mux62~24_combout\ & ((\inst29|char_count\(4) & ((\inst29|Mux45~0_combout\))) # (!\inst29|char_count\(4) & (\inst29|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|Mux62~24_combout\,
	datac => \inst29|Mux45~1_combout\,
	datad => \inst29|Mux45~0_combout\,
	combout => \inst29|Mux66~7_combout\);

-- Location: LCCOMB_X67_Y42_N12
\inst29|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux52~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(1) & (\inst29|char_count\(0) $ (\inst29|char_count\(4))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(1) & (\inst29|char_count\(0) & \inst29|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux52~0_combout\);

-- Location: LCCOMB_X67_Y42_N18
\inst29|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux52~1_combout\ = (\inst29|char_count\(4) & (((\inst29|char_count\(0))))) # (!\inst29|char_count\(4) & ((\inst29|char_count\(3)) # ((!\inst29|char_count\(1) & \inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux52~1_combout\);

-- Location: LCCOMB_X67_Y42_N8
\inst29|Mux66~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~11_combout\ = (!\iaaanst1|WideOr10~0_combout\ & ((\inst29|char_count\(2) & ((!\inst29|Mux52~1_combout\))) # (!\inst29|char_count\(2) & (\inst29|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux52~0_combout\,
	datab => \inst29|char_count\(2),
	datac => \iaaanst1|WideOr10~0_combout\,
	datad => \inst29|Mux52~1_combout\,
	combout => \inst29|Mux66~11_combout\);

-- Location: LCCOMB_X67_Y42_N4
\inst29|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux59~0_combout\ = (\inst29|char_count\(3) & (\inst29|char_count\(2) & ((\inst29|char_count\(0)) # (!\inst29|char_count\(1))))) # (!\inst29|char_count\(3) & ((\inst29|char_count\(0) & (\inst29|char_count\(1) & !\inst29|char_count\(2))) # 
-- (!\inst29|char_count\(0) & ((\inst29|char_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux59~0_combout\);

-- Location: LCCOMB_X67_Y42_N10
\inst29|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux59~1_combout\ = (\inst29|char_count\(4) & (\inst29|Mux59~0_combout\)) # (!\inst29|char_count\(4) & ((\inst29|Mux57~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux59~0_combout\,
	datad => \inst29|Mux57~1_combout\,
	combout => \inst29|Mux59~1_combout\);

-- Location: LCCOMB_X67_Y42_N22
\inst29|Mux66~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~12_combout\ = (\iaaanst1|s_temp~q\ & ((\inst29|Mux66~11_combout\) # ((\iaaanst1|WideOr10~0_combout\ & \inst29|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst29|Mux66~11_combout\,
	datad => \inst29|Mux59~1_combout\,
	combout => \inst29|Mux66~12_combout\);

-- Location: LCCOMB_X67_Y42_N2
\inst29|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux12~1_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(1) & ((!\inst29|char_count\(2))))) # (!\inst29|char_count\(3) & (\inst29|char_count\(1) & (!\inst29|char_count\(0) & \inst29|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux12~1_combout\);

-- Location: LCCOMB_X67_Y42_N28
\inst29|Mux66~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~9_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst|dataOut~q\ & ((!\inst29|Mux1~1_combout\))) # (!\inst|dataOut~q\ & (\inst29|Mux12~1_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & (\inst29|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|Mux12~1_combout\,
	datac => \inst|dataOut~q\,
	datad => \inst29|Mux1~1_combout\,
	combout => \inst29|Mux66~9_combout\);

-- Location: LCCOMB_X67_Y42_N14
\inst29|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux31~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(1) & (\inst29|char_count\(0) & !\inst29|char_count\(2)))) # (!\inst29|char_count\(3) & (\inst29|char_count\(2) & ((\inst29|char_count\(1)) # (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux31~0_combout\);

-- Location: LCCOMB_X67_Y42_N24
\inst29|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux12~0_combout\ = (\inst29|char_count\(2) & (!\inst29|char_count\(3) & ((\inst29|char_count\(1)) # (\inst29|char_count\(0))))) # (!\inst29|char_count\(2) & (\inst29|char_count\(3) $ (((\inst29|char_count\(1) & \inst29|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(3),
	datab => \inst29|char_count\(1),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux12~0_combout\);

-- Location: LCCOMB_X67_Y42_N16
\inst29|Mux66~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~8_combout\ = (!\inst29|char_count\(4) & ((\iaaanst1|WideOr10~0_combout\ & ((\inst29|Mux12~0_combout\))) # (!\iaaanst1|WideOr10~0_combout\ & (\inst29|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux31~0_combout\,
	datad => \inst29|Mux12~0_combout\,
	combout => \inst29|Mux66~8_combout\);

-- Location: LCCOMB_X67_Y42_N30
\inst29|Mux66~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~10_combout\ = (!\iaaanst1|s_temp~q\ & ((\inst29|Mux66~8_combout\) # ((\inst29|char_count\(4) & \inst29|Mux66~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(4),
	datab => \inst29|Mux66~9_combout\,
	datac => \iaaanst1|s_temp~q\,
	datad => \inst29|Mux66~8_combout\,
	combout => \inst29|Mux66~10_combout\);

-- Location: LCCOMB_X68_Y44_N8
\inst29|Mux66~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~13_combout\ = (\inst29|Mux66~7_combout\) # ((\inst9|Add0~0_combout\ & ((\inst29|Mux66~12_combout\) # (\inst29|Mux66~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux66~7_combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst29|Mux66~12_combout\,
	datad => \inst29|Mux66~10_combout\,
	combout => \inst29|Mux66~13_combout\);

-- Location: LCCOMB_X69_Y43_N30
\inst29|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux38~2_combout\ = (\inst29|char_count\(1) & (((\inst29|char_count\(0) & !\inst29|char_count\(4))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux38~2_combout\);

-- Location: LCCOMB_X69_Y43_N0
\inst29|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux38~3_combout\ = (\inst29|char_count\(2) & (\inst29|Mux38~0_combout\ & (!\inst29|char_count\(0)))) # (!\inst29|char_count\(2) & (((\inst29|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux38~0_combout\,
	datab => \inst29|char_count\(0),
	datac => \inst29|Mux38~2_combout\,
	datad => \inst29|char_count\(2),
	combout => \inst29|Mux38~3_combout\);

-- Location: LCCOMB_X68_Y44_N10
\inst29|Mux66~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~5_combout\ = (\iaaanst1|WideOr10~0_combout\ & ((\inst9|Add0~0_combout\ & ((\inst29|Mux59~1_combout\))) # (!\inst9|Add0~0_combout\ & (\inst29|Mux38~3_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst9|Add0~0_combout\,
	datac => \inst29|Mux38~3_combout\,
	datad => \inst29|Mux59~1_combout\,
	combout => \inst29|Mux66~5_combout\);

-- Location: LCCOMB_X69_Y43_N26
\inst29|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux24~0_combout\ = (\inst29|char_count\(1) & (!\inst29|char_count\(3) & ((\inst29|char_count\(4)) # (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux24~0_combout\);

-- Location: LCCOMB_X69_Y43_N28
\inst29|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~1_combout\ = (\inst|dataOut~q\ & (((\inst29|Mux24~0_combout\)))) # (!\inst|dataOut~q\ & (!\inst29|char_count\(0) & ((\inst29|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut~q\,
	datab => \inst29|char_count\(0),
	datac => \inst29|Mux24~0_combout\,
	datad => \inst29|Mux38~0_combout\,
	combout => \inst29|Mux66~1_combout\);

-- Location: LCCOMB_X69_Y43_N2
\inst29|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux13~0_combout\ = (\inst29|char_count\(1) & (!\inst29|char_count\(4) & (\inst29|char_count\(3) $ (\inst29|char_count\(0))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(3) & ((\inst29|char_count\(4)) # (!\inst29|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(3),
	datac => \inst29|char_count\(0),
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux13~0_combout\);

-- Location: LCCOMB_X69_Y43_N8
\inst29|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~0_combout\ = (\inst29|Mux55~0_combout\ & !\inst29|char_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst29|Mux55~0_combout\,
	datad => \inst29|char_count\(4),
	combout => \inst29|Mux66~0_combout\);

-- Location: LCCOMB_X69_Y43_N14
\inst29|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux3~0_combout\ = (\inst29|char_count\(3) & (!\inst29|char_count\(1) & ((\inst29|char_count\(2))))) # (!\inst29|char_count\(3) & ((\inst29|char_count\(0)) # (\inst29|char_count\(1) $ (\inst29|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y43_N24
\inst29|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux10~0_combout\ = (\inst29|char_count\(1) & (((!\inst29|char_count\(3)) # (!\inst29|char_count\(2))))) # (!\inst29|char_count\(1) & (\inst29|char_count\(2) & ((\inst29|char_count\(0)) # (\inst29|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|char_count\(1),
	datab => \inst29|char_count\(0),
	datac => \inst29|char_count\(2),
	datad => \inst29|char_count\(3),
	combout => \inst29|Mux10~0_combout\);

-- Location: LCCOMB_X69_Y43_N20
\inst29|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~2_combout\ = (\inst29|char_count\(4) & ((\inst|dataOut~q\ & ((\inst29|Mux10~0_combout\))) # (!\inst|dataOut~q\ & (\inst29|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataOut~q\,
	datab => \inst29|char_count\(4),
	datac => \inst29|Mux3~0_combout\,
	datad => \inst29|Mux10~0_combout\,
	combout => \inst29|Mux66~2_combout\);

-- Location: LCCOMB_X69_Y43_N18
\inst29|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~3_combout\ = (\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux66~0_combout\) # (\inst29|Mux66~2_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & (\inst29|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|Mux13~0_combout\,
	datac => \inst29|Mux66~0_combout\,
	datad => \inst29|Mux66~2_combout\,
	combout => \inst29|Mux66~3_combout\);

-- Location: LCCOMB_X69_Y43_N4
\inst29|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~4_combout\ = (\iaaanst1|WideOr10~0_combout\ & (((\inst29|Mux66~3_combout\)))) # (!\iaaanst1|WideOr10~0_combout\ & ((\inst29|char_count\(2) & (\inst29|Mux66~1_combout\)) # (!\inst29|char_count\(2) & ((\inst29|Mux66~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr10~0_combout\,
	datab => \inst29|Mux66~1_combout\,
	datac => \inst29|char_count\(2),
	datad => \inst29|Mux66~3_combout\,
	combout => \inst29|Mux66~4_combout\);

-- Location: LCCOMB_X68_Y44_N0
\inst29|Mux66~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~6_combout\ = (\iaaanst1|s_temp~q\ & (\inst29|Mux66~5_combout\)) # (!\iaaanst1|s_temp~q\ & ((\inst9|Add0~0_combout\ & ((\inst29|Mux66~4_combout\))) # (!\inst9|Add0~0_combout\ & (\inst29|Mux66~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux66~5_combout\,
	datab => \iaaanst1|s_temp~q\,
	datac => \inst9|Add0~0_combout\,
	datad => \inst29|Mux66~4_combout\,
	combout => \inst29|Mux66~6_combout\);

-- Location: LCCOMB_X68_Y44_N22
\inst29|Mux66~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Mux66~14_combout\ = (\iaaanst1|WideOr11~combout\ & ((\inst29|Mux66~6_combout\))) # (!\iaaanst1|WideOr11~combout\ & (\inst29|Mux66~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datac => \inst29|Mux66~13_combout\,
	datad => \inst29|Mux66~6_combout\,
	combout => \inst29|Mux66~14_combout\);

-- Location: LCCOMB_X69_Y44_N0
\inst29|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector6~2_combout\ = (\inst29|data_bus_value~0_combout\ & ((\inst29|Mux65~14_combout\) # ((\inst29|Mux66~14_combout\) # (\inst29|Mux64~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux65~14_combout\,
	datab => \inst29|Mux66~14_combout\,
	datac => \inst29|Mux64~14_combout\,
	datad => \inst29|data_bus_value~0_combout\,
	combout => \inst29|Selector6~2_combout\);

-- Location: LCCOMB_X69_Y44_N30
\inst29|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector6~3_combout\ = (!\inst29|Selector6~1_combout\ & ((\inst29|Mux63~15_combout\ $ (!\inst29|Selector6~2_combout\)) # (!\inst29|state.print_string~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector6~1_combout\,
	datab => \inst29|state.print_string~q\,
	datac => \inst29|Mux63~15_combout\,
	datad => \inst29|Selector6~2_combout\,
	combout => \inst29|Selector6~3_combout\);

-- Location: FF_X69_Y44_N31
\inst29|data_bus_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector6~3_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(3));

-- Location: LCCOMB_X72_Y44_N14
\inst29|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector7~0_combout\ = (\inst29|state.display_on~q\) # ((\inst29|data_bus_value\(2) & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|data_bus_value\(2),
	datac => \inst29|state.display_on~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector7~0_combout\);

-- Location: LCCOMB_X68_Y44_N4
\inst29|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Add1~0_combout\ = (\inst29|Mux65~2_combout\) # ((\iaaanst1|WideOr11~combout\ & ((\inst29|Mux66~6_combout\))) # (!\iaaanst1|WideOr11~combout\ & (\inst29|Mux66~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iaaanst1|WideOr11~combout\,
	datab => \inst29|Mux65~2_combout\,
	datac => \inst29|Mux66~13_combout\,
	datad => \inst29|Mux66~6_combout\,
	combout => \inst29|Add1~0_combout\);

-- Location: LCCOMB_X68_Y44_N26
\inst29|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Add1~1_combout\ = (\inst29|Mux65~1_combout\) # ((\inst29|Add1~0_combout\) # ((\inst29|Mux65~0_combout\ & \inst29|Mux65~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux65~1_combout\,
	datab => \inst29|Mux65~0_combout\,
	datac => \inst29|Add1~0_combout\,
	datad => \inst29|Mux65~13_combout\,
	combout => \inst29|Add1~1_combout\);

-- Location: LCCOMB_X69_Y44_N2
\inst29|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector7~1_combout\ = (\inst29|state.print_string~q\ & (\inst29|Mux64~14_combout\ $ (((!\inst29|Add1~1_combout\ & \inst29|data_bus_value~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux64~14_combout\,
	datab => \inst29|state.print_string~q\,
	datac => \inst29|Add1~1_combout\,
	datad => \inst29|data_bus_value~0_combout\,
	combout => \inst29|Selector7~1_combout\);

-- Location: LCCOMB_X69_Y44_N24
\inst29|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector7~2_combout\ = (\inst29|state.mode_set~q\) # ((\inst29|Selector7~0_combout\) # (\inst29|Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.mode_set~q\,
	datac => \inst29|Selector7~0_combout\,
	datad => \inst29|Selector7~1_combout\,
	combout => \inst29|Selector7~2_combout\);

-- Location: FF_X69_Y44_N25
\inst29|data_bus_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector7~2_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(2));

-- Location: LCCOMB_X69_Y44_N20
\inst29|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector8~0_combout\ = ((\inst29|Mux66~14_combout\) # (!\inst29|Selector4~0_combout\)) # (!\inst29|Mux63~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Mux63~15_combout\,
	datab => \inst29|Mux66~14_combout\,
	datad => \inst29|Selector4~0_combout\,
	combout => \inst29|Selector8~0_combout\);

-- Location: LCCOMB_X69_Y44_N6
\inst29|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector8~1_combout\ = (\inst29|state.print_string~q\ & ((\inst29|Mux65~14_combout\ & ((\inst29|Selector8~0_combout\))) # (!\inst29|Mux65~14_combout\ & (\inst29|Mux64~14_combout\ & !\inst29|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.print_string~q\,
	datab => \inst29|Mux65~14_combout\,
	datac => \inst29|Mux64~14_combout\,
	datad => \inst29|Selector8~0_combout\,
	combout => \inst29|Selector8~1_combout\);

-- Location: LCCOMB_X69_Y44_N14
\inst29|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector8~2_combout\ = (\inst29|state.mode_set~q\) # ((\inst29|Selector8~1_combout\) # ((!\inst29|lcd_rs~0_combout\ & \inst29|data_bus_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.mode_set~q\,
	datab => \inst29|lcd_rs~0_combout\,
	datac => \inst29|data_bus_value\(1),
	datad => \inst29|Selector8~1_combout\,
	combout => \inst29|Selector8~2_combout\);

-- Location: FF_X69_Y44_N15
\inst29|data_bus_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector8~2_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(1));

-- Location: LCCOMB_X68_Y44_N12
\inst29|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector9~0_combout\ = (\inst29|state.display_clear~q\) # ((\inst29|data_bus_value\(0) & ((\inst29|state.drop_lcd_e~q\) # (\inst29|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|state.drop_lcd_e~q\,
	datab => \inst29|data_bus_value\(0),
	datac => \inst29|state.display_clear~q\,
	datad => \inst29|state.hold~q\,
	combout => \inst29|Selector9~0_combout\);

-- Location: LCCOMB_X69_Y44_N4
\inst29|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst29|Selector9~1_combout\ = (\inst29|Selector9~0_combout\) # ((\inst29|state.print_string~q\ & (\inst29|Mux66~14_combout\ $ (\inst29|data_bus_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Selector9~0_combout\,
	datab => \inst29|Mux66~14_combout\,
	datac => \inst29|state.print_string~q\,
	datad => \inst29|data_bus_value~0_combout\,
	combout => \inst29|Selector9~1_combout\);

-- Location: FF_X69_Y44_N5
\inst29|data_bus_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst29|Selector9~1_combout\,
	clrn => \inst25|pState.Init~q\,
	ena => \inst29|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|data_bus_value\(0));

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

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

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


