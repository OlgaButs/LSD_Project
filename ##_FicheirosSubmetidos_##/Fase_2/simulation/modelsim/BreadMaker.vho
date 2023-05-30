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

-- DATE "05/29/2023 12:18:32"

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

ENTITY 	BreadMakerTop IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	LCD_RS : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	LCD_ON : BUFFER std_logic;
	LCD_BLON : BUFFER std_logic;
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BreadMakerTop;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BreadMakerTop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \LCD|lcd_rs~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debouncerKEY0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncerKEY0|s_previousIn~q\ : std_logic;
SIGNAL \debouncerKEY0|Add0~1\ : std_logic;
SIGNAL \debouncerKEY0|Add0~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~3\ : std_logic;
SIGNAL \debouncerKEY0|Add0~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~5\ : std_logic;
SIGNAL \debouncerKEY0|Add0~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~7\ : std_logic;
SIGNAL \debouncerKEY0|Add0~8_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~9\ : std_logic;
SIGNAL \debouncerKEY0|Add0~10_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~11\ : std_logic;
SIGNAL \debouncerKEY0|Add0~12_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[11]~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~13\ : std_logic;
SIGNAL \debouncerKEY0|Add0~14_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~15\ : std_logic;
SIGNAL \debouncerKEY0|Add0~16_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~17\ : std_logic;
SIGNAL \debouncerKEY0|Add0~18_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~19\ : std_logic;
SIGNAL \debouncerKEY0|Add0~20_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~21\ : std_logic;
SIGNAL \debouncerKEY0|Add0~22_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~23\ : std_logic;
SIGNAL \debouncerKEY0|Add0~24_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~25\ : std_logic;
SIGNAL \debouncerKEY0|Add0~26_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~27\ : std_logic;
SIGNAL \debouncerKEY0|Add0~28_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~29\ : std_logic;
SIGNAL \debouncerKEY0|Add0~30_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~31\ : std_logic;
SIGNAL \debouncerKEY0|Add0~32_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~33\ : std_logic;
SIGNAL \debouncerKEY0|Add0~34_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[11]~29_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[11]~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~35\ : std_logic;
SIGNAL \debouncerKEY0|Add0~36_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~37\ : std_logic;
SIGNAL \debouncerKEY0|Add0~38_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~39\ : std_logic;
SIGNAL \debouncerKEY0|Add0~40_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~41\ : std_logic;
SIGNAL \debouncerKEY0|Add0~42_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~43\ : std_logic;
SIGNAL \debouncerKEY0|Add0~44_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[11]~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \Temporizador|Add0~0_combout\ : std_logic;
SIGNAL \Temporizador|s_count~12_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[0]~31_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[18]~33_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[0]~32\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[1]~34_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[1]~35\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[2]~36_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[2]~37\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[3]~38_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[3]~39\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[4]~40_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[4]~41\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[5]~42_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[5]~43\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[6]~44_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[6]~45\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[7]~46_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[7]~47\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[8]~48_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[8]~49\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[9]~50_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[9]~51\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[10]~52_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[10]~53\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[11]~54_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[11]~55\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[12]~56_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[12]~57\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[13]~58_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[13]~59\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[14]~60_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[14]~61\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[15]~62_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[15]~63\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[16]~64_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[16]~65\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[17]~66_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[17]~67\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[18]~68_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[18]~69\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[19]~70_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[19]~71\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[20]~72_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[20]~73\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[21]~74_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[21]~75\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[22]~76_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[22]~77\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[23]~78_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~6_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[23]~79\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[24]~80_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[24]~81\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[25]~82_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[25]~83\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[26]~84_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[26]~85\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[27]~86_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[27]~87\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[28]~88_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[28]~89\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[29]~90_combout\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[29]~91\ : std_logic;
SIGNAL \PulseGen1HZ|s_counter[30]~92_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~7_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~8_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~5_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~0_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~3_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~1_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~2_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~4_combout\ : std_logic;
SIGNAL \PulseGen1HZ|Equal0~9_combout\ : std_logic;
SIGNAL \PulseGen1HZ|pulse~0_combout\ : std_logic;
SIGNAL \PulseGen1HZ|pulse~q\ : std_logic;
SIGNAL \Temporizador|s_count[20]~5_combout\ : std_logic;
SIGNAL \Temporizador|Add0~1\ : std_logic;
SIGNAL \Temporizador|Add0~2_combout\ : std_logic;
SIGNAL \Temporizador|s_count~6_combout\ : std_logic;
SIGNAL \Temporizador|Add0~3\ : std_logic;
SIGNAL \Temporizador|Add0~4_combout\ : std_logic;
SIGNAL \Temporizador|s_count~7_combout\ : std_logic;
SIGNAL \Temporizador|Add0~5\ : std_logic;
SIGNAL \Temporizador|Add0~6_combout\ : std_logic;
SIGNAL \Temporizador|s_count~4_combout\ : std_logic;
SIGNAL \Temporizador|Add0~7\ : std_logic;
SIGNAL \Temporizador|Add0~8_combout\ : std_logic;
SIGNAL \Temporizador|s_count~9_combout\ : std_logic;
SIGNAL \Temporizador|Add0~9\ : std_logic;
SIGNAL \Temporizador|Add0~10_combout\ : std_logic;
SIGNAL \Temporizador|s_count~8_combout\ : std_logic;
SIGNAL \Temporizador|Add0~11\ : std_logic;
SIGNAL \Temporizador|Add0~12_combout\ : std_logic;
SIGNAL \Temporizador|s_count~10_combout\ : std_logic;
SIGNAL \Temporizador|Add0~13\ : std_logic;
SIGNAL \Temporizador|Add0~14_combout\ : std_logic;
SIGNAL \Temporizador|s_count~11_combout\ : std_logic;
SIGNAL \Temporizador|Add0~15\ : std_logic;
SIGNAL \Temporizador|Add0~16_combout\ : std_logic;
SIGNAL \Temporizador|s_count~13_combout\ : std_logic;
SIGNAL \Temporizador|Add0~17\ : std_logic;
SIGNAL \Temporizador|Add0~18_combout\ : std_logic;
SIGNAL \Temporizador|s_count~14_combout\ : std_logic;
SIGNAL \Temporizador|Add0~19\ : std_logic;
SIGNAL \Temporizador|Add0~20_combout\ : std_logic;
SIGNAL \Temporizador|s_count~15_combout\ : std_logic;
SIGNAL \Temporizador|Add0~21\ : std_logic;
SIGNAL \Temporizador|Add0~22_combout\ : std_logic;
SIGNAL \Temporizador|s_count~16_combout\ : std_logic;
SIGNAL \Temporizador|Add0~23\ : std_logic;
SIGNAL \Temporizador|Add0~24_combout\ : std_logic;
SIGNAL \Temporizador|s_count~17_combout\ : std_logic;
SIGNAL \Temporizador|Add0~25\ : std_logic;
SIGNAL \Temporizador|Add0~26_combout\ : std_logic;
SIGNAL \Temporizador|s_count~18_combout\ : std_logic;
SIGNAL \Temporizador|Add0~27\ : std_logic;
SIGNAL \Temporizador|Add0~28_combout\ : std_logic;
SIGNAL \Temporizador|s_count~19_combout\ : std_logic;
SIGNAL \Temporizador|Add0~29\ : std_logic;
SIGNAL \Temporizador|Add0~30_combout\ : std_logic;
SIGNAL \Temporizador|s_count~20_combout\ : std_logic;
SIGNAL \Temporizador|Add0~31\ : std_logic;
SIGNAL \Temporizador|Add0~32_combout\ : std_logic;
SIGNAL \Temporizador|s_count~21_combout\ : std_logic;
SIGNAL \Temporizador|Add0~33\ : std_logic;
SIGNAL \Temporizador|Add0~34_combout\ : std_logic;
SIGNAL \Temporizador|s_count~22_combout\ : std_logic;
SIGNAL \Temporizador|Add0~35\ : std_logic;
SIGNAL \Temporizador|Add0~36_combout\ : std_logic;
SIGNAL \Temporizador|s_count~23_combout\ : std_logic;
SIGNAL \Temporizador|Add0~37\ : std_logic;
SIGNAL \Temporizador|Add0~38_combout\ : std_logic;
SIGNAL \Temporizador|s_count~24_combout\ : std_logic;
SIGNAL \Temporizador|Add0~39\ : std_logic;
SIGNAL \Temporizador|Add0~40_combout\ : std_logic;
SIGNAL \Temporizador|s_count~25_combout\ : std_logic;
SIGNAL \Temporizador|Add0~41\ : std_logic;
SIGNAL \Temporizador|Add0~42_combout\ : std_logic;
SIGNAL \Temporizador|s_count~26_combout\ : std_logic;
SIGNAL \Temporizador|Add0~43\ : std_logic;
SIGNAL \Temporizador|Add0~44_combout\ : std_logic;
SIGNAL \Temporizador|s_count~27_combout\ : std_logic;
SIGNAL \Temporizador|Add0~45\ : std_logic;
SIGNAL \Temporizador|Add0~46_combout\ : std_logic;
SIGNAL \Temporizador|s_count~28_combout\ : std_logic;
SIGNAL \Temporizador|Add0~47\ : std_logic;
SIGNAL \Temporizador|Add0~48_combout\ : std_logic;
SIGNAL \Temporizador|s_count~29_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~6_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~5_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~2_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~3_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~1_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~0_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~4_combout\ : std_logic;
SIGNAL \Temporizador|Add0~49\ : std_logic;
SIGNAL \Temporizador|Add0~50_combout\ : std_logic;
SIGNAL \Temporizador|s_count~30_combout\ : std_logic;
SIGNAL \Temporizador|Add0~51\ : std_logic;
SIGNAL \Temporizador|Add0~52_combout\ : std_logic;
SIGNAL \Temporizador|s_count~31_combout\ : std_logic;
SIGNAL \Temporizador|Add0~53\ : std_logic;
SIGNAL \Temporizador|Add0~54_combout\ : std_logic;
SIGNAL \Temporizador|s_count~32_combout\ : std_logic;
SIGNAL \Temporizador|Add0~55\ : std_logic;
SIGNAL \Temporizador|Add0~56_combout\ : std_logic;
SIGNAL \Temporizador|s_count~33_combout\ : std_logic;
SIGNAL \Temporizador|Add0~57\ : std_logic;
SIGNAL \Temporizador|Add0~58_combout\ : std_logic;
SIGNAL \Temporizador|s_count~34_combout\ : std_logic;
SIGNAL \Temporizador|Add0~59\ : std_logic;
SIGNAL \Temporizador|Add0~60_combout\ : std_logic;
SIGNAL \Temporizador|s_count~35_combout\ : std_logic;
SIGNAL \Temporizador|Add0~61\ : std_logic;
SIGNAL \Temporizador|Add0~62_combout\ : std_logic;
SIGNAL \Temporizador|s_count~36_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~7_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~8_combout\ : std_logic;
SIGNAL \Temporizador|Equal0~9_combout\ : std_logic;
SIGNAL \Temporizador|s_result~0_combout\ : std_logic;
SIGNAL \Temporizador|s_result~1_combout\ : std_logic;
SIGNAL \Temporizador|s_result~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \debouncerKEY2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncerKEY2|s_previousIn~q\ : std_logic;
SIGNAL \debouncerKEY2|Add0~0_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~41\ : std_logic;
SIGNAL \debouncerKEY2|Add0~42_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~1\ : std_logic;
SIGNAL \debouncerKEY2|Add0~2_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~3\ : std_logic;
SIGNAL \debouncerKEY2|Add0~4_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~5\ : std_logic;
SIGNAL \debouncerKEY2|Add0~6_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~7\ : std_logic;
SIGNAL \debouncerKEY2|Add0~8_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~9\ : std_logic;
SIGNAL \debouncerKEY2|Add0~11\ : std_logic;
SIGNAL \debouncerKEY2|Add0~12_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~13\ : std_logic;
SIGNAL \debouncerKEY2|Add0~14_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~15\ : std_logic;
SIGNAL \debouncerKEY2|Add0~16_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~17\ : std_logic;
SIGNAL \debouncerKEY2|Add0~18_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~19\ : std_logic;
SIGNAL \debouncerKEY2|Add0~20_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~21\ : std_logic;
SIGNAL \debouncerKEY2|Add0~22_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~23\ : std_logic;
SIGNAL \debouncerKEY2|Add0~24_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~25\ : std_logic;
SIGNAL \debouncerKEY2|Add0~26_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~27\ : std_logic;
SIGNAL \debouncerKEY2|Add0~28_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~29\ : std_logic;
SIGNAL \debouncerKEY2|Add0~30_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~31\ : std_logic;
SIGNAL \debouncerKEY2|Add0~32_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~33\ : std_logic;
SIGNAL \debouncerKEY2|Add0~34_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~35\ : std_logic;
SIGNAL \debouncerKEY2|Add0~36_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~37\ : std_logic;
SIGNAL \debouncerKEY2|Add0~38_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~39\ : std_logic;
SIGNAL \debouncerKEY2|Add0~40_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncerKEY2|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~43\ : std_logic;
SIGNAL \debouncerKEY2|Add0~44_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \debouncerKEY2|Add0~10_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncerKEY2|s_pulsedOut~q\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~8_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TExtra~q\ : std_logic;
SIGNAL \debouncerKEY3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \debouncerKEY3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncerKEY3|s_previousIn~q\ : std_logic;
SIGNAL \debouncerKEY3|Add0~1\ : std_logic;
SIGNAL \debouncerKEY3|Add0~2_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~3\ : std_logic;
SIGNAL \debouncerKEY3|Add0~4_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~5\ : std_logic;
SIGNAL \debouncerKEY3|Add0~6_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~7\ : std_logic;
SIGNAL \debouncerKEY3|Add0~8_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~9\ : std_logic;
SIGNAL \debouncerKEY3|Add0~10_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~11\ : std_logic;
SIGNAL \debouncerKEY3|Add0~12_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~15\ : std_logic;
SIGNAL \debouncerKEY3|Add0~16_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~17\ : std_logic;
SIGNAL \debouncerKEY3|Add0~18_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~19\ : std_logic;
SIGNAL \debouncerKEY3|Add0~20_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~21\ : std_logic;
SIGNAL \debouncerKEY3|Add0~22_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~23\ : std_logic;
SIGNAL \debouncerKEY3|Add0~24_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~25\ : std_logic;
SIGNAL \debouncerKEY3|Add0~26_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~27\ : std_logic;
SIGNAL \debouncerKEY3|Add0~28_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~29\ : std_logic;
SIGNAL \debouncerKEY3|Add0~30_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~31\ : std_logic;
SIGNAL \debouncerKEY3|Add0~32_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~33\ : std_logic;
SIGNAL \debouncerKEY3|Add0~34_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~35\ : std_logic;
SIGNAL \debouncerKEY3|Add0~36_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~37\ : std_logic;
SIGNAL \debouncerKEY3|Add0~38_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~39\ : std_logic;
SIGNAL \debouncerKEY3|Add0~40_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncerKEY3|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[9]~2_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~13\ : std_logic;
SIGNAL \debouncerKEY3|Add0~14_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[9]~29_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[9]~4_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~41\ : std_logic;
SIGNAL \debouncerKEY3|Add0~42_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debouncerKEY3|Add0~43\ : std_logic;
SIGNAL \debouncerKEY3|Add0~44_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt[9]~5_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debouncerKEY3|s_pulsedOut~q\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[0]~8_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debouncerKEY1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncerKEY1|s_previousIn~q\ : std_logic;
SIGNAL \debouncerKEY1|Add0~3\ : std_logic;
SIGNAL \debouncerKEY1|Add0~4_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~5\ : std_logic;
SIGNAL \debouncerKEY1|Add0~6_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~7\ : std_logic;
SIGNAL \debouncerKEY1|Add0~8_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~9\ : std_logic;
SIGNAL \debouncerKEY1|Add0~10_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~11\ : std_logic;
SIGNAL \debouncerKEY1|Add0~12_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~41\ : std_logic;
SIGNAL \debouncerKEY1|Add0~42_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~8_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncerKEY1|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~3_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~13\ : std_logic;
SIGNAL \debouncerKEY1|Add0~14_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~15\ : std_logic;
SIGNAL \debouncerKEY1|Add0~16_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~17\ : std_logic;
SIGNAL \debouncerKEY1|Add0~18_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~19\ : std_logic;
SIGNAL \debouncerKEY1|Add0~20_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~21\ : std_logic;
SIGNAL \debouncerKEY1|Add0~22_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~23\ : std_logic;
SIGNAL \debouncerKEY1|Add0~24_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~25\ : std_logic;
SIGNAL \debouncerKEY1|Add0~26_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~27\ : std_logic;
SIGNAL \debouncerKEY1|Add0~28_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~29\ : std_logic;
SIGNAL \debouncerKEY1|Add0~30_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~31\ : std_logic;
SIGNAL \debouncerKEY1|Add0~32_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~33\ : std_logic;
SIGNAL \debouncerKEY1|Add0~34_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~35\ : std_logic;
SIGNAL \debouncerKEY1|Add0~36_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~37\ : std_logic;
SIGNAL \debouncerKEY1|Add0~38_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[19]~20_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~39\ : std_logic;
SIGNAL \debouncerKEY1|Add0~40_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[10]~29_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[22]~27_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~43\ : std_logic;
SIGNAL \debouncerKEY1|Add0~44_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[22]~28_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt[10]~5_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~0_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \debouncerKEY1|Add0~1\ : std_logic;
SIGNAL \debouncerKEY1|Add0~2_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~9_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~10_combout\ : std_logic;
SIGNAL \debouncerKEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[0]~9\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[1]~10_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[3]~18_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[1]~11\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[2]~12_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[2]~13\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[3]~14_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[3]~15\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[4]~19_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[4]~20\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[5]~21_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[5]~22\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[6]~23_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_valueExtra[3]~1_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[6]~24\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[7]~25_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Equal0~1_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~10_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~11_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~9_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~12_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~16_combout\ : std_logic;
SIGNAL \BreadBakerFSM|sync_proc~1_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_stateChanged~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Selector10~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~9_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TInit~q\ : std_logic;
SIGNAL \BreadBakerFSM|Selector11~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~10_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TAmassar~q\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~11_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TLevedar~q\ : std_logic;
SIGNAL \BreadBakerFSM|s_stateChanged~1_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_stateChanged~2_combout\ : std_logic;
SIGNAL \BreadBakerFSM|sync_proc~2_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_stateChanged~3_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_stateChanged~q\ : std_logic;
SIGNAL \BreadBakerFSM|Selector0~0_combout\ : std_logic;
SIGNAL \s_loadFSM~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|addr[0]~6_combout\ : std_logic;
SIGNAL \BreadBakerFSM|addr[1]~5_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Flipflop|dataOut~0_combout\ : std_logic;
SIGNAL \Flipflop|dataOut~q\ : std_logic;
SIGNAL \BreadBakerFSM|addr[2]~4_combout\ : std_logic;
SIGNAL \ROM_Time|Mux3~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_temp~q\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~9_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~6_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~10_combout\ : std_logic;
SIGNAL \BreadBakerFSM|WideOr11~combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~7_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~5_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~1_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~15_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~14_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~16_combout\ : std_logic;
SIGNAL \BreadBakerFSM|WideOr10~0_combout\ : std_logic;
SIGNAL \s_enableTime~0_combout\ : std_logic;
SIGNAL \s_enableTime~1_combout\ : std_logic;
SIGNAL \TimerAuxFSM|s_count[3]~0_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~2\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~3_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~8_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~4\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~11_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~13_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~12\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~20_combout\ : std_logic;
SIGNAL \ROM_Time|Mux2~0_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~35_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~36_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|Equal6~1_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~25_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~21\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~22_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~17_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~18_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~19_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~24_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~23\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~26_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~28_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~27\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~29_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~31_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~30\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~32_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~34_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Equal0~0_combout\ : std_logic;
SIGNAL \TimerAuxFSM|Equal0~1_combout\ : std_logic;
SIGNAL \TimerAuxFSM|s_cntZero~0_combout\ : std_logic;
SIGNAL \TimerAuxFSM|s_cntZero~q\ : std_logic;
SIGNAL \ControlSystemUnit|pState~15_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~17_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.Extra~q\ : std_logic;
SIGNAL \TimerAuxFSM|Add0~0_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[3]~16_combout\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count[3]~17_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Equal0~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Equal0~2_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Selector13~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Selector13~1_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~12_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TCozer~q\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState~13_combout\ : std_logic;
SIGNAL \BreadBakerFSM|s_currentState.TFim~q\ : std_logic;
SIGNAL \BreadBakerFSM|Selector15~0_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~18_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~25_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~26_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~27_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~28_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.Menu~q\ : std_logic;
SIGNAL \ControlSystemUnit|pState~19_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~20_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.Timer~q\ : std_logic;
SIGNAL \ControlSystemUnit|pState~21_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~22_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.TimeProcess~q\ : std_logic;
SIGNAL \ControlSystemUnit|pState~13_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~14_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.StartPrg~q\ : std_logic;
SIGNAL \ControlSystemUnit|pState~23_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState~24_combout\ : std_logic;
SIGNAL \ControlSystemUnit|pState.Init~q\ : std_logic;
SIGNAL \LCD|clk_count_400hz[0]~20_combout\ : std_logic;
SIGNAL \LCD|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD|LessThan0~2_combout\ : std_logic;
SIGNAL \LCD|LessThan0~1_combout\ : std_logic;
SIGNAL \LCD|LessThan0~3_combout\ : std_logic;
SIGNAL \LCD|LessThan0~4_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[0]~46_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[0]~21\ : std_logic;
SIGNAL \LCD|clk_count_400hz[1]~22_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[1]~23\ : std_logic;
SIGNAL \LCD|clk_count_400hz[2]~24_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[2]~25\ : std_logic;
SIGNAL \LCD|clk_count_400hz[3]~26_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[3]~27\ : std_logic;
SIGNAL \LCD|clk_count_400hz[4]~28_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[4]~29\ : std_logic;
SIGNAL \LCD|clk_count_400hz[5]~30_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[5]~31\ : std_logic;
SIGNAL \LCD|clk_count_400hz[6]~32_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[6]~33\ : std_logic;
SIGNAL \LCD|clk_count_400hz[7]~34_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[7]~35\ : std_logic;
SIGNAL \LCD|clk_count_400hz[8]~36_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[8]~37\ : std_logic;
SIGNAL \LCD|clk_count_400hz[9]~38_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[9]~39\ : std_logic;
SIGNAL \LCD|clk_count_400hz[10]~40_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[10]~41\ : std_logic;
SIGNAL \LCD|clk_count_400hz[11]~42_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[11]~43\ : std_logic;
SIGNAL \LCD|clk_count_400hz[12]~44_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[12]~45\ : std_logic;
SIGNAL \LCD|clk_count_400hz[13]~47_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[13]~48\ : std_logic;
SIGNAL \LCD|clk_count_400hz[14]~49_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[14]~50\ : std_logic;
SIGNAL \LCD|clk_count_400hz[15]~51_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[15]~52\ : std_logic;
SIGNAL \LCD|clk_count_400hz[16]~53_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[16]~54\ : std_logic;
SIGNAL \LCD|clk_count_400hz[17]~55_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[17]~56\ : std_logic;
SIGNAL \LCD|clk_count_400hz[18]~57_combout\ : std_logic;
SIGNAL \LCD|clk_count_400hz[18]~58\ : std_logic;
SIGNAL \LCD|clk_count_400hz[19]~59_combout\ : std_logic;
SIGNAL \LCD|LessThan0~5_combout\ : std_logic;
SIGNAL \LCD|clk_400hz_enable~0_combout\ : std_logic;
SIGNAL \LCD|clk_400hz_enable~q\ : std_logic;
SIGNAL \LCD|state.drop_lcd_e~q\ : std_logic;
SIGNAL \LCD|state.hold~q\ : std_logic;
SIGNAL \LCD|state.reset1~feeder_combout\ : std_logic;
SIGNAL \LCD|state.reset1~q\ : std_logic;
SIGNAL \LCD|Selector18~0_combout\ : std_logic;
SIGNAL \LCD|next_command.reset2~q\ : std_logic;
SIGNAL \LCD|state~36_combout\ : std_logic;
SIGNAL \LCD|state.reset2~q\ : std_logic;
SIGNAL \LCD|Selector19~0_combout\ : std_logic;
SIGNAL \LCD|next_command.reset3~q\ : std_logic;
SIGNAL \LCD|state~34_combout\ : std_logic;
SIGNAL \LCD|state.reset3~q\ : std_logic;
SIGNAL \LCD|Selector12~0_combout\ : std_logic;
SIGNAL \LCD|next_command.func_set~q\ : std_logic;
SIGNAL \LCD|state~35_combout\ : std_logic;
SIGNAL \LCD|state.func_set~q\ : std_logic;
SIGNAL \LCD|Selector20~0_combout\ : std_logic;
SIGNAL \LCD|next_command.display_off~q\ : std_logic;
SIGNAL \LCD|state~37_combout\ : std_logic;
SIGNAL \LCD|state.display_off~q\ : std_logic;
SIGNAL \LCD|Selector21~0_combout\ : std_logic;
SIGNAL \LCD|next_command.display_clear~q\ : std_logic;
SIGNAL \LCD|state~32_combout\ : std_logic;
SIGNAL \LCD|state.display_clear~q\ : std_logic;
SIGNAL \LCD|char_count[0]~5_combout\ : std_logic;
SIGNAL \LCD|Selector26~0_combout\ : std_logic;
SIGNAL \LCD|char_count[4]~13_combout\ : std_logic;
SIGNAL \LCD|char_count[0]~6\ : std_logic;
SIGNAL \LCD|char_count[1]~7_combout\ : std_logic;
SIGNAL \LCD|Selector25~0_combout\ : std_logic;
SIGNAL \LCD|char_count[1]~8\ : std_logic;
SIGNAL \LCD|char_count[2]~9_combout\ : std_logic;
SIGNAL \LCD|Selector24~0_combout\ : std_logic;
SIGNAL \LCD|char_count[2]~10\ : std_logic;
SIGNAL \LCD|char_count[3]~11_combout\ : std_logic;
SIGNAL \LCD|Selector23~0_combout\ : std_logic;
SIGNAL \LCD|Equal1~0_combout\ : std_logic;
SIGNAL \LCD|char_count[3]~12\ : std_logic;
SIGNAL \LCD|char_count[4]~14_combout\ : std_logic;
SIGNAL \LCD|Selector22~0_combout\ : std_logic;
SIGNAL \LCD|Selector17~2_combout\ : std_logic;
SIGNAL \LCD|Selector17~3_combout\ : std_logic;
SIGNAL \LCD|next_command.return_home~q\ : std_logic;
SIGNAL \LCD|state~31_combout\ : std_logic;
SIGNAL \LCD|state.return_home~q\ : std_logic;
SIGNAL \LCD|Selector16~2_combout\ : std_logic;
SIGNAL \LCD|Selector16~3_combout\ : std_logic;
SIGNAL \LCD|next_command.line2~q\ : std_logic;
SIGNAL \LCD|state~30_combout\ : std_logic;
SIGNAL \LCD|state.line2~q\ : std_logic;
SIGNAL \LCD|Selector13~0_combout\ : std_logic;
SIGNAL \LCD|next_command.display_on~q\ : std_logic;
SIGNAL \LCD|state~33_combout\ : std_logic;
SIGNAL \LCD|state.display_on~q\ : std_logic;
SIGNAL \LCD|Selector14~0_combout\ : std_logic;
SIGNAL \LCD|next_command.mode_set~q\ : std_logic;
SIGNAL \LCD|state~29_combout\ : std_logic;
SIGNAL \LCD|state.mode_set~q\ : std_logic;
SIGNAL \LCD|Selector5~0_combout\ : std_logic;
SIGNAL \LCD|Selector15~0_combout\ : std_logic;
SIGNAL \LCD|Selector15~1_combout\ : std_logic;
SIGNAL \LCD|next_command.print_string~q\ : std_logic;
SIGNAL \LCD|state~28_combout\ : std_logic;
SIGNAL \LCD|state.print_string~q\ : std_logic;
SIGNAL \LCD|Mux63~4_combout\ : std_logic;
SIGNAL \LCD|Mux38~0_combout\ : std_logic;
SIGNAL \LCD|Mux38~1_combout\ : std_logic;
SIGNAL \LCD|Mux63~21_combout\ : std_logic;
SIGNAL \LCD|Mux66~5_combout\ : std_logic;
SIGNAL \LCD|Mux59~1_combout\ : std_logic;
SIGNAL \LCD|Mux59~0_combout\ : std_logic;
SIGNAL \LCD|Mux66~3_combout\ : std_logic;
SIGNAL \LCD|Mux66~4_combout\ : std_logic;
SIGNAL \LCD|Mux66~16_combout\ : std_logic;
SIGNAL \LCD|Mux52~0_combout\ : std_logic;
SIGNAL \LCD|Mux52~1_combout\ : std_logic;
SIGNAL \LCD|Mux52~2_combout\ : std_logic;
SIGNAL \LCD|Mux66~6_combout\ : std_logic;
SIGNAL \LCD|Mux66~7_combout\ : std_logic;
SIGNAL \LCD|Mux66~8_combout\ : std_logic;
SIGNAL \LCD|Mux66~9_combout\ : std_logic;
SIGNAL \LCD|Mux66~10_combout\ : std_logic;
SIGNAL \LCD|Mux66~11_combout\ : std_logic;
SIGNAL \LCD|Mux66~13_combout\ : std_logic;
SIGNAL \LCD|Mux16~0_combout\ : std_logic;
SIGNAL \LCD|Mux66~12_combout\ : std_logic;
SIGNAL \LCD|Mux66~14_combout\ : std_logic;
SIGNAL \LCD|Mux66~15_combout\ : std_logic;
SIGNAL \LCD|Mux66~20_combout\ : std_logic;
SIGNAL \LCD|Mux24~0_combout\ : std_logic;
SIGNAL \LCD|Mux21~0_combout\ : std_logic;
SIGNAL \LCD|Mux24~1_combout\ : std_logic;
SIGNAL \LCD|Mux31~0_combout\ : std_logic;
SIGNAL \LCD|Mux31~1_combout\ : std_logic;
SIGNAL \LCD|Mux66~17_combout\ : std_logic;
SIGNAL \LCD|Mux66~18_combout\ : std_logic;
SIGNAL \LCD|Mux66~19_combout\ : std_logic;
SIGNAL \LCD|Mux64~12_combout\ : std_logic;
SIGNAL \LCD|Mux64~13_combout\ : std_logic;
SIGNAL \LCD|Mux66~2_combout\ : std_logic;
SIGNAL \LCD|Mux50~0_combout\ : std_logic;
SIGNAL \LCD|Mux50~1_combout\ : std_logic;
SIGNAL \LCD|Mux16~2_combout\ : std_logic;
SIGNAL \LCD|Mux16~3_combout\ : std_logic;
SIGNAL \LCD|Mux57~0_combout\ : std_logic;
SIGNAL \LCD|Mux57~1_combout\ : std_logic;
SIGNAL \LCD|Mux64~8_combout\ : std_logic;
SIGNAL \LCD|Mux29~0_combout\ : std_logic;
SIGNAL \LCD|Mux29~1_combout\ : std_logic;
SIGNAL \LCD|Mux29~2_combout\ : std_logic;
SIGNAL \LCD|Mux64~9_combout\ : std_logic;
SIGNAL \LCD|Mux64~10_combout\ : std_logic;
SIGNAL \LCD|Mux13~0_combout\ : std_logic;
SIGNAL \LCD|Mux64~1_combout\ : std_logic;
SIGNAL \LCD|Mux22~0_combout\ : std_logic;
SIGNAL \LCD|Mux64~0_combout\ : std_logic;
SIGNAL \LCD|Mux64~2_combout\ : std_logic;
SIGNAL \LCD|Mux64~3_combout\ : std_logic;
SIGNAL \LCD|Mux64~4_combout\ : std_logic;
SIGNAL \LCD|Mux64~5_combout\ : std_logic;
SIGNAL \LCD|Mux49~0_combout\ : std_logic;
SIGNAL \LCD|Mux36~0_combout\ : std_logic;
SIGNAL \LCD|Mux36~1_combout\ : std_logic;
SIGNAL \LCD|Mux64~6_combout\ : std_logic;
SIGNAL \LCD|Mux64~7_combout\ : std_logic;
SIGNAL \LCD|Mux64~11_combout\ : std_logic;
SIGNAL \LCD|Mux44~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~16_combout\ : std_logic;
SIGNAL \LCD|Mux65~17_combout\ : std_logic;
SIGNAL \LCD|Mux51~0_combout\ : std_logic;
SIGNAL \LCD|Mux30~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~14_combout\ : std_logic;
SIGNAL \LCD|Mux65~11_combout\ : std_logic;
SIGNAL \LCD|Mux65~12_combout\ : std_logic;
SIGNAL \LCD|Mux58~1_combout\ : std_logic;
SIGNAL \LCD|Mux58~0_combout\ : std_logic;
SIGNAL \LCD|Mux58~2_combout\ : std_logic;
SIGNAL \LCD|Mux65~13_combout\ : std_logic;
SIGNAL \LCD|Mux65~15_combout\ : std_logic;
SIGNAL \LCD|Mux28~0_combout\ : std_logic;
SIGNAL \LCD|Mux54~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~0_combout\ : std_logic;
SIGNAL \LCD|Mux65~1_combout\ : std_logic;
SIGNAL \LCD|Mux65~7_combout\ : std_logic;
SIGNAL \LCD|Mux65~8_combout\ : std_logic;
SIGNAL \LCD|Mux65~2_combout\ : std_logic;
SIGNAL \LCD|Mux65~3_combout\ : std_logic;
SIGNAL \LCD|Mux65~4_combout\ : std_logic;
SIGNAL \LCD|Mux65~5_combout\ : std_logic;
SIGNAL \LCD|Mux65~6_combout\ : std_logic;
SIGNAL \LCD|Mux65~9_combout\ : std_logic;
SIGNAL \LCD|Mux65~10_combout\ : std_logic;
SIGNAL \LCD|Mux65~18_combout\ : std_logic;
SIGNAL \LCD|LessThan1~0_combout\ : std_logic;
SIGNAL \LCD|Mux46~0_combout\ : std_logic;
SIGNAL \LCD|Mux46~1_combout\ : std_logic;
SIGNAL \LCD|Mux67~14_combout\ : std_logic;
SIGNAL \LCD|Mux60~0_combout\ : std_logic;
SIGNAL \LCD|Mux60~1_combout\ : std_logic;
SIGNAL \LCD|Mux25~0_combout\ : std_logic;
SIGNAL \LCD|Mux67~4_combout\ : std_logic;
SIGNAL \LCD|Mux16~1_combout\ : std_logic;
SIGNAL \LCD|Mux67~5_combout\ : std_logic;
SIGNAL \LCD|Mux39~0_combout\ : std_logic;
SIGNAL \LCD|Mux39~1_combout\ : std_logic;
SIGNAL \LCD|Mux67~8_combout\ : std_logic;
SIGNAL \LCD|Mux67~7_combout\ : std_logic;
SIGNAL \LCD|Mux67~10_combout\ : std_logic;
SIGNAL \LCD|Mux67~9_combout\ : std_logic;
SIGNAL \LCD|Mux56~0_combout\ : std_logic;
SIGNAL \LCD|Mux67~6_combout\ : std_logic;
SIGNAL \LCD|Mux67~11_combout\ : std_logic;
SIGNAL \LCD|Mux67~12_combout\ : std_logic;
SIGNAL \LCD|Mux67~13_combout\ : std_logic;
SIGNAL \LCD|Mux67~21_combout\ : std_logic;
SIGNAL \LCD|Mux67~16_combout\ : std_logic;
SIGNAL \LCD|Mux32~0_combout\ : std_logic;
SIGNAL \LCD|Mux12~0_combout\ : std_logic;
SIGNAL \LCD|Mux67~15_combout\ : std_logic;
SIGNAL \LCD|Mux67~17_combout\ : std_logic;
SIGNAL \LCD|Mux53~0_combout\ : std_logic;
SIGNAL \LCD|Mux53~1_combout\ : std_logic;
SIGNAL \LCD|Mux67~18_combout\ : std_logic;
SIGNAL \LCD|Mux67~19_combout\ : std_logic;
SIGNAL \LCD|Mux67~22_combout\ : std_logic;
SIGNAL \LCD|Mux67~20_combout\ : std_logic;
SIGNAL \LCD|Mux21~1_combout\ : std_logic;
SIGNAL \LCD|Mux35~0_combout\ : std_logic;
SIGNAL \LCD|Mux63~6_combout\ : std_logic;
SIGNAL \LCD|Mux56~1_combout\ : std_logic;
SIGNAL \LCD|Mux63~5_combout\ : std_logic;
SIGNAL \LCD|Mux49~1_combout\ : std_logic;
SIGNAL \LCD|Mux49~2_combout\ : std_logic;
SIGNAL \LCD|Mux21~2_combout\ : std_logic;
SIGNAL \LCD|Mux21~3_combout\ : std_logic;
SIGNAL \LCD|Mux28~1_combout\ : std_logic;
SIGNAL \LCD|Mux28~2_combout\ : std_logic;
SIGNAL \LCD|Mux63~15_combout\ : std_logic;
SIGNAL \LCD|Mux63~16_combout\ : std_logic;
SIGNAL \LCD|Mux63~12_combout\ : std_logic;
SIGNAL \LCD|Mux63~13_combout\ : std_logic;
SIGNAL \LCD|Mux63~14_combout\ : std_logic;
SIGNAL \LCD|Mux63~7_combout\ : std_logic;
SIGNAL \LCD|Mux63~8_combout\ : std_logic;
SIGNAL \LCD|Mux63~9_combout\ : std_logic;
SIGNAL \LCD|Mux63~10_combout\ : std_logic;
SIGNAL \LCD|Mux63~11_combout\ : std_logic;
SIGNAL \LCD|Mux63~17_combout\ : std_logic;
SIGNAL \LCD|Mux63~18_combout\ : std_logic;
SIGNAL \LCD|Mux63~19_combout\ : std_logic;
SIGNAL \LCD|Mux63~20_combout\ : std_logic;
SIGNAL \LCD|Mux54~1_combout\ : std_logic;
SIGNAL \LCD|Mux54~2_combout\ : std_logic;
SIGNAL \LCD|Mux34~0_combout\ : std_logic;
SIGNAL \LCD|Mux62~2_combout\ : std_logic;
SIGNAL \LCD|Mux62~12_combout\ : std_logic;
SIGNAL \LCD|Mux61~11_combout\ : std_logic;
SIGNAL \LCD|Mux4~0_combout\ : std_logic;
SIGNAL \LCD|Mux62~3_combout\ : std_logic;
SIGNAL \LCD|Mux62~4_combout\ : std_logic;
SIGNAL \LCD|Mux62~5_combout\ : std_logic;
SIGNAL \LCD|Mux62~6_combout\ : std_logic;
SIGNAL \LCD|Mux62~14_combout\ : std_logic;
SIGNAL \LCD|Mux62~7_combout\ : std_logic;
SIGNAL \LCD|Mux62~8_combout\ : std_logic;
SIGNAL \LCD|Mux62~9_combout\ : std_logic;
SIGNAL \LCD|Mux62~10_combout\ : std_logic;
SIGNAL \LCD|Mux62~11_combout\ : std_logic;
SIGNAL \LCD|Mux62~13_combout\ : std_logic;
SIGNAL \LCD|Mux20~0_combout\ : std_logic;
SIGNAL \LCD|Mux61~2_combout\ : std_logic;
SIGNAL \LCD|Mux4~1_combout\ : std_logic;
SIGNAL \LCD|Mux61~3_combout\ : std_logic;
SIGNAL \LCD|Mux61~4_combout\ : std_logic;
SIGNAL \LCD|Mux33~0_combout\ : std_logic;
SIGNAL \LCD|Mux61~9_combout\ : std_logic;
SIGNAL \LCD|Mux61~12_combout\ : std_logic;
SIGNAL \LCD|Mux40~1_combout\ : std_logic;
SIGNAL \LCD|Mux40~0_combout\ : std_logic;
SIGNAL \LCD|Mux61~5_combout\ : std_logic;
SIGNAL \LCD|Mux26~0_combout\ : std_logic;
SIGNAL \LCD|Mux26~1_combout\ : std_logic;
SIGNAL \LCD|Mux47~0_combout\ : std_logic;
SIGNAL \LCD|Mux47~1_combout\ : std_logic;
SIGNAL \LCD|Mux20~1_combout\ : std_logic;
SIGNAL \LCD|Mux61~6_combout\ : std_logic;
SIGNAL \LCD|Mux61~7_combout\ : std_logic;
SIGNAL \LCD|Mux61~8_combout\ : std_logic;
SIGNAL \LCD|Mux61~10_combout\ : std_logic;
SIGNAL \LCD|data_bus_value~0_combout\ : std_logic;
SIGNAL \LCD|Selector9~0_combout\ : std_logic;
SIGNAL \LCD|Selector9~1_combout\ : std_logic;
SIGNAL \LCD|Selector8~2_combout\ : std_logic;
SIGNAL \LCD|Selector8~3_combout\ : std_logic;
SIGNAL \LCD|Selector8~1_combout\ : std_logic;
SIGNAL \LCD|Add1~0_combout\ : std_logic;
SIGNAL \LCD|Selector8~0_combout\ : std_logic;
SIGNAL \LCD|Selector8~4_combout\ : std_logic;
SIGNAL \LCD|Selector7~2_combout\ : std_logic;
SIGNAL \LCD|Add1~1_combout\ : std_logic;
SIGNAL \LCD|Selector7~0_combout\ : std_logic;
SIGNAL \LCD|Selector7~1_combout\ : std_logic;
SIGNAL \LCD|Selector7~3_combout\ : std_logic;
SIGNAL \LCD|Selector5~1_combout\ : std_logic;
SIGNAL \LCD|Selector6~1_combout\ : std_logic;
SIGNAL \LCD|Selector6~2_combout\ : std_logic;
SIGNAL \LCD|Add1~2_combout\ : std_logic;
SIGNAL \LCD|Selector6~0_combout\ : std_logic;
SIGNAL \LCD|Selector6~3_combout\ : std_logic;
SIGNAL \LCD|Selector5~3_combout\ : std_logic;
SIGNAL \LCD|Selector5~2_combout\ : std_logic;
SIGNAL \LCD|Selector5~4_combout\ : std_logic;
SIGNAL \LCD|data_bus_value[5]~1_combout\ : std_logic;
SIGNAL \LCD|Selector4~0_combout\ : std_logic;
SIGNAL \LCD|Selector4~1_combout\ : std_logic;
SIGNAL \LCD|Selector3~0_combout\ : std_logic;
SIGNAL \LCD|Selector3~1_combout\ : std_logic;
SIGNAL \LCD|Selector2~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|ledRed~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|Selector0~1_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD~2_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD~3_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|LessThan0~0_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~14_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~21_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~22_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~20_combout\ : std_logic;
SIGNAL \ControlSystemUnit|en_3~combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|LessThan1~0_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|LessThan1~1_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~16_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~17_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~15_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~18_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~4_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~5_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~3_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~10_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr0~4_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr0~combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~8_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~9_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux1~combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~15_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~16_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~14_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr2~0_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~12_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr2~1_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~12_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~13_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux3~combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~8_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~9_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr10~0_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|Equal2~0_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|Equal6~0_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|Equal6~1_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|WideOr1~combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~11_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~12_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~10_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux2~combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~0_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~1_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~2_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~3_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~4_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~5_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|decOut_n~6_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD_2~19_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD_2~20_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD_2~18_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~13_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|LessThan5~0_combout\ : std_logic;
SIGNAL \MuxforHEX4|Mux0~19_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|LessThan4~0_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD_2~17_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~17_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~4_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~6_combout\ : std_logic;
SIGNAL \BinTOBCDTemporizador|outBCD_2~16_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~5_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~7_combout\ : std_logic;
SIGNAL \MuxforHEX5|muxOut[1]~2_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~8_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~9_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~10_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~11_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~12_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~13_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~14_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~15_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~16_combout\ : std_logic;
SIGNAL \Bin7SegHEX5|decOut_n~18_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[1]~56_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[1]~55_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[1]~24_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[3]~49_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[3]~50_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[3]~48_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[2]~39_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[2]~38_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[2]~37_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[0]~9_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~25_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~26_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~27_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~32_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~38_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~39_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~13_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~37_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~28_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~33_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~29_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~34_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~30_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~35_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~31_combout\ : std_logic;
SIGNAL \Bin7SegHEX6|decOut_n~36_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|Equal6~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|Equal2~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan1~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan0~2_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan5~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|Equal11~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan2~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan3~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD_2[0]~1_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|LessThan3~1_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD[0]~59_combout\ : std_logic;
SIGNAL \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n[0]~4_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n[1]~10_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n~6_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n~7_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n~8_combout\ : std_logic;
SIGNAL \Bin7SegHEX7|decOut_n[6]~9_combout\ : std_logic;
SIGNAL \LCD|Selector1~0_combout\ : std_logic;
SIGNAL \LCD|lcd_rs~q\ : std_logic;
SIGNAL \LCD|lcd_e~0_combout\ : std_logic;
SIGNAL \LCD|lcd_e~q\ : std_logic;
SIGNAL \TimeExtra|Counter|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debouncerKEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \TimerAuxFSM|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Temporizador|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PulseGen1HZ|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \LCD|clk_count_400hz\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \LCD|char_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \debouncerKEY2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \BreadBakerFSM|s_valueExtra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debouncerKEY1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncerKEY3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \LCD|data_bus_value\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD|ALT_INV_data_bus_value\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \LCD|ALT_INV_state.print_string~q\ : std_logic;
SIGNAL \ControlSystemUnit|ALT_INV_pState.Init~q\ : std_logic;
SIGNAL \LCD|ALT_INV_lcd_e~q\ : std_logic;
SIGNAL \BreadBakerFSM|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \BreadBakerFSM|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \TimerAuxFSM|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \Bin7SegHEX4|ALT_INV_decOut_n~6_combout\ : std_logic;
SIGNAL \BreadBakerFSM|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \BreadBakerFSM|ALT_INV_ledRed~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_DATA <= ww_LCD_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\LCD|ALT_INV_data_bus_value\(5) <= NOT \LCD|data_bus_value\(5);
\LCD|ALT_INV_data_bus_value\(4) <= NOT \LCD|data_bus_value\(4);
\LCD|ALT_INV_data_bus_value\(3) <= NOT \LCD|data_bus_value\(3);
\LCD|ALT_INV_state.print_string~q\ <= NOT \LCD|state.print_string~q\;
\ControlSystemUnit|ALT_INV_pState.Init~q\ <= NOT \ControlSystemUnit|pState.Init~q\;
\LCD|ALT_INV_lcd_e~q\ <= NOT \LCD|lcd_e~q\;
\BreadBakerFSM|ALT_INV_WideOr10~0_combout\ <= NOT \BreadBakerFSM|WideOr10~0_combout\;
\BreadBakerFSM|ALT_INV_WideOr11~combout\ <= NOT \BreadBakerFSM|WideOr11~combout\;
\TimerAuxFSM|ALT_INV_Add0~0_combout\ <= NOT \TimerAuxFSM|Add0~0_combout\;
\Bin7SegHEX4|ALT_INV_decOut_n~6_combout\ <= NOT \Bin7SegHEX4|decOut_n~6_combout\;
\BreadBakerFSM|ALT_INV_Selector0~1_combout\ <= NOT \BreadBakerFSM|Selector0~1_combout\;
\BreadBakerFSM|ALT_INV_ledRed~0_combout\ <= NOT \BreadBakerFSM|ledRed~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_bus_value\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_bus_value\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_bus_value\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|ALT_INV_data_bus_value\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|ALT_INV_data_bus_value\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|ALT_INV_data_bus_value\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_bus_value\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|data_bus_value\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

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

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

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

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

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

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

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

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX4|ALT_INV_decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX5|decOut_n~18_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~26_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~32_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~37_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~33_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~34_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~35_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX6|decOut_n~36_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n[1]~10_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin7SegHEX7|decOut_n[6]~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimerAuxFSM|ALT_INV_Add0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BreadBakerFSM|ALT_INV_ledRed~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|lcd_rs~q\,
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
	i => \LCD|ALT_INV_lcd_e~q\,
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

-- Location: LCCOMB_X66_Y32_N22
\LCD|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|lcd_rs~0_combout\ = (!\LCD|state.drop_lcd_e~q\ & !\LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.drop_lcd_e~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|lcd_rs~0_combout\);

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

-- Location: LCCOMB_X74_Y36_N30
\debouncerKEY0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debouncerKEY0|s_dirtyIn~0_combout\);

-- Location: FF_X74_Y36_N31
\debouncerKEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_dirtyIn~q\);

-- Location: FF_X74_Y36_N1
\debouncerKEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncerKEY0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_previousIn~q\);

-- Location: LCCOMB_X76_Y37_N10
\debouncerKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~0_combout\ = \debouncerKEY0|s_debounceCnt\(0) $ (VCC)
-- \debouncerKEY0|Add0~1\ = CARRY(\debouncerKEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncerKEY0|Add0~0_combout\,
	cout => \debouncerKEY0|Add0~1\);

-- Location: LCCOMB_X76_Y37_N12
\debouncerKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~2_combout\ = (\debouncerKEY0|s_debounceCnt\(1) & (\debouncerKEY0|Add0~1\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(1) & (!\debouncerKEY0|Add0~1\))
-- \debouncerKEY0|Add0~3\ = CARRY((!\debouncerKEY0|s_debounceCnt\(1) & !\debouncerKEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncerKEY0|Add0~1\,
	combout => \debouncerKEY0|Add0~2_combout\,
	cout => \debouncerKEY0|Add0~3\);

-- Location: LCCOMB_X76_Y37_N4
\debouncerKEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~21_combout\ = (\debouncerKEY0|Add0~2_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~2_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~21_combout\);

-- Location: FF_X76_Y37_N5
\debouncerKEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~21_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X76_Y37_N14
\debouncerKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~4_combout\ = (\debouncerKEY0|s_debounceCnt\(2) & ((GND) # (!\debouncerKEY0|Add0~3\))) # (!\debouncerKEY0|s_debounceCnt\(2) & (\debouncerKEY0|Add0~3\ $ (GND)))
-- \debouncerKEY0|Add0~5\ = CARRY((\debouncerKEY0|s_debounceCnt\(2)) # (!\debouncerKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncerKEY0|Add0~3\,
	combout => \debouncerKEY0|Add0~4_combout\,
	cout => \debouncerKEY0|Add0~5\);

-- Location: LCCOMB_X76_Y37_N2
\debouncerKEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~22_combout\ = (\debouncerKEY0|Add0~4_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|Add0~4_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~22_combout\);

-- Location: FF_X76_Y37_N3
\debouncerKEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~22_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X76_Y37_N16
\debouncerKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~6_combout\ = (\debouncerKEY0|s_debounceCnt\(3) & (\debouncerKEY0|Add0~5\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(3) & (!\debouncerKEY0|Add0~5\))
-- \debouncerKEY0|Add0~7\ = CARRY((!\debouncerKEY0|s_debounceCnt\(3) & !\debouncerKEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncerKEY0|Add0~5\,
	combout => \debouncerKEY0|Add0~6_combout\,
	cout => \debouncerKEY0|Add0~7\);

-- Location: LCCOMB_X76_Y37_N8
\debouncerKEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~23_combout\ = (\debouncerKEY0|Add0~6_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~6_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~23_combout\);

-- Location: FF_X76_Y37_N9
\debouncerKEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~23_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X76_Y37_N18
\debouncerKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~8_combout\ = (\debouncerKEY0|s_debounceCnt\(4) & ((GND) # (!\debouncerKEY0|Add0~7\))) # (!\debouncerKEY0|s_debounceCnt\(4) & (\debouncerKEY0|Add0~7\ $ (GND)))
-- \debouncerKEY0|Add0~9\ = CARRY((\debouncerKEY0|s_debounceCnt\(4)) # (!\debouncerKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncerKEY0|Add0~7\,
	combout => \debouncerKEY0|Add0~8_combout\,
	cout => \debouncerKEY0|Add0~9\);

-- Location: LCCOMB_X76_Y37_N6
\debouncerKEY0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~24_combout\ = (\debouncerKEY0|Add0~8_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~8_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~24_combout\);

-- Location: FF_X76_Y37_N7
\debouncerKEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~24_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X76_Y37_N20
\debouncerKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~10_combout\ = (\debouncerKEY0|s_debounceCnt\(5) & (\debouncerKEY0|Add0~9\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(5) & (!\debouncerKEY0|Add0~9\))
-- \debouncerKEY0|Add0~11\ = CARRY((!\debouncerKEY0|s_debounceCnt\(5) & !\debouncerKEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncerKEY0|Add0~9\,
	combout => \debouncerKEY0|Add0~10_combout\,
	cout => \debouncerKEY0|Add0~11\);

-- Location: LCCOMB_X75_Y36_N0
\debouncerKEY0|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~25_combout\ = (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|Add0~10_combout\,
	combout => \debouncerKEY0|s_debounceCnt~25_combout\);

-- Location: FF_X75_Y36_N1
\debouncerKEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~25_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X76_Y37_N22
\debouncerKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~12_combout\ = (\debouncerKEY0|s_debounceCnt\(6) & ((GND) # (!\debouncerKEY0|Add0~11\))) # (!\debouncerKEY0|s_debounceCnt\(6) & (\debouncerKEY0|Add0~11\ $ (GND)))
-- \debouncerKEY0|Add0~13\ = CARRY((\debouncerKEY0|s_debounceCnt\(6)) # (!\debouncerKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncerKEY0|Add0~11\,
	combout => \debouncerKEY0|Add0~12_combout\,
	cout => \debouncerKEY0|Add0~13\);

-- Location: LCCOMB_X75_Y36_N24
\debouncerKEY0|s_debounceCnt[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[11]~2_combout\ = (\debouncerKEY0|s_dirtyIn~q\ & ((!\debouncerKEY0|LessThan0~6_combout\) # (!\debouncerKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_dirtyIn~q\,
	datac => \debouncerKEY0|s_debounceCnt\(22),
	datad => \debouncerKEY0|LessThan0~6_combout\,
	combout => \debouncerKEY0|s_debounceCnt[11]~2_combout\);

-- Location: LCCOMB_X74_Y36_N2
\debouncerKEY0|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~3_combout\ = (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~12_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~12_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt~3_combout\);

-- Location: FF_X74_Y36_N3
\debouncerKEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~3_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X76_Y37_N24
\debouncerKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~14_combout\ = (\debouncerKEY0|s_debounceCnt\(7) & (\debouncerKEY0|Add0~13\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(7) & (!\debouncerKEY0|Add0~13\))
-- \debouncerKEY0|Add0~15\ = CARRY((!\debouncerKEY0|s_debounceCnt\(7) & !\debouncerKEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncerKEY0|Add0~13\,
	combout => \debouncerKEY0|Add0~14_combout\,
	cout => \debouncerKEY0|Add0~15\);

-- Location: LCCOMB_X75_Y36_N22
\debouncerKEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~13_combout\ = (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|Add0~14_combout\,
	combout => \debouncerKEY0|s_debounceCnt~13_combout\);

-- Location: FF_X75_Y36_N23
\debouncerKEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~13_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X76_Y37_N26
\debouncerKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~16_combout\ = (\debouncerKEY0|s_debounceCnt\(8) & ((GND) # (!\debouncerKEY0|Add0~15\))) # (!\debouncerKEY0|s_debounceCnt\(8) & (\debouncerKEY0|Add0~15\ $ (GND)))
-- \debouncerKEY0|Add0~17\ = CARRY((\debouncerKEY0|s_debounceCnt\(8)) # (!\debouncerKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncerKEY0|Add0~15\,
	combout => \debouncerKEY0|Add0~16_combout\,
	cout => \debouncerKEY0|Add0~17\);

-- Location: LCCOMB_X74_Y36_N16
\debouncerKEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~14_combout\ = (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~16_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~16_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt~14_combout\);

-- Location: FF_X74_Y36_N17
\debouncerKEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~14_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X76_Y37_N28
\debouncerKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~18_combout\ = (\debouncerKEY0|s_debounceCnt\(9) & (\debouncerKEY0|Add0~17\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(9) & (!\debouncerKEY0|Add0~17\))
-- \debouncerKEY0|Add0~19\ = CARRY((!\debouncerKEY0|s_debounceCnt\(9) & !\debouncerKEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncerKEY0|Add0~17\,
	combout => \debouncerKEY0|Add0~18_combout\,
	cout => \debouncerKEY0|Add0~19\);

-- Location: LCCOMB_X74_Y36_N6
\debouncerKEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~15_combout\ = (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~18_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~18_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt~15_combout\);

-- Location: FF_X74_Y36_N7
\debouncerKEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~15_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X76_Y37_N30
\debouncerKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~20_combout\ = (\debouncerKEY0|s_debounceCnt\(10) & ((GND) # (!\debouncerKEY0|Add0~19\))) # (!\debouncerKEY0|s_debounceCnt\(10) & (\debouncerKEY0|Add0~19\ $ (GND)))
-- \debouncerKEY0|Add0~21\ = CARRY((\debouncerKEY0|s_debounceCnt\(10)) # (!\debouncerKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncerKEY0|Add0~19\,
	combout => \debouncerKEY0|Add0~20_combout\,
	cout => \debouncerKEY0|Add0~21\);

-- Location: LCCOMB_X75_Y36_N16
\debouncerKEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~16_combout\ = (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|Add0~20_combout\,
	combout => \debouncerKEY0|s_debounceCnt~16_combout\);

-- Location: FF_X75_Y36_N17
\debouncerKEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~16_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X76_Y36_N0
\debouncerKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~22_combout\ = (\debouncerKEY0|s_debounceCnt\(11) & (\debouncerKEY0|Add0~21\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(11) & (!\debouncerKEY0|Add0~21\))
-- \debouncerKEY0|Add0~23\ = CARRY((!\debouncerKEY0|s_debounceCnt\(11) & !\debouncerKEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncerKEY0|Add0~21\,
	combout => \debouncerKEY0|Add0~22_combout\,
	cout => \debouncerKEY0|Add0~23\);

-- Location: LCCOMB_X76_Y36_N28
\debouncerKEY0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~17_combout\ = (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~22_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~22_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt~17_combout\);

-- Location: FF_X76_Y36_N29
\debouncerKEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~17_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X76_Y36_N2
\debouncerKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~24_combout\ = (\debouncerKEY0|s_debounceCnt\(12) & ((GND) # (!\debouncerKEY0|Add0~23\))) # (!\debouncerKEY0|s_debounceCnt\(12) & (\debouncerKEY0|Add0~23\ $ (GND)))
-- \debouncerKEY0|Add0~25\ = CARRY((\debouncerKEY0|s_debounceCnt\(12)) # (!\debouncerKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncerKEY0|Add0~23\,
	combout => \debouncerKEY0|Add0~24_combout\,
	cout => \debouncerKEY0|Add0~25\);

-- Location: LCCOMB_X77_Y36_N2
\debouncerKEY0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~11_combout\ = (\debouncerKEY0|Add0~24_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~24_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~11_combout\);

-- Location: FF_X77_Y36_N3
\debouncerKEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~11_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X76_Y36_N4
\debouncerKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~26_combout\ = (\debouncerKEY0|s_debounceCnt\(13) & (\debouncerKEY0|Add0~25\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(13) & (!\debouncerKEY0|Add0~25\))
-- \debouncerKEY0|Add0~27\ = CARRY((!\debouncerKEY0|s_debounceCnt\(13) & !\debouncerKEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncerKEY0|Add0~25\,
	combout => \debouncerKEY0|Add0~26_combout\,
	cout => \debouncerKEY0|Add0~27\);

-- Location: LCCOMB_X77_Y36_N0
\debouncerKEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~12_combout\ = (\debouncerKEY0|Add0~26_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|Add0~26_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~12_combout\);

-- Location: FF_X77_Y36_N1
\debouncerKEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~12_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X76_Y36_N6
\debouncerKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~28_combout\ = (\debouncerKEY0|s_debounceCnt\(14) & ((GND) # (!\debouncerKEY0|Add0~27\))) # (!\debouncerKEY0|s_debounceCnt\(14) & (\debouncerKEY0|Add0~27\ $ (GND)))
-- \debouncerKEY0|Add0~29\ = CARRY((\debouncerKEY0|s_debounceCnt\(14)) # (!\debouncerKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncerKEY0|Add0~27\,
	combout => \debouncerKEY0|Add0~28_combout\,
	cout => \debouncerKEY0|Add0~29\);

-- Location: LCCOMB_X75_Y36_N26
\debouncerKEY0|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~18_combout\ = (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~28_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~28_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt~18_combout\);

-- Location: FF_X75_Y36_N27
\debouncerKEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~18_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X75_Y36_N30
\debouncerKEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~5_combout\ = (!\debouncerKEY0|s_debounceCnt\(19) & (!\debouncerKEY0|s_debounceCnt\(18) & (!\debouncerKEY0|s_debounceCnt\(14) & !\debouncerKEY0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(19),
	datab => \debouncerKEY0|s_debounceCnt\(18),
	datac => \debouncerKEY0|s_debounceCnt\(14),
	datad => \debouncerKEY0|s_debounceCnt\(11),
	combout => \debouncerKEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X76_Y36_N8
\debouncerKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~30_combout\ = (\debouncerKEY0|s_debounceCnt\(15) & (\debouncerKEY0|Add0~29\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(15) & (!\debouncerKEY0|Add0~29\))
-- \debouncerKEY0|Add0~31\ = CARRY((!\debouncerKEY0|s_debounceCnt\(15) & !\debouncerKEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncerKEY0|Add0~29\,
	combout => \debouncerKEY0|Add0~30_combout\,
	cout => \debouncerKEY0|Add0~31\);

-- Location: LCCOMB_X74_Y36_N8
\debouncerKEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~6_combout\ = (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|Add0~30_combout\,
	combout => \debouncerKEY0|s_debounceCnt~6_combout\);

-- Location: FF_X74_Y36_N9
\debouncerKEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~6_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X76_Y36_N10
\debouncerKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~32_combout\ = (\debouncerKEY0|s_debounceCnt\(16) & ((GND) # (!\debouncerKEY0|Add0~31\))) # (!\debouncerKEY0|s_debounceCnt\(16) & (\debouncerKEY0|Add0~31\ $ (GND)))
-- \debouncerKEY0|Add0~33\ = CARRY((\debouncerKEY0|s_debounceCnt\(16)) # (!\debouncerKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncerKEY0|Add0~31\,
	combout => \debouncerKEY0|Add0~32_combout\,
	cout => \debouncerKEY0|Add0~33\);

-- Location: LCCOMB_X76_Y36_N24
\debouncerKEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~7_combout\ = (\debouncerKEY0|Add0~32_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~32_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~7_combout\);

-- Location: FF_X76_Y36_N25
\debouncerKEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~7_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X76_Y36_N12
\debouncerKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~34_combout\ = (\debouncerKEY0|s_debounceCnt\(17) & (\debouncerKEY0|Add0~33\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(17) & (!\debouncerKEY0|Add0~33\))
-- \debouncerKEY0|Add0~35\ = CARRY((!\debouncerKEY0|s_debounceCnt\(17) & !\debouncerKEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncerKEY0|Add0~33\,
	combout => \debouncerKEY0|Add0~34_combout\,
	cout => \debouncerKEY0|Add0~35\);

-- Location: LCCOMB_X76_Y36_N30
\debouncerKEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~8_combout\ = (\debouncerKEY0|Add0~34_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~34_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt~8_combout\);

-- Location: FF_X76_Y36_N31
\debouncerKEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~8_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y36_N18
\debouncerKEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~2_combout\ = (!\debouncerKEY0|s_debounceCnt\(16) & (!\debouncerKEY0|s_debounceCnt\(6) & (!\debouncerKEY0|s_debounceCnt\(15) & !\debouncerKEY0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(16),
	datab => \debouncerKEY0|s_debounceCnt\(6),
	datac => \debouncerKEY0|s_debounceCnt\(15),
	datad => \debouncerKEY0|s_debounceCnt\(17),
	combout => \debouncerKEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X74_Y36_N4
\debouncerKEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~4_combout\ = (!\debouncerKEY0|s_debounceCnt\(9) & (!\debouncerKEY0|s_debounceCnt\(8) & (!\debouncerKEY0|s_debounceCnt\(7) & !\debouncerKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(9),
	datab => \debouncerKEY0|s_debounceCnt\(8),
	datac => \debouncerKEY0|s_debounceCnt\(7),
	datad => \debouncerKEY0|s_debounceCnt\(10),
	combout => \debouncerKEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X77_Y36_N14
\debouncerKEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~3_combout\ = (!\debouncerKEY0|s_debounceCnt\(21) & (!\debouncerKEY0|s_debounceCnt\(13) & (!\debouncerKEY0|s_debounceCnt\(20) & !\debouncerKEY0|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(21),
	datab => \debouncerKEY0|s_debounceCnt\(13),
	datac => \debouncerKEY0|s_debounceCnt\(20),
	datad => \debouncerKEY0|s_debounceCnt\(12),
	combout => \debouncerKEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X74_Y36_N22
\debouncerKEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~6_combout\ = (\debouncerKEY0|s_pulsedOut~5_combout\ & (\debouncerKEY0|s_pulsedOut~2_combout\ & (\debouncerKEY0|s_pulsedOut~4_combout\ & \debouncerKEY0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~5_combout\,
	datab => \debouncerKEY0|s_pulsedOut~2_combout\,
	datac => \debouncerKEY0|s_pulsedOut~4_combout\,
	datad => \debouncerKEY0|s_pulsedOut~3_combout\,
	combout => \debouncerKEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X76_Y37_N0
\debouncerKEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~7_combout\ = (!\debouncerKEY0|s_debounceCnt\(4) & (!\debouncerKEY0|s_debounceCnt\(1) & (!\debouncerKEY0|s_debounceCnt\(3) & !\debouncerKEY0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(4),
	datab => \debouncerKEY0|s_debounceCnt\(1),
	datac => \debouncerKEY0|s_debounceCnt\(3),
	datad => \debouncerKEY0|s_debounceCnt\(2),
	combout => \debouncerKEY0|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X74_Y36_N28
\debouncerKEY0|s_debounceCnt[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[11]~29_combout\ = ((\debouncerKEY0|s_debounceCnt\(5)) # ((\debouncerKEY0|s_debounceCnt\(0)) # (!\debouncerKEY0|s_pulsedOut~7_combout\))) # (!\debouncerKEY0|s_pulsedOut~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~6_combout\,
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datac => \debouncerKEY0|s_debounceCnt\(0),
	datad => \debouncerKEY0|s_pulsedOut~7_combout\,
	combout => \debouncerKEY0|s_debounceCnt[11]~29_combout\);

-- Location: LCCOMB_X74_Y36_N12
\debouncerKEY0|s_debounceCnt[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[11]~4_combout\ = (\debouncerKEY0|s_debounceCnt\(22)) # (((\debouncerKEY0|s_debounceCnt[11]~29_combout\) # (!\debouncerKEY0|s_dirtyIn~q\)) # (!\debouncerKEY0|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_dirtyIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[11]~29_combout\,
	combout => \debouncerKEY0|s_debounceCnt[11]~4_combout\);

-- Location: LCCOMB_X76_Y36_N14
\debouncerKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~36_combout\ = (\debouncerKEY0|s_debounceCnt\(18) & ((GND) # (!\debouncerKEY0|Add0~35\))) # (!\debouncerKEY0|s_debounceCnt\(18) & (\debouncerKEY0|Add0~35\ $ (GND)))
-- \debouncerKEY0|Add0~37\ = CARRY((\debouncerKEY0|s_debounceCnt\(18)) # (!\debouncerKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncerKEY0|Add0~35\,
	combout => \debouncerKEY0|Add0~36_combout\,
	cout => \debouncerKEY0|Add0~37\);

-- Location: LCCOMB_X75_Y36_N4
\debouncerKEY0|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[18]~19_combout\ = (\debouncerKEY0|s_debounceCnt[11]~4_combout\ & (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~36_combout\) # (!\debouncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	datab => \debouncerKEY0|Add0~36_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt[18]~19_combout\);

-- Location: FF_X75_Y36_N5
\debouncerKEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X76_Y36_N16
\debouncerKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~38_combout\ = (\debouncerKEY0|s_debounceCnt\(19) & (\debouncerKEY0|Add0~37\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(19) & (!\debouncerKEY0|Add0~37\))
-- \debouncerKEY0|Add0~39\ = CARRY((!\debouncerKEY0|s_debounceCnt\(19) & !\debouncerKEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncerKEY0|Add0~37\,
	combout => \debouncerKEY0|Add0~38_combout\,
	cout => \debouncerKEY0|Add0~39\);

-- Location: LCCOMB_X76_Y36_N26
\debouncerKEY0|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[19]~20_combout\ = (\debouncerKEY0|s_debounceCnt[11]~4_combout\ & (\debouncerKEY0|s_debounceCnt[11]~2_combout\ & ((\debouncerKEY0|Add0~38_combout\) # (!\debouncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~38_combout\,
	datac => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt[19]~20_combout\);

-- Location: FF_X76_Y36_N27
\debouncerKEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X76_Y36_N18
\debouncerKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~40_combout\ = (\debouncerKEY0|s_debounceCnt\(20) & ((GND) # (!\debouncerKEY0|Add0~39\))) # (!\debouncerKEY0|s_debounceCnt\(20) & (\debouncerKEY0|Add0~39\ $ (GND)))
-- \debouncerKEY0|Add0~41\ = CARRY((\debouncerKEY0|s_debounceCnt\(20)) # (!\debouncerKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncerKEY0|Add0~39\,
	combout => \debouncerKEY0|Add0~40_combout\,
	cout => \debouncerKEY0|Add0~41\);

-- Location: LCCOMB_X77_Y36_N28
\debouncerKEY0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[20]~9_combout\ = (\debouncerKEY0|Add0~40_combout\ & (\debouncerKEY0|s_debounceCnt[11]~4_combout\ & \debouncerKEY0|s_debounceCnt[11]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~40_combout\,
	datac => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	combout => \debouncerKEY0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X77_Y36_N29
\debouncerKEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X76_Y36_N20
\debouncerKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~42_combout\ = (\debouncerKEY0|s_debounceCnt\(21) & (\debouncerKEY0|Add0~41\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(21) & (!\debouncerKEY0|Add0~41\))
-- \debouncerKEY0|Add0~43\ = CARRY((!\debouncerKEY0|s_debounceCnt\(21) & !\debouncerKEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncerKEY0|Add0~41\,
	combout => \debouncerKEY0|Add0~42_combout\,
	cout => \debouncerKEY0|Add0~43\);

-- Location: LCCOMB_X75_Y36_N20
\debouncerKEY0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[21]~10_combout\ = (\debouncerKEY0|Add0~42_combout\ & (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|s_debounceCnt[11]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~42_combout\,
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	combout => \debouncerKEY0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X75_Y36_N21
\debouncerKEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X77_Y36_N10
\debouncerKEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~5_combout\ = (!\debouncerKEY0|s_debounceCnt\(21) & !\debouncerKEY0|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt\(21),
	datad => \debouncerKEY0|s_debounceCnt\(20),
	combout => \debouncerKEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y36_N8
\debouncerKEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~2_combout\ = (!\debouncerKEY0|s_debounceCnt\(13) & !\debouncerKEY0|s_debounceCnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(13),
	datad => \debouncerKEY0|s_debounceCnt\(12),
	combout => \debouncerKEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y36_N18
\debouncerKEY0|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~8_combout\ = (!\debouncerKEY0|s_debounceCnt\(5) & \debouncerKEY0|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datad => \debouncerKEY0|s_pulsedOut~7_combout\,
	combout => \debouncerKEY0|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X75_Y36_N2
\debouncerKEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~0_combout\ = (\debouncerKEY0|s_debounceCnt\(7)) # ((\debouncerKEY0|s_debounceCnt\(6) & ((\debouncerKEY0|s_debounceCnt\(0)) # (!\debouncerKEY0|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(6),
	datab => \debouncerKEY0|s_debounceCnt\(0),
	datac => \debouncerKEY0|s_debounceCnt\(7),
	datad => \debouncerKEY0|s_pulsedOut~8_combout\,
	combout => \debouncerKEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y36_N28
\debouncerKEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~1_combout\ = (\debouncerKEY0|s_debounceCnt\(10)) # ((\debouncerKEY0|s_debounceCnt\(8) & (\debouncerKEY0|s_debounceCnt\(9) & \debouncerKEY0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(8),
	datab => \debouncerKEY0|s_debounceCnt\(10),
	datac => \debouncerKEY0|s_debounceCnt\(9),
	datad => \debouncerKEY0|LessThan0~0_combout\,
	combout => \debouncerKEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y36_N6
\debouncerKEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~3_combout\ = (\debouncerKEY0|s_debounceCnt\(14) & (((\debouncerKEY0|s_debounceCnt\(11) & \debouncerKEY0|LessThan0~1_combout\)) # (!\debouncerKEY0|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(14),
	datab => \debouncerKEY0|s_debounceCnt\(11),
	datac => \debouncerKEY0|LessThan0~2_combout\,
	datad => \debouncerKEY0|LessThan0~1_combout\,
	combout => \debouncerKEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X75_Y36_N12
\debouncerKEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~4_combout\ = (\debouncerKEY0|s_debounceCnt\(15)) # ((\debouncerKEY0|s_debounceCnt\(16)) # ((\debouncerKEY0|s_debounceCnt\(17)) # (\debouncerKEY0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(15),
	datab => \debouncerKEY0|s_debounceCnt\(16),
	datac => \debouncerKEY0|s_debounceCnt\(17),
	datad => \debouncerKEY0|LessThan0~3_combout\,
	combout => \debouncerKEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y36_N10
\debouncerKEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~6_combout\ = ((\debouncerKEY0|s_debounceCnt\(18) & (\debouncerKEY0|s_debounceCnt\(19) & \debouncerKEY0|LessThan0~4_combout\))) # (!\debouncerKEY0|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|LessThan0~5_combout\,
	datab => \debouncerKEY0|s_debounceCnt\(18),
	datac => \debouncerKEY0|s_debounceCnt\(19),
	datad => \debouncerKEY0|LessThan0~4_combout\,
	combout => \debouncerKEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X74_Y36_N26
\debouncerKEY0|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[22]~27_combout\ = (\debouncerKEY0|s_debounceCnt\(22) & (((!\debouncerKEY0|LessThan0~6_combout\)))) # (!\debouncerKEY0|s_debounceCnt\(22) & (((\debouncerKEY0|s_debounceCnt[11]~29_combout\)) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|LessThan0~6_combout\,
	datad => \debouncerKEY0|s_debounceCnt[11]~29_combout\,
	combout => \debouncerKEY0|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X76_Y36_N22
\debouncerKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~44_combout\ = \debouncerKEY0|Add0~43\ $ (\debouncerKEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY0|s_debounceCnt\(22),
	cin => \debouncerKEY0|Add0~43\,
	combout => \debouncerKEY0|Add0~44_combout\);

-- Location: LCCOMB_X74_Y36_N20
\debouncerKEY0|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[22]~28_combout\ = (\debouncerKEY0|s_dirtyIn~q\ & (\debouncerKEY0|s_debounceCnt[22]~27_combout\ & ((\debouncerKEY0|Add0~44_combout\) # (!\debouncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_dirtyIn~q\,
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[22]~27_combout\,
	datad => \debouncerKEY0|Add0~44_combout\,
	combout => \debouncerKEY0|s_debounceCnt[22]~28_combout\);

-- Location: FF_X74_Y36_N21
\debouncerKEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X75_Y36_N14
\debouncerKEY0|s_debounceCnt[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[11]~5_combout\ = (\debouncerKEY0|s_dirtyIn~q\ & (\debouncerKEY0|s_previousIn~q\ & ((!\debouncerKEY0|LessThan0~6_combout\) # (!\debouncerKEY0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|s_dirtyIn~q\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|LessThan0~6_combout\,
	combout => \debouncerKEY0|s_debounceCnt[11]~5_combout\);

-- Location: LCCOMB_X75_Y36_N8
\debouncerKEY0|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~26_combout\ = (\debouncerKEY0|s_debounceCnt[11]~5_combout\ & \debouncerKEY0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt[11]~5_combout\,
	datad => \debouncerKEY0|Add0~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~26_combout\);

-- Location: FF_X75_Y36_N9
\debouncerKEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~26_combout\,
	ena => \debouncerKEY0|s_debounceCnt[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X74_Y36_N10
\debouncerKEY0|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~9_combout\ = (\debouncerKEY0|s_dirtyIn~q\ & (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_debounceCnt\(0) & !\debouncerKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_dirtyIn~q\,
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt\(0),
	datad => \debouncerKEY0|s_debounceCnt\(22),
	combout => \debouncerKEY0|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X74_Y36_N24
\debouncerKEY0|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~10_combout\ = (\debouncerKEY0|s_pulsedOut~9_combout\ & (!\debouncerKEY0|s_debounceCnt\(5) & (\debouncerKEY0|s_pulsedOut~6_combout\ & \debouncerKEY0|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~9_combout\,
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datac => \debouncerKEY0|s_pulsedOut~6_combout\,
	datad => \debouncerKEY0|s_pulsedOut~7_combout\,
	combout => \debouncerKEY0|s_pulsedOut~10_combout\);

-- Location: FF_X74_Y36_N25
\debouncerKEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X66_Y29_N0
\Temporizador|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~0_combout\ = \Temporizador|s_count\(0) $ (VCC)
-- \Temporizador|Add0~1\ = CARRY(\Temporizador|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(0),
	datad => VCC,
	combout => \Temporizador|Add0~0_combout\,
	cout => \Temporizador|Add0~1\);

-- Location: LCCOMB_X65_Y29_N12
\Temporizador|s_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~12_combout\ = (\ControlSystemUnit|pState.Init~q\ & ((\Temporizador|Equal0~9_combout\ & ((!\Temporizador|s_count\(0)))) # (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \Temporizador|Add0~0_combout\,
	datac => \Temporizador|s_count\(0),
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~12_combout\);

-- Location: LCCOMB_X62_Y35_N2
\PulseGen1HZ|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[0]~31_combout\ = \PulseGen1HZ|s_counter\(0) $ (VCC)
-- \PulseGen1HZ|s_counter[0]~32\ = CARRY(\PulseGen1HZ|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(0),
	datad => VCC,
	combout => \PulseGen1HZ|s_counter[0]~31_combout\,
	cout => \PulseGen1HZ|s_counter[0]~32\);

-- Location: LCCOMB_X63_Y34_N0
\PulseGen1HZ|s_counter[18]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[18]~33_combout\ = (!\PulseGen1HZ|Equal0~9_combout\) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \PulseGen1HZ|Equal0~9_combout\,
	combout => \PulseGen1HZ|s_counter[18]~33_combout\);

-- Location: FF_X62_Y35_N3
\PulseGen1HZ|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[0]~31_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(0));

-- Location: LCCOMB_X62_Y35_N4
\PulseGen1HZ|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[1]~34_combout\ = (\PulseGen1HZ|s_counter\(1) & (!\PulseGen1HZ|s_counter[0]~32\)) # (!\PulseGen1HZ|s_counter\(1) & ((\PulseGen1HZ|s_counter[0]~32\) # (GND)))
-- \PulseGen1HZ|s_counter[1]~35\ = CARRY((!\PulseGen1HZ|s_counter[0]~32\) # (!\PulseGen1HZ|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(1),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[0]~32\,
	combout => \PulseGen1HZ|s_counter[1]~34_combout\,
	cout => \PulseGen1HZ|s_counter[1]~35\);

-- Location: FF_X62_Y35_N5
\PulseGen1HZ|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[1]~34_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(1));

-- Location: LCCOMB_X62_Y35_N6
\PulseGen1HZ|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[2]~36_combout\ = (\PulseGen1HZ|s_counter\(2) & (\PulseGen1HZ|s_counter[1]~35\ $ (GND))) # (!\PulseGen1HZ|s_counter\(2) & (!\PulseGen1HZ|s_counter[1]~35\ & VCC))
-- \PulseGen1HZ|s_counter[2]~37\ = CARRY((\PulseGen1HZ|s_counter\(2) & !\PulseGen1HZ|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(2),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[1]~35\,
	combout => \PulseGen1HZ|s_counter[2]~36_combout\,
	cout => \PulseGen1HZ|s_counter[2]~37\);

-- Location: FF_X62_Y35_N7
\PulseGen1HZ|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[2]~36_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(2));

-- Location: LCCOMB_X62_Y35_N8
\PulseGen1HZ|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[3]~38_combout\ = (\PulseGen1HZ|s_counter\(3) & (!\PulseGen1HZ|s_counter[2]~37\)) # (!\PulseGen1HZ|s_counter\(3) & ((\PulseGen1HZ|s_counter[2]~37\) # (GND)))
-- \PulseGen1HZ|s_counter[3]~39\ = CARRY((!\PulseGen1HZ|s_counter[2]~37\) # (!\PulseGen1HZ|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(3),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[2]~37\,
	combout => \PulseGen1HZ|s_counter[3]~38_combout\,
	cout => \PulseGen1HZ|s_counter[3]~39\);

-- Location: FF_X62_Y35_N9
\PulseGen1HZ|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[3]~38_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(3));

-- Location: LCCOMB_X62_Y35_N10
\PulseGen1HZ|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[4]~40_combout\ = (\PulseGen1HZ|s_counter\(4) & (\PulseGen1HZ|s_counter[3]~39\ $ (GND))) # (!\PulseGen1HZ|s_counter\(4) & (!\PulseGen1HZ|s_counter[3]~39\ & VCC))
-- \PulseGen1HZ|s_counter[4]~41\ = CARRY((\PulseGen1HZ|s_counter\(4) & !\PulseGen1HZ|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(4),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[3]~39\,
	combout => \PulseGen1HZ|s_counter[4]~40_combout\,
	cout => \PulseGen1HZ|s_counter[4]~41\);

-- Location: FF_X62_Y35_N11
\PulseGen1HZ|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[4]~40_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(4));

-- Location: LCCOMB_X62_Y35_N12
\PulseGen1HZ|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[5]~42_combout\ = (\PulseGen1HZ|s_counter\(5) & (!\PulseGen1HZ|s_counter[4]~41\)) # (!\PulseGen1HZ|s_counter\(5) & ((\PulseGen1HZ|s_counter[4]~41\) # (GND)))
-- \PulseGen1HZ|s_counter[5]~43\ = CARRY((!\PulseGen1HZ|s_counter[4]~41\) # (!\PulseGen1HZ|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(5),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[4]~41\,
	combout => \PulseGen1HZ|s_counter[5]~42_combout\,
	cout => \PulseGen1HZ|s_counter[5]~43\);

-- Location: FF_X62_Y35_N13
\PulseGen1HZ|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[5]~42_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(5));

-- Location: LCCOMB_X62_Y35_N14
\PulseGen1HZ|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[6]~44_combout\ = (\PulseGen1HZ|s_counter\(6) & (\PulseGen1HZ|s_counter[5]~43\ $ (GND))) # (!\PulseGen1HZ|s_counter\(6) & (!\PulseGen1HZ|s_counter[5]~43\ & VCC))
-- \PulseGen1HZ|s_counter[6]~45\ = CARRY((\PulseGen1HZ|s_counter\(6) & !\PulseGen1HZ|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(6),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[5]~43\,
	combout => \PulseGen1HZ|s_counter[6]~44_combout\,
	cout => \PulseGen1HZ|s_counter[6]~45\);

-- Location: FF_X62_Y35_N15
\PulseGen1HZ|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[6]~44_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(6));

-- Location: LCCOMB_X62_Y35_N16
\PulseGen1HZ|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[7]~46_combout\ = (\PulseGen1HZ|s_counter\(7) & (!\PulseGen1HZ|s_counter[6]~45\)) # (!\PulseGen1HZ|s_counter\(7) & ((\PulseGen1HZ|s_counter[6]~45\) # (GND)))
-- \PulseGen1HZ|s_counter[7]~47\ = CARRY((!\PulseGen1HZ|s_counter[6]~45\) # (!\PulseGen1HZ|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(7),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[6]~45\,
	combout => \PulseGen1HZ|s_counter[7]~46_combout\,
	cout => \PulseGen1HZ|s_counter[7]~47\);

-- Location: FF_X62_Y35_N17
\PulseGen1HZ|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[7]~46_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(7));

-- Location: LCCOMB_X62_Y35_N18
\PulseGen1HZ|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[8]~48_combout\ = (\PulseGen1HZ|s_counter\(8) & (\PulseGen1HZ|s_counter[7]~47\ $ (GND))) # (!\PulseGen1HZ|s_counter\(8) & (!\PulseGen1HZ|s_counter[7]~47\ & VCC))
-- \PulseGen1HZ|s_counter[8]~49\ = CARRY((\PulseGen1HZ|s_counter\(8) & !\PulseGen1HZ|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(8),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[7]~47\,
	combout => \PulseGen1HZ|s_counter[8]~48_combout\,
	cout => \PulseGen1HZ|s_counter[8]~49\);

-- Location: FF_X62_Y35_N19
\PulseGen1HZ|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[8]~48_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(8));

-- Location: LCCOMB_X62_Y35_N20
\PulseGen1HZ|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[9]~50_combout\ = (\PulseGen1HZ|s_counter\(9) & (!\PulseGen1HZ|s_counter[8]~49\)) # (!\PulseGen1HZ|s_counter\(9) & ((\PulseGen1HZ|s_counter[8]~49\) # (GND)))
-- \PulseGen1HZ|s_counter[9]~51\ = CARRY((!\PulseGen1HZ|s_counter[8]~49\) # (!\PulseGen1HZ|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(9),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[8]~49\,
	combout => \PulseGen1HZ|s_counter[9]~50_combout\,
	cout => \PulseGen1HZ|s_counter[9]~51\);

-- Location: FF_X62_Y35_N21
\PulseGen1HZ|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[9]~50_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(9));

-- Location: LCCOMB_X62_Y35_N22
\PulseGen1HZ|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[10]~52_combout\ = (\PulseGen1HZ|s_counter\(10) & (\PulseGen1HZ|s_counter[9]~51\ $ (GND))) # (!\PulseGen1HZ|s_counter\(10) & (!\PulseGen1HZ|s_counter[9]~51\ & VCC))
-- \PulseGen1HZ|s_counter[10]~53\ = CARRY((\PulseGen1HZ|s_counter\(10) & !\PulseGen1HZ|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(10),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[9]~51\,
	combout => \PulseGen1HZ|s_counter[10]~52_combout\,
	cout => \PulseGen1HZ|s_counter[10]~53\);

-- Location: FF_X62_Y35_N23
\PulseGen1HZ|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[10]~52_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(10));

-- Location: LCCOMB_X62_Y35_N24
\PulseGen1HZ|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[11]~54_combout\ = (\PulseGen1HZ|s_counter\(11) & (!\PulseGen1HZ|s_counter[10]~53\)) # (!\PulseGen1HZ|s_counter\(11) & ((\PulseGen1HZ|s_counter[10]~53\) # (GND)))
-- \PulseGen1HZ|s_counter[11]~55\ = CARRY((!\PulseGen1HZ|s_counter[10]~53\) # (!\PulseGen1HZ|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(11),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[10]~53\,
	combout => \PulseGen1HZ|s_counter[11]~54_combout\,
	cout => \PulseGen1HZ|s_counter[11]~55\);

-- Location: FF_X62_Y35_N25
\PulseGen1HZ|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[11]~54_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(11));

-- Location: LCCOMB_X62_Y35_N26
\PulseGen1HZ|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[12]~56_combout\ = (\PulseGen1HZ|s_counter\(12) & (\PulseGen1HZ|s_counter[11]~55\ $ (GND))) # (!\PulseGen1HZ|s_counter\(12) & (!\PulseGen1HZ|s_counter[11]~55\ & VCC))
-- \PulseGen1HZ|s_counter[12]~57\ = CARRY((\PulseGen1HZ|s_counter\(12) & !\PulseGen1HZ|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(12),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[11]~55\,
	combout => \PulseGen1HZ|s_counter[12]~56_combout\,
	cout => \PulseGen1HZ|s_counter[12]~57\);

-- Location: FF_X62_Y35_N27
\PulseGen1HZ|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[12]~56_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(12));

-- Location: LCCOMB_X62_Y35_N28
\PulseGen1HZ|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[13]~58_combout\ = (\PulseGen1HZ|s_counter\(13) & (!\PulseGen1HZ|s_counter[12]~57\)) # (!\PulseGen1HZ|s_counter\(13) & ((\PulseGen1HZ|s_counter[12]~57\) # (GND)))
-- \PulseGen1HZ|s_counter[13]~59\ = CARRY((!\PulseGen1HZ|s_counter[12]~57\) # (!\PulseGen1HZ|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(13),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[12]~57\,
	combout => \PulseGen1HZ|s_counter[13]~58_combout\,
	cout => \PulseGen1HZ|s_counter[13]~59\);

-- Location: FF_X62_Y35_N29
\PulseGen1HZ|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[13]~58_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(13));

-- Location: LCCOMB_X62_Y35_N30
\PulseGen1HZ|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[14]~60_combout\ = (\PulseGen1HZ|s_counter\(14) & (\PulseGen1HZ|s_counter[13]~59\ $ (GND))) # (!\PulseGen1HZ|s_counter\(14) & (!\PulseGen1HZ|s_counter[13]~59\ & VCC))
-- \PulseGen1HZ|s_counter[14]~61\ = CARRY((\PulseGen1HZ|s_counter\(14) & !\PulseGen1HZ|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(14),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[13]~59\,
	combout => \PulseGen1HZ|s_counter[14]~60_combout\,
	cout => \PulseGen1HZ|s_counter[14]~61\);

-- Location: FF_X62_Y35_N31
\PulseGen1HZ|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[14]~60_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(14));

-- Location: LCCOMB_X62_Y34_N0
\PulseGen1HZ|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[15]~62_combout\ = (\PulseGen1HZ|s_counter\(15) & (!\PulseGen1HZ|s_counter[14]~61\)) # (!\PulseGen1HZ|s_counter\(15) & ((\PulseGen1HZ|s_counter[14]~61\) # (GND)))
-- \PulseGen1HZ|s_counter[15]~63\ = CARRY((!\PulseGen1HZ|s_counter[14]~61\) # (!\PulseGen1HZ|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(15),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[14]~61\,
	combout => \PulseGen1HZ|s_counter[15]~62_combout\,
	cout => \PulseGen1HZ|s_counter[15]~63\);

-- Location: FF_X62_Y34_N1
\PulseGen1HZ|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[15]~62_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(15));

-- Location: LCCOMB_X62_Y34_N2
\PulseGen1HZ|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[16]~64_combout\ = (\PulseGen1HZ|s_counter\(16) & (\PulseGen1HZ|s_counter[15]~63\ $ (GND))) # (!\PulseGen1HZ|s_counter\(16) & (!\PulseGen1HZ|s_counter[15]~63\ & VCC))
-- \PulseGen1HZ|s_counter[16]~65\ = CARRY((\PulseGen1HZ|s_counter\(16) & !\PulseGen1HZ|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(16),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[15]~63\,
	combout => \PulseGen1HZ|s_counter[16]~64_combout\,
	cout => \PulseGen1HZ|s_counter[16]~65\);

-- Location: FF_X62_Y34_N3
\PulseGen1HZ|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[16]~64_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(16));

-- Location: LCCOMB_X62_Y34_N4
\PulseGen1HZ|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[17]~66_combout\ = (\PulseGen1HZ|s_counter\(17) & (!\PulseGen1HZ|s_counter[16]~65\)) # (!\PulseGen1HZ|s_counter\(17) & ((\PulseGen1HZ|s_counter[16]~65\) # (GND)))
-- \PulseGen1HZ|s_counter[17]~67\ = CARRY((!\PulseGen1HZ|s_counter[16]~65\) # (!\PulseGen1HZ|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(17),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[16]~65\,
	combout => \PulseGen1HZ|s_counter[17]~66_combout\,
	cout => \PulseGen1HZ|s_counter[17]~67\);

-- Location: FF_X62_Y34_N5
\PulseGen1HZ|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[17]~66_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(17));

-- Location: LCCOMB_X62_Y34_N6
\PulseGen1HZ|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[18]~68_combout\ = (\PulseGen1HZ|s_counter\(18) & (\PulseGen1HZ|s_counter[17]~67\ $ (GND))) # (!\PulseGen1HZ|s_counter\(18) & (!\PulseGen1HZ|s_counter[17]~67\ & VCC))
-- \PulseGen1HZ|s_counter[18]~69\ = CARRY((\PulseGen1HZ|s_counter\(18) & !\PulseGen1HZ|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(18),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[17]~67\,
	combout => \PulseGen1HZ|s_counter[18]~68_combout\,
	cout => \PulseGen1HZ|s_counter[18]~69\);

-- Location: FF_X62_Y34_N7
\PulseGen1HZ|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[18]~68_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(18));

-- Location: LCCOMB_X62_Y34_N8
\PulseGen1HZ|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[19]~70_combout\ = (\PulseGen1HZ|s_counter\(19) & (!\PulseGen1HZ|s_counter[18]~69\)) # (!\PulseGen1HZ|s_counter\(19) & ((\PulseGen1HZ|s_counter[18]~69\) # (GND)))
-- \PulseGen1HZ|s_counter[19]~71\ = CARRY((!\PulseGen1HZ|s_counter[18]~69\) # (!\PulseGen1HZ|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(19),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[18]~69\,
	combout => \PulseGen1HZ|s_counter[19]~70_combout\,
	cout => \PulseGen1HZ|s_counter[19]~71\);

-- Location: FF_X62_Y34_N9
\PulseGen1HZ|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[19]~70_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(19));

-- Location: LCCOMB_X62_Y34_N10
\PulseGen1HZ|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[20]~72_combout\ = (\PulseGen1HZ|s_counter\(20) & (\PulseGen1HZ|s_counter[19]~71\ $ (GND))) # (!\PulseGen1HZ|s_counter\(20) & (!\PulseGen1HZ|s_counter[19]~71\ & VCC))
-- \PulseGen1HZ|s_counter[20]~73\ = CARRY((\PulseGen1HZ|s_counter\(20) & !\PulseGen1HZ|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(20),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[19]~71\,
	combout => \PulseGen1HZ|s_counter[20]~72_combout\,
	cout => \PulseGen1HZ|s_counter[20]~73\);

-- Location: FF_X62_Y34_N11
\PulseGen1HZ|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[20]~72_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(20));

-- Location: LCCOMB_X62_Y34_N12
\PulseGen1HZ|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[21]~74_combout\ = (\PulseGen1HZ|s_counter\(21) & (!\PulseGen1HZ|s_counter[20]~73\)) # (!\PulseGen1HZ|s_counter\(21) & ((\PulseGen1HZ|s_counter[20]~73\) # (GND)))
-- \PulseGen1HZ|s_counter[21]~75\ = CARRY((!\PulseGen1HZ|s_counter[20]~73\) # (!\PulseGen1HZ|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(21),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[20]~73\,
	combout => \PulseGen1HZ|s_counter[21]~74_combout\,
	cout => \PulseGen1HZ|s_counter[21]~75\);

-- Location: FF_X62_Y34_N13
\PulseGen1HZ|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[21]~74_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(21));

-- Location: LCCOMB_X62_Y34_N14
\PulseGen1HZ|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[22]~76_combout\ = (\PulseGen1HZ|s_counter\(22) & (\PulseGen1HZ|s_counter[21]~75\ $ (GND))) # (!\PulseGen1HZ|s_counter\(22) & (!\PulseGen1HZ|s_counter[21]~75\ & VCC))
-- \PulseGen1HZ|s_counter[22]~77\ = CARRY((\PulseGen1HZ|s_counter\(22) & !\PulseGen1HZ|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(22),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[21]~75\,
	combout => \PulseGen1HZ|s_counter[22]~76_combout\,
	cout => \PulseGen1HZ|s_counter[22]~77\);

-- Location: FF_X62_Y34_N15
\PulseGen1HZ|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[22]~76_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(22));

-- Location: LCCOMB_X62_Y34_N16
\PulseGen1HZ|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[23]~78_combout\ = (\PulseGen1HZ|s_counter\(23) & (!\PulseGen1HZ|s_counter[22]~77\)) # (!\PulseGen1HZ|s_counter\(23) & ((\PulseGen1HZ|s_counter[22]~77\) # (GND)))
-- \PulseGen1HZ|s_counter[23]~79\ = CARRY((!\PulseGen1HZ|s_counter[22]~77\) # (!\PulseGen1HZ|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(23),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[22]~77\,
	combout => \PulseGen1HZ|s_counter[23]~78_combout\,
	cout => \PulseGen1HZ|s_counter[23]~79\);

-- Location: FF_X62_Y34_N17
\PulseGen1HZ|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[23]~78_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(23));

-- Location: LCCOMB_X63_Y34_N12
\PulseGen1HZ|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~6_combout\ = (((!\PulseGen1HZ|s_counter\(22)) # (!\PulseGen1HZ|s_counter\(23))) # (!\PulseGen1HZ|s_counter\(21))) # (!\PulseGen1HZ|s_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(20),
	datab => \PulseGen1HZ|s_counter\(21),
	datac => \PulseGen1HZ|s_counter\(23),
	datad => \PulseGen1HZ|s_counter\(22),
	combout => \PulseGen1HZ|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y34_N18
\PulseGen1HZ|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[24]~80_combout\ = (\PulseGen1HZ|s_counter\(24) & (\PulseGen1HZ|s_counter[23]~79\ $ (GND))) # (!\PulseGen1HZ|s_counter\(24) & (!\PulseGen1HZ|s_counter[23]~79\ & VCC))
-- \PulseGen1HZ|s_counter[24]~81\ = CARRY((\PulseGen1HZ|s_counter\(24) & !\PulseGen1HZ|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(24),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[23]~79\,
	combout => \PulseGen1HZ|s_counter[24]~80_combout\,
	cout => \PulseGen1HZ|s_counter[24]~81\);

-- Location: FF_X62_Y34_N19
\PulseGen1HZ|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[24]~80_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(24));

-- Location: LCCOMB_X62_Y34_N20
\PulseGen1HZ|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[25]~82_combout\ = (\PulseGen1HZ|s_counter\(25) & (!\PulseGen1HZ|s_counter[24]~81\)) # (!\PulseGen1HZ|s_counter\(25) & ((\PulseGen1HZ|s_counter[24]~81\) # (GND)))
-- \PulseGen1HZ|s_counter[25]~83\ = CARRY((!\PulseGen1HZ|s_counter[24]~81\) # (!\PulseGen1HZ|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(25),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[24]~81\,
	combout => \PulseGen1HZ|s_counter[25]~82_combout\,
	cout => \PulseGen1HZ|s_counter[25]~83\);

-- Location: FF_X62_Y34_N21
\PulseGen1HZ|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[25]~82_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(25));

-- Location: LCCOMB_X62_Y34_N22
\PulseGen1HZ|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[26]~84_combout\ = (\PulseGen1HZ|s_counter\(26) & (\PulseGen1HZ|s_counter[25]~83\ $ (GND))) # (!\PulseGen1HZ|s_counter\(26) & (!\PulseGen1HZ|s_counter[25]~83\ & VCC))
-- \PulseGen1HZ|s_counter[26]~85\ = CARRY((\PulseGen1HZ|s_counter\(26) & !\PulseGen1HZ|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(26),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[25]~83\,
	combout => \PulseGen1HZ|s_counter[26]~84_combout\,
	cout => \PulseGen1HZ|s_counter[26]~85\);

-- Location: FF_X62_Y34_N23
\PulseGen1HZ|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[26]~84_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(26));

-- Location: LCCOMB_X62_Y34_N24
\PulseGen1HZ|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[27]~86_combout\ = (\PulseGen1HZ|s_counter\(27) & (!\PulseGen1HZ|s_counter[26]~85\)) # (!\PulseGen1HZ|s_counter\(27) & ((\PulseGen1HZ|s_counter[26]~85\) # (GND)))
-- \PulseGen1HZ|s_counter[27]~87\ = CARRY((!\PulseGen1HZ|s_counter[26]~85\) # (!\PulseGen1HZ|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(27),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[26]~85\,
	combout => \PulseGen1HZ|s_counter[27]~86_combout\,
	cout => \PulseGen1HZ|s_counter[27]~87\);

-- Location: FF_X62_Y34_N25
\PulseGen1HZ|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[27]~86_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(27));

-- Location: LCCOMB_X62_Y34_N26
\PulseGen1HZ|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[28]~88_combout\ = (\PulseGen1HZ|s_counter\(28) & (\PulseGen1HZ|s_counter[27]~87\ $ (GND))) # (!\PulseGen1HZ|s_counter\(28) & (!\PulseGen1HZ|s_counter[27]~87\ & VCC))
-- \PulseGen1HZ|s_counter[28]~89\ = CARRY((\PulseGen1HZ|s_counter\(28) & !\PulseGen1HZ|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(28),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[27]~87\,
	combout => \PulseGen1HZ|s_counter[28]~88_combout\,
	cout => \PulseGen1HZ|s_counter[28]~89\);

-- Location: FF_X62_Y34_N27
\PulseGen1HZ|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[28]~88_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(28));

-- Location: LCCOMB_X62_Y34_N28
\PulseGen1HZ|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[29]~90_combout\ = (\PulseGen1HZ|s_counter\(29) & (!\PulseGen1HZ|s_counter[28]~89\)) # (!\PulseGen1HZ|s_counter\(29) & ((\PulseGen1HZ|s_counter[28]~89\) # (GND)))
-- \PulseGen1HZ|s_counter[29]~91\ = CARRY((!\PulseGen1HZ|s_counter[28]~89\) # (!\PulseGen1HZ|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PulseGen1HZ|s_counter\(29),
	datad => VCC,
	cin => \PulseGen1HZ|s_counter[28]~89\,
	combout => \PulseGen1HZ|s_counter[29]~90_combout\,
	cout => \PulseGen1HZ|s_counter[29]~91\);

-- Location: FF_X62_Y34_N29
\PulseGen1HZ|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[29]~90_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(29));

-- Location: LCCOMB_X62_Y34_N30
\PulseGen1HZ|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|s_counter[30]~92_combout\ = \PulseGen1HZ|s_counter\(30) $ (!\PulseGen1HZ|s_counter[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(30),
	cin => \PulseGen1HZ|s_counter[29]~91\,
	combout => \PulseGen1HZ|s_counter[30]~92_combout\);

-- Location: FF_X62_Y34_N31
\PulseGen1HZ|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|s_counter[30]~92_combout\,
	sclr => \PulseGen1HZ|s_counter[18]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|s_counter\(30));

-- Location: LCCOMB_X63_Y34_N2
\PulseGen1HZ|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~7_combout\ = (\PulseGen1HZ|s_counter\(26)) # (((\PulseGen1HZ|s_counter\(27)) # (\PulseGen1HZ|s_counter\(24))) # (!\PulseGen1HZ|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(26),
	datab => \PulseGen1HZ|s_counter\(25),
	datac => \PulseGen1HZ|s_counter\(27),
	datad => \PulseGen1HZ|s_counter\(24),
	combout => \PulseGen1HZ|Equal0~7_combout\);

-- Location: LCCOMB_X63_Y34_N20
\PulseGen1HZ|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~8_combout\ = (\PulseGen1HZ|s_counter\(29)) # ((\PulseGen1HZ|s_counter\(30)) # ((\PulseGen1HZ|s_counter\(28)) # (\PulseGen1HZ|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(29),
	datab => \PulseGen1HZ|s_counter\(30),
	datac => \PulseGen1HZ|s_counter\(28),
	datad => \PulseGen1HZ|Equal0~7_combout\,
	combout => \PulseGen1HZ|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y34_N22
\PulseGen1HZ|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~5_combout\ = (\PulseGen1HZ|s_counter\(16)) # ((\PulseGen1HZ|s_counter\(18)) # ((!\PulseGen1HZ|s_counter\(19)) # (!\PulseGen1HZ|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(16),
	datab => \PulseGen1HZ|s_counter\(18),
	datac => \PulseGen1HZ|s_counter\(17),
	datad => \PulseGen1HZ|s_counter\(19),
	combout => \PulseGen1HZ|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y35_N12
\PulseGen1HZ|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~0_combout\ = (((!\PulseGen1HZ|s_counter\(3)) # (!\PulseGen1HZ|s_counter\(1))) # (!\PulseGen1HZ|s_counter\(2))) # (!\PulseGen1HZ|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(0),
	datab => \PulseGen1HZ|s_counter\(2),
	datac => \PulseGen1HZ|s_counter\(1),
	datad => \PulseGen1HZ|s_counter\(3),
	combout => \PulseGen1HZ|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y34_N18
\PulseGen1HZ|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~3_combout\ = (((!\PulseGen1HZ|s_counter\(14)) # (!\PulseGen1HZ|s_counter\(13))) # (!\PulseGen1HZ|s_counter\(15))) # (!\PulseGen1HZ|s_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(12),
	datab => \PulseGen1HZ|s_counter\(15),
	datac => \PulseGen1HZ|s_counter\(13),
	datad => \PulseGen1HZ|s_counter\(14),
	combout => \PulseGen1HZ|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y35_N30
\PulseGen1HZ|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~1_combout\ = (((\PulseGen1HZ|s_counter\(7)) # (!\PulseGen1HZ|s_counter\(6))) # (!\PulseGen1HZ|s_counter\(5))) # (!\PulseGen1HZ|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(4),
	datab => \PulseGen1HZ|s_counter\(5),
	datac => \PulseGen1HZ|s_counter\(7),
	datad => \PulseGen1HZ|s_counter\(6),
	combout => \PulseGen1HZ|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y35_N0
\PulseGen1HZ|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~2_combout\ = (\PulseGen1HZ|s_counter\(9)) # ((\PulseGen1HZ|s_counter\(8)) # ((\PulseGen1HZ|s_counter\(10)) # (\PulseGen1HZ|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|s_counter\(9),
	datab => \PulseGen1HZ|s_counter\(8),
	datac => \PulseGen1HZ|s_counter\(10),
	datad => \PulseGen1HZ|s_counter\(11),
	combout => \PulseGen1HZ|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y34_N28
\PulseGen1HZ|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~4_combout\ = (\PulseGen1HZ|Equal0~0_combout\) # ((\PulseGen1HZ|Equal0~3_combout\) # ((\PulseGen1HZ|Equal0~1_combout\) # (\PulseGen1HZ|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|Equal0~0_combout\,
	datab => \PulseGen1HZ|Equal0~3_combout\,
	datac => \PulseGen1HZ|Equal0~1_combout\,
	datad => \PulseGen1HZ|Equal0~2_combout\,
	combout => \PulseGen1HZ|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y34_N10
\PulseGen1HZ|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|Equal0~9_combout\ = (\PulseGen1HZ|Equal0~6_combout\) # ((\PulseGen1HZ|Equal0~8_combout\) # ((\PulseGen1HZ|Equal0~5_combout\) # (\PulseGen1HZ|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|Equal0~6_combout\,
	datab => \PulseGen1HZ|Equal0~8_combout\,
	datac => \PulseGen1HZ|Equal0~5_combout\,
	datad => \PulseGen1HZ|Equal0~4_combout\,
	combout => \PulseGen1HZ|Equal0~9_combout\);

-- Location: LCCOMB_X63_Y34_N8
\PulseGen1HZ|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PulseGen1HZ|pulse~0_combout\ = (\ControlSystemUnit|pState.Init~q\ & !\PulseGen1HZ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \PulseGen1HZ|Equal0~9_combout\,
	combout => \PulseGen1HZ|pulse~0_combout\);

-- Location: FF_X63_Y34_N9
\PulseGen1HZ|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \PulseGen1HZ|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PulseGen1HZ|pulse~q\);

-- Location: LCCOMB_X67_Y29_N30
\Temporizador|s_count[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count[20]~5_combout\ = ((\ControlSystemUnit|pState.TimeProcess~q\ & \PulseGen1HZ|pulse~q\)) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState.TimeProcess~q\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \PulseGen1HZ|pulse~q\,
	combout => \Temporizador|s_count[20]~5_combout\);

-- Location: FF_X65_Y29_N13
\Temporizador|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~12_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(0));

-- Location: LCCOMB_X66_Y29_N2
\Temporizador|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~2_combout\ = (\Temporizador|s_count\(1) & (\Temporizador|Add0~1\ & VCC)) # (!\Temporizador|s_count\(1) & (!\Temporizador|Add0~1\))
-- \Temporizador|Add0~3\ = CARRY((!\Temporizador|s_count\(1) & !\Temporizador|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datad => VCC,
	cin => \Temporizador|Add0~1\,
	combout => \Temporizador|Add0~2_combout\,
	cout => \Temporizador|Add0~3\);

-- Location: LCCOMB_X65_Y28_N0
\Temporizador|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~6_combout\ = ((!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~2_combout\)) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~2_combout\,
	combout => \Temporizador|s_count~6_combout\);

-- Location: FF_X65_Y28_N1
\Temporizador|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~6_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(1));

-- Location: LCCOMB_X66_Y29_N4
\Temporizador|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~4_combout\ = (\Temporizador|s_count\(2) & ((GND) # (!\Temporizador|Add0~3\))) # (!\Temporizador|s_count\(2) & (\Temporizador|Add0~3\ $ (GND)))
-- \Temporizador|Add0~5\ = CARRY((\Temporizador|s_count\(2)) # (!\Temporizador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datad => VCC,
	cin => \Temporizador|Add0~3\,
	combout => \Temporizador|Add0~4_combout\,
	cout => \Temporizador|Add0~5\);

-- Location: LCCOMB_X67_Y29_N20
\Temporizador|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~7_combout\ = ((\Temporizador|Equal0~9_combout\ & ((!\Temporizador|s_count\(0)))) # (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~4_combout\))) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \Temporizador|Add0~4_combout\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|s_count\(0),
	combout => \Temporizador|s_count~7_combout\);

-- Location: FF_X67_Y29_N21
\Temporizador|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~7_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(2));

-- Location: LCCOMB_X66_Y29_N6
\Temporizador|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~6_combout\ = (\Temporizador|s_count\(3) & (\Temporizador|Add0~5\ & VCC)) # (!\Temporizador|s_count\(3) & (!\Temporizador|Add0~5\))
-- \Temporizador|Add0~7\ = CARRY((!\Temporizador|s_count\(3) & !\Temporizador|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(3),
	datad => VCC,
	cin => \Temporizador|Add0~5\,
	combout => \Temporizador|Add0~6_combout\,
	cout => \Temporizador|Add0~7\);

-- Location: LCCOMB_X67_Y29_N22
\Temporizador|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~4_combout\ = ((\Temporizador|Equal0~9_combout\ & ((!\Temporizador|s_count\(0)))) # (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~6_combout\))) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \Temporizador|Add0~6_combout\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|s_count\(0),
	combout => \Temporizador|s_count~4_combout\);

-- Location: FF_X67_Y29_N23
\Temporizador|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~4_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(3));

-- Location: LCCOMB_X66_Y29_N8
\Temporizador|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~8_combout\ = (\Temporizador|s_count\(4) & ((GND) # (!\Temporizador|Add0~7\))) # (!\Temporizador|s_count\(4) & (\Temporizador|Add0~7\ $ (GND)))
-- \Temporizador|Add0~9\ = CARRY((\Temporizador|s_count\(4)) # (!\Temporizador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datad => VCC,
	cin => \Temporizador|Add0~7\,
	combout => \Temporizador|Add0~8_combout\,
	cout => \Temporizador|Add0~9\);

-- Location: LCCOMB_X65_Y29_N10
\Temporizador|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~9_combout\ = ((\Temporizador|Equal0~9_combout\ & (!\Temporizador|s_count\(0))) # (!\Temporizador|Equal0~9_combout\ & ((\Temporizador|Add0~8_combout\)))) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(0),
	datab => \Temporizador|Add0~8_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~9_combout\);

-- Location: FF_X65_Y29_N11
\Temporizador|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~9_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(4));

-- Location: LCCOMB_X66_Y29_N10
\Temporizador|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~10_combout\ = (\Temporizador|s_count\(5) & (\Temporizador|Add0~9\ & VCC)) # (!\Temporizador|s_count\(5) & (!\Temporizador|Add0~9\))
-- \Temporizador|Add0~11\ = CARRY((!\Temporizador|s_count\(5) & !\Temporizador|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(5),
	datad => VCC,
	cin => \Temporizador|Add0~9\,
	combout => \Temporizador|Add0~10_combout\,
	cout => \Temporizador|Add0~11\);

-- Location: LCCOMB_X65_Y29_N16
\Temporizador|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~8_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~10_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~10_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~8_combout\);

-- Location: FF_X65_Y29_N17
\Temporizador|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~8_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(5));

-- Location: LCCOMB_X66_Y29_N12
\Temporizador|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~12_combout\ = (\Temporizador|s_count\(6) & ((GND) # (!\Temporizador|Add0~11\))) # (!\Temporizador|s_count\(6) & (\Temporizador|Add0~11\ $ (GND)))
-- \Temporizador|Add0~13\ = CARRY((\Temporizador|s_count\(6)) # (!\Temporizador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datad => VCC,
	cin => \Temporizador|Add0~11\,
	combout => \Temporizador|Add0~12_combout\,
	cout => \Temporizador|Add0~13\);

-- Location: LCCOMB_X67_Y29_N26
\Temporizador|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~10_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~12_combout\,
	combout => \Temporizador|s_count~10_combout\);

-- Location: FF_X67_Y29_N27
\Temporizador|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~10_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(6));

-- Location: LCCOMB_X66_Y29_N14
\Temporizador|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~14_combout\ = (\Temporizador|s_count\(7) & (\Temporizador|Add0~13\ & VCC)) # (!\Temporizador|s_count\(7) & (!\Temporizador|Add0~13\))
-- \Temporizador|Add0~15\ = CARRY((!\Temporizador|s_count\(7) & !\Temporizador|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(7),
	datad => VCC,
	cin => \Temporizador|Add0~13\,
	combout => \Temporizador|Add0~14_combout\,
	cout => \Temporizador|Add0~15\);

-- Location: LCCOMB_X65_Y29_N4
\Temporizador|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~11_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~14_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~14_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~11_combout\);

-- Location: FF_X65_Y29_N5
\Temporizador|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~11_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(7));

-- Location: LCCOMB_X66_Y29_N16
\Temporizador|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~16_combout\ = (\Temporizador|s_count\(8) & ((GND) # (!\Temporizador|Add0~15\))) # (!\Temporizador|s_count\(8) & (\Temporizador|Add0~15\ $ (GND)))
-- \Temporizador|Add0~17\ = CARRY((\Temporizador|s_count\(8)) # (!\Temporizador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(8),
	datad => VCC,
	cin => \Temporizador|Add0~15\,
	combout => \Temporizador|Add0~16_combout\,
	cout => \Temporizador|Add0~17\);

-- Location: LCCOMB_X67_Y29_N6
\Temporizador|s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~13_combout\ = (\Temporizador|Add0~16_combout\ & (!\Temporizador|Equal0~9_combout\ & \ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Add0~16_combout\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \ControlSystemUnit|pState.Init~q\,
	combout => \Temporizador|s_count~13_combout\);

-- Location: FF_X67_Y29_N7
\Temporizador|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~13_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(8));

-- Location: LCCOMB_X66_Y29_N18
\Temporizador|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~18_combout\ = (\Temporizador|s_count\(9) & (\Temporizador|Add0~17\ & VCC)) # (!\Temporizador|s_count\(9) & (!\Temporizador|Add0~17\))
-- \Temporizador|Add0~19\ = CARRY((!\Temporizador|s_count\(9) & !\Temporizador|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(9),
	datad => VCC,
	cin => \Temporizador|Add0~17\,
	combout => \Temporizador|Add0~18_combout\,
	cout => \Temporizador|Add0~19\);

-- Location: LCCOMB_X65_Y29_N2
\Temporizador|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~14_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~18_combout\,
	combout => \Temporizador|s_count~14_combout\);

-- Location: FF_X65_Y29_N3
\Temporizador|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~14_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(9));

-- Location: LCCOMB_X66_Y29_N20
\Temporizador|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~20_combout\ = (\Temporizador|s_count\(10) & ((GND) # (!\Temporizador|Add0~19\))) # (!\Temporizador|s_count\(10) & (\Temporizador|Add0~19\ $ (GND)))
-- \Temporizador|Add0~21\ = CARRY((\Temporizador|s_count\(10)) # (!\Temporizador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(10),
	datad => VCC,
	cin => \Temporizador|Add0~19\,
	combout => \Temporizador|Add0~20_combout\,
	cout => \Temporizador|Add0~21\);

-- Location: LCCOMB_X65_Y29_N24
\Temporizador|s_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~15_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~20_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~20_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~15_combout\);

-- Location: FF_X65_Y29_N25
\Temporizador|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~15_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(10));

-- Location: LCCOMB_X66_Y29_N22
\Temporizador|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~22_combout\ = (\Temporizador|s_count\(11) & (\Temporizador|Add0~21\ & VCC)) # (!\Temporizador|s_count\(11) & (!\Temporizador|Add0~21\))
-- \Temporizador|Add0~23\ = CARRY((!\Temporizador|s_count\(11) & !\Temporizador|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(11),
	datad => VCC,
	cin => \Temporizador|Add0~21\,
	combout => \Temporizador|Add0~22_combout\,
	cout => \Temporizador|Add0~23\);

-- Location: LCCOMB_X65_Y29_N14
\Temporizador|s_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~16_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~22_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~22_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~16_combout\);

-- Location: FF_X65_Y29_N15
\Temporizador|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~16_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(11));

-- Location: LCCOMB_X66_Y29_N24
\Temporizador|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~24_combout\ = (\Temporizador|s_count\(12) & ((GND) # (!\Temporizador|Add0~23\))) # (!\Temporizador|s_count\(12) & (\Temporizador|Add0~23\ $ (GND)))
-- \Temporizador|Add0~25\ = CARRY((\Temporizador|s_count\(12)) # (!\Temporizador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(12),
	datad => VCC,
	cin => \Temporizador|Add0~23\,
	combout => \Temporizador|Add0~24_combout\,
	cout => \Temporizador|Add0~25\);

-- Location: LCCOMB_X65_Y29_N8
\Temporizador|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~17_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~24_combout\,
	combout => \Temporizador|s_count~17_combout\);

-- Location: FF_X65_Y29_N9
\Temporizador|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~17_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(12));

-- Location: LCCOMB_X66_Y29_N26
\Temporizador|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~26_combout\ = (\Temporizador|s_count\(13) & (\Temporizador|Add0~25\ & VCC)) # (!\Temporizador|s_count\(13) & (!\Temporizador|Add0~25\))
-- \Temporizador|Add0~27\ = CARRY((!\Temporizador|s_count\(13) & !\Temporizador|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(13),
	datad => VCC,
	cin => \Temporizador|Add0~25\,
	combout => \Temporizador|Add0~26_combout\,
	cout => \Temporizador|Add0~27\);

-- Location: LCCOMB_X65_Y29_N20
\Temporizador|s_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~18_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~26_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~26_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~18_combout\);

-- Location: FF_X65_Y29_N21
\Temporizador|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~18_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(13));

-- Location: LCCOMB_X66_Y29_N28
\Temporizador|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~28_combout\ = (\Temporizador|s_count\(14) & ((GND) # (!\Temporizador|Add0~27\))) # (!\Temporizador|s_count\(14) & (\Temporizador|Add0~27\ $ (GND)))
-- \Temporizador|Add0~29\ = CARRY((\Temporizador|s_count\(14)) # (!\Temporizador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(14),
	datad => VCC,
	cin => \Temporizador|Add0~27\,
	combout => \Temporizador|Add0~28_combout\,
	cout => \Temporizador|Add0~29\);

-- Location: LCCOMB_X65_Y29_N6
\Temporizador|s_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~19_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~28_combout\,
	combout => \Temporizador|s_count~19_combout\);

-- Location: FF_X65_Y29_N7
\Temporizador|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~19_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(14));

-- Location: LCCOMB_X66_Y29_N30
\Temporizador|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~30_combout\ = (\Temporizador|s_count\(15) & (\Temporizador|Add0~29\ & VCC)) # (!\Temporizador|s_count\(15) & (!\Temporizador|Add0~29\))
-- \Temporizador|Add0~31\ = CARRY((!\Temporizador|s_count\(15) & !\Temporizador|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(15),
	datad => VCC,
	cin => \Temporizador|Add0~29\,
	combout => \Temporizador|Add0~30_combout\,
	cout => \Temporizador|Add0~31\);

-- Location: LCCOMB_X65_Y29_N0
\Temporizador|s_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~20_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~30_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~30_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~20_combout\);

-- Location: FF_X65_Y29_N1
\Temporizador|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~20_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(15));

-- Location: LCCOMB_X66_Y28_N0
\Temporizador|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~32_combout\ = (\Temporizador|s_count\(16) & ((GND) # (!\Temporizador|Add0~31\))) # (!\Temporizador|s_count\(16) & (\Temporizador|Add0~31\ $ (GND)))
-- \Temporizador|Add0~33\ = CARRY((\Temporizador|s_count\(16)) # (!\Temporizador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(16),
	datad => VCC,
	cin => \Temporizador|Add0~31\,
	combout => \Temporizador|Add0~32_combout\,
	cout => \Temporizador|Add0~33\);

-- Location: LCCOMB_X65_Y29_N26
\Temporizador|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~21_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~32_combout\,
	combout => \Temporizador|s_count~21_combout\);

-- Location: FF_X65_Y29_N27
\Temporizador|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~21_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(16));

-- Location: LCCOMB_X66_Y28_N2
\Temporizador|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~34_combout\ = (\Temporizador|s_count\(17) & (\Temporizador|Add0~33\ & VCC)) # (!\Temporizador|s_count\(17) & (!\Temporizador|Add0~33\))
-- \Temporizador|Add0~35\ = CARRY((!\Temporizador|s_count\(17) & !\Temporizador|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(17),
	datad => VCC,
	cin => \Temporizador|Add0~33\,
	combout => \Temporizador|Add0~34_combout\,
	cout => \Temporizador|Add0~35\);

-- Location: LCCOMB_X67_Y28_N12
\Temporizador|s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~22_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~34_combout\,
	combout => \Temporizador|s_count~22_combout\);

-- Location: FF_X67_Y28_N13
\Temporizador|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~22_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(17));

-- Location: LCCOMB_X66_Y28_N4
\Temporizador|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~36_combout\ = (\Temporizador|s_count\(18) & ((GND) # (!\Temporizador|Add0~35\))) # (!\Temporizador|s_count\(18) & (\Temporizador|Add0~35\ $ (GND)))
-- \Temporizador|Add0~37\ = CARRY((\Temporizador|s_count\(18)) # (!\Temporizador|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(18),
	datad => VCC,
	cin => \Temporizador|Add0~35\,
	combout => \Temporizador|Add0~36_combout\,
	cout => \Temporizador|Add0~37\);

-- Location: LCCOMB_X67_Y28_N2
\Temporizador|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~23_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~36_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~36_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~23_combout\);

-- Location: FF_X67_Y28_N3
\Temporizador|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~23_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(18));

-- Location: LCCOMB_X66_Y28_N6
\Temporizador|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~38_combout\ = (\Temporizador|s_count\(19) & (\Temporizador|Add0~37\ & VCC)) # (!\Temporizador|s_count\(19) & (!\Temporizador|Add0~37\))
-- \Temporizador|Add0~39\ = CARRY((!\Temporizador|s_count\(19) & !\Temporizador|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(19),
	datad => VCC,
	cin => \Temporizador|Add0~37\,
	combout => \Temporizador|Add0~38_combout\,
	cout => \Temporizador|Add0~39\);

-- Location: LCCOMB_X67_Y28_N0
\Temporizador|s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~24_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~38_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~38_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~24_combout\);

-- Location: FF_X67_Y28_N1
\Temporizador|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~24_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(19));

-- Location: LCCOMB_X66_Y28_N8
\Temporizador|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~40_combout\ = (\Temporizador|s_count\(20) & ((GND) # (!\Temporizador|Add0~39\))) # (!\Temporizador|s_count\(20) & (\Temporizador|Add0~39\ $ (GND)))
-- \Temporizador|Add0~41\ = CARRY((\Temporizador|s_count\(20)) # (!\Temporizador|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(20),
	datad => VCC,
	cin => \Temporizador|Add0~39\,
	combout => \Temporizador|Add0~40_combout\,
	cout => \Temporizador|Add0~41\);

-- Location: LCCOMB_X67_Y28_N22
\Temporizador|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~25_combout\ = (!\Temporizador|Equal0~9_combout\ & (\ControlSystemUnit|pState.Init~q\ & \Temporizador|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|Equal0~9_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \Temporizador|Add0~40_combout\,
	combout => \Temporizador|s_count~25_combout\);

-- Location: FF_X67_Y28_N23
\Temporizador|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~25_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(20));

-- Location: LCCOMB_X66_Y28_N10
\Temporizador|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~42_combout\ = (\Temporizador|s_count\(21) & (\Temporizador|Add0~41\ & VCC)) # (!\Temporizador|s_count\(21) & (!\Temporizador|Add0~41\))
-- \Temporizador|Add0~43\ = CARRY((!\Temporizador|s_count\(21) & !\Temporizador|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(21),
	datad => VCC,
	cin => \Temporizador|Add0~41\,
	combout => \Temporizador|Add0~42_combout\,
	cout => \Temporizador|Add0~43\);

-- Location: LCCOMB_X65_Y28_N26
\Temporizador|s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~26_combout\ = (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~42_combout\ & \ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~9_combout\,
	datab => \Temporizador|Add0~42_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	combout => \Temporizador|s_count~26_combout\);

-- Location: FF_X65_Y28_N27
\Temporizador|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~26_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(21));

-- Location: LCCOMB_X66_Y28_N12
\Temporizador|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~44_combout\ = (\Temporizador|s_count\(22) & ((GND) # (!\Temporizador|Add0~43\))) # (!\Temporizador|s_count\(22) & (\Temporizador|Add0~43\ $ (GND)))
-- \Temporizador|Add0~45\ = CARRY((\Temporizador|s_count\(22)) # (!\Temporizador|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(22),
	datad => VCC,
	cin => \Temporizador|Add0~43\,
	combout => \Temporizador|Add0~44_combout\,
	cout => \Temporizador|Add0~45\);

-- Location: LCCOMB_X65_Y28_N16
\Temporizador|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~27_combout\ = (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~44_combout\ & \ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~9_combout\,
	datab => \Temporizador|Add0~44_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	combout => \Temporizador|s_count~27_combout\);

-- Location: FF_X65_Y28_N17
\Temporizador|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~27_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(22));

-- Location: LCCOMB_X66_Y28_N14
\Temporizador|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~46_combout\ = (\Temporizador|s_count\(23) & (\Temporizador|Add0~45\ & VCC)) # (!\Temporizador|s_count\(23) & (!\Temporizador|Add0~45\))
-- \Temporizador|Add0~47\ = CARRY((!\Temporizador|s_count\(23) & !\Temporizador|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(23),
	datad => VCC,
	cin => \Temporizador|Add0~45\,
	combout => \Temporizador|Add0~46_combout\,
	cout => \Temporizador|Add0~47\);

-- Location: LCCOMB_X65_Y28_N2
\Temporizador|s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~28_combout\ = (!\Temporizador|Equal0~9_combout\ & (\Temporizador|Add0~46_combout\ & \ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~9_combout\,
	datab => \Temporizador|Add0~46_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	combout => \Temporizador|s_count~28_combout\);

-- Location: FF_X65_Y28_N3
\Temporizador|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~28_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(23));

-- Location: LCCOMB_X66_Y28_N16
\Temporizador|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~48_combout\ = (\Temporizador|s_count\(24) & ((GND) # (!\Temporizador|Add0~47\))) # (!\Temporizador|s_count\(24) & (\Temporizador|Add0~47\ $ (GND)))
-- \Temporizador|Add0~49\ = CARRY((\Temporizador|s_count\(24)) # (!\Temporizador|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(24),
	datad => VCC,
	cin => \Temporizador|Add0~47\,
	combout => \Temporizador|Add0~48_combout\,
	cout => \Temporizador|Add0~49\);

-- Location: LCCOMB_X65_Y28_N28
\Temporizador|s_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~29_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~48_combout\,
	combout => \Temporizador|s_count~29_combout\);

-- Location: FF_X65_Y28_N29
\Temporizador|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~29_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(24));

-- Location: LCCOMB_X65_Y28_N10
\Temporizador|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~6_combout\ = (!\Temporizador|s_count\(24) & (!\Temporizador|s_count\(23) & (!\Temporizador|s_count\(21) & !\Temporizador|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(24),
	datab => \Temporizador|s_count\(23),
	datac => \Temporizador|s_count\(21),
	datad => \Temporizador|s_count\(22),
	combout => \Temporizador|Equal0~6_combout\);

-- Location: LCCOMB_X67_Y28_N4
\Temporizador|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~5_combout\ = (!\Temporizador|s_count\(17) & (!\Temporizador|s_count\(18) & (!\Temporizador|s_count\(20) & !\Temporizador|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(17),
	datab => \Temporizador|s_count\(18),
	datac => \Temporizador|s_count\(20),
	datad => \Temporizador|s_count\(19),
	combout => \Temporizador|Equal0~5_combout\);

-- Location: LCCOMB_X65_Y29_N22
\Temporizador|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~2_combout\ = (!\Temporizador|s_count\(12) & (!\Temporizador|s_count\(10) & (!\Temporizador|s_count\(11) & !\Temporizador|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(12),
	datab => \Temporizador|s_count\(10),
	datac => \Temporizador|s_count\(11),
	datad => \Temporizador|s_count\(9),
	combout => \Temporizador|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y29_N28
\Temporizador|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~3_combout\ = (!\Temporizador|s_count\(14) & (!\Temporizador|s_count\(15) & (!\Temporizador|s_count\(16) & !\Temporizador|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(14),
	datab => \Temporizador|s_count\(15),
	datac => \Temporizador|s_count\(16),
	datad => \Temporizador|s_count\(13),
	combout => \Temporizador|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y29_N0
\Temporizador|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~1_combout\ = (!\Temporizador|s_count\(8) & (!\Temporizador|s_count\(2) & (!\Temporizador|s_count\(3) & !\Temporizador|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(8),
	datab => \Temporizador|s_count\(2),
	datac => \Temporizador|s_count\(3),
	datad => \Temporizador|s_count\(1),
	combout => \Temporizador|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y29_N18
\Temporizador|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~0_combout\ = (!\Temporizador|s_count\(4) & (!\Temporizador|s_count\(5) & (!\Temporizador|s_count\(7) & !\Temporizador|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(6),
	combout => \Temporizador|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y29_N30
\Temporizador|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~4_combout\ = (\Temporizador|Equal0~2_combout\ & (\Temporizador|Equal0~3_combout\ & (\Temporizador|Equal0~1_combout\ & \Temporizador|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~2_combout\,
	datab => \Temporizador|Equal0~3_combout\,
	datac => \Temporizador|Equal0~1_combout\,
	datad => \Temporizador|Equal0~0_combout\,
	combout => \Temporizador|Equal0~4_combout\);

-- Location: LCCOMB_X66_Y28_N18
\Temporizador|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~50_combout\ = (\Temporizador|s_count\(25) & (\Temporizador|Add0~49\ & VCC)) # (!\Temporizador|s_count\(25) & (!\Temporizador|Add0~49\))
-- \Temporizador|Add0~51\ = CARRY((!\Temporizador|s_count\(25) & !\Temporizador|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(25),
	datad => VCC,
	cin => \Temporizador|Add0~49\,
	combout => \Temporizador|Add0~50_combout\,
	cout => \Temporizador|Add0~51\);

-- Location: LCCOMB_X65_Y28_N8
\Temporizador|s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~30_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~50_combout\,
	combout => \Temporizador|s_count~30_combout\);

-- Location: FF_X65_Y28_N9
\Temporizador|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~30_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(25));

-- Location: LCCOMB_X66_Y28_N20
\Temporizador|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~52_combout\ = (\Temporizador|s_count\(26) & ((GND) # (!\Temporizador|Add0~51\))) # (!\Temporizador|s_count\(26) & (\Temporizador|Add0~51\ $ (GND)))
-- \Temporizador|Add0~53\ = CARRY((\Temporizador|s_count\(26)) # (!\Temporizador|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(26),
	datad => VCC,
	cin => \Temporizador|Add0~51\,
	combout => \Temporizador|Add0~52_combout\,
	cout => \Temporizador|Add0~53\);

-- Location: LCCOMB_X65_Y28_N6
\Temporizador|s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~31_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~52_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~52_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~31_combout\);

-- Location: FF_X65_Y28_N7
\Temporizador|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~31_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(26));

-- Location: LCCOMB_X66_Y28_N22
\Temporizador|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~54_combout\ = (\Temporizador|s_count\(27) & (\Temporizador|Add0~53\ & VCC)) # (!\Temporizador|s_count\(27) & (!\Temporizador|Add0~53\))
-- \Temporizador|Add0~55\ = CARRY((!\Temporizador|s_count\(27) & !\Temporizador|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(27),
	datad => VCC,
	cin => \Temporizador|Add0~53\,
	combout => \Temporizador|Add0~54_combout\,
	cout => \Temporizador|Add0~55\);

-- Location: LCCOMB_X65_Y28_N24
\Temporizador|s_count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~32_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~54_combout\,
	combout => \Temporizador|s_count~32_combout\);

-- Location: FF_X65_Y28_N25
\Temporizador|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~32_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(27));

-- Location: LCCOMB_X66_Y28_N24
\Temporizador|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~56_combout\ = (\Temporizador|s_count\(28) & ((GND) # (!\Temporizador|Add0~55\))) # (!\Temporizador|s_count\(28) & (\Temporizador|Add0~55\ $ (GND)))
-- \Temporizador|Add0~57\ = CARRY((\Temporizador|s_count\(28)) # (!\Temporizador|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(28),
	datad => VCC,
	cin => \Temporizador|Add0~55\,
	combout => \Temporizador|Add0~56_combout\,
	cout => \Temporizador|Add0~57\);

-- Location: LCCOMB_X65_Y28_N18
\Temporizador|s_count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~33_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~56_combout\,
	combout => \Temporizador|s_count~33_combout\);

-- Location: FF_X65_Y28_N19
\Temporizador|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~33_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(28));

-- Location: LCCOMB_X66_Y28_N26
\Temporizador|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~58_combout\ = (\Temporizador|s_count\(29) & (\Temporizador|Add0~57\ & VCC)) # (!\Temporizador|s_count\(29) & (!\Temporizador|Add0~57\))
-- \Temporizador|Add0~59\ = CARRY((!\Temporizador|s_count\(29) & !\Temporizador|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(29),
	datad => VCC,
	cin => \Temporizador|Add0~57\,
	combout => \Temporizador|Add0~58_combout\,
	cout => \Temporizador|Add0~59\);

-- Location: LCCOMB_X65_Y28_N14
\Temporizador|s_count~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~34_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~58_combout\,
	combout => \Temporizador|s_count~34_combout\);

-- Location: FF_X65_Y28_N15
\Temporizador|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~34_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(29));

-- Location: LCCOMB_X66_Y28_N28
\Temporizador|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~60_combout\ = (\Temporizador|s_count\(30) & ((GND) # (!\Temporizador|Add0~59\))) # (!\Temporizador|s_count\(30) & (\Temporizador|Add0~59\ $ (GND)))
-- \Temporizador|Add0~61\ = CARRY((\Temporizador|s_count\(30)) # (!\Temporizador|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(30),
	datad => VCC,
	cin => \Temporizador|Add0~59\,
	combout => \Temporizador|Add0~60_combout\,
	cout => \Temporizador|Add0~61\);

-- Location: LCCOMB_X65_Y28_N20
\Temporizador|s_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~35_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\Temporizador|Equal0~9_combout\ & \Temporizador|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Equal0~9_combout\,
	datad => \Temporizador|Add0~60_combout\,
	combout => \Temporizador|s_count~35_combout\);

-- Location: FF_X65_Y28_N21
\Temporizador|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~35_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(30));

-- Location: LCCOMB_X66_Y28_N30
\Temporizador|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Add0~62_combout\ = \Temporizador|Add0~61\ $ (!\Temporizador|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Temporizador|s_count\(31),
	cin => \Temporizador|Add0~61\,
	combout => \Temporizador|Add0~62_combout\);

-- Location: LCCOMB_X65_Y28_N22
\Temporizador|s_count~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_count~36_combout\ = (\ControlSystemUnit|pState.Init~q\ & (\Temporizador|Add0~62_combout\ & !\Temporizador|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datac => \Temporizador|Add0~62_combout\,
	datad => \Temporizador|Equal0~9_combout\,
	combout => \Temporizador|s_count~36_combout\);

-- Location: FF_X65_Y28_N23
\Temporizador|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_count~36_combout\,
	ena => \Temporizador|s_count[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_count\(31));

-- Location: LCCOMB_X65_Y28_N4
\Temporizador|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~7_combout\ = (!\Temporizador|s_count\(26) & (!\Temporizador|s_count\(27) & (!\Temporizador|s_count\(25) & !\Temporizador|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(26),
	datab => \Temporizador|s_count\(27),
	datac => \Temporizador|s_count\(25),
	datad => \Temporizador|s_count\(28),
	combout => \Temporizador|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y28_N12
\Temporizador|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~8_combout\ = (!\Temporizador|s_count\(31) & (!\Temporizador|s_count\(29) & (\Temporizador|Equal0~7_combout\ & !\Temporizador|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(31),
	datab => \Temporizador|s_count\(29),
	datac => \Temporizador|Equal0~7_combout\,
	datad => \Temporizador|s_count\(30),
	combout => \Temporizador|Equal0~8_combout\);

-- Location: LCCOMB_X65_Y28_N30
\Temporizador|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|Equal0~9_combout\ = (\Temporizador|Equal0~6_combout\ & (\Temporizador|Equal0~5_combout\ & (\Temporizador|Equal0~4_combout\ & \Temporizador|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~6_combout\,
	datab => \Temporizador|Equal0~5_combout\,
	datac => \Temporizador|Equal0~4_combout\,
	datad => \Temporizador|Equal0~8_combout\,
	combout => \Temporizador|Equal0~9_combout\);

-- Location: LCCOMB_X67_Y29_N24
\Temporizador|s_result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_result~0_combout\ = (\ControlSystemUnit|pState.TimeProcess~q\ & \PulseGen1HZ|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \PulseGen1HZ|pulse~q\,
	combout => \Temporizador|s_result~0_combout\);

-- Location: LCCOMB_X67_Y29_N12
\Temporizador|s_result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Temporizador|s_result~1_combout\ = (\Temporizador|s_result~0_combout\ & (\Temporizador|Equal0~9_combout\ & (\Temporizador|s_count\(0)))) # (!\Temporizador|s_result~0_combout\ & (((\Temporizador|s_result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|Equal0~9_combout\,
	datab => \Temporizador|s_count\(0),
	datac => \Temporizador|s_result~q\,
	datad => \Temporizador|s_result~0_combout\,
	combout => \Temporizador|s_result~1_combout\);

-- Location: FF_X67_Y29_N13
\Temporizador|s_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Temporizador|s_result~1_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Temporizador|s_result~q\);

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

-- Location: LCCOMB_X80_Y39_N14
\debouncerKEY2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \debouncerKEY2|s_dirtyIn~0_combout\);

-- Location: FF_X80_Y39_N15
\debouncerKEY2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_dirtyIn~q\);

-- Location: FF_X80_Y39_N13
\debouncerKEY2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncerKEY2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_previousIn~q\);

-- Location: LCCOMB_X81_Y39_N10
\debouncerKEY2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~0_combout\ = \debouncerKEY2|s_debounceCnt\(0) $ (VCC)
-- \debouncerKEY2|Add0~1\ = CARRY(\debouncerKEY2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncerKEY2|Add0~0_combout\,
	cout => \debouncerKEY2|Add0~1\);

-- Location: LCCOMB_X80_Y39_N16
\debouncerKEY2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~24_combout\ = (\debouncerKEY2|Add0~0_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~0_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~24_combout\);

-- Location: LCCOMB_X81_Y39_N8
\debouncerKEY2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~5_combout\ = (!\debouncerKEY2|s_debounceCnt\(4) & (!\debouncerKEY2|s_debounceCnt\(2) & (!\debouncerKEY2|s_debounceCnt\(1) & !\debouncerKEY2|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(4),
	datab => \debouncerKEY2|s_debounceCnt\(2),
	datac => \debouncerKEY2|s_debounceCnt\(1),
	datad => \debouncerKEY2|s_debounceCnt\(3),
	combout => \debouncerKEY2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X81_Y38_N18
\debouncerKEY2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~40_combout\ = (\debouncerKEY2|s_debounceCnt\(20) & ((GND) # (!\debouncerKEY2|Add0~39\))) # (!\debouncerKEY2|s_debounceCnt\(20) & (\debouncerKEY2|Add0~39\ $ (GND)))
-- \debouncerKEY2|Add0~41\ = CARRY((\debouncerKEY2|s_debounceCnt\(20)) # (!\debouncerKEY2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncerKEY2|Add0~39\,
	combout => \debouncerKEY2|Add0~40_combout\,
	cout => \debouncerKEY2|Add0~41\);

-- Location: LCCOMB_X81_Y38_N20
\debouncerKEY2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~42_combout\ = (\debouncerKEY2|s_debounceCnt\(21) & (\debouncerKEY2|Add0~41\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(21) & (!\debouncerKEY2|Add0~41\))
-- \debouncerKEY2|Add0~43\ = CARRY((!\debouncerKEY2|s_debounceCnt\(21) & !\debouncerKEY2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncerKEY2|Add0~41\,
	combout => \debouncerKEY2|Add0~42_combout\,
	cout => \debouncerKEY2|Add0~43\);

-- Location: LCCOMB_X81_Y38_N26
\debouncerKEY2|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[21]~9_combout\ = (\debouncerKEY2|Add0~42_combout\ & (\debouncerKEY2|s_debounceCnt[0]~3_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~42_combout\,
	datac => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt[21]~9_combout\);

-- Location: FF_X81_Y38_N27
\debouncerKEY2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(21));

-- Location: LCCOMB_X80_Y39_N22
\debouncerKEY2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~1_combout\ = (!\debouncerKEY2|s_debounceCnt\(21) & (!\debouncerKEY2|s_debounceCnt\(20) & (!\debouncerKEY2|s_debounceCnt\(12) & !\debouncerKEY2|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(21),
	datab => \debouncerKEY2|s_debounceCnt\(20),
	datac => \debouncerKEY2|s_debounceCnt\(12),
	datad => \debouncerKEY2|s_debounceCnt\(13),
	combout => \debouncerKEY2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X80_Y39_N20
\debouncerKEY2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~2_combout\ = (!\debouncerKEY2|s_debounceCnt\(7) & (!\debouncerKEY2|s_debounceCnt\(10) & (!\debouncerKEY2|s_debounceCnt\(9) & !\debouncerKEY2|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(7),
	datab => \debouncerKEY2|s_debounceCnt\(10),
	datac => \debouncerKEY2|s_debounceCnt\(9),
	datad => \debouncerKEY2|s_debounceCnt\(8),
	combout => \debouncerKEY2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X81_Y38_N30
\debouncerKEY2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~0_combout\ = (!\debouncerKEY2|s_debounceCnt\(16) & (!\debouncerKEY2|s_debounceCnt\(15) & (!\debouncerKEY2|s_debounceCnt\(6) & !\debouncerKEY2|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(16),
	datab => \debouncerKEY2|s_debounceCnt\(15),
	datac => \debouncerKEY2|s_debounceCnt\(6),
	datad => \debouncerKEY2|s_debounceCnt\(17),
	combout => \debouncerKEY2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X82_Y39_N30
\debouncerKEY2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~3_combout\ = (!\debouncerKEY2|s_debounceCnt\(14) & (!\debouncerKEY2|s_debounceCnt\(19) & (!\debouncerKEY2|s_debounceCnt\(18) & !\debouncerKEY2|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(14),
	datab => \debouncerKEY2|s_debounceCnt\(19),
	datac => \debouncerKEY2|s_debounceCnt\(18),
	datad => \debouncerKEY2|s_debounceCnt\(11),
	combout => \debouncerKEY2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X80_Y39_N10
\debouncerKEY2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~4_combout\ = (\debouncerKEY2|s_pulsedOut~1_combout\ & (\debouncerKEY2|s_pulsedOut~2_combout\ & (\debouncerKEY2|s_pulsedOut~0_combout\ & \debouncerKEY2|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_pulsedOut~1_combout\,
	datab => \debouncerKEY2|s_pulsedOut~2_combout\,
	datac => \debouncerKEY2|s_pulsedOut~0_combout\,
	datad => \debouncerKEY2|s_pulsedOut~3_combout\,
	combout => \debouncerKEY2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X80_Y39_N0
\debouncerKEY2|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[0]~2_combout\ = (\debouncerKEY2|s_debounceCnt\(5)) # ((\debouncerKEY2|s_debounceCnt\(0)) # ((!\debouncerKEY2|s_pulsedOut~4_combout\) # (!\debouncerKEY2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(5),
	datab => \debouncerKEY2|s_debounceCnt\(0),
	datac => \debouncerKEY2|s_pulsedOut~5_combout\,
	datad => \debouncerKEY2|s_pulsedOut~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X80_Y39_N12
\debouncerKEY2|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[0]~3_combout\ = (\debouncerKEY2|s_debounceCnt\(22)) # (((\debouncerKEY2|s_debounceCnt[0]~2_combout\) # (!\debouncerKEY2|s_previousIn~q\)) # (!\debouncerKEY2|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(22),
	datab => \debouncerKEY2|s_dirtyIn~q\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~2_combout\,
	combout => \debouncerKEY2|s_debounceCnt[0]~3_combout\);

-- Location: FF_X80_Y39_N17
\debouncerKEY2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~24_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y39_N12
\debouncerKEY2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~2_combout\ = (\debouncerKEY2|s_debounceCnt\(1) & (\debouncerKEY2|Add0~1\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(1) & (!\debouncerKEY2|Add0~1\))
-- \debouncerKEY2|Add0~3\ = CARRY((!\debouncerKEY2|s_debounceCnt\(1) & !\debouncerKEY2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncerKEY2|Add0~1\,
	combout => \debouncerKEY2|Add0~2_combout\,
	cout => \debouncerKEY2|Add0~3\);

-- Location: LCCOMB_X81_Y39_N4
\debouncerKEY2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~20_combout\ = (\debouncerKEY2|Add0~2_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|Add0~2_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~20_combout\);

-- Location: FF_X81_Y39_N5
\debouncerKEY2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~20_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y39_N14
\debouncerKEY2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~4_combout\ = (\debouncerKEY2|s_debounceCnt\(2) & ((GND) # (!\debouncerKEY2|Add0~3\))) # (!\debouncerKEY2|s_debounceCnt\(2) & (\debouncerKEY2|Add0~3\ $ (GND)))
-- \debouncerKEY2|Add0~5\ = CARRY((\debouncerKEY2|s_debounceCnt\(2)) # (!\debouncerKEY2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncerKEY2|Add0~3\,
	combout => \debouncerKEY2|Add0~4_combout\,
	cout => \debouncerKEY2|Add0~5\);

-- Location: LCCOMB_X81_Y39_N2
\debouncerKEY2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~21_combout\ = (\debouncerKEY2|Add0~4_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~4_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~21_combout\);

-- Location: FF_X81_Y39_N3
\debouncerKEY2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~21_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y39_N16
\debouncerKEY2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~6_combout\ = (\debouncerKEY2|s_debounceCnt\(3) & (\debouncerKEY2|Add0~5\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(3) & (!\debouncerKEY2|Add0~5\))
-- \debouncerKEY2|Add0~7\ = CARRY((!\debouncerKEY2|s_debounceCnt\(3) & !\debouncerKEY2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncerKEY2|Add0~5\,
	combout => \debouncerKEY2|Add0~6_combout\,
	cout => \debouncerKEY2|Add0~7\);

-- Location: LCCOMB_X81_Y39_N0
\debouncerKEY2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~22_combout\ = (\debouncerKEY2|Add0~6_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~6_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~22_combout\);

-- Location: FF_X81_Y39_N1
\debouncerKEY2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~22_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y39_N18
\debouncerKEY2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~8_combout\ = (\debouncerKEY2|s_debounceCnt\(4) & ((GND) # (!\debouncerKEY2|Add0~7\))) # (!\debouncerKEY2|s_debounceCnt\(4) & (\debouncerKEY2|Add0~7\ $ (GND)))
-- \debouncerKEY2|Add0~9\ = CARRY((\debouncerKEY2|s_debounceCnt\(4)) # (!\debouncerKEY2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncerKEY2|Add0~7\,
	combout => \debouncerKEY2|Add0~8_combout\,
	cout => \debouncerKEY2|Add0~9\);

-- Location: LCCOMB_X81_Y39_N6
\debouncerKEY2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~23_combout\ = (\debouncerKEY2|Add0~8_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~8_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~23_combout\);

-- Location: FF_X81_Y39_N7
\debouncerKEY2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~23_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(4));

-- Location: LCCOMB_X81_Y39_N20
\debouncerKEY2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~10_combout\ = (\debouncerKEY2|s_debounceCnt\(5) & (\debouncerKEY2|Add0~9\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(5) & (!\debouncerKEY2|Add0~9\))
-- \debouncerKEY2|Add0~11\ = CARRY((!\debouncerKEY2|s_debounceCnt\(5) & !\debouncerKEY2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncerKEY2|Add0~9\,
	combout => \debouncerKEY2|Add0~10_combout\,
	cout => \debouncerKEY2|Add0~11\);

-- Location: LCCOMB_X81_Y39_N22
\debouncerKEY2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~12_combout\ = (\debouncerKEY2|s_debounceCnt\(6) & ((GND) # (!\debouncerKEY2|Add0~11\))) # (!\debouncerKEY2|s_debounceCnt\(6) & (\debouncerKEY2|Add0~11\ $ (GND)))
-- \debouncerKEY2|Add0~13\ = CARRY((\debouncerKEY2|s_debounceCnt\(6)) # (!\debouncerKEY2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncerKEY2|Add0~11\,
	combout => \debouncerKEY2|Add0~12_combout\,
	cout => \debouncerKEY2|Add0~13\);

-- Location: LCCOMB_X82_Y39_N0
\debouncerKEY2|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[0]~0_combout\ = (\debouncerKEY2|s_dirtyIn~q\ & ((!\debouncerKEY2|LessThan0~6_combout\) # (!\debouncerKEY2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(22),
	datac => \debouncerKEY2|s_dirtyIn~q\,
	datad => \debouncerKEY2|LessThan0~6_combout\,
	combout => \debouncerKEY2|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X82_Y39_N28
\debouncerKEY2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~1_combout\ = (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~12_combout\) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~12_combout\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt~1_combout\);

-- Location: FF_X82_Y39_N29
\debouncerKEY2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~1_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y39_N24
\debouncerKEY2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~14_combout\ = (\debouncerKEY2|s_debounceCnt\(7) & (\debouncerKEY2|Add0~13\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(7) & (!\debouncerKEY2|Add0~13\))
-- \debouncerKEY2|Add0~15\ = CARRY((!\debouncerKEY2|s_debounceCnt\(7) & !\debouncerKEY2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncerKEY2|Add0~13\,
	combout => \debouncerKEY2|Add0~14_combout\,
	cout => \debouncerKEY2|Add0~15\);

-- Location: LCCOMB_X80_Y39_N6
\debouncerKEY2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~12_combout\ = (\debouncerKEY2|Add0~14_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~14_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~12_combout\);

-- Location: FF_X80_Y39_N7
\debouncerKEY2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~12_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y39_N26
\debouncerKEY2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~16_combout\ = (\debouncerKEY2|s_debounceCnt\(8) & ((GND) # (!\debouncerKEY2|Add0~15\))) # (!\debouncerKEY2|s_debounceCnt\(8) & (\debouncerKEY2|Add0~15\ $ (GND)))
-- \debouncerKEY2|Add0~17\ = CARRY((\debouncerKEY2|s_debounceCnt\(8)) # (!\debouncerKEY2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncerKEY2|Add0~15\,
	combout => \debouncerKEY2|Add0~16_combout\,
	cout => \debouncerKEY2|Add0~17\);

-- Location: LCCOMB_X82_Y39_N14
\debouncerKEY2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~13_combout\ = (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~16_combout\) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_previousIn~q\,
	datac => \debouncerKEY2|Add0~16_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt~13_combout\);

-- Location: FF_X82_Y39_N15
\debouncerKEY2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~13_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(8));

-- Location: LCCOMB_X81_Y39_N28
\debouncerKEY2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~18_combout\ = (\debouncerKEY2|s_debounceCnt\(9) & (\debouncerKEY2|Add0~17\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(9) & (!\debouncerKEY2|Add0~17\))
-- \debouncerKEY2|Add0~19\ = CARRY((!\debouncerKEY2|s_debounceCnt\(9) & !\debouncerKEY2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncerKEY2|Add0~17\,
	combout => \debouncerKEY2|Add0~18_combout\,
	cout => \debouncerKEY2|Add0~19\);

-- Location: LCCOMB_X82_Y39_N20
\debouncerKEY2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~14_combout\ = (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~18_combout\) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~18_combout\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt~14_combout\);

-- Location: FF_X82_Y39_N21
\debouncerKEY2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~14_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(9));

-- Location: LCCOMB_X81_Y39_N30
\debouncerKEY2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~20_combout\ = (\debouncerKEY2|s_debounceCnt\(10) & ((GND) # (!\debouncerKEY2|Add0~19\))) # (!\debouncerKEY2|s_debounceCnt\(10) & (\debouncerKEY2|Add0~19\ $ (GND)))
-- \debouncerKEY2|Add0~21\ = CARRY((\debouncerKEY2|s_debounceCnt\(10)) # (!\debouncerKEY2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncerKEY2|Add0~19\,
	combout => \debouncerKEY2|Add0~20_combout\,
	cout => \debouncerKEY2|Add0~21\);

-- Location: LCCOMB_X80_Y39_N2
\debouncerKEY2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~15_combout\ = (\debouncerKEY2|Add0~20_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~20_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~15_combout\);

-- Location: FF_X80_Y39_N3
\debouncerKEY2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~15_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y38_N0
\debouncerKEY2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~22_combout\ = (\debouncerKEY2|s_debounceCnt\(11) & (\debouncerKEY2|Add0~21\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(11) & (!\debouncerKEY2|Add0~21\))
-- \debouncerKEY2|Add0~23\ = CARRY((!\debouncerKEY2|s_debounceCnt\(11) & !\debouncerKEY2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncerKEY2|Add0~21\,
	combout => \debouncerKEY2|Add0~22_combout\,
	cout => \debouncerKEY2|Add0~23\);

-- Location: LCCOMB_X82_Y39_N2
\debouncerKEY2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~16_combout\ = (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~22_combout\) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_previousIn~q\,
	datac => \debouncerKEY2|Add0~22_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt~16_combout\);

-- Location: FF_X82_Y39_N3
\debouncerKEY2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~16_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y38_N2
\debouncerKEY2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~24_combout\ = (\debouncerKEY2|s_debounceCnt\(12) & ((GND) # (!\debouncerKEY2|Add0~23\))) # (!\debouncerKEY2|s_debounceCnt\(12) & (\debouncerKEY2|Add0~23\ $ (GND)))
-- \debouncerKEY2|Add0~25\ = CARRY((\debouncerKEY2|s_debounceCnt\(12)) # (!\debouncerKEY2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncerKEY2|Add0~23\,
	combout => \debouncerKEY2|Add0~24_combout\,
	cout => \debouncerKEY2|Add0~25\);

-- Location: LCCOMB_X80_Y39_N24
\debouncerKEY2|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~10_combout\ = (\debouncerKEY2|Add0~24_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~24_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~10_combout\);

-- Location: FF_X80_Y39_N25
\debouncerKEY2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~10_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y38_N4
\debouncerKEY2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~26_combout\ = (\debouncerKEY2|s_debounceCnt\(13) & (\debouncerKEY2|Add0~25\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(13) & (!\debouncerKEY2|Add0~25\))
-- \debouncerKEY2|Add0~27\ = CARRY((!\debouncerKEY2|s_debounceCnt\(13) & !\debouncerKEY2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncerKEY2|Add0~25\,
	combout => \debouncerKEY2|Add0~26_combout\,
	cout => \debouncerKEY2|Add0~27\);

-- Location: LCCOMB_X80_Y39_N28
\debouncerKEY2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~11_combout\ = (\debouncerKEY2|Add0~26_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|Add0~26_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~11_combout\);

-- Location: FF_X80_Y39_N29
\debouncerKEY2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~11_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(13));

-- Location: LCCOMB_X81_Y38_N6
\debouncerKEY2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~28_combout\ = (\debouncerKEY2|s_debounceCnt\(14) & ((GND) # (!\debouncerKEY2|Add0~27\))) # (!\debouncerKEY2|s_debounceCnt\(14) & (\debouncerKEY2|Add0~27\ $ (GND)))
-- \debouncerKEY2|Add0~29\ = CARRY((\debouncerKEY2|s_debounceCnt\(14)) # (!\debouncerKEY2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncerKEY2|Add0~27\,
	combout => \debouncerKEY2|Add0~28_combout\,
	cout => \debouncerKEY2|Add0~29\);

-- Location: LCCOMB_X82_Y39_N12
\debouncerKEY2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~17_combout\ = (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~28_combout\) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|Add0~28_combout\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt~17_combout\);

-- Location: FF_X82_Y39_N13
\debouncerKEY2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~17_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y38_N8
\debouncerKEY2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~30_combout\ = (\debouncerKEY2|s_debounceCnt\(15) & (\debouncerKEY2|Add0~29\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(15) & (!\debouncerKEY2|Add0~29\))
-- \debouncerKEY2|Add0~31\ = CARRY((!\debouncerKEY2|s_debounceCnt\(15) & !\debouncerKEY2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncerKEY2|Add0~29\,
	combout => \debouncerKEY2|Add0~30_combout\,
	cout => \debouncerKEY2|Add0~31\);

-- Location: LCCOMB_X81_Y38_N24
\debouncerKEY2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~5_combout\ = (\debouncerKEY2|Add0~30_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|Add0~30_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt~5_combout\);

-- Location: FF_X81_Y38_N25
\debouncerKEY2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~5_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(15));

-- Location: LCCOMB_X81_Y38_N10
\debouncerKEY2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~32_combout\ = (\debouncerKEY2|s_debounceCnt\(16) & ((GND) # (!\debouncerKEY2|Add0~31\))) # (!\debouncerKEY2|s_debounceCnt\(16) & (\debouncerKEY2|Add0~31\ $ (GND)))
-- \debouncerKEY2|Add0~33\ = CARRY((\debouncerKEY2|s_debounceCnt\(16)) # (!\debouncerKEY2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncerKEY2|Add0~31\,
	combout => \debouncerKEY2|Add0~32_combout\,
	cout => \debouncerKEY2|Add0~33\);

-- Location: LCCOMB_X82_Y38_N20
\debouncerKEY2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~6_combout\ = (\debouncerKEY2|s_debounceCnt[0]~4_combout\ & \debouncerKEY2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	datad => \debouncerKEY2|Add0~32_combout\,
	combout => \debouncerKEY2|s_debounceCnt~6_combout\);

-- Location: FF_X82_Y38_N21
\debouncerKEY2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~6_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y38_N12
\debouncerKEY2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~34_combout\ = (\debouncerKEY2|s_debounceCnt\(17) & (\debouncerKEY2|Add0~33\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(17) & (!\debouncerKEY2|Add0~33\))
-- \debouncerKEY2|Add0~35\ = CARRY((!\debouncerKEY2|s_debounceCnt\(17) & !\debouncerKEY2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncerKEY2|Add0~33\,
	combout => \debouncerKEY2|Add0~34_combout\,
	cout => \debouncerKEY2|Add0~35\);

-- Location: LCCOMB_X82_Y38_N26
\debouncerKEY2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~7_combout\ = (\debouncerKEY2|s_debounceCnt[0]~4_combout\ & \debouncerKEY2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	datad => \debouncerKEY2|Add0~34_combout\,
	combout => \debouncerKEY2|s_debounceCnt~7_combout\);

-- Location: FF_X82_Y38_N27
\debouncerKEY2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~7_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y38_N14
\debouncerKEY2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~36_combout\ = (\debouncerKEY2|s_debounceCnt\(18) & ((GND) # (!\debouncerKEY2|Add0~35\))) # (!\debouncerKEY2|s_debounceCnt\(18) & (\debouncerKEY2|Add0~35\ $ (GND)))
-- \debouncerKEY2|Add0~37\ = CARRY((\debouncerKEY2|s_debounceCnt\(18)) # (!\debouncerKEY2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncerKEY2|Add0~35\,
	combout => \debouncerKEY2|Add0~36_combout\,
	cout => \debouncerKEY2|Add0~37\);

-- Location: LCCOMB_X82_Y39_N22
\debouncerKEY2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[18]~18_combout\ = (\debouncerKEY2|s_debounceCnt[0]~3_combout\ & (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~36_combout\) # (!\debouncerKEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|Add0~36_combout\,
	datab => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X82_Y39_N23
\debouncerKEY2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y38_N16
\debouncerKEY2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~38_combout\ = (\debouncerKEY2|s_debounceCnt\(19) & (\debouncerKEY2|Add0~37\ & VCC)) # (!\debouncerKEY2|s_debounceCnt\(19) & (!\debouncerKEY2|Add0~37\))
-- \debouncerKEY2|Add0~39\ = CARRY((!\debouncerKEY2|s_debounceCnt\(19) & !\debouncerKEY2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncerKEY2|Add0~37\,
	combout => \debouncerKEY2|Add0~38_combout\,
	cout => \debouncerKEY2|Add0~39\);

-- Location: LCCOMB_X82_Y39_N8
\debouncerKEY2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[19]~19_combout\ = (\debouncerKEY2|s_debounceCnt[0]~3_combout\ & (\debouncerKEY2|s_debounceCnt[0]~0_combout\ & ((\debouncerKEY2|Add0~38_combout\) # (!\debouncerKEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|Add0~38_combout\,
	datab => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|s_debounceCnt[0]~0_combout\,
	combout => \debouncerKEY2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X82_Y39_N9
\debouncerKEY2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y38_N28
\debouncerKEY2|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[20]~8_combout\ = (\debouncerKEY2|Add0~40_combout\ & (\debouncerKEY2|s_debounceCnt[0]~3_combout\ & \debouncerKEY2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY2|Add0~40_combout\,
	datac => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	combout => \debouncerKEY2|s_debounceCnt[20]~8_combout\);

-- Location: FF_X81_Y38_N29
\debouncerKEY2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(20));

-- Location: LCCOMB_X80_Y39_N26
\debouncerKEY2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~5_combout\ = (!\debouncerKEY2|s_debounceCnt\(20) & !\debouncerKEY2|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|s_debounceCnt\(20),
	datad => \debouncerKEY2|s_debounceCnt\(21),
	combout => \debouncerKEY2|LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y38_N0
\debouncerKEY2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~0_combout\ = (\debouncerKEY2|s_debounceCnt\(17)) # ((\debouncerKEY2|s_debounceCnt\(15)) # (\debouncerKEY2|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(17),
	datab => \debouncerKEY2|s_debounceCnt\(15),
	datad => \debouncerKEY2|s_debounceCnt\(16),
	combout => \debouncerKEY2|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y39_N6
\debouncerKEY2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~1_combout\ = (\debouncerKEY2|s_debounceCnt\(6) & ((\debouncerKEY2|s_debounceCnt\(0)) # ((\debouncerKEY2|s_debounceCnt\(5)) # (!\debouncerKEY2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(0),
	datab => \debouncerKEY2|s_debounceCnt\(6),
	datac => \debouncerKEY2|s_debounceCnt\(5),
	datad => \debouncerKEY2|s_pulsedOut~5_combout\,
	combout => \debouncerKEY2|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y39_N16
\debouncerKEY2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~2_combout\ = (\debouncerKEY2|s_debounceCnt\(9) & (\debouncerKEY2|s_debounceCnt\(8) & ((\debouncerKEY2|s_debounceCnt\(7)) # (\debouncerKEY2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(7),
	datab => \debouncerKEY2|s_debounceCnt\(9),
	datac => \debouncerKEY2|s_debounceCnt\(8),
	datad => \debouncerKEY2|LessThan0~1_combout\,
	combout => \debouncerKEY2|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y39_N18
\debouncerKEY2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~3_combout\ = (\debouncerKEY2|s_debounceCnt\(12)) # ((\debouncerKEY2|s_debounceCnt\(11) & ((\debouncerKEY2|s_debounceCnt\(10)) # (\debouncerKEY2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(11),
	datab => \debouncerKEY2|s_debounceCnt\(12),
	datac => \debouncerKEY2|s_debounceCnt\(10),
	datad => \debouncerKEY2|LessThan0~2_combout\,
	combout => \debouncerKEY2|LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y39_N24
\debouncerKEY2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~4_combout\ = (\debouncerKEY2|LessThan0~0_combout\) # ((\debouncerKEY2|s_debounceCnt\(14) & ((\debouncerKEY2|s_debounceCnt\(13)) # (\debouncerKEY2|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(14),
	datab => \debouncerKEY2|LessThan0~0_combout\,
	datac => \debouncerKEY2|s_debounceCnt\(13),
	datad => \debouncerKEY2|LessThan0~3_combout\,
	combout => \debouncerKEY2|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y39_N10
\debouncerKEY2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|LessThan0~6_combout\ = ((\debouncerKEY2|s_debounceCnt\(19) & (\debouncerKEY2|s_debounceCnt\(18) & \debouncerKEY2|LessThan0~4_combout\))) # (!\debouncerKEY2|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|LessThan0~5_combout\,
	datab => \debouncerKEY2|s_debounceCnt\(19),
	datac => \debouncerKEY2|s_debounceCnt\(18),
	datad => \debouncerKEY2|LessThan0~4_combout\,
	combout => \debouncerKEY2|LessThan0~6_combout\);

-- Location: LCCOMB_X80_Y39_N4
\debouncerKEY2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[22]~25_combout\ = (\debouncerKEY2|s_debounceCnt\(22) & (((!\debouncerKEY2|LessThan0~6_combout\)))) # (!\debouncerKEY2|s_debounceCnt\(22) & (((\debouncerKEY2|s_debounceCnt[0]~2_combout\)) # (!\debouncerKEY2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_previousIn~q\,
	datab => \debouncerKEY2|s_debounceCnt\(22),
	datac => \debouncerKEY2|LessThan0~6_combout\,
	datad => \debouncerKEY2|s_debounceCnt[0]~2_combout\,
	combout => \debouncerKEY2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X81_Y38_N22
\debouncerKEY2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|Add0~44_combout\ = \debouncerKEY2|Add0~43\ $ (\debouncerKEY2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY2|s_debounceCnt\(22),
	cin => \debouncerKEY2|Add0~43\,
	combout => \debouncerKEY2|Add0~44_combout\);

-- Location: LCCOMB_X80_Y39_N18
\debouncerKEY2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[22]~26_combout\ = (\debouncerKEY2|s_dirtyIn~q\ & (\debouncerKEY2|s_debounceCnt[22]~25_combout\ & ((\debouncerKEY2|Add0~44_combout\) # (!\debouncerKEY2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_previousIn~q\,
	datab => \debouncerKEY2|s_dirtyIn~q\,
	datac => \debouncerKEY2|s_debounceCnt[22]~25_combout\,
	datad => \debouncerKEY2|Add0~44_combout\,
	combout => \debouncerKEY2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X80_Y39_N19
\debouncerKEY2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(22));

-- Location: LCCOMB_X82_Y39_N26
\debouncerKEY2|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt[0]~4_combout\ = (\debouncerKEY2|s_dirtyIn~q\ & (\debouncerKEY2|s_previousIn~q\ & ((!\debouncerKEY2|LessThan0~6_combout\) # (!\debouncerKEY2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(22),
	datab => \debouncerKEY2|s_dirtyIn~q\,
	datac => \debouncerKEY2|s_previousIn~q\,
	datad => \debouncerKEY2|LessThan0~6_combout\,
	combout => \debouncerKEY2|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X82_Y39_N4
\debouncerKEY2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_debounceCnt~27_combout\ = (\debouncerKEY2|s_debounceCnt[0]~4_combout\ & \debouncerKEY2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY2|s_debounceCnt[0]~4_combout\,
	datad => \debouncerKEY2|Add0~10_combout\,
	combout => \debouncerKEY2|s_debounceCnt~27_combout\);

-- Location: FF_X82_Y39_N5
\debouncerKEY2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_debounceCnt~27_combout\,
	ena => \debouncerKEY2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_debounceCnt\(5));

-- Location: LCCOMB_X80_Y39_N30
\debouncerKEY2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~6_combout\ = (\debouncerKEY2|s_previousIn~q\ & (\debouncerKEY2|s_dirtyIn~q\ & (!\debouncerKEY2|s_debounceCnt\(22) & \debouncerKEY2|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_previousIn~q\,
	datab => \debouncerKEY2|s_dirtyIn~q\,
	datac => \debouncerKEY2|s_debounceCnt\(22),
	datad => \debouncerKEY2|s_debounceCnt\(0),
	combout => \debouncerKEY2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X80_Y39_N8
\debouncerKEY2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY2|s_pulsedOut~7_combout\ = (!\debouncerKEY2|s_debounceCnt\(5) & (\debouncerKEY2|s_pulsedOut~5_combout\ & (\debouncerKEY2|s_pulsedOut~6_combout\ & \debouncerKEY2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_debounceCnt\(5),
	datab => \debouncerKEY2|s_pulsedOut~5_combout\,
	datac => \debouncerKEY2|s_pulsedOut~6_combout\,
	datad => \debouncerKEY2|s_pulsedOut~4_combout\,
	combout => \debouncerKEY2|s_pulsedOut~7_combout\);

-- Location: FF_X80_Y39_N9
\debouncerKEY2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY2|s_pulsedOut~q\);

-- Location: LCCOMB_X70_Y31_N30
\BreadBakerFSM|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~8_combout\ = (\ControlSystemUnit|pState.Init~q\ & ((\BreadBakerFSM|Selector15~0_combout\) # ((!\ControlSystemUnit|pState.StartPrg~q\ & \BreadBakerFSM|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \BreadBakerFSM|Selector15~0_combout\,
	datac => \ControlSystemUnit|pState.StartPrg~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \BreadBakerFSM|s_currentState~8_combout\);

-- Location: FF_X69_Y31_N13
\BreadBakerFSM|s_currentState.TExtra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BreadBakerFSM|s_currentState~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TExtra~q\);

-- Location: LCCOMB_X106_Y33_N10
\debouncerKEY3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~0_combout\ = \debouncerKEY3|s_debounceCnt\(0) $ (VCC)
-- \debouncerKEY3|Add0~1\ = CARRY(\debouncerKEY3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncerKEY3|Add0~0_combout\,
	cout => \debouncerKEY3|Add0~1\);

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

-- Location: LCCOMB_X111_Y33_N4
\debouncerKEY3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \debouncerKEY3|s_dirtyIn~0_combout\);

-- Location: FF_X111_Y33_N5
\debouncerKEY3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_dirtyIn~q\);

-- Location: FF_X105_Y33_N5
\debouncerKEY3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncerKEY3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_previousIn~q\);

-- Location: LCCOMB_X106_Y33_N12
\debouncerKEY3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~2_combout\ = (\debouncerKEY3|s_debounceCnt\(1) & (\debouncerKEY3|Add0~1\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(1) & (!\debouncerKEY3|Add0~1\))
-- \debouncerKEY3|Add0~3\ = CARRY((!\debouncerKEY3|s_debounceCnt\(1) & !\debouncerKEY3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncerKEY3|Add0~1\,
	combout => \debouncerKEY3|Add0~2_combout\,
	cout => \debouncerKEY3|Add0~3\);

-- Location: LCCOMB_X105_Y33_N26
\debouncerKEY3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~21_combout\ = (\debouncerKEY3|Add0~2_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|Add0~2_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~21_combout\);

-- Location: FF_X105_Y33_N27
\debouncerKEY3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~21_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(1));

-- Location: LCCOMB_X106_Y33_N14
\debouncerKEY3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~4_combout\ = (\debouncerKEY3|s_debounceCnt\(2) & ((GND) # (!\debouncerKEY3|Add0~3\))) # (!\debouncerKEY3|s_debounceCnt\(2) & (\debouncerKEY3|Add0~3\ $ (GND)))
-- \debouncerKEY3|Add0~5\ = CARRY((\debouncerKEY3|s_debounceCnt\(2)) # (!\debouncerKEY3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncerKEY3|Add0~3\,
	combout => \debouncerKEY3|Add0~4_combout\,
	cout => \debouncerKEY3|Add0~5\);

-- Location: LCCOMB_X105_Y33_N8
\debouncerKEY3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~22_combout\ = (\debouncerKEY3|Add0~4_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|Add0~4_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~22_combout\);

-- Location: FF_X105_Y33_N9
\debouncerKEY3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~22_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(2));

-- Location: LCCOMB_X106_Y33_N16
\debouncerKEY3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~6_combout\ = (\debouncerKEY3|s_debounceCnt\(3) & (\debouncerKEY3|Add0~5\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(3) & (!\debouncerKEY3|Add0~5\))
-- \debouncerKEY3|Add0~7\ = CARRY((!\debouncerKEY3|s_debounceCnt\(3) & !\debouncerKEY3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncerKEY3|Add0~5\,
	combout => \debouncerKEY3|Add0~6_combout\,
	cout => \debouncerKEY3|Add0~7\);

-- Location: LCCOMB_X105_Y33_N10
\debouncerKEY3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~23_combout\ = (\debouncerKEY3|Add0~6_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|Add0~6_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~23_combout\);

-- Location: FF_X105_Y33_N11
\debouncerKEY3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~23_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y33_N18
\debouncerKEY3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~8_combout\ = (\debouncerKEY3|s_debounceCnt\(4) & ((GND) # (!\debouncerKEY3|Add0~7\))) # (!\debouncerKEY3|s_debounceCnt\(4) & (\debouncerKEY3|Add0~7\ $ (GND)))
-- \debouncerKEY3|Add0~9\ = CARRY((\debouncerKEY3|s_debounceCnt\(4)) # (!\debouncerKEY3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncerKEY3|Add0~7\,
	combout => \debouncerKEY3|Add0~8_combout\,
	cout => \debouncerKEY3|Add0~9\);

-- Location: LCCOMB_X105_Y33_N24
\debouncerKEY3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~24_combout\ = (\debouncerKEY3|Add0~8_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|Add0~8_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~24_combout\);

-- Location: FF_X105_Y33_N25
\debouncerKEY3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~24_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(4));

-- Location: LCCOMB_X106_Y33_N20
\debouncerKEY3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~10_combout\ = (\debouncerKEY3|s_debounceCnt\(5) & (\debouncerKEY3|Add0~9\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(5) & (!\debouncerKEY3|Add0~9\))
-- \debouncerKEY3|Add0~11\ = CARRY((!\debouncerKEY3|s_debounceCnt\(5) & !\debouncerKEY3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncerKEY3|Add0~9\,
	combout => \debouncerKEY3|Add0~10_combout\,
	cout => \debouncerKEY3|Add0~11\);

-- Location: LCCOMB_X105_Y33_N20
\debouncerKEY3|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~25_combout\ = (\debouncerKEY3|Add0~10_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|Add0~10_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~25_combout\);

-- Location: FF_X105_Y33_N21
\debouncerKEY3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~25_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(5));

-- Location: LCCOMB_X105_Y33_N22
\debouncerKEY3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~7_combout\ = (!\debouncerKEY3|s_debounceCnt\(1) & (!\debouncerKEY3|s_debounceCnt\(4) & (!\debouncerKEY3|s_debounceCnt\(2) & !\debouncerKEY3|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(1),
	datab => \debouncerKEY3|s_debounceCnt\(4),
	datac => \debouncerKEY3|s_debounceCnt\(2),
	datad => \debouncerKEY3|s_debounceCnt\(3),
	combout => \debouncerKEY3|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X106_Y33_N22
\debouncerKEY3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~12_combout\ = (\debouncerKEY3|s_debounceCnt\(6) & ((GND) # (!\debouncerKEY3|Add0~11\))) # (!\debouncerKEY3|s_debounceCnt\(6) & (\debouncerKEY3|Add0~11\ $ (GND)))
-- \debouncerKEY3|Add0~13\ = CARRY((\debouncerKEY3|s_debounceCnt\(6)) # (!\debouncerKEY3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncerKEY3|Add0~11\,
	combout => \debouncerKEY3|Add0~12_combout\,
	cout => \debouncerKEY3|Add0~13\);

-- Location: LCCOMB_X106_Y33_N24
\debouncerKEY3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~14_combout\ = (\debouncerKEY3|s_debounceCnt\(7) & (\debouncerKEY3|Add0~13\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(7) & (!\debouncerKEY3|Add0~13\))
-- \debouncerKEY3|Add0~15\ = CARRY((!\debouncerKEY3|s_debounceCnt\(7) & !\debouncerKEY3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncerKEY3|Add0~13\,
	combout => \debouncerKEY3|Add0~14_combout\,
	cout => \debouncerKEY3|Add0~15\);

-- Location: LCCOMB_X106_Y33_N26
\debouncerKEY3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~16_combout\ = (\debouncerKEY3|s_debounceCnt\(8) & ((GND) # (!\debouncerKEY3|Add0~15\))) # (!\debouncerKEY3|s_debounceCnt\(8) & (\debouncerKEY3|Add0~15\ $ (GND)))
-- \debouncerKEY3|Add0~17\ = CARRY((\debouncerKEY3|s_debounceCnt\(8)) # (!\debouncerKEY3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncerKEY3|Add0~15\,
	combout => \debouncerKEY3|Add0~16_combout\,
	cout => \debouncerKEY3|Add0~17\);

-- Location: LCCOMB_X106_Y33_N0
\debouncerKEY3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~14_combout\ = (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~16_combout\) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|Add0~16_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt~14_combout\);

-- Location: FF_X106_Y33_N1
\debouncerKEY3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~14_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y33_N28
\debouncerKEY3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~18_combout\ = (\debouncerKEY3|s_debounceCnt\(9) & (\debouncerKEY3|Add0~17\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(9) & (!\debouncerKEY3|Add0~17\))
-- \debouncerKEY3|Add0~19\ = CARRY((!\debouncerKEY3|s_debounceCnt\(9) & !\debouncerKEY3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncerKEY3|Add0~17\,
	combout => \debouncerKEY3|Add0~18_combout\,
	cout => \debouncerKEY3|Add0~19\);

-- Location: LCCOMB_X105_Y32_N24
\debouncerKEY3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~15_combout\ = (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~18_combout\) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~18_combout\,
	datab => \debouncerKEY3|s_previousIn~q\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt~15_combout\);

-- Location: FF_X105_Y32_N25
\debouncerKEY3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~15_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(9));

-- Location: LCCOMB_X106_Y33_N30
\debouncerKEY3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~20_combout\ = (\debouncerKEY3|s_debounceCnt\(10) & ((GND) # (!\debouncerKEY3|Add0~19\))) # (!\debouncerKEY3|s_debounceCnt\(10) & (\debouncerKEY3|Add0~19\ $ (GND)))
-- \debouncerKEY3|Add0~21\ = CARRY((\debouncerKEY3|s_debounceCnt\(10)) # (!\debouncerKEY3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncerKEY3|Add0~19\,
	combout => \debouncerKEY3|Add0~20_combout\,
	cout => \debouncerKEY3|Add0~21\);

-- Location: LCCOMB_X105_Y32_N22
\debouncerKEY3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~16_combout\ = (\debouncerKEY3|Add0~20_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|Add0~20_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~16_combout\);

-- Location: FF_X105_Y32_N23
\debouncerKEY3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~16_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(10));

-- Location: LCCOMB_X106_Y32_N0
\debouncerKEY3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~22_combout\ = (\debouncerKEY3|s_debounceCnt\(11) & (\debouncerKEY3|Add0~21\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(11) & (!\debouncerKEY3|Add0~21\))
-- \debouncerKEY3|Add0~23\ = CARRY((!\debouncerKEY3|s_debounceCnt\(11) & !\debouncerKEY3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncerKEY3|Add0~21\,
	combout => \debouncerKEY3|Add0~22_combout\,
	cout => \debouncerKEY3|Add0~23\);

-- Location: LCCOMB_X105_Y32_N12
\debouncerKEY3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~17_combout\ = (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~22_combout\) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|Add0~22_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt~17_combout\);

-- Location: FF_X105_Y32_N13
\debouncerKEY3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~17_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(11));

-- Location: LCCOMB_X106_Y32_N2
\debouncerKEY3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~24_combout\ = (\debouncerKEY3|s_debounceCnt\(12) & ((GND) # (!\debouncerKEY3|Add0~23\))) # (!\debouncerKEY3|s_debounceCnt\(12) & (\debouncerKEY3|Add0~23\ $ (GND)))
-- \debouncerKEY3|Add0~25\ = CARRY((\debouncerKEY3|s_debounceCnt\(12)) # (!\debouncerKEY3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncerKEY3|Add0~23\,
	combout => \debouncerKEY3|Add0~24_combout\,
	cout => \debouncerKEY3|Add0~25\);

-- Location: LCCOMB_X105_Y32_N8
\debouncerKEY3|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~11_combout\ = (\debouncerKEY3|Add0~24_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|Add0~24_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~11_combout\);

-- Location: FF_X105_Y32_N9
\debouncerKEY3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~11_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(12));

-- Location: LCCOMB_X106_Y32_N4
\debouncerKEY3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~26_combout\ = (\debouncerKEY3|s_debounceCnt\(13) & (\debouncerKEY3|Add0~25\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(13) & (!\debouncerKEY3|Add0~25\))
-- \debouncerKEY3|Add0~27\ = CARRY((!\debouncerKEY3|s_debounceCnt\(13) & !\debouncerKEY3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncerKEY3|Add0~25\,
	combout => \debouncerKEY3|Add0~26_combout\,
	cout => \debouncerKEY3|Add0~27\);

-- Location: LCCOMB_X105_Y32_N2
\debouncerKEY3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~12_combout\ = (\debouncerKEY3|Add0~26_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~26_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~12_combout\);

-- Location: FF_X105_Y32_N3
\debouncerKEY3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~12_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(13));

-- Location: LCCOMB_X106_Y32_N6
\debouncerKEY3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~28_combout\ = (\debouncerKEY3|s_debounceCnt\(14) & ((GND) # (!\debouncerKEY3|Add0~27\))) # (!\debouncerKEY3|s_debounceCnt\(14) & (\debouncerKEY3|Add0~27\ $ (GND)))
-- \debouncerKEY3|Add0~29\ = CARRY((\debouncerKEY3|s_debounceCnt\(14)) # (!\debouncerKEY3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncerKEY3|Add0~27\,
	combout => \debouncerKEY3|Add0~28_combout\,
	cout => \debouncerKEY3|Add0~29\);

-- Location: LCCOMB_X106_Y32_N26
\debouncerKEY3|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~18_combout\ = (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~28_combout\) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	datac => \debouncerKEY3|s_previousIn~q\,
	datad => \debouncerKEY3|Add0~28_combout\,
	combout => \debouncerKEY3|s_debounceCnt~18_combout\);

-- Location: FF_X106_Y32_N27
\debouncerKEY3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~18_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(14));

-- Location: LCCOMB_X106_Y32_N8
\debouncerKEY3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~30_combout\ = (\debouncerKEY3|s_debounceCnt\(15) & (\debouncerKEY3|Add0~29\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(15) & (!\debouncerKEY3|Add0~29\))
-- \debouncerKEY3|Add0~31\ = CARRY((!\debouncerKEY3|s_debounceCnt\(15) & !\debouncerKEY3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncerKEY3|Add0~29\,
	combout => \debouncerKEY3|Add0~30_combout\,
	cout => \debouncerKEY3|Add0~31\);

-- Location: LCCOMB_X107_Y32_N4
\debouncerKEY3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~6_combout\ = (\debouncerKEY3|Add0~30_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~30_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y32_N5
\debouncerKEY3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~6_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(15));

-- Location: LCCOMB_X106_Y32_N10
\debouncerKEY3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~32_combout\ = (\debouncerKEY3|s_debounceCnt\(16) & ((GND) # (!\debouncerKEY3|Add0~31\))) # (!\debouncerKEY3|s_debounceCnt\(16) & (\debouncerKEY3|Add0~31\ $ (GND)))
-- \debouncerKEY3|Add0~33\ = CARRY((\debouncerKEY3|s_debounceCnt\(16)) # (!\debouncerKEY3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncerKEY3|Add0~31\,
	combout => \debouncerKEY3|Add0~32_combout\,
	cout => \debouncerKEY3|Add0~33\);

-- Location: LCCOMB_X106_Y32_N28
\debouncerKEY3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~7_combout\ = (\debouncerKEY3|Add0~32_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~32_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~7_combout\);

-- Location: FF_X106_Y32_N29
\debouncerKEY3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~7_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(16));

-- Location: LCCOMB_X106_Y32_N12
\debouncerKEY3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~34_combout\ = (\debouncerKEY3|s_debounceCnt\(17) & (\debouncerKEY3|Add0~33\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(17) & (!\debouncerKEY3|Add0~33\))
-- \debouncerKEY3|Add0~35\ = CARRY((!\debouncerKEY3|s_debounceCnt\(17) & !\debouncerKEY3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncerKEY3|Add0~33\,
	combout => \debouncerKEY3|Add0~34_combout\,
	cout => \debouncerKEY3|Add0~35\);

-- Location: LCCOMB_X106_Y32_N30
\debouncerKEY3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~8_combout\ = (\debouncerKEY3|Add0~34_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~34_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~8_combout\);

-- Location: FF_X106_Y32_N31
\debouncerKEY3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~8_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(17));

-- Location: LCCOMB_X106_Y32_N14
\debouncerKEY3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~36_combout\ = (\debouncerKEY3|s_debounceCnt\(18) & ((GND) # (!\debouncerKEY3|Add0~35\))) # (!\debouncerKEY3|s_debounceCnt\(18) & (\debouncerKEY3|Add0~35\ $ (GND)))
-- \debouncerKEY3|Add0~37\ = CARRY((\debouncerKEY3|s_debounceCnt\(18)) # (!\debouncerKEY3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncerKEY3|Add0~35\,
	combout => \debouncerKEY3|Add0~36_combout\,
	cout => \debouncerKEY3|Add0~37\);

-- Location: LCCOMB_X105_Y32_N14
\debouncerKEY3|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[18]~19_combout\ = (\debouncerKEY3|s_debounceCnt[9]~4_combout\ & (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~36_combout\) # (!\debouncerKEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|Add0~36_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt[18]~19_combout\);

-- Location: FF_X105_Y32_N15
\debouncerKEY3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(18));

-- Location: LCCOMB_X106_Y32_N16
\debouncerKEY3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~38_combout\ = (\debouncerKEY3|s_debounceCnt\(19) & (\debouncerKEY3|Add0~37\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(19) & (!\debouncerKEY3|Add0~37\))
-- \debouncerKEY3|Add0~39\ = CARRY((!\debouncerKEY3|s_debounceCnt\(19) & !\debouncerKEY3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncerKEY3|Add0~37\,
	combout => \debouncerKEY3|Add0~38_combout\,
	cout => \debouncerKEY3|Add0~39\);

-- Location: LCCOMB_X105_Y32_N4
\debouncerKEY3|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[19]~20_combout\ = (\debouncerKEY3|s_debounceCnt[9]~4_combout\ & (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~38_combout\) # (!\debouncerKEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	datab => \debouncerKEY3|Add0~38_combout\,
	datac => \debouncerKEY3|s_previousIn~q\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt[19]~20_combout\);

-- Location: FF_X105_Y32_N5
\debouncerKEY3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y32_N18
\debouncerKEY3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~40_combout\ = (\debouncerKEY3|s_debounceCnt\(20) & ((GND) # (!\debouncerKEY3|Add0~39\))) # (!\debouncerKEY3|s_debounceCnt\(20) & (\debouncerKEY3|Add0~39\ $ (GND)))
-- \debouncerKEY3|Add0~41\ = CARRY((\debouncerKEY3|s_debounceCnt\(20)) # (!\debouncerKEY3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncerKEY3|Add0~39\,
	combout => \debouncerKEY3|Add0~40_combout\,
	cout => \debouncerKEY3|Add0~41\);

-- Location: LCCOMB_X105_Y32_N0
\debouncerKEY3|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[20]~9_combout\ = (\debouncerKEY3|s_debounceCnt[9]~5_combout\ & (\debouncerKEY3|s_debounceCnt[9]~4_combout\ & \debouncerKEY3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	datac => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	datad => \debouncerKEY3|Add0~40_combout\,
	combout => \debouncerKEY3|s_debounceCnt[20]~9_combout\);

-- Location: FF_X105_Y32_N1
\debouncerKEY3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(20));

-- Location: LCCOMB_X107_Y32_N14
\debouncerKEY3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~0_combout\ = (!\debouncerKEY3|s_debounceCnt\(17) & (!\debouncerKEY3|s_debounceCnt\(15) & !\debouncerKEY3|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(17),
	datac => \debouncerKEY3|s_debounceCnt\(15),
	datad => \debouncerKEY3|s_debounceCnt\(16),
	combout => \debouncerKEY3|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y33_N6
\debouncerKEY3|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~8_combout\ = (\debouncerKEY3|s_pulsedOut~7_combout\ & !\debouncerKEY3|s_debounceCnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|s_pulsedOut~7_combout\,
	datad => \debouncerKEY3|s_debounceCnt\(5),
	combout => \debouncerKEY3|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X105_Y33_N30
\debouncerKEY3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~1_combout\ = (\debouncerKEY3|s_debounceCnt\(7)) # ((\debouncerKEY3|s_debounceCnt\(6) & ((\debouncerKEY3|s_debounceCnt\(0)) # (!\debouncerKEY3|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(0),
	datab => \debouncerKEY3|s_debounceCnt\(7),
	datac => \debouncerKEY3|s_debounceCnt\(6),
	datad => \debouncerKEY3|s_pulsedOut~8_combout\,
	combout => \debouncerKEY3|LessThan0~1_combout\);

-- Location: LCCOMB_X105_Y32_N28
\debouncerKEY3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~2_combout\ = (\debouncerKEY3|s_debounceCnt\(10)) # ((\debouncerKEY3|s_debounceCnt\(9) & (\debouncerKEY3|LessThan0~1_combout\ & \debouncerKEY3|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(10),
	datab => \debouncerKEY3|s_debounceCnt\(9),
	datac => \debouncerKEY3|LessThan0~1_combout\,
	datad => \debouncerKEY3|s_debounceCnt\(8),
	combout => \debouncerKEY3|LessThan0~2_combout\);

-- Location: LCCOMB_X105_Y32_N6
\debouncerKEY3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~3_combout\ = (\debouncerKEY3|s_debounceCnt\(13)) # ((\debouncerKEY3|s_debounceCnt\(12)) # ((\debouncerKEY3|s_debounceCnt\(11) & \debouncerKEY3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(11),
	datab => \debouncerKEY3|s_debounceCnt\(13),
	datac => \debouncerKEY3|s_debounceCnt\(12),
	datad => \debouncerKEY3|LessThan0~2_combout\,
	combout => \debouncerKEY3|LessThan0~3_combout\);

-- Location: LCCOMB_X105_Y32_N20
\debouncerKEY3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~4_combout\ = (\debouncerKEY3|s_debounceCnt\(19) & (((\debouncerKEY3|s_debounceCnt\(14) & \debouncerKEY3|LessThan0~3_combout\)) # (!\debouncerKEY3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|LessThan0~0_combout\,
	datab => \debouncerKEY3|s_debounceCnt\(14),
	datac => \debouncerKEY3|s_debounceCnt\(19),
	datad => \debouncerKEY3|LessThan0~3_combout\,
	combout => \debouncerKEY3|LessThan0~4_combout\);

-- Location: LCCOMB_X105_Y32_N18
\debouncerKEY3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|LessThan0~5_combout\ = (\debouncerKEY3|s_debounceCnt\(21)) # ((\debouncerKEY3|s_debounceCnt\(20)) # ((\debouncerKEY3|s_debounceCnt\(18) & \debouncerKEY3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(21),
	datab => \debouncerKEY3|s_debounceCnt\(20),
	datac => \debouncerKEY3|s_debounceCnt\(18),
	datad => \debouncerKEY3|LessThan0~4_combout\,
	combout => \debouncerKEY3|LessThan0~5_combout\);

-- Location: LCCOMB_X105_Y32_N16
\debouncerKEY3|s_debounceCnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[9]~2_combout\ = (\debouncerKEY3|s_dirtyIn~q\ & ((!\debouncerKEY3|LessThan0~5_combout\) # (!\debouncerKEY3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_dirtyIn~q\,
	datac => \debouncerKEY3|s_debounceCnt\(22),
	datad => \debouncerKEY3|LessThan0~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt[9]~2_combout\);

-- Location: LCCOMB_X106_Y33_N8
\debouncerKEY3|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~3_combout\ = (\debouncerKEY3|s_debounceCnt[9]~2_combout\ & ((\debouncerKEY3|Add0~12_combout\) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|Add0~12_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~2_combout\,
	combout => \debouncerKEY3|s_debounceCnt~3_combout\);

-- Location: FF_X106_Y33_N9
\debouncerKEY3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~3_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(6));

-- Location: LCCOMB_X105_Y33_N14
\debouncerKEY3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~13_combout\ = (\debouncerKEY3|Add0~14_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY3|Add0~14_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~13_combout\);

-- Location: FF_X105_Y33_N15
\debouncerKEY3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~13_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(7));

-- Location: LCCOMB_X106_Y33_N6
\debouncerKEY3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~4_combout\ = (!\debouncerKEY3|s_debounceCnt\(7) & (!\debouncerKEY3|s_debounceCnt\(8) & (!\debouncerKEY3|s_debounceCnt\(9) & !\debouncerKEY3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(7),
	datab => \debouncerKEY3|s_debounceCnt\(8),
	datac => \debouncerKEY3|s_debounceCnt\(9),
	datad => \debouncerKEY3|s_debounceCnt\(10),
	combout => \debouncerKEY3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X105_Y32_N26
\debouncerKEY3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~5_combout\ = (!\debouncerKEY3|s_debounceCnt\(11) & (!\debouncerKEY3|s_debounceCnt\(19) & (!\debouncerKEY3|s_debounceCnt\(18) & !\debouncerKEY3|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(11),
	datab => \debouncerKEY3|s_debounceCnt\(19),
	datac => \debouncerKEY3|s_debounceCnt\(18),
	datad => \debouncerKEY3|s_debounceCnt\(14),
	combout => \debouncerKEY3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X106_Y32_N24
\debouncerKEY3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~2_combout\ = (!\debouncerKEY3|s_debounceCnt\(17) & (!\debouncerKEY3|s_debounceCnt\(16) & (!\debouncerKEY3|s_debounceCnt\(6) & !\debouncerKEY3|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(17),
	datab => \debouncerKEY3|s_debounceCnt\(16),
	datac => \debouncerKEY3|s_debounceCnt\(6),
	datad => \debouncerKEY3|s_debounceCnt\(15),
	combout => \debouncerKEY3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X106_Y33_N2
\debouncerKEY3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~3_combout\ = (!\debouncerKEY3|s_debounceCnt\(12) & (!\debouncerKEY3|s_debounceCnt\(13) & (!\debouncerKEY3|s_debounceCnt\(20) & !\debouncerKEY3|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(12),
	datab => \debouncerKEY3|s_debounceCnt\(13),
	datac => \debouncerKEY3|s_debounceCnt\(20),
	datad => \debouncerKEY3|s_debounceCnt\(21),
	combout => \debouncerKEY3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X105_Y33_N0
\debouncerKEY3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~6_combout\ = (\debouncerKEY3|s_pulsedOut~4_combout\ & (\debouncerKEY3|s_pulsedOut~5_combout\ & (\debouncerKEY3|s_pulsedOut~2_combout\ & \debouncerKEY3|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_pulsedOut~4_combout\,
	datab => \debouncerKEY3|s_pulsedOut~5_combout\,
	datac => \debouncerKEY3|s_pulsedOut~2_combout\,
	datad => \debouncerKEY3|s_pulsedOut~3_combout\,
	combout => \debouncerKEY3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X105_Y33_N2
\debouncerKEY3|s_debounceCnt[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[9]~29_combout\ = (\debouncerKEY3|s_debounceCnt\(0)) # ((\debouncerKEY3|s_debounceCnt\(5)) # ((!\debouncerKEY3|s_pulsedOut~6_combout\) # (!\debouncerKEY3|s_pulsedOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(0),
	datab => \debouncerKEY3|s_debounceCnt\(5),
	datac => \debouncerKEY3|s_pulsedOut~7_combout\,
	datad => \debouncerKEY3|s_pulsedOut~6_combout\,
	combout => \debouncerKEY3|s_debounceCnt[9]~29_combout\);

-- Location: LCCOMB_X105_Y33_N4
\debouncerKEY3|s_debounceCnt[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[9]~4_combout\ = ((\debouncerKEY3|s_debounceCnt\(22)) # ((\debouncerKEY3|s_debounceCnt[9]~29_combout\) # (!\debouncerKEY3|s_previousIn~q\))) # (!\debouncerKEY3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_dirtyIn~q\,
	datab => \debouncerKEY3|s_debounceCnt\(22),
	datac => \debouncerKEY3|s_previousIn~q\,
	datad => \debouncerKEY3|s_debounceCnt[9]~29_combout\,
	combout => \debouncerKEY3|s_debounceCnt[9]~4_combout\);

-- Location: LCCOMB_X106_Y32_N20
\debouncerKEY3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~42_combout\ = (\debouncerKEY3|s_debounceCnt\(21) & (\debouncerKEY3|Add0~41\ & VCC)) # (!\debouncerKEY3|s_debounceCnt\(21) & (!\debouncerKEY3|Add0~41\))
-- \debouncerKEY3|Add0~43\ = CARRY((!\debouncerKEY3|s_debounceCnt\(21) & !\debouncerKEY3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY3|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncerKEY3|Add0~41\,
	combout => \debouncerKEY3|Add0~42_combout\,
	cout => \debouncerKEY3|Add0~43\);

-- Location: LCCOMB_X105_Y32_N30
\debouncerKEY3|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[21]~10_combout\ = (\debouncerKEY3|s_debounceCnt[9]~4_combout\ & (\debouncerKEY3|Add0~42_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	datac => \debouncerKEY3|Add0~42_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt[21]~10_combout\);

-- Location: FF_X105_Y32_N31
\debouncerKEY3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(21));

-- Location: LCCOMB_X106_Y32_N22
\debouncerKEY3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|Add0~44_combout\ = \debouncerKEY3|Add0~43\ $ (\debouncerKEY3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY3|s_debounceCnt\(22),
	cin => \debouncerKEY3|Add0~43\,
	combout => \debouncerKEY3|Add0~44_combout\);

-- Location: LCCOMB_X105_Y33_N16
\debouncerKEY3|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[22]~27_combout\ = (\debouncerKEY3|s_debounceCnt\(22) & (((!\debouncerKEY3|LessThan0~5_combout\)))) # (!\debouncerKEY3|s_debounceCnt\(22) & (((\debouncerKEY3|s_debounceCnt[9]~29_combout\)) # (!\debouncerKEY3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_previousIn~q\,
	datab => \debouncerKEY3|s_debounceCnt\(22),
	datac => \debouncerKEY3|LessThan0~5_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~29_combout\,
	combout => \debouncerKEY3|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X105_Y33_N18
\debouncerKEY3|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[22]~28_combout\ = (\debouncerKEY3|s_dirtyIn~q\ & (\debouncerKEY3|s_debounceCnt[22]~27_combout\ & ((\debouncerKEY3|Add0~44_combout\) # (!\debouncerKEY3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~44_combout\,
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|s_dirtyIn~q\,
	datad => \debouncerKEY3|s_debounceCnt[22]~27_combout\,
	combout => \debouncerKEY3|s_debounceCnt[22]~28_combout\);

-- Location: FF_X105_Y33_N19
\debouncerKEY3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(22));

-- Location: LCCOMB_X105_Y32_N10
\debouncerKEY3|s_debounceCnt[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt[9]~5_combout\ = (\debouncerKEY3|s_dirtyIn~q\ & (\debouncerKEY3|s_previousIn~q\ & ((!\debouncerKEY3|LessThan0~5_combout\) # (!\debouncerKEY3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_dirtyIn~q\,
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|s_debounceCnt\(22),
	datad => \debouncerKEY3|LessThan0~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt[9]~5_combout\);

-- Location: LCCOMB_X106_Y33_N4
\debouncerKEY3|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_debounceCnt~26_combout\ = (\debouncerKEY3|Add0~0_combout\ & \debouncerKEY3|s_debounceCnt[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|Add0~0_combout\,
	datad => \debouncerKEY3|s_debounceCnt[9]~5_combout\,
	combout => \debouncerKEY3|s_debounceCnt~26_combout\);

-- Location: FF_X106_Y33_N5
\debouncerKEY3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_debounceCnt~26_combout\,
	ena => \debouncerKEY3|s_debounceCnt[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_debounceCnt\(0));

-- Location: LCCOMB_X105_Y33_N28
\debouncerKEY3|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~9_combout\ = (\debouncerKEY3|s_debounceCnt\(0) & (\debouncerKEY3|s_previousIn~q\ & (\debouncerKEY3|s_dirtyIn~q\ & !\debouncerKEY3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_debounceCnt\(0),
	datab => \debouncerKEY3|s_previousIn~q\,
	datac => \debouncerKEY3|s_dirtyIn~q\,
	datad => \debouncerKEY3|s_debounceCnt\(22),
	combout => \debouncerKEY3|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X105_Y33_N12
\debouncerKEY3|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY3|s_pulsedOut~10_combout\ = (\debouncerKEY3|s_pulsedOut~9_combout\ & (\debouncerKEY3|s_pulsedOut~6_combout\ & (\debouncerKEY3|s_pulsedOut~7_combout\ & !\debouncerKEY3|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_pulsedOut~9_combout\,
	datab => \debouncerKEY3|s_pulsedOut~6_combout\,
	datac => \debouncerKEY3|s_pulsedOut~7_combout\,
	datad => \debouncerKEY3|s_debounceCnt\(5),
	combout => \debouncerKEY3|s_pulsedOut~10_combout\);

-- Location: FF_X105_Y33_N13
\debouncerKEY3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY3|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY3|s_pulsedOut~q\);

-- Location: LCCOMB_X69_Y28_N12
\TimeExtra|Counter|s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[0]~8_combout\ = (\debouncerKEY3|s_pulsedOut~q\ & (\TimeExtra|Counter|s_count\(0) $ (VCC))) # (!\debouncerKEY3|s_pulsedOut~q\ & (\TimeExtra|Counter|s_count\(0) & VCC))
-- \TimeExtra|Counter|s_count[0]~9\ = CARRY((\debouncerKEY3|s_pulsedOut~q\ & \TimeExtra|Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY3|s_pulsedOut~q\,
	datab => \TimeExtra|Counter|s_count\(0),
	datad => VCC,
	combout => \TimeExtra|Counter|s_count[0]~8_combout\,
	cout => \TimeExtra|Counter|s_count[0]~9\);

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

-- Location: LCCOMB_X75_Y35_N14
\debouncerKEY1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debouncerKEY1|s_dirtyIn~0_combout\);

-- Location: FF_X75_Y35_N15
\debouncerKEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_dirtyIn~q\);

-- Location: FF_X75_Y35_N13
\debouncerKEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncerKEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_previousIn~q\);

-- Location: LCCOMB_X74_Y35_N12
\debouncerKEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~2_combout\ = (\debouncerKEY1|s_debounceCnt\(1) & (\debouncerKEY1|Add0~1\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(1) & (!\debouncerKEY1|Add0~1\))
-- \debouncerKEY1|Add0~3\ = CARRY((!\debouncerKEY1|s_debounceCnt\(1) & !\debouncerKEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncerKEY1|Add0~1\,
	combout => \debouncerKEY1|Add0~2_combout\,
	cout => \debouncerKEY1|Add0~3\);

-- Location: LCCOMB_X74_Y35_N14
\debouncerKEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~4_combout\ = (\debouncerKEY1|s_debounceCnt\(2) & ((GND) # (!\debouncerKEY1|Add0~3\))) # (!\debouncerKEY1|s_debounceCnt\(2) & (\debouncerKEY1|Add0~3\ $ (GND)))
-- \debouncerKEY1|Add0~5\ = CARRY((\debouncerKEY1|s_debounceCnt\(2)) # (!\debouncerKEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncerKEY1|Add0~3\,
	combout => \debouncerKEY1|Add0~4_combout\,
	cout => \debouncerKEY1|Add0~5\);

-- Location: LCCOMB_X75_Y35_N0
\debouncerKEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~22_combout\ = (\debouncerKEY1|Add0~4_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~4_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~22_combout\);

-- Location: LCCOMB_X75_Y35_N18
\debouncerKEY1|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[10]~4_combout\ = (((\debouncerKEY1|s_debounceCnt\(22)) # (\debouncerKEY1|s_debounceCnt[10]~29_combout\)) # (!\debouncerKEY1|s_dirtyIn~q\)) # (!\debouncerKEY1|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_previousIn~q\,
	datab => \debouncerKEY1|s_dirtyIn~q\,
	datac => \debouncerKEY1|s_debounceCnt\(22),
	datad => \debouncerKEY1|s_debounceCnt[10]~29_combout\,
	combout => \debouncerKEY1|s_debounceCnt[10]~4_combout\);

-- Location: FF_X75_Y35_N1
\debouncerKEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~22_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X74_Y35_N16
\debouncerKEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~6_combout\ = (\debouncerKEY1|s_debounceCnt\(3) & (\debouncerKEY1|Add0~5\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(3) & (!\debouncerKEY1|Add0~5\))
-- \debouncerKEY1|Add0~7\ = CARRY((!\debouncerKEY1|s_debounceCnt\(3) & !\debouncerKEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncerKEY1|Add0~5\,
	combout => \debouncerKEY1|Add0~6_combout\,
	cout => \debouncerKEY1|Add0~7\);

-- Location: LCCOMB_X75_Y35_N26
\debouncerKEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~23_combout\ = (\debouncerKEY1|Add0~6_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|Add0~6_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~23_combout\);

-- Location: FF_X75_Y35_N27
\debouncerKEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~23_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X74_Y35_N18
\debouncerKEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~8_combout\ = (\debouncerKEY1|s_debounceCnt\(4) & ((GND) # (!\debouncerKEY1|Add0~7\))) # (!\debouncerKEY1|s_debounceCnt\(4) & (\debouncerKEY1|Add0~7\ $ (GND)))
-- \debouncerKEY1|Add0~9\ = CARRY((\debouncerKEY1|s_debounceCnt\(4)) # (!\debouncerKEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncerKEY1|Add0~7\,
	combout => \debouncerKEY1|Add0~8_combout\,
	cout => \debouncerKEY1|Add0~9\);

-- Location: LCCOMB_X75_Y35_N4
\debouncerKEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~24_combout\ = (\debouncerKEY1|Add0~8_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|Add0~8_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~24_combout\);

-- Location: FF_X75_Y35_N5
\debouncerKEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~24_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X74_Y35_N20
\debouncerKEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~10_combout\ = (\debouncerKEY1|s_debounceCnt\(5) & (\debouncerKEY1|Add0~9\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(5) & (!\debouncerKEY1|Add0~9\))
-- \debouncerKEY1|Add0~11\ = CARRY((!\debouncerKEY1|s_debounceCnt\(5) & !\debouncerKEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncerKEY1|Add0~9\,
	combout => \debouncerKEY1|Add0~10_combout\,
	cout => \debouncerKEY1|Add0~11\);

-- Location: LCCOMB_X75_Y35_N20
\debouncerKEY1|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~25_combout\ = (\debouncerKEY1|Add0~10_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|Add0~10_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~25_combout\);

-- Location: FF_X75_Y35_N21
\debouncerKEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~25_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X74_Y35_N22
\debouncerKEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~12_combout\ = (\debouncerKEY1|s_debounceCnt\(6) & ((GND) # (!\debouncerKEY1|Add0~11\))) # (!\debouncerKEY1|s_debounceCnt\(6) & (\debouncerKEY1|Add0~11\ $ (GND)))
-- \debouncerKEY1|Add0~13\ = CARRY((\debouncerKEY1|s_debounceCnt\(6)) # (!\debouncerKEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncerKEY1|Add0~11\,
	combout => \debouncerKEY1|Add0~12_combout\,
	cout => \debouncerKEY1|Add0~13\);

-- Location: LCCOMB_X74_Y34_N18
\debouncerKEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~40_combout\ = (\debouncerKEY1|s_debounceCnt\(20) & ((GND) # (!\debouncerKEY1|Add0~39\))) # (!\debouncerKEY1|s_debounceCnt\(20) & (\debouncerKEY1|Add0~39\ $ (GND)))
-- \debouncerKEY1|Add0~41\ = CARRY((\debouncerKEY1|s_debounceCnt\(20)) # (!\debouncerKEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncerKEY1|Add0~39\,
	combout => \debouncerKEY1|Add0~40_combout\,
	cout => \debouncerKEY1|Add0~41\);

-- Location: LCCOMB_X74_Y34_N20
\debouncerKEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~42_combout\ = (\debouncerKEY1|s_debounceCnt\(21) & (\debouncerKEY1|Add0~41\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(21) & (!\debouncerKEY1|Add0~41\))
-- \debouncerKEY1|Add0~43\ = CARRY((!\debouncerKEY1|s_debounceCnt\(21) & !\debouncerKEY1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncerKEY1|Add0~41\,
	combout => \debouncerKEY1|Add0~42_combout\,
	cout => \debouncerKEY1|Add0~43\);

-- Location: LCCOMB_X73_Y34_N22
\debouncerKEY1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[21]~10_combout\ = (\debouncerKEY1|Add0~42_combout\ & (\debouncerKEY1|s_debounceCnt[10]~4_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~42_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X73_Y34_N23
\debouncerKEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X73_Y34_N18
\debouncerKEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~5_combout\ = (!\debouncerKEY1|s_debounceCnt\(21) & !\debouncerKEY1|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|s_debounceCnt\(21),
	datad => \debouncerKEY1|s_debounceCnt\(20),
	combout => \debouncerKEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X73_Y34_N28
\debouncerKEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~2_combout\ = (!\debouncerKEY1|s_debounceCnt\(12) & !\debouncerKEY1|s_debounceCnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(12),
	datad => \debouncerKEY1|s_debounceCnt\(13),
	combout => \debouncerKEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y35_N30
\debouncerKEY1|s_pulsedOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~8_combout\ = (!\debouncerKEY1|s_debounceCnt\(5) & \debouncerKEY1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(5),
	datad => \debouncerKEY1|s_pulsedOut~7_combout\,
	combout => \debouncerKEY1|s_pulsedOut~8_combout\);

-- Location: LCCOMB_X75_Y34_N28
\debouncerKEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~0_combout\ = (\debouncerKEY1|s_debounceCnt\(7)) # ((\debouncerKEY1|s_debounceCnt\(6) & ((\debouncerKEY1|s_debounceCnt\(0)) # (!\debouncerKEY1|s_pulsedOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(6),
	datab => \debouncerKEY1|s_debounceCnt\(7),
	datac => \debouncerKEY1|s_pulsedOut~8_combout\,
	datad => \debouncerKEY1|s_debounceCnt\(0),
	combout => \debouncerKEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y34_N10
\debouncerKEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~1_combout\ = (\debouncerKEY1|s_debounceCnt\(10)) # ((\debouncerKEY1|s_debounceCnt\(9) & (\debouncerKEY1|s_debounceCnt\(8) & \debouncerKEY1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(9),
	datab => \debouncerKEY1|s_debounceCnt\(8),
	datac => \debouncerKEY1|s_debounceCnt\(10),
	datad => \debouncerKEY1|LessThan0~0_combout\,
	combout => \debouncerKEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y34_N12
\debouncerKEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~3_combout\ = (\debouncerKEY1|s_debounceCnt\(14) & (((\debouncerKEY1|s_debounceCnt\(11) & \debouncerKEY1|LessThan0~1_combout\)) # (!\debouncerKEY1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(11),
	datab => \debouncerKEY1|LessThan0~2_combout\,
	datac => \debouncerKEY1|s_debounceCnt\(14),
	datad => \debouncerKEY1|LessThan0~1_combout\,
	combout => \debouncerKEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X75_Y34_N18
\debouncerKEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~4_combout\ = (\debouncerKEY1|s_debounceCnt\(16)) # ((\debouncerKEY1|s_debounceCnt\(17)) # ((\debouncerKEY1|s_debounceCnt\(15)) # (\debouncerKEY1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(16),
	datab => \debouncerKEY1|s_debounceCnt\(17),
	datac => \debouncerKEY1|s_debounceCnt\(15),
	datad => \debouncerKEY1|LessThan0~3_combout\,
	combout => \debouncerKEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X75_Y34_N0
\debouncerKEY1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|LessThan0~6_combout\ = ((\debouncerKEY1|s_debounceCnt\(19) & (\debouncerKEY1|s_debounceCnt\(18) & \debouncerKEY1|LessThan0~4_combout\))) # (!\debouncerKEY1|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(19),
	datab => \debouncerKEY1|s_debounceCnt\(18),
	datac => \debouncerKEY1|LessThan0~5_combout\,
	datad => \debouncerKEY1|LessThan0~4_combout\,
	combout => \debouncerKEY1|LessThan0~6_combout\);

-- Location: LCCOMB_X75_Y34_N6
\debouncerKEY1|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[10]~2_combout\ = (\debouncerKEY1|s_dirtyIn~q\ & ((!\debouncerKEY1|LessThan0~6_combout\) # (!\debouncerKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(22),
	datac => \debouncerKEY1|s_dirtyIn~q\,
	datad => \debouncerKEY1|LessThan0~6_combout\,
	combout => \debouncerKEY1|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X75_Y34_N16
\debouncerKEY1|s_debounceCnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~3_combout\ = (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~12_combout\) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_previousIn~q\,
	datac => \debouncerKEY1|Add0~12_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	combout => \debouncerKEY1|s_debounceCnt~3_combout\);

-- Location: FF_X75_Y34_N17
\debouncerKEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~3_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X74_Y35_N24
\debouncerKEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~14_combout\ = (\debouncerKEY1|s_debounceCnt\(7) & (\debouncerKEY1|Add0~13\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(7) & (!\debouncerKEY1|Add0~13\))
-- \debouncerKEY1|Add0~15\ = CARRY((!\debouncerKEY1|s_debounceCnt\(7) & !\debouncerKEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncerKEY1|Add0~13\,
	combout => \debouncerKEY1|Add0~14_combout\,
	cout => \debouncerKEY1|Add0~15\);

-- Location: LCCOMB_X75_Y34_N14
\debouncerKEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~13_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datac => \debouncerKEY1|Add0~14_combout\,
	combout => \debouncerKEY1|s_debounceCnt~13_combout\);

-- Location: FF_X75_Y34_N15
\debouncerKEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~13_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X74_Y35_N26
\debouncerKEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~16_combout\ = (\debouncerKEY1|s_debounceCnt\(8) & ((GND) # (!\debouncerKEY1|Add0~15\))) # (!\debouncerKEY1|s_debounceCnt\(8) & (\debouncerKEY1|Add0~15\ $ (GND)))
-- \debouncerKEY1|Add0~17\ = CARRY((\debouncerKEY1|s_debounceCnt\(8)) # (!\debouncerKEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncerKEY1|Add0~15\,
	combout => \debouncerKEY1|Add0~16_combout\,
	cout => \debouncerKEY1|Add0~17\);

-- Location: LCCOMB_X74_Y35_N0
\debouncerKEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~14_combout\ = (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~16_combout\) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~16_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	datad => \debouncerKEY1|s_previousIn~q\,
	combout => \debouncerKEY1|s_debounceCnt~14_combout\);

-- Location: FF_X74_Y35_N1
\debouncerKEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~14_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X74_Y35_N28
\debouncerKEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~18_combout\ = (\debouncerKEY1|s_debounceCnt\(9) & (\debouncerKEY1|Add0~17\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(9) & (!\debouncerKEY1|Add0~17\))
-- \debouncerKEY1|Add0~19\ = CARRY((!\debouncerKEY1|s_debounceCnt\(9) & !\debouncerKEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncerKEY1|Add0~17\,
	combout => \debouncerKEY1|Add0~18_combout\,
	cout => \debouncerKEY1|Add0~19\);

-- Location: LCCOMB_X74_Y35_N2
\debouncerKEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~15_combout\ = (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~18_combout\) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|Add0~18_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	datad => \debouncerKEY1|s_previousIn~q\,
	combout => \debouncerKEY1|s_debounceCnt~15_combout\);

-- Location: FF_X74_Y35_N3
\debouncerKEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~15_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X74_Y35_N30
\debouncerKEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~20_combout\ = (\debouncerKEY1|s_debounceCnt\(10) & ((GND) # (!\debouncerKEY1|Add0~19\))) # (!\debouncerKEY1|s_debounceCnt\(10) & (\debouncerKEY1|Add0~19\ $ (GND)))
-- \debouncerKEY1|Add0~21\ = CARRY((\debouncerKEY1|s_debounceCnt\(10)) # (!\debouncerKEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncerKEY1|Add0~19\,
	combout => \debouncerKEY1|Add0~20_combout\,
	cout => \debouncerKEY1|Add0~21\);

-- Location: LCCOMB_X75_Y34_N8
\debouncerKEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~16_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datad => \debouncerKEY1|Add0~20_combout\,
	combout => \debouncerKEY1|s_debounceCnt~16_combout\);

-- Location: FF_X75_Y34_N9
\debouncerKEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~16_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X74_Y34_N0
\debouncerKEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~22_combout\ = (\debouncerKEY1|s_debounceCnt\(11) & (\debouncerKEY1|Add0~21\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(11) & (!\debouncerKEY1|Add0~21\))
-- \debouncerKEY1|Add0~23\ = CARRY((!\debouncerKEY1|s_debounceCnt\(11) & !\debouncerKEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncerKEY1|Add0~21\,
	combout => \debouncerKEY1|Add0~22_combout\,
	cout => \debouncerKEY1|Add0~23\);

-- Location: LCCOMB_X75_Y34_N22
\debouncerKEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~17_combout\ = (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~22_combout\) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~22_combout\,
	datab => \debouncerKEY1|s_previousIn~q\,
	datad => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	combout => \debouncerKEY1|s_debounceCnt~17_combout\);

-- Location: FF_X75_Y34_N23
\debouncerKEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~17_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X74_Y34_N2
\debouncerKEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~24_combout\ = (\debouncerKEY1|s_debounceCnt\(12) & ((GND) # (!\debouncerKEY1|Add0~23\))) # (!\debouncerKEY1|s_debounceCnt\(12) & (\debouncerKEY1|Add0~23\ $ (GND)))
-- \debouncerKEY1|Add0~25\ = CARRY((\debouncerKEY1|s_debounceCnt\(12)) # (!\debouncerKEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncerKEY1|Add0~23\,
	combout => \debouncerKEY1|Add0~24_combout\,
	cout => \debouncerKEY1|Add0~25\);

-- Location: LCCOMB_X73_Y34_N24
\debouncerKEY1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~11_combout\ = (\debouncerKEY1|Add0~24_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~24_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~11_combout\);

-- Location: FF_X73_Y34_N25
\debouncerKEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~11_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X74_Y34_N4
\debouncerKEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~26_combout\ = (\debouncerKEY1|s_debounceCnt\(13) & (\debouncerKEY1|Add0~25\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(13) & (!\debouncerKEY1|Add0~25\))
-- \debouncerKEY1|Add0~27\ = CARRY((!\debouncerKEY1|s_debounceCnt\(13) & !\debouncerKEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncerKEY1|Add0~25\,
	combout => \debouncerKEY1|Add0~26_combout\,
	cout => \debouncerKEY1|Add0~27\);

-- Location: LCCOMB_X74_Y34_N28
\debouncerKEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~12_combout\ = (\debouncerKEY1|Add0~26_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|Add0~26_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~12_combout\);

-- Location: FF_X74_Y34_N29
\debouncerKEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~12_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X74_Y34_N6
\debouncerKEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~28_combout\ = (\debouncerKEY1|s_debounceCnt\(14) & ((GND) # (!\debouncerKEY1|Add0~27\))) # (!\debouncerKEY1|s_debounceCnt\(14) & (\debouncerKEY1|Add0~27\ $ (GND)))
-- \debouncerKEY1|Add0~29\ = CARRY((\debouncerKEY1|s_debounceCnt\(14)) # (!\debouncerKEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncerKEY1|Add0~27\,
	combout => \debouncerKEY1|Add0~28_combout\,
	cout => \debouncerKEY1|Add0~29\);

-- Location: LCCOMB_X74_Y34_N26
\debouncerKEY1|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~18_combout\ = (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~28_combout\) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~28_combout\,
	datac => \debouncerKEY1|s_previousIn~q\,
	datad => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	combout => \debouncerKEY1|s_debounceCnt~18_combout\);

-- Location: FF_X74_Y34_N27
\debouncerKEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~18_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X74_Y34_N8
\debouncerKEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~30_combout\ = (\debouncerKEY1|s_debounceCnt\(15) & (\debouncerKEY1|Add0~29\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(15) & (!\debouncerKEY1|Add0~29\))
-- \debouncerKEY1|Add0~31\ = CARRY((!\debouncerKEY1|s_debounceCnt\(15) & !\debouncerKEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncerKEY1|Add0~29\,
	combout => \debouncerKEY1|Add0~30_combout\,
	cout => \debouncerKEY1|Add0~31\);

-- Location: LCCOMB_X75_Y34_N2
\debouncerKEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~6_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datad => \debouncerKEY1|Add0~30_combout\,
	combout => \debouncerKEY1|s_debounceCnt~6_combout\);

-- Location: FF_X75_Y34_N3
\debouncerKEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~6_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X74_Y34_N10
\debouncerKEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~32_combout\ = (\debouncerKEY1|s_debounceCnt\(16) & ((GND) # (!\debouncerKEY1|Add0~31\))) # (!\debouncerKEY1|s_debounceCnt\(16) & (\debouncerKEY1|Add0~31\ $ (GND)))
-- \debouncerKEY1|Add0~33\ = CARRY((\debouncerKEY1|s_debounceCnt\(16)) # (!\debouncerKEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncerKEY1|Add0~31\,
	combout => \debouncerKEY1|Add0~32_combout\,
	cout => \debouncerKEY1|Add0~33\);

-- Location: LCCOMB_X74_Y35_N8
\debouncerKEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~7_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datad => \debouncerKEY1|Add0~32_combout\,
	combout => \debouncerKEY1|s_debounceCnt~7_combout\);

-- Location: FF_X74_Y35_N9
\debouncerKEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~7_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X74_Y34_N12
\debouncerKEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~34_combout\ = (\debouncerKEY1|s_debounceCnt\(17) & (\debouncerKEY1|Add0~33\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(17) & (!\debouncerKEY1|Add0~33\))
-- \debouncerKEY1|Add0~35\ = CARRY((!\debouncerKEY1|s_debounceCnt\(17) & !\debouncerKEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncerKEY1|Add0~33\,
	combout => \debouncerKEY1|Add0~34_combout\,
	cout => \debouncerKEY1|Add0~35\);

-- Location: LCCOMB_X75_Y34_N20
\debouncerKEY1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~8_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datad => \debouncerKEY1|Add0~34_combout\,
	combout => \debouncerKEY1|s_debounceCnt~8_combout\);

-- Location: FF_X75_Y34_N21
\debouncerKEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~8_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X74_Y34_N14
\debouncerKEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~36_combout\ = (\debouncerKEY1|s_debounceCnt\(18) & ((GND) # (!\debouncerKEY1|Add0~35\))) # (!\debouncerKEY1|s_debounceCnt\(18) & (\debouncerKEY1|Add0~35\ $ (GND)))
-- \debouncerKEY1|Add0~37\ = CARRY((\debouncerKEY1|s_debounceCnt\(18)) # (!\debouncerKEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncerKEY1|Add0~35\,
	combout => \debouncerKEY1|Add0~36_combout\,
	cout => \debouncerKEY1|Add0~37\);

-- Location: LCCOMB_X74_Y34_N24
\debouncerKEY1|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[18]~19_combout\ = (\debouncerKEY1|s_debounceCnt[10]~4_combout\ & (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~36_combout\) # (!\debouncerKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_previousIn~q\,
	datab => \debouncerKEY1|Add0~36_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	combout => \debouncerKEY1|s_debounceCnt[18]~19_combout\);

-- Location: FF_X74_Y34_N25
\debouncerKEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X74_Y34_N16
\debouncerKEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~38_combout\ = (\debouncerKEY1|s_debounceCnt\(19) & (\debouncerKEY1|Add0~37\ & VCC)) # (!\debouncerKEY1|s_debounceCnt\(19) & (!\debouncerKEY1|Add0~37\))
-- \debouncerKEY1|Add0~39\ = CARRY((!\debouncerKEY1|s_debounceCnt\(19) & !\debouncerKEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncerKEY1|Add0~37\,
	combout => \debouncerKEY1|Add0~38_combout\,
	cout => \debouncerKEY1|Add0~39\);

-- Location: LCCOMB_X74_Y34_N30
\debouncerKEY1|s_debounceCnt[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[19]~20_combout\ = (\debouncerKEY1|s_debounceCnt[10]~4_combout\ & (\debouncerKEY1|s_debounceCnt[10]~2_combout\ & ((\debouncerKEY1|Add0~38_combout\) # (!\debouncerKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_previousIn~q\,
	datab => \debouncerKEY1|Add0~38_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~2_combout\,
	combout => \debouncerKEY1|s_debounceCnt[19]~20_combout\);

-- Location: FF_X74_Y34_N31
\debouncerKEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X73_Y34_N12
\debouncerKEY1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[20]~9_combout\ = (\debouncerKEY1|Add0~40_combout\ & (\debouncerKEY1|s_debounceCnt[10]~4_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|Add0~40_combout\,
	datac => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X73_Y34_N13
\debouncerKEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X73_Y34_N26
\debouncerKEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~3_combout\ = (!\debouncerKEY1|s_debounceCnt\(20) & (!\debouncerKEY1|s_debounceCnt\(12) & (!\debouncerKEY1|s_debounceCnt\(21) & !\debouncerKEY1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(20),
	datab => \debouncerKEY1|s_debounceCnt\(12),
	datac => \debouncerKEY1|s_debounceCnt\(21),
	datad => \debouncerKEY1|s_debounceCnt\(13),
	combout => \debouncerKEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X74_Y35_N4
\debouncerKEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~4_combout\ = (!\debouncerKEY1|s_debounceCnt\(7) & (!\debouncerKEY1|s_debounceCnt\(8) & (!\debouncerKEY1|s_debounceCnt\(10) & !\debouncerKEY1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(7),
	datab => \debouncerKEY1|s_debounceCnt\(8),
	datac => \debouncerKEY1|s_debounceCnt\(10),
	datad => \debouncerKEY1|s_debounceCnt\(9),
	combout => \debouncerKEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X74_Y35_N6
\debouncerKEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~2_combout\ = (!\debouncerKEY1|s_debounceCnt\(17) & (!\debouncerKEY1|s_debounceCnt\(16) & (!\debouncerKEY1|s_debounceCnt\(15) & !\debouncerKEY1|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(17),
	datab => \debouncerKEY1|s_debounceCnt\(16),
	datac => \debouncerKEY1|s_debounceCnt\(15),
	datad => \debouncerKEY1|s_debounceCnt\(6),
	combout => \debouncerKEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X75_Y35_N6
\debouncerKEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~5_combout\ = (!\debouncerKEY1|s_debounceCnt\(14) & (!\debouncerKEY1|s_debounceCnt\(19) & (!\debouncerKEY1|s_debounceCnt\(18) & !\debouncerKEY1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(14),
	datab => \debouncerKEY1|s_debounceCnt\(19),
	datac => \debouncerKEY1|s_debounceCnt\(18),
	datad => \debouncerKEY1|s_debounceCnt\(11),
	combout => \debouncerKEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X75_Y35_N16
\debouncerKEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~6_combout\ = (\debouncerKEY1|s_pulsedOut~3_combout\ & (\debouncerKEY1|s_pulsedOut~4_combout\ & (\debouncerKEY1|s_pulsedOut~2_combout\ & \debouncerKEY1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_pulsedOut~3_combout\,
	datab => \debouncerKEY1|s_pulsedOut~4_combout\,
	datac => \debouncerKEY1|s_pulsedOut~2_combout\,
	datad => \debouncerKEY1|s_pulsedOut~5_combout\,
	combout => \debouncerKEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X75_Y35_N28
\debouncerKEY1|s_debounceCnt[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[10]~29_combout\ = ((\debouncerKEY1|s_debounceCnt\(0)) # ((\debouncerKEY1|s_debounceCnt\(5)) # (!\debouncerKEY1|s_pulsedOut~6_combout\))) # (!\debouncerKEY1|s_pulsedOut~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_pulsedOut~7_combout\,
	datab => \debouncerKEY1|s_debounceCnt\(0),
	datac => \debouncerKEY1|s_debounceCnt\(5),
	datad => \debouncerKEY1|s_pulsedOut~6_combout\,
	combout => \debouncerKEY1|s_debounceCnt[10]~29_combout\);

-- Location: LCCOMB_X75_Y34_N30
\debouncerKEY1|s_debounceCnt[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[22]~27_combout\ = (\debouncerKEY1|s_debounceCnt\(22) & (((!\debouncerKEY1|LessThan0~6_combout\)))) # (!\debouncerKEY1|s_debounceCnt\(22) & (((\debouncerKEY1|s_debounceCnt[10]~29_combout\)) # (!\debouncerKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(22),
	datab => \debouncerKEY1|s_previousIn~q\,
	datac => \debouncerKEY1|s_debounceCnt[10]~29_combout\,
	datad => \debouncerKEY1|LessThan0~6_combout\,
	combout => \debouncerKEY1|s_debounceCnt[22]~27_combout\);

-- Location: LCCOMB_X74_Y34_N22
\debouncerKEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~44_combout\ = \debouncerKEY1|Add0~43\ $ (\debouncerKEY1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY1|s_debounceCnt\(22),
	cin => \debouncerKEY1|Add0~43\,
	combout => \debouncerKEY1|Add0~44_combout\);

-- Location: LCCOMB_X75_Y34_N26
\debouncerKEY1|s_debounceCnt[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[22]~28_combout\ = (\debouncerKEY1|s_dirtyIn~q\ & (\debouncerKEY1|s_debounceCnt[22]~27_combout\ & ((\debouncerKEY1|Add0~44_combout\) # (!\debouncerKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_dirtyIn~q\,
	datab => \debouncerKEY1|s_previousIn~q\,
	datac => \debouncerKEY1|s_debounceCnt[22]~27_combout\,
	datad => \debouncerKEY1|Add0~44_combout\,
	combout => \debouncerKEY1|s_debounceCnt[22]~28_combout\);

-- Location: FF_X75_Y34_N27
\debouncerKEY1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt[22]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(22));

-- Location: LCCOMB_X75_Y34_N4
\debouncerKEY1|s_debounceCnt[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt[10]~5_combout\ = (\debouncerKEY1|s_previousIn~q\ & (\debouncerKEY1|s_dirtyIn~q\ & ((!\debouncerKEY1|LessThan0~6_combout\) # (!\debouncerKEY1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(22),
	datab => \debouncerKEY1|s_previousIn~q\,
	datac => \debouncerKEY1|s_dirtyIn~q\,
	datad => \debouncerKEY1|LessThan0~6_combout\,
	combout => \debouncerKEY1|s_debounceCnt[10]~5_combout\);

-- Location: LCCOMB_X74_Y35_N10
\debouncerKEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|Add0~0_combout\ = \debouncerKEY1|s_debounceCnt\(0) $ (VCC)
-- \debouncerKEY1|Add0~1\ = CARRY(\debouncerKEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncerKEY1|Add0~0_combout\,
	cout => \debouncerKEY1|Add0~1\);

-- Location: LCCOMB_X75_Y34_N24
\debouncerKEY1|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~26_combout\ = (\debouncerKEY1|s_debounceCnt[10]~5_combout\ & \debouncerKEY1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	datad => \debouncerKEY1|Add0~0_combout\,
	combout => \debouncerKEY1|s_debounceCnt~26_combout\);

-- Location: FF_X75_Y34_N25
\debouncerKEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~26_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y35_N22
\debouncerKEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_debounceCnt~21_combout\ = (\debouncerKEY1|Add0~2_combout\ & \debouncerKEY1|s_debounceCnt[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|Add0~2_combout\,
	datad => \debouncerKEY1|s_debounceCnt[10]~5_combout\,
	combout => \debouncerKEY1|s_debounceCnt~21_combout\);

-- Location: FF_X75_Y35_N23
\debouncerKEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_debounceCnt~21_combout\,
	ena => \debouncerKEY1|s_debounceCnt[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X75_Y35_N10
\debouncerKEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~7_combout\ = (!\debouncerKEY1|s_debounceCnt\(1) & (!\debouncerKEY1|s_debounceCnt\(4) & (!\debouncerKEY1|s_debounceCnt\(3) & !\debouncerKEY1|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_debounceCnt\(1),
	datab => \debouncerKEY1|s_debounceCnt\(4),
	datac => \debouncerKEY1|s_debounceCnt\(3),
	datad => \debouncerKEY1|s_debounceCnt\(2),
	combout => \debouncerKEY1|s_pulsedOut~7_combout\);

-- Location: LCCOMB_X75_Y35_N8
\debouncerKEY1|s_pulsedOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~9_combout\ = (\debouncerKEY1|s_previousIn~q\ & (!\debouncerKEY1|s_debounceCnt\(22) & (\debouncerKEY1|s_dirtyIn~q\ & \debouncerKEY1|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_previousIn~q\,
	datab => \debouncerKEY1|s_debounceCnt\(22),
	datac => \debouncerKEY1|s_dirtyIn~q\,
	datad => \debouncerKEY1|s_debounceCnt\(0),
	combout => \debouncerKEY1|s_pulsedOut~9_combout\);

-- Location: LCCOMB_X75_Y35_N24
\debouncerKEY1|s_pulsedOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY1|s_pulsedOut~10_combout\ = (\debouncerKEY1|s_pulsedOut~7_combout\ & (\debouncerKEY1|s_pulsedOut~6_combout\ & (\debouncerKEY1|s_pulsedOut~9_combout\ & !\debouncerKEY1|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY1|s_pulsedOut~7_combout\,
	datab => \debouncerKEY1|s_pulsedOut~6_combout\,
	datac => \debouncerKEY1|s_pulsedOut~9_combout\,
	datad => \debouncerKEY1|s_debounceCnt\(5),
	combout => \debouncerKEY1|s_pulsedOut~10_combout\);

-- Location: FF_X75_Y35_N25
\debouncerKEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncerKEY1|s_pulsedOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY1|s_pulsedOut~q\);

-- Location: LCCOMB_X69_Y28_N14
\TimeExtra|Counter|s_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[1]~10_combout\ = (\TimeExtra|Counter|s_count\(1) & (!\TimeExtra|Counter|s_count[0]~9\)) # (!\TimeExtra|Counter|s_count\(1) & ((\TimeExtra|Counter|s_count[0]~9\) # (GND)))
-- \TimeExtra|Counter|s_count[1]~11\ = CARRY((!\TimeExtra|Counter|s_count[0]~9\) # (!\TimeExtra|Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeExtra|Counter|s_count\(1),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[0]~9\,
	combout => \TimeExtra|Counter|s_count[1]~10_combout\,
	cout => \TimeExtra|Counter|s_count[1]~11\);

-- Location: LCCOMB_X69_Y28_N8
\TimeExtra|Counter|s_count[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[3]~18_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (((!\BreadBakerFSM|s_currentState.TExtra~q\ & !\BreadBakerFSM|s_currentState.TFim~q\)) # (!\ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \ControlSystemUnit|pState.Init~q\,
	datac => \BreadBakerFSM|s_currentState.TExtra~q\,
	datad => \BreadBakerFSM|s_currentState.TFim~q\,
	combout => \TimeExtra|Counter|s_count[3]~18_combout\);

-- Location: FF_X69_Y28_N15
\TimeExtra|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[1]~10_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(1));

-- Location: LCCOMB_X69_Y28_N16
\TimeExtra|Counter|s_count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[2]~12_combout\ = (\TimeExtra|Counter|s_count\(2) & (\TimeExtra|Counter|s_count[1]~11\ $ (GND))) # (!\TimeExtra|Counter|s_count\(2) & (!\TimeExtra|Counter|s_count[1]~11\ & VCC))
-- \TimeExtra|Counter|s_count[2]~13\ = CARRY((\TimeExtra|Counter|s_count\(2) & !\TimeExtra|Counter|s_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeExtra|Counter|s_count\(2),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[1]~11\,
	combout => \TimeExtra|Counter|s_count[2]~12_combout\,
	cout => \TimeExtra|Counter|s_count[2]~13\);

-- Location: FF_X69_Y28_N17
\TimeExtra|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[2]~12_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(2));

-- Location: LCCOMB_X69_Y28_N18
\TimeExtra|Counter|s_count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[3]~14_combout\ = (\TimeExtra|Counter|s_count\(3) & (!\TimeExtra|Counter|s_count[2]~13\)) # (!\TimeExtra|Counter|s_count\(3) & ((\TimeExtra|Counter|s_count[2]~13\) # (GND)))
-- \TimeExtra|Counter|s_count[3]~15\ = CARRY((!\TimeExtra|Counter|s_count[2]~13\) # (!\TimeExtra|Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeExtra|Counter|s_count\(3),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[2]~13\,
	combout => \TimeExtra|Counter|s_count[3]~14_combout\,
	cout => \TimeExtra|Counter|s_count[3]~15\);

-- Location: FF_X69_Y28_N19
\TimeExtra|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[3]~14_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(3));

-- Location: LCCOMB_X69_Y28_N20
\TimeExtra|Counter|s_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[4]~19_combout\ = (\TimeExtra|Counter|s_count\(4) & (\TimeExtra|Counter|s_count[3]~15\ $ (GND))) # (!\TimeExtra|Counter|s_count\(4) & (!\TimeExtra|Counter|s_count[3]~15\ & VCC))
-- \TimeExtra|Counter|s_count[4]~20\ = CARRY((\TimeExtra|Counter|s_count\(4) & !\TimeExtra|Counter|s_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeExtra|Counter|s_count\(4),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[3]~15\,
	combout => \TimeExtra|Counter|s_count[4]~19_combout\,
	cout => \TimeExtra|Counter|s_count[4]~20\);

-- Location: FF_X69_Y28_N21
\TimeExtra|Counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[4]~19_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(4));

-- Location: LCCOMB_X69_Y28_N22
\TimeExtra|Counter|s_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[5]~21_combout\ = (\TimeExtra|Counter|s_count\(5) & (!\TimeExtra|Counter|s_count[4]~20\)) # (!\TimeExtra|Counter|s_count\(5) & ((\TimeExtra|Counter|s_count[4]~20\) # (GND)))
-- \TimeExtra|Counter|s_count[5]~22\ = CARRY((!\TimeExtra|Counter|s_count[4]~20\) # (!\TimeExtra|Counter|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeExtra|Counter|s_count\(5),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[4]~20\,
	combout => \TimeExtra|Counter|s_count[5]~21_combout\,
	cout => \TimeExtra|Counter|s_count[5]~22\);

-- Location: FF_X69_Y28_N23
\TimeExtra|Counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[5]~21_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(5));

-- Location: LCCOMB_X69_Y28_N24
\TimeExtra|Counter|s_count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[6]~23_combout\ = (\TimeExtra|Counter|s_count\(6) & (\TimeExtra|Counter|s_count[5]~22\ $ (GND))) # (!\TimeExtra|Counter|s_count\(6) & (!\TimeExtra|Counter|s_count[5]~22\ & VCC))
-- \TimeExtra|Counter|s_count[6]~24\ = CARRY((\TimeExtra|Counter|s_count\(6) & !\TimeExtra|Counter|s_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimeExtra|Counter|s_count\(6),
	datad => VCC,
	cin => \TimeExtra|Counter|s_count[5]~22\,
	combout => \TimeExtra|Counter|s_count[6]~23_combout\,
	cout => \TimeExtra|Counter|s_count[6]~24\);

-- Location: FF_X69_Y28_N25
\TimeExtra|Counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[6]~23_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(6));

-- Location: LCCOMB_X69_Y28_N10
\BreadBakerFSM|s_valueExtra[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_valueExtra[3]~1_combout\ = (\BreadBakerFSM|s_currentState.TExtra~q\ & \ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BreadBakerFSM|s_currentState.TExtra~q\,
	datad => \ControlSystemUnit|pState.Init~q\,
	combout => \BreadBakerFSM|s_valueExtra[3]~1_combout\);

-- Location: FF_X70_Y28_N27
\BreadBakerFSM|s_valueExtra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(6),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(6));

-- Location: LCCOMB_X69_Y28_N26
\TimeExtra|Counter|s_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[7]~25_combout\ = \TimeExtra|Counter|s_count\(7) $ (\TimeExtra|Counter|s_count[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimeExtra|Counter|s_count\(7),
	cin => \TimeExtra|Counter|s_count[6]~24\,
	combout => \TimeExtra|Counter|s_count[7]~25_combout\);

-- Location: FF_X69_Y28_N27
\TimeExtra|Counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[7]~25_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(7));

-- Location: FF_X70_Y28_N17
\BreadBakerFSM|s_valueExtra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(7),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(7));

-- Location: FF_X70_Y28_N5
\BreadBakerFSM|s_valueExtra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(5),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(5));

-- Location: FF_X70_Y28_N19
\BreadBakerFSM|s_valueExtra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(4),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(4));

-- Location: LCCOMB_X70_Y28_N2
\BreadBakerFSM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Equal0~1_combout\ = (!\BreadBakerFSM|s_valueExtra\(6) & (!\BreadBakerFSM|s_valueExtra\(7) & (!\BreadBakerFSM|s_valueExtra\(5) & !\BreadBakerFSM|s_valueExtra\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_valueExtra\(6),
	datab => \BreadBakerFSM|s_valueExtra\(7),
	datac => \BreadBakerFSM|s_valueExtra\(5),
	datad => \BreadBakerFSM|s_valueExtra\(4),
	combout => \BreadBakerFSM|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y29_N0
\ControlSystemUnit|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~10_combout\ = (\BreadBakerFSM|s_currentState.TExtra~q\ & (\BreadBakerFSM|Equal0~1_combout\ & \BreadBakerFSM|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BreadBakerFSM|s_currentState.TExtra~q\,
	datac => \BreadBakerFSM|Equal0~1_combout\,
	datad => \BreadBakerFSM|Equal0~0_combout\,
	combout => \ControlSystemUnit|pState~10_combout\);

-- Location: LCCOMB_X70_Y29_N26
\ControlSystemUnit|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~11_combout\ = (\ControlSystemUnit|pState.StartPrg~q\ & ((\debouncerKEY0|s_pulsedOut~q\) # ((\BreadBakerFSM|Selector15~0_combout\) # (\ControlSystemUnit|pState~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.StartPrg~q\,
	datac => \BreadBakerFSM|Selector15~0_combout\,
	datad => \ControlSystemUnit|pState~10_combout\,
	combout => \ControlSystemUnit|pState~11_combout\);

-- Location: LCCOMB_X67_Y29_N8
\ControlSystemUnit|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~9_combout\ = (!\ControlSystemUnit|pState.Timer~q\ & ((!\debouncerKEY2|s_pulsedOut~q\) # (!\ControlSystemUnit|pState.Menu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState.Timer~q\,
	datac => \ControlSystemUnit|pState.Menu~q\,
	datad => \debouncerKEY2|s_pulsedOut~q\,
	combout => \ControlSystemUnit|pState~9_combout\);

-- Location: LCCOMB_X70_Y29_N24
\ControlSystemUnit|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~12_combout\ = (\ControlSystemUnit|pState.Init~q\ & (!\debouncerKEY1|s_pulsedOut~q\ & (!\ControlSystemUnit|pState~11_combout\ & \ControlSystemUnit|pState~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \debouncerKEY1|s_pulsedOut~q\,
	datac => \ControlSystemUnit|pState~11_combout\,
	datad => \ControlSystemUnit|pState~9_combout\,
	combout => \ControlSystemUnit|pState~12_combout\);

-- Location: LCCOMB_X70_Y29_N10
\ControlSystemUnit|pState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~16_combout\ = (\ControlSystemUnit|pState~13_combout\) # (!\ControlSystemUnit|pState~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState~13_combout\,
	datad => \ControlSystemUnit|pState~12_combout\,
	combout => \ControlSystemUnit|pState~16_combout\);

-- Location: LCCOMB_X72_Y31_N12
\BreadBakerFSM|sync_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|sync_proc~1_combout\ = (\BreadBakerFSM|s_currentState.TExtra~q\ & (\ControlSystemUnit|pState.StartPrg~q\ & ((!\TimerAuxFSM|s_cntZero~q\) # (!\BreadBakerFSM|s_currentState.TFim~q\)))) # (!\BreadBakerFSM|s_currentState.TExtra~q\ & 
-- (\BreadBakerFSM|s_currentState.TFim~q\ & (\TimerAuxFSM|s_cntZero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datab => \BreadBakerFSM|s_currentState.TExtra~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \ControlSystemUnit|pState.StartPrg~q\,
	combout => \BreadBakerFSM|sync_proc~1_combout\);

-- Location: LCCOMB_X72_Y31_N22
\BreadBakerFSM|s_stateChanged~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_stateChanged~0_combout\ = ((\TimerAuxFSM|s_cntZero~q\ & (\BreadBakerFSM|s_currentState.TFim~q\ $ (\BreadBakerFSM|s_currentState.TCozer~q\)))) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_cntZero~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \BreadBakerFSM|s_stateChanged~0_combout\);

-- Location: LCCOMB_X70_Y31_N24
\BreadBakerFSM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector10~0_combout\ = (\ControlSystemUnit|pState.StartPrg~q\ & (((!\BreadBakerFSM|Equal0~2_combout\ & \BreadBakerFSM|s_currentState.TExtra~q\)))) # (!\ControlSystemUnit|pState.StartPrg~q\ & (!\BreadBakerFSM|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.StartPrg~q\,
	datab => \BreadBakerFSM|s_currentState.TInit~q\,
	datac => \BreadBakerFSM|Equal0~2_combout\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \BreadBakerFSM|Selector10~0_combout\);

-- Location: LCCOMB_X69_Y31_N30
\BreadBakerFSM|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~9_combout\ = (\ControlSystemUnit|pState.Init~q\ & !\BreadBakerFSM|Selector10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \BreadBakerFSM|Selector10~0_combout\,
	combout => \BreadBakerFSM|s_currentState~9_combout\);

-- Location: FF_X69_Y31_N31
\BreadBakerFSM|s_currentState.TInit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BreadBakerFSM|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TInit~q\);

-- Location: LCCOMB_X72_Y31_N8
\BreadBakerFSM|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector11~0_combout\ = (\ControlSystemUnit|pState.StartPrg~q\ & (((!\TimerAuxFSM|s_cntZero~q\ & \BreadBakerFSM|s_currentState.TAmassar~q\)) # (!\BreadBakerFSM|s_currentState.TInit~q\))) # (!\ControlSystemUnit|pState.StartPrg~q\ & 
-- (((!\TimerAuxFSM|s_cntZero~q\ & \BreadBakerFSM|s_currentState.TAmassar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.StartPrg~q\,
	datab => \BreadBakerFSM|s_currentState.TInit~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \BreadBakerFSM|s_currentState.TAmassar~q\,
	combout => \BreadBakerFSM|Selector11~0_combout\);

-- Location: LCCOMB_X72_Y31_N20
\BreadBakerFSM|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~10_combout\ = (\BreadBakerFSM|Selector11~0_combout\ & \ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BreadBakerFSM|Selector11~0_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	combout => \BreadBakerFSM|s_currentState~10_combout\);

-- Location: FF_X72_Y31_N21
\BreadBakerFSM|s_currentState.TAmassar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BreadBakerFSM|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TAmassar~q\);

-- Location: LCCOMB_X70_Y31_N14
\BreadBakerFSM|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~11_combout\ = (\ControlSystemUnit|pState.Init~q\ & ((\TimerAuxFSM|s_cntZero~q\ & ((\BreadBakerFSM|s_currentState.TAmassar~q\))) # (!\TimerAuxFSM|s_cntZero~q\ & (\BreadBakerFSM|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datab => \TimerAuxFSM|s_cntZero~q\,
	datac => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datad => \ControlSystemUnit|pState.Init~q\,
	combout => \BreadBakerFSM|s_currentState~11_combout\);

-- Location: FF_X69_Y31_N5
\BreadBakerFSM|s_currentState.TLevedar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BreadBakerFSM|s_currentState~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TLevedar~q\);

-- Location: LCCOMB_X72_Y31_N4
\BreadBakerFSM|s_stateChanged~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_stateChanged~1_combout\ = (\BreadBakerFSM|s_stateChanged~0_combout\) # ((\TimerAuxFSM|s_cntZero~q\ & (\BreadBakerFSM|s_currentState.TAmassar~q\ $ (\BreadBakerFSM|s_currentState.TLevedar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_stateChanged~0_combout\,
	datab => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \BreadBakerFSM|s_currentState.TLevedar~q\,
	combout => \BreadBakerFSM|s_stateChanged~1_combout\);

-- Location: LCCOMB_X72_Y31_N14
\BreadBakerFSM|s_stateChanged~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_stateChanged~2_combout\ = (\BreadBakerFSM|sync_proc~1_combout\) # ((\BreadBakerFSM|s_stateChanged~1_combout\) # (\BreadBakerFSM|Selector11~0_combout\ $ (\BreadBakerFSM|s_currentState.TAmassar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|sync_proc~1_combout\,
	datab => \BreadBakerFSM|s_stateChanged~1_combout\,
	datac => \BreadBakerFSM|Selector11~0_combout\,
	datad => \BreadBakerFSM|s_currentState.TAmassar~q\,
	combout => \BreadBakerFSM|s_stateChanged~2_combout\);

-- Location: LCCOMB_X72_Y31_N28
\BreadBakerFSM|sync_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|sync_proc~2_combout\ = (\BreadBakerFSM|s_currentState.TInit~q\ $ (((\BreadBakerFSM|s_currentState.TExtra~q\ & !\BreadBakerFSM|Equal0~2_combout\)))) # (!\ControlSystemUnit|pState.StartPrg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TInit~q\,
	datab => \BreadBakerFSM|s_currentState.TExtra~q\,
	datac => \BreadBakerFSM|Equal0~2_combout\,
	datad => \ControlSystemUnit|pState.StartPrg~q\,
	combout => \BreadBakerFSM|sync_proc~2_combout\);

-- Location: LCCOMB_X72_Y31_N16
\BreadBakerFSM|s_stateChanged~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_stateChanged~3_combout\ = (!\BreadBakerFSM|s_stateChanged~2_combout\ & (\BreadBakerFSM|sync_proc~2_combout\ & (\BreadBakerFSM|s_currentState.TCozer~q\ $ (!\BreadBakerFSM|Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \BreadBakerFSM|Selector13~1_combout\,
	datac => \BreadBakerFSM|s_stateChanged~2_combout\,
	datad => \BreadBakerFSM|sync_proc~2_combout\,
	combout => \BreadBakerFSM|s_stateChanged~3_combout\);

-- Location: FF_X72_Y31_N17
\BreadBakerFSM|s_stateChanged\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BreadBakerFSM|s_stateChanged~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_stateChanged~q\);

-- Location: LCCOMB_X72_Y31_N2
\BreadBakerFSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector0~0_combout\ = (\BreadBakerFSM|s_currentState.TCozer~q\) # ((\BreadBakerFSM|s_currentState.TAmassar~q\) # (\BreadBakerFSM|s_currentState.TLevedar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	combout => \BreadBakerFSM|Selector0~0_combout\);

-- Location: LCCOMB_X72_Y31_N6
\s_loadFSM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_loadFSM~0_combout\ = (((\TimerAuxFSM|s_cntZero~q\ & \BreadBakerFSM|Selector0~0_combout\)) # (!\BreadBakerFSM|s_currentState.TInit~q\)) # (!\BreadBakerFSM|s_stateChanged~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_stateChanged~q\,
	datab => \BreadBakerFSM|s_currentState.TInit~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \BreadBakerFSM|Selector0~0_combout\,
	combout => \s_loadFSM~0_combout\);

-- Location: LCCOMB_X70_Y28_N0
\BreadBakerFSM|addr[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|addr[0]~6_combout\ = (\BreadBakerFSM|s_currentState.TAmassar~q\) # ((\BreadBakerFSM|s_currentState.TInit~q\ & (!\BreadBakerFSM|s_currentState.TLevedar~q\ & !\BreadBakerFSM|s_currentState.TFim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TInit~q\,
	datab => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TFim~q\,
	combout => \BreadBakerFSM|addr[0]~6_combout\);

-- Location: LCCOMB_X70_Y28_N30
\BreadBakerFSM|addr[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|addr[1]~5_combout\ = (\BreadBakerFSM|s_currentState.TInit~q\ & (!\BreadBakerFSM|s_currentState.TAmassar~q\ & ((\BreadBakerFSM|s_currentState.TLevedar~q\) # (!\BreadBakerFSM|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TInit~q\,
	datab => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TFim~q\,
	combout => \BreadBakerFSM|addr[1]~5_combout\);

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

-- Location: LCCOMB_X70_Y29_N6
\Flipflop|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Flipflop|dataOut~0_combout\ = (\ControlSystemUnit|pState.Menu~q\ & (((\SW[0]~input_o\)))) # (!\ControlSystemUnit|pState.Menu~q\ & ((\ControlSystemUnit|pState.Timer~q\ & ((\SW[0]~input_o\))) # (!\ControlSystemUnit|pState.Timer~q\ & 
-- (\Flipflop|dataOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Menu~q\,
	datab => \Flipflop|dataOut~q\,
	datac => \SW[0]~input_o\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \Flipflop|dataOut~0_combout\);

-- Location: FF_X69_Y30_N1
\Flipflop|dataOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Flipflop|dataOut~0_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flipflop|dataOut~q\);

-- Location: LCCOMB_X70_Y28_N26
\BreadBakerFSM|addr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|addr[2]~4_combout\ = (!\BreadBakerFSM|s_currentState.TFim~q\ & \Flipflop|dataOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \Flipflop|dataOut~q\,
	combout => \BreadBakerFSM|addr[2]~4_combout\);

-- Location: LCCOMB_X70_Y28_N22
\ROM_Time|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_Time|Mux3~0_combout\ = (\BreadBakerFSM|addr[2]~4_combout\ & (((\BreadBakerFSM|s_currentState.TAmassar~q\)))) # (!\BreadBakerFSM|addr[2]~4_combout\ & (!\BreadBakerFSM|addr[0]~6_combout\ & ((\BreadBakerFSM|addr[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|addr[0]~6_combout\,
	datab => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datac => \BreadBakerFSM|addr[1]~5_combout\,
	datad => \BreadBakerFSM|addr[2]~4_combout\,
	combout => \ROM_Time|Mux3~0_combout\);

-- Location: FF_X69_Y29_N5
\BreadBakerFSM|s_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BreadBakerFSM|Equal0~2_combout\,
	sload => VCC,
	ena => \ControlSystemUnit|pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_temp~q\);

-- Location: LCCOMB_X70_Y28_N10
\TimerAuxFSM|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~9_combout\ = (\BreadBakerFSM|s_temp~q\ & \BreadBakerFSM|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \TimerAuxFSM|Add0~9_combout\);

-- Location: FF_X70_Y28_N15
\BreadBakerFSM|s_valueExtra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(2),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(2));

-- Location: LCCOMB_X69_Y30_N0
\TimerAuxFSM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~6_combout\ = (\BreadBakerFSM|s_currentState.TCozer~q\ & ((!\BreadBakerFSM|s_temp~q\))) # (!\BreadBakerFSM|s_currentState.TCozer~q\ & (!\BreadBakerFSM|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TExtra~q\,
	datab => \BreadBakerFSM|s_temp~q\,
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \TimerAuxFSM|Add0~6_combout\);

-- Location: LCCOMB_X70_Y28_N14
\TimerAuxFSM|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~10_combout\ = (\ROM_Time|Mux3~0_combout\ & ((\TimerAuxFSM|Add0~6_combout\) # ((\TimerAuxFSM|Add0~9_combout\ & \BreadBakerFSM|s_valueExtra\(2))))) # (!\ROM_Time|Mux3~0_combout\ & (\TimerAuxFSM|Add0~9_combout\ & 
-- (\BreadBakerFSM|s_valueExtra\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_Time|Mux3~0_combout\,
	datab => \TimerAuxFSM|Add0~9_combout\,
	datac => \BreadBakerFSM|s_valueExtra\(2),
	datad => \TimerAuxFSM|Add0~6_combout\,
	combout => \TimerAuxFSM|Add0~10_combout\);

-- Location: LCCOMB_X70_Y31_N20
\BreadBakerFSM|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|WideOr11~combout\ = (\BreadBakerFSM|s_currentState.TFim~q\) # ((\BreadBakerFSM|s_currentState.TLevedar~q\) # (!\BreadBakerFSM|s_currentState.TInit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datab => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TInit~q\,
	combout => \BreadBakerFSM|WideOr11~combout\);

-- Location: LCCOMB_X69_Y30_N14
\TimerAuxFSM|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~7_combout\ = (\TimerAuxFSM|Add0~6_combout\ & ((\BreadBakerFSM|s_currentState.TFim~q\) # ((\BreadBakerFSM|s_currentState.TAmassar~q\) # (!\BreadBakerFSM|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datab => \TimerAuxFSM|Add0~6_combout\,
	datac => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datad => \BreadBakerFSM|WideOr11~combout\,
	combout => \TimerAuxFSM|Add0~7_combout\);

-- Location: FF_X70_Y28_N21
\BreadBakerFSM|s_valueExtra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(1),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(1));

-- Location: LCCOMB_X70_Y28_N18
\TimerAuxFSM|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~5_combout\ = (\BreadBakerFSM|s_temp~q\ & (\BreadBakerFSM|s_currentState.TCozer~q\ & \BreadBakerFSM|s_valueExtra\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datad => \BreadBakerFSM|s_valueExtra\(1),
	combout => \TimerAuxFSM|Add0~5_combout\);

-- Location: LCCOMB_X72_Y28_N10
\TimerAuxFSM|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~1_combout\ = \TimerAuxFSM|s_count\(0) $ (VCC)
-- \TimerAuxFSM|Add0~2\ = CARRY(\TimerAuxFSM|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(0),
	datad => VCC,
	combout => \TimerAuxFSM|Add0~1_combout\,
	cout => \TimerAuxFSM|Add0~2\);

-- Location: LCCOMB_X70_Y28_N20
\TimerAuxFSM|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~15_combout\ = (\BreadBakerFSM|s_valueExtra\(0) & (\BreadBakerFSM|s_currentState.TCozer~q\ & \BreadBakerFSM|s_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_valueExtra\(0),
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datad => \BreadBakerFSM|s_temp~q\,
	combout => \TimerAuxFSM|Add0~15_combout\);

-- Location: LCCOMB_X70_Y28_N24
\TimerAuxFSM|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~14_combout\ = (!\BreadBakerFSM|s_currentState.TExtra~q\ & (!\BreadBakerFSM|s_currentState.TCozer~q\ & (!\BreadBakerFSM|addr[1]~5_combout\ & \BreadBakerFSM|addr[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TExtra~q\,
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datac => \BreadBakerFSM|addr[1]~5_combout\,
	datad => \BreadBakerFSM|addr[2]~4_combout\,
	combout => \TimerAuxFSM|Add0~14_combout\);

-- Location: LCCOMB_X73_Y28_N2
\TimerAuxFSM|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~16_combout\ = (\s_loadFSM~0_combout\ & (((\TimerAuxFSM|Add0~15_combout\) # (\TimerAuxFSM|Add0~14_combout\)))) # (!\s_loadFSM~0_combout\ & (\TimerAuxFSM|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~1_combout\,
	datab => \TimerAuxFSM|Add0~15_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \TimerAuxFSM|Add0~14_combout\,
	combout => \TimerAuxFSM|Add0~16_combout\);

-- Location: LCCOMB_X69_Y31_N4
\BreadBakerFSM|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|WideOr10~0_combout\ = (!\BreadBakerFSM|s_currentState.TLevedar~q\ & !\BreadBakerFSM|s_currentState.TCozer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \BreadBakerFSM|WideOr10~0_combout\);

-- Location: LCCOMB_X72_Y31_N24
\s_enableTime~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_enableTime~0_combout\ = (\ControlSystemUnit|pState.StartPrg~q\ & (((\BreadBakerFSM|s_currentState.TAmassar~q\)) # (!\BreadBakerFSM|WideOr10~0_combout\))) # (!\ControlSystemUnit|pState.StartPrg~q\ & (\TimerAuxFSM|s_cntZero~q\ & 
-- ((\BreadBakerFSM|s_currentState.TAmassar~q\) # (!\BreadBakerFSM|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.StartPrg~q\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \BreadBakerFSM|s_currentState.TAmassar~q\,
	combout => \s_enableTime~0_combout\);

-- Location: LCCOMB_X72_Y31_N30
\s_enableTime~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_enableTime~1_combout\ = (\PulseGen1HZ|pulse~q\ & ((\BreadBakerFSM|s_currentState.TFim~q\) # ((\s_enableTime~0_combout\) # (!\BreadBakerFSM|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PulseGen1HZ|pulse~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \BreadBakerFSM|s_currentState.TInit~q\,
	datad => \s_enableTime~0_combout\,
	combout => \s_enableTime~1_combout\);

-- Location: LCCOMB_X73_Y28_N16
\TimerAuxFSM|s_count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|s_count[3]~0_combout\ = ((\s_loadFSM~0_combout\) # ((!\TimerAuxFSM|Equal0~1_combout\ & \s_enableTime~1_combout\))) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \TimerAuxFSM|Equal0~1_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \s_enableTime~1_combout\,
	combout => \TimerAuxFSM|s_count[3]~0_combout\);

-- Location: FF_X73_Y28_N3
\TimerAuxFSM|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~16_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(0));

-- Location: LCCOMB_X72_Y28_N12
\TimerAuxFSM|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~3_combout\ = (\TimerAuxFSM|s_count\(1) & (\TimerAuxFSM|Add0~2\ & VCC)) # (!\TimerAuxFSM|s_count\(1) & (!\TimerAuxFSM|Add0~2\))
-- \TimerAuxFSM|Add0~4\ = CARRY((!\TimerAuxFSM|s_count\(1) & !\TimerAuxFSM|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(1),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~2\,
	combout => \TimerAuxFSM|Add0~3_combout\,
	cout => \TimerAuxFSM|Add0~4\);

-- Location: LCCOMB_X73_Y28_N22
\TimerAuxFSM|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~8_combout\ = (\s_loadFSM~0_combout\ & ((\TimerAuxFSM|Add0~7_combout\) # ((\TimerAuxFSM|Add0~5_combout\)))) # (!\s_loadFSM~0_combout\ & (((\TimerAuxFSM|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~7_combout\,
	datab => \TimerAuxFSM|Add0~5_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \TimerAuxFSM|Add0~3_combout\,
	combout => \TimerAuxFSM|Add0~8_combout\);

-- Location: FF_X73_Y28_N23
\TimerAuxFSM|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~8_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(1));

-- Location: LCCOMB_X72_Y28_N14
\TimerAuxFSM|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~11_combout\ = (\TimerAuxFSM|s_count\(2) & ((GND) # (!\TimerAuxFSM|Add0~4\))) # (!\TimerAuxFSM|s_count\(2) & (\TimerAuxFSM|Add0~4\ $ (GND)))
-- \TimerAuxFSM|Add0~12\ = CARRY((\TimerAuxFSM|s_count\(2)) # (!\TimerAuxFSM|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(2),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~4\,
	combout => \TimerAuxFSM|Add0~11_combout\,
	cout => \TimerAuxFSM|Add0~12\);

-- Location: LCCOMB_X73_Y28_N0
\TimerAuxFSM|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~13_combout\ = (\s_loadFSM~0_combout\ & (\TimerAuxFSM|Add0~10_combout\)) # (!\s_loadFSM~0_combout\ & ((\TimerAuxFSM|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_loadFSM~0_combout\,
	datac => \TimerAuxFSM|Add0~10_combout\,
	datad => \TimerAuxFSM|Add0~11_combout\,
	combout => \TimerAuxFSM|Add0~13_combout\);

-- Location: FF_X73_Y28_N1
\TimerAuxFSM|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~13_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(2));

-- Location: LCCOMB_X72_Y28_N16
\TimerAuxFSM|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~20_combout\ = (\TimerAuxFSM|s_count\(3) & (\TimerAuxFSM|Add0~12\ & VCC)) # (!\TimerAuxFSM|s_count\(3) & (!\TimerAuxFSM|Add0~12\))
-- \TimerAuxFSM|Add0~21\ = CARRY((!\TimerAuxFSM|s_count\(3) & !\TimerAuxFSM|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(3),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~12\,
	combout => \TimerAuxFSM|Add0~20_combout\,
	cout => \TimerAuxFSM|Add0~21\);

-- Location: LCCOMB_X70_Y28_N6
\ROM_Time|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM_Time|Mux2~0_combout\ = (!\BreadBakerFSM|addr[0]~6_combout\ & ((\BreadBakerFSM|s_currentState.TFim~q\) # (\Flipflop|dataOut~q\ $ (\BreadBakerFSM|addr[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flipflop|dataOut~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \BreadBakerFSM|addr[1]~5_combout\,
	datad => \BreadBakerFSM|addr[0]~6_combout\,
	combout => \ROM_Time|Mux2~0_combout\);

-- Location: FF_X70_Y28_N13
\BreadBakerFSM|s_valueExtra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(3),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(3));

-- Location: LCCOMB_X70_Y28_N12
\TimerAuxFSM|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~35_combout\ = (\ROM_Time|Mux2~0_combout\ & (\TimerAuxFSM|Add0~9_combout\ & (\BreadBakerFSM|s_valueExtra\(3)))) # (!\ROM_Time|Mux2~0_combout\ & ((\TimerAuxFSM|Add0~6_combout\) # ((\TimerAuxFSM|Add0~9_combout\ & 
-- \BreadBakerFSM|s_valueExtra\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_Time|Mux2~0_combout\,
	datab => \TimerAuxFSM|Add0~9_combout\,
	datac => \BreadBakerFSM|s_valueExtra\(3),
	datad => \TimerAuxFSM|Add0~6_combout\,
	combout => \TimerAuxFSM|Add0~35_combout\);

-- Location: LCCOMB_X73_Y28_N8
\TimerAuxFSM|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~36_combout\ = (\s_loadFSM~0_combout\ & ((\TimerAuxFSM|Add0~35_combout\))) # (!\s_loadFSM~0_combout\ & (\TimerAuxFSM|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_loadFSM~0_combout\,
	datac => \TimerAuxFSM|Add0~20_combout\,
	datad => \TimerAuxFSM|Add0~35_combout\,
	combout => \TimerAuxFSM|Add0~36_combout\);

-- Location: FF_X73_Y28_N9
\TimerAuxFSM|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~36_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(3));

-- Location: LCCOMB_X73_Y28_N24
\BinTOBCDTimerAuxFSM|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|Equal6~1_combout\ = (!\TimerAuxFSM|s_count\(3) & (!\TimerAuxFSM|s_count\(0) & (!\TimerAuxFSM|s_count\(1) & !\TimerAuxFSM|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(3),
	datab => \TimerAuxFSM|s_count\(0),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(2),
	combout => \BinTOBCDTimerAuxFSM|Equal6~1_combout\);

-- Location: LCCOMB_X70_Y28_N4
\TimerAuxFSM|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~25_combout\ = (\BreadBakerFSM|addr[0]~6_combout\ & (\TimerAuxFSM|Add0~9_combout\ & (\BreadBakerFSM|s_valueExtra\(5)))) # (!\BreadBakerFSM|addr[0]~6_combout\ & ((\TimerAuxFSM|Add0~14_combout\) # ((\TimerAuxFSM|Add0~9_combout\ & 
-- \BreadBakerFSM|s_valueExtra\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|addr[0]~6_combout\,
	datab => \TimerAuxFSM|Add0~9_combout\,
	datac => \BreadBakerFSM|s_valueExtra\(5),
	datad => \TimerAuxFSM|Add0~14_combout\,
	combout => \TimerAuxFSM|Add0~25_combout\);

-- Location: LCCOMB_X72_Y28_N18
\TimerAuxFSM|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~22_combout\ = (\TimerAuxFSM|s_count\(4) & ((GND) # (!\TimerAuxFSM|Add0~21\))) # (!\TimerAuxFSM|s_count\(4) & (\TimerAuxFSM|Add0~21\ $ (GND)))
-- \TimerAuxFSM|Add0~23\ = CARRY((\TimerAuxFSM|s_count\(4)) # (!\TimerAuxFSM|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~21\,
	combout => \TimerAuxFSM|Add0~22_combout\,
	cout => \TimerAuxFSM|Add0~23\);

-- Location: LCCOMB_X70_Y28_N16
\TimerAuxFSM|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~17_combout\ = (\BreadBakerFSM|s_temp~q\ & (\BreadBakerFSM|s_valueExtra\(4) & \BreadBakerFSM|s_currentState.TCozer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \BreadBakerFSM|s_valueExtra\(4),
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \TimerAuxFSM|Add0~17_combout\);

-- Location: LCCOMB_X72_Y28_N28
\TimerAuxFSM|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~18_combout\ = (!\BreadBakerFSM|s_currentState.TInit~q\ & (!\BreadBakerFSM|s_currentState.TExtra~q\ & (!\BreadBakerFSM|s_currentState.TFim~q\ & !\Flipflop|dataOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TInit~q\,
	datab => \BreadBakerFSM|s_currentState.TExtra~q\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \Flipflop|dataOut~q\,
	combout => \TimerAuxFSM|Add0~18_combout\);

-- Location: LCCOMB_X72_Y28_N2
\TimerAuxFSM|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~19_combout\ = (\TimerAuxFSM|Add0~17_combout\) # ((!\BreadBakerFSM|s_currentState.TAmassar~q\ & (!\BreadBakerFSM|s_currentState.TCozer~q\ & \TimerAuxFSM|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TAmassar~q\,
	datab => \TimerAuxFSM|Add0~17_combout\,
	datac => \BreadBakerFSM|s_currentState.TCozer~q\,
	datad => \TimerAuxFSM|Add0~18_combout\,
	combout => \TimerAuxFSM|Add0~19_combout\);

-- Location: LCCOMB_X73_Y28_N20
\TimerAuxFSM|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~24_combout\ = (\s_loadFSM~0_combout\ & ((\TimerAuxFSM|Add0~19_combout\))) # (!\s_loadFSM~0_combout\ & (\TimerAuxFSM|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|Add0~22_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \TimerAuxFSM|Add0~19_combout\,
	combout => \TimerAuxFSM|Add0~24_combout\);

-- Location: FF_X73_Y28_N21
\TimerAuxFSM|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~24_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(4));

-- Location: LCCOMB_X72_Y28_N20
\TimerAuxFSM|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~26_combout\ = (\TimerAuxFSM|s_count\(5) & (\TimerAuxFSM|Add0~23\ & VCC)) # (!\TimerAuxFSM|s_count\(5) & (!\TimerAuxFSM|Add0~23\))
-- \TimerAuxFSM|Add0~27\ = CARRY((!\TimerAuxFSM|s_count\(5) & !\TimerAuxFSM|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~23\,
	combout => \TimerAuxFSM|Add0~26_combout\,
	cout => \TimerAuxFSM|Add0~27\);

-- Location: LCCOMB_X73_Y28_N30
\TimerAuxFSM|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~28_combout\ = (\s_loadFSM~0_combout\ & (\TimerAuxFSM|Add0~25_combout\)) # (!\s_loadFSM~0_combout\ & ((\TimerAuxFSM|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_loadFSM~0_combout\,
	datac => \TimerAuxFSM|Add0~25_combout\,
	datad => \TimerAuxFSM|Add0~26_combout\,
	combout => \TimerAuxFSM|Add0~28_combout\);

-- Location: FF_X73_Y28_N31
\TimerAuxFSM|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~28_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(5));

-- Location: LCCOMB_X72_Y28_N22
\TimerAuxFSM|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~29_combout\ = (\TimerAuxFSM|s_count\(6) & ((GND) # (!\TimerAuxFSM|Add0~27\))) # (!\TimerAuxFSM|s_count\(6) & (\TimerAuxFSM|Add0~27\ $ (GND)))
-- \TimerAuxFSM|Add0~30\ = CARRY((\TimerAuxFSM|s_count\(6)) # (!\TimerAuxFSM|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(6),
	datad => VCC,
	cin => \TimerAuxFSM|Add0~27\,
	combout => \TimerAuxFSM|Add0~29_combout\,
	cout => \TimerAuxFSM|Add0~30\);

-- Location: LCCOMB_X73_Y28_N4
\TimerAuxFSM|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~31_combout\ = (\s_loadFSM~0_combout\ & (\BreadBakerFSM|s_valueExtra\(6) & (\TimerAuxFSM|Add0~9_combout\))) # (!\s_loadFSM~0_combout\ & (((\TimerAuxFSM|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_valueExtra\(6),
	datab => \TimerAuxFSM|Add0~9_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \TimerAuxFSM|Add0~29_combout\,
	combout => \TimerAuxFSM|Add0~31_combout\);

-- Location: FF_X73_Y28_N5
\TimerAuxFSM|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~31_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(6));

-- Location: LCCOMB_X72_Y28_N24
\TimerAuxFSM|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~32_combout\ = \TimerAuxFSM|Add0~30\ $ (!\TimerAuxFSM|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \TimerAuxFSM|s_count\(7),
	cin => \TimerAuxFSM|Add0~30\,
	combout => \TimerAuxFSM|Add0~32_combout\);

-- Location: LCCOMB_X73_Y28_N6
\TimerAuxFSM|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~34_combout\ = (\s_loadFSM~0_combout\ & (\BreadBakerFSM|s_valueExtra\(7) & (\TimerAuxFSM|Add0~9_combout\))) # (!\s_loadFSM~0_combout\ & (((\TimerAuxFSM|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_valueExtra\(7),
	datab => \TimerAuxFSM|Add0~9_combout\,
	datac => \s_loadFSM~0_combout\,
	datad => \TimerAuxFSM|Add0~32_combout\,
	combout => \TimerAuxFSM|Add0~34_combout\);

-- Location: FF_X73_Y28_N7
\TimerAuxFSM|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|Add0~34_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	ena => \TimerAuxFSM|s_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_count\(7));

-- Location: LCCOMB_X73_Y28_N18
\TimerAuxFSM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Equal0~0_combout\ = (!\TimerAuxFSM|s_count\(5) & (!\TimerAuxFSM|s_count\(4) & (!\TimerAuxFSM|s_count\(6) & !\TimerAuxFSM|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(4),
	datac => \TimerAuxFSM|s_count\(6),
	datad => \TimerAuxFSM|s_count\(7),
	combout => \TimerAuxFSM|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y28_N14
\TimerAuxFSM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Equal0~1_combout\ = (\BinTOBCDTimerAuxFSM|Equal6~1_combout\ & \TimerAuxFSM|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinTOBCDTimerAuxFSM|Equal6~1_combout\,
	datad => \TimerAuxFSM|Equal0~0_combout\,
	combout => \TimerAuxFSM|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y28_N12
\TimerAuxFSM|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|s_cntZero~0_combout\ = (!\s_loadFSM~0_combout\ & ((\s_enableTime~1_combout\ & (\TimerAuxFSM|Equal0~1_combout\)) # (!\s_enableTime~1_combout\ & ((\TimerAuxFSM|s_cntZero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Equal0~1_combout\,
	datab => \s_loadFSM~0_combout\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \s_enableTime~1_combout\,
	combout => \TimerAuxFSM|s_cntZero~0_combout\);

-- Location: FF_X73_Y28_N13
\TimerAuxFSM|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerAuxFSM|s_cntZero~0_combout\,
	sclr => \ControlSystemUnit|ALT_INV_pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerAuxFSM|s_cntZero~q\);

-- Location: LCCOMB_X70_Y29_N16
\ControlSystemUnit|pState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~15_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & (\BreadBakerFSM|s_currentState.TFim~q\ & (\TimerAuxFSM|s_cntZero~q\ & !\debouncerKEY1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \debouncerKEY1|s_pulsedOut~q\,
	combout => \ControlSystemUnit|pState~15_combout\);

-- Location: LCCOMB_X70_Y29_N18
\ControlSystemUnit|pState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~17_combout\ = (\ControlSystemUnit|pState~16_combout\ & (\ControlSystemUnit|pState~15_combout\ & ((\ControlSystemUnit|pState.StartPrg~q\)))) # (!\ControlSystemUnit|pState~16_combout\ & ((\ControlSystemUnit|pState.Extra~q\) # 
-- ((\ControlSystemUnit|pState~15_combout\ & \ControlSystemUnit|pState.StartPrg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState~16_combout\,
	datab => \ControlSystemUnit|pState~15_combout\,
	datac => \ControlSystemUnit|pState.Extra~q\,
	datad => \ControlSystemUnit|pState.StartPrg~q\,
	combout => \ControlSystemUnit|pState~17_combout\);

-- Location: FF_X70_Y29_N19
\ControlSystemUnit|pState.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.Extra~q\);

-- Location: LCCOMB_X69_Y31_N14
\TimerAuxFSM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerAuxFSM|Add0~0_combout\ = (!\BreadBakerFSM|s_currentState.TFim~q\ & !\BreadBakerFSM|s_currentState.TExtra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \TimerAuxFSM|Add0~0_combout\);

-- Location: LCCOMB_X69_Y28_N0
\TimeExtra|Counter|s_count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[3]~16_combout\ = (!\TimeExtra|Counter|s_count\(2)) # (!\TimeExtra|Counter|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeExtra|Counter|s_count\(1),
	datad => \TimeExtra|Counter|s_count\(2),
	combout => \TimeExtra|Counter|s_count[3]~16_combout\);

-- Location: LCCOMB_X69_Y28_N2
\TimeExtra|Counter|s_count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeExtra|Counter|s_count[3]~17_combout\ = (((!\ControlSystemUnit|pState.Extra~q\ & \TimerAuxFSM|Add0~0_combout\)) # (!\TimeExtra|Counter|s_count[3]~16_combout\)) # (!\ControlSystemUnit|pState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \TimeExtra|Counter|s_count[3]~16_combout\,
	combout => \TimeExtra|Counter|s_count[3]~17_combout\);

-- Location: FF_X69_Y28_N13
\TimeExtra|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimeExtra|Counter|s_count[0]~8_combout\,
	sclr => \TimeExtra|Counter|s_count[3]~17_combout\,
	ena => \TimeExtra|Counter|s_count[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeExtra|Counter|s_count\(0));

-- Location: FF_X70_Y28_N11
\BreadBakerFSM|s_valueExtra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimeExtra|Counter|s_count\(0),
	sload => VCC,
	ena => \BreadBakerFSM|s_valueExtra[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_valueExtra\(0));

-- Location: LCCOMB_X70_Y28_N8
\BreadBakerFSM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Equal0~0_combout\ = (!\BreadBakerFSM|s_valueExtra\(0) & (!\BreadBakerFSM|s_valueExtra\(1) & (!\BreadBakerFSM|s_valueExtra\(2) & !\BreadBakerFSM|s_valueExtra\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_valueExtra\(0),
	datab => \BreadBakerFSM|s_valueExtra\(1),
	datac => \BreadBakerFSM|s_valueExtra\(2),
	datad => \BreadBakerFSM|s_valueExtra\(3),
	combout => \BreadBakerFSM|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y28_N28
\BreadBakerFSM|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Equal0~2_combout\ = (!\BreadBakerFSM|Equal0~1_combout\) # (!\BreadBakerFSM|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BreadBakerFSM|Equal0~0_combout\,
	datad => \BreadBakerFSM|Equal0~1_combout\,
	combout => \BreadBakerFSM|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y31_N18
\BreadBakerFSM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector13~0_combout\ = (\TimerAuxFSM|s_cntZero~q\ & ((\BreadBakerFSM|s_currentState.TLevedar~q\))) # (!\TimerAuxFSM|s_cntZero~q\ & (\BreadBakerFSM|s_currentState.TCozer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	combout => \BreadBakerFSM|Selector13~0_combout\);

-- Location: LCCOMB_X72_Y31_N0
\BreadBakerFSM|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector13~1_combout\ = (\BreadBakerFSM|Selector13~0_combout\) # ((\ControlSystemUnit|pState.StartPrg~q\ & (\BreadBakerFSM|s_currentState.TExtra~q\ & \BreadBakerFSM|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.StartPrg~q\,
	datab => \BreadBakerFSM|s_currentState.TExtra~q\,
	datac => \BreadBakerFSM|Equal0~2_combout\,
	datad => \BreadBakerFSM|Selector13~0_combout\,
	combout => \BreadBakerFSM|Selector13~1_combout\);

-- Location: LCCOMB_X72_Y31_N10
\BreadBakerFSM|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~12_combout\ = (\ControlSystemUnit|pState.Init~q\ & \BreadBakerFSM|Selector13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \BreadBakerFSM|Selector13~1_combout\,
	combout => \BreadBakerFSM|s_currentState~12_combout\);

-- Location: FF_X70_Y31_N29
\BreadBakerFSM|s_currentState.TCozer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BreadBakerFSM|s_currentState~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TCozer~q\);

-- Location: LCCOMB_X70_Y31_N12
\BreadBakerFSM|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|s_currentState~13_combout\ = (\ControlSystemUnit|pState.Init~q\ & ((\TimerAuxFSM|s_cntZero~q\ & ((\BreadBakerFSM|s_currentState.TCozer~q\))) # (!\TimerAuxFSM|s_cntZero~q\ & (\BreadBakerFSM|s_currentState.TFim~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	datad => \ControlSystemUnit|pState.Init~q\,
	combout => \BreadBakerFSM|s_currentState~13_combout\);

-- Location: FF_X69_Y31_N15
\BreadBakerFSM|s_currentState.TFim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BreadBakerFSM|s_currentState~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BreadBakerFSM|s_currentState.TFim~q\);

-- Location: LCCOMB_X70_Y29_N14
\BreadBakerFSM|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector15~0_combout\ = (\BreadBakerFSM|s_currentState.TFim~q\ & \TimerAuxFSM|s_cntZero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \TimerAuxFSM|s_cntZero~q\,
	combout => \BreadBakerFSM|Selector15~0_combout\);

-- Location: LCCOMB_X70_Y29_N12
\ControlSystemUnit|pState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~18_combout\ = (!\debouncerKEY1|s_pulsedOut~q\ & (((!\debouncerKEY0|s_pulsedOut~q\ & !\BreadBakerFSM|Selector15~0_combout\)) # (!\ControlSystemUnit|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.StartPrg~q\,
	datac => \BreadBakerFSM|Selector15~0_combout\,
	datad => \debouncerKEY1|s_pulsedOut~q\,
	combout => \ControlSystemUnit|pState~18_combout\);

-- Location: LCCOMB_X70_Y29_N4
\ControlSystemUnit|pState~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~25_combout\ = (\ControlSystemUnit|pState.TimeProcess~q\) # ((\ControlSystemUnit|pState.StartPrg~q\ & ((!\ControlSystemUnit|pState~10_combout\))) # (!\ControlSystemUnit|pState.StartPrg~q\ & (!\debouncerKEY0|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.StartPrg~q\,
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \ControlSystemUnit|pState~10_combout\,
	combout => \ControlSystemUnit|pState~25_combout\);

-- Location: LCCOMB_X67_Y29_N28
\ControlSystemUnit|pState~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~26_combout\ = (\ControlSystemUnit|pState.Menu~q\ & ((!\ControlSystemUnit|pState.TimeProcess~q\) # (!\Temporizador|s_result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_result~q\,
	datab => \ControlSystemUnit|pState.Menu~q\,
	datad => \ControlSystemUnit|pState.TimeProcess~q\,
	combout => \ControlSystemUnit|pState~26_combout\);

-- Location: LCCOMB_X67_Y29_N18
\ControlSystemUnit|pState~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~27_combout\ = (\ControlSystemUnit|pState~9_combout\ & (((\ControlSystemUnit|pState~25_combout\ & \ControlSystemUnit|pState~26_combout\)) # (!\ControlSystemUnit|pState.Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Init~q\,
	datab => \ControlSystemUnit|pState~9_combout\,
	datac => \ControlSystemUnit|pState~25_combout\,
	datad => \ControlSystemUnit|pState~26_combout\,
	combout => \ControlSystemUnit|pState~27_combout\);

-- Location: LCCOMB_X67_Y29_N14
\ControlSystemUnit|pState~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~28_combout\ = (\ControlSystemUnit|pState~18_combout\ & ((\ControlSystemUnit|pState~27_combout\) # ((\debouncerKEY2|s_pulsedOut~q\ & \ControlSystemUnit|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY2|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.Timer~q\,
	datac => \ControlSystemUnit|pState~18_combout\,
	datad => \ControlSystemUnit|pState~27_combout\,
	combout => \ControlSystemUnit|pState~28_combout\);

-- Location: FF_X67_Y29_N15
\ControlSystemUnit|pState.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.Menu~q\);

-- Location: LCCOMB_X70_Y29_N22
\ControlSystemUnit|pState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~19_combout\ = (\debouncerKEY2|s_pulsedOut~q\ & (\ControlSystemUnit|pState.Menu~q\ & ((!\ControlSystemUnit|pState.Timer~q\)))) # (!\debouncerKEY2|s_pulsedOut~q\ & (((!\debouncerKEY0|s_pulsedOut~q\ & 
-- \ControlSystemUnit|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Menu~q\,
	datab => \debouncerKEY2|s_pulsedOut~q\,
	datac => \debouncerKEY0|s_pulsedOut~q\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \ControlSystemUnit|pState~19_combout\);

-- Location: LCCOMB_X70_Y29_N28
\ControlSystemUnit|pState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~20_combout\ = (\ControlSystemUnit|pState~19_combout\ & \ControlSystemUnit|pState~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState~19_combout\,
	datad => \ControlSystemUnit|pState~18_combout\,
	combout => \ControlSystemUnit|pState~20_combout\);

-- Location: FF_X70_Y29_N29
\ControlSystemUnit|pState.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.Timer~q\);

-- Location: LCCOMB_X70_Y29_N8
\ControlSystemUnit|pState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~21_combout\ = (\debouncerKEY0|s_pulsedOut~q\ & (\ControlSystemUnit|pState.Timer~q\ & !\debouncerKEY2|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.Timer~q\,
	datac => \debouncerKEY2|s_pulsedOut~q\,
	combout => \ControlSystemUnit|pState~21_combout\);

-- Location: LCCOMB_X67_Y29_N16
\ControlSystemUnit|pState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~22_combout\ = (!\debouncerKEY1|s_pulsedOut~q\ & ((\ControlSystemUnit|pState~21_combout\) # ((!\Temporizador|s_result~q\ & \ControlSystemUnit|pState.TimeProcess~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_result~q\,
	datab => \ControlSystemUnit|pState~21_combout\,
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \debouncerKEY1|s_pulsedOut~q\,
	combout => \ControlSystemUnit|pState~22_combout\);

-- Location: FF_X67_Y29_N17
\ControlSystemUnit|pState.TimeProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.TimeProcess~q\);

-- Location: LCCOMB_X70_Y29_N2
\ControlSystemUnit|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~13_combout\ = (!\ControlSystemUnit|pState.StartPrg~q\ & ((\ControlSystemUnit|pState.TimeProcess~q\ & ((\Temporizador|s_result~q\))) # (!\ControlSystemUnit|pState.TimeProcess~q\ & (\debouncerKEY0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.TimeProcess~q\,
	datab => \ControlSystemUnit|pState.StartPrg~q\,
	datac => \debouncerKEY0|s_pulsedOut~q\,
	datad => \Temporizador|s_result~q\,
	combout => \ControlSystemUnit|pState~13_combout\);

-- Location: LCCOMB_X70_Y29_N20
\ControlSystemUnit|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~14_combout\ = (\ControlSystemUnit|pState~12_combout\ & ((\ControlSystemUnit|pState~13_combout\) # (\ControlSystemUnit|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ControlSystemUnit|pState~13_combout\,
	datac => \ControlSystemUnit|pState.StartPrg~q\,
	datad => \ControlSystemUnit|pState~12_combout\,
	combout => \ControlSystemUnit|pState~14_combout\);

-- Location: FF_X70_Y29_N21
\ControlSystemUnit|pState.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.StartPrg~q\);

-- Location: LCCOMB_X70_Y29_N30
\ControlSystemUnit|pState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~23_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & (\ControlSystemUnit|pState.StartPrg~q\ & (!\BreadBakerFSM|Equal0~2_combout\ & \BreadBakerFSM|s_currentState.TExtra~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \ControlSystemUnit|pState.StartPrg~q\,
	datac => \BreadBakerFSM|Equal0~2_combout\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \ControlSystemUnit|pState~23_combout\);

-- Location: LCCOMB_X66_Y32_N30
\ControlSystemUnit|pState~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|pState~24_combout\ = (\ControlSystemUnit|pState~16_combout\ & (!\ControlSystemUnit|pState~23_combout\ & (!\debouncerKEY1|s_pulsedOut~q\))) # (!\ControlSystemUnit|pState~16_combout\ & (((\ControlSystemUnit|pState.Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState~23_combout\,
	datab => \debouncerKEY1|s_pulsedOut~q\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \ControlSystemUnit|pState~16_combout\,
	combout => \ControlSystemUnit|pState~24_combout\);

-- Location: FF_X66_Y32_N31
\ControlSystemUnit|pState.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ControlSystemUnit|pState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ControlSystemUnit|pState.Init~q\);

-- Location: LCCOMB_X63_Y32_N12
\LCD|clk_count_400hz[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[0]~20_combout\ = \LCD|clk_count_400hz\(0) $ (VCC)
-- \LCD|clk_count_400hz[0]~21\ = CARRY(\LCD|clk_count_400hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(0),
	datad => VCC,
	combout => \LCD|clk_count_400hz[0]~20_combout\,
	cout => \LCD|clk_count_400hz[0]~21\);

-- Location: LCCOMB_X63_Y31_N26
\LCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~0_combout\ = (\LCD|clk_count_400hz\(15) & (\LCD|clk_count_400hz\(14) & (\LCD|clk_count_400hz\(12) & \LCD|clk_count_400hz\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(15),
	datab => \LCD|clk_count_400hz\(14),
	datac => \LCD|clk_count_400hz\(12),
	datad => \LCD|clk_count_400hz\(13),
	combout => \LCD|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y32_N10
\LCD|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~2_combout\ = (\LCD|clk_count_400hz\(3)) # ((\LCD|clk_count_400hz\(2) & ((\LCD|clk_count_400hz\(0)) # (\LCD|clk_count_400hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(0),
	datab => \LCD|clk_count_400hz\(2),
	datac => \LCD|clk_count_400hz\(1),
	datad => \LCD|clk_count_400hz\(3),
	combout => \LCD|LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y32_N0
\LCD|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~1_combout\ = (\LCD|clk_count_400hz\(9)) # ((\LCD|clk_count_400hz\(8)) # ((\LCD|clk_count_400hz\(7)) # (\LCD|clk_count_400hz\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(9),
	datab => \LCD|clk_count_400hz\(8),
	datac => \LCD|clk_count_400hz\(7),
	datad => \LCD|clk_count_400hz\(6),
	combout => \LCD|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y32_N4
\LCD|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~3_combout\ = (\LCD|LessThan0~1_combout\) # ((\LCD|clk_count_400hz\(5) & ((\LCD|LessThan0~2_combout\) # (\LCD|clk_count_400hz\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan0~2_combout\,
	datab => \LCD|clk_count_400hz\(4),
	datac => \LCD|clk_count_400hz\(5),
	datad => \LCD|LessThan0~1_combout\,
	combout => \LCD|LessThan0~3_combout\);

-- Location: LCCOMB_X63_Y31_N28
\LCD|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~4_combout\ = (\LCD|LessThan0~0_combout\ & ((\LCD|clk_count_400hz\(11)) # ((\LCD|LessThan0~3_combout\ & \LCD|clk_count_400hz\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan0~0_combout\,
	datab => \LCD|clk_count_400hz\(11),
	datac => \LCD|LessThan0~3_combout\,
	datad => \LCD|clk_count_400hz\(10),
	combout => \LCD|LessThan0~4_combout\);

-- Location: LCCOMB_X63_Y31_N20
\LCD|clk_count_400hz[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[0]~46_combout\ = (\LCD|LessThan0~5_combout\) # ((\LCD|LessThan0~4_combout\) # (!\ControlSystemUnit|pState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan0~5_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \LCD|LessThan0~4_combout\,
	combout => \LCD|clk_count_400hz[0]~46_combout\);

-- Location: FF_X63_Y32_N13
\LCD|clk_count_400hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[0]~20_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(0));

-- Location: LCCOMB_X63_Y32_N14
\LCD|clk_count_400hz[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[1]~22_combout\ = (\LCD|clk_count_400hz\(1) & (!\LCD|clk_count_400hz[0]~21\)) # (!\LCD|clk_count_400hz\(1) & ((\LCD|clk_count_400hz[0]~21\) # (GND)))
-- \LCD|clk_count_400hz[1]~23\ = CARRY((!\LCD|clk_count_400hz[0]~21\) # (!\LCD|clk_count_400hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(1),
	datad => VCC,
	cin => \LCD|clk_count_400hz[0]~21\,
	combout => \LCD|clk_count_400hz[1]~22_combout\,
	cout => \LCD|clk_count_400hz[1]~23\);

-- Location: FF_X63_Y32_N15
\LCD|clk_count_400hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[1]~22_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(1));

-- Location: LCCOMB_X63_Y32_N16
\LCD|clk_count_400hz[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[2]~24_combout\ = (\LCD|clk_count_400hz\(2) & (\LCD|clk_count_400hz[1]~23\ $ (GND))) # (!\LCD|clk_count_400hz\(2) & (!\LCD|clk_count_400hz[1]~23\ & VCC))
-- \LCD|clk_count_400hz[2]~25\ = CARRY((\LCD|clk_count_400hz\(2) & !\LCD|clk_count_400hz[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(2),
	datad => VCC,
	cin => \LCD|clk_count_400hz[1]~23\,
	combout => \LCD|clk_count_400hz[2]~24_combout\,
	cout => \LCD|clk_count_400hz[2]~25\);

-- Location: FF_X63_Y32_N17
\LCD|clk_count_400hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[2]~24_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(2));

-- Location: LCCOMB_X63_Y32_N18
\LCD|clk_count_400hz[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[3]~26_combout\ = (\LCD|clk_count_400hz\(3) & (!\LCD|clk_count_400hz[2]~25\)) # (!\LCD|clk_count_400hz\(3) & ((\LCD|clk_count_400hz[2]~25\) # (GND)))
-- \LCD|clk_count_400hz[3]~27\ = CARRY((!\LCD|clk_count_400hz[2]~25\) # (!\LCD|clk_count_400hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(3),
	datad => VCC,
	cin => \LCD|clk_count_400hz[2]~25\,
	combout => \LCD|clk_count_400hz[3]~26_combout\,
	cout => \LCD|clk_count_400hz[3]~27\);

-- Location: FF_X63_Y32_N19
\LCD|clk_count_400hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[3]~26_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(3));

-- Location: LCCOMB_X63_Y32_N20
\LCD|clk_count_400hz[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[4]~28_combout\ = (\LCD|clk_count_400hz\(4) & (\LCD|clk_count_400hz[3]~27\ $ (GND))) # (!\LCD|clk_count_400hz\(4) & (!\LCD|clk_count_400hz[3]~27\ & VCC))
-- \LCD|clk_count_400hz[4]~29\ = CARRY((\LCD|clk_count_400hz\(4) & !\LCD|clk_count_400hz[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(4),
	datad => VCC,
	cin => \LCD|clk_count_400hz[3]~27\,
	combout => \LCD|clk_count_400hz[4]~28_combout\,
	cout => \LCD|clk_count_400hz[4]~29\);

-- Location: FF_X63_Y32_N21
\LCD|clk_count_400hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[4]~28_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(4));

-- Location: LCCOMB_X63_Y32_N22
\LCD|clk_count_400hz[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[5]~30_combout\ = (\LCD|clk_count_400hz\(5) & (!\LCD|clk_count_400hz[4]~29\)) # (!\LCD|clk_count_400hz\(5) & ((\LCD|clk_count_400hz[4]~29\) # (GND)))
-- \LCD|clk_count_400hz[5]~31\ = CARRY((!\LCD|clk_count_400hz[4]~29\) # (!\LCD|clk_count_400hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(5),
	datad => VCC,
	cin => \LCD|clk_count_400hz[4]~29\,
	combout => \LCD|clk_count_400hz[5]~30_combout\,
	cout => \LCD|clk_count_400hz[5]~31\);

-- Location: FF_X63_Y32_N23
\LCD|clk_count_400hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[5]~30_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(5));

-- Location: LCCOMB_X63_Y32_N24
\LCD|clk_count_400hz[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[6]~32_combout\ = (\LCD|clk_count_400hz\(6) & (\LCD|clk_count_400hz[5]~31\ $ (GND))) # (!\LCD|clk_count_400hz\(6) & (!\LCD|clk_count_400hz[5]~31\ & VCC))
-- \LCD|clk_count_400hz[6]~33\ = CARRY((\LCD|clk_count_400hz\(6) & !\LCD|clk_count_400hz[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(6),
	datad => VCC,
	cin => \LCD|clk_count_400hz[5]~31\,
	combout => \LCD|clk_count_400hz[6]~32_combout\,
	cout => \LCD|clk_count_400hz[6]~33\);

-- Location: FF_X63_Y32_N25
\LCD|clk_count_400hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[6]~32_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(6));

-- Location: LCCOMB_X63_Y32_N26
\LCD|clk_count_400hz[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[7]~34_combout\ = (\LCD|clk_count_400hz\(7) & (!\LCD|clk_count_400hz[6]~33\)) # (!\LCD|clk_count_400hz\(7) & ((\LCD|clk_count_400hz[6]~33\) # (GND)))
-- \LCD|clk_count_400hz[7]~35\ = CARRY((!\LCD|clk_count_400hz[6]~33\) # (!\LCD|clk_count_400hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(7),
	datad => VCC,
	cin => \LCD|clk_count_400hz[6]~33\,
	combout => \LCD|clk_count_400hz[7]~34_combout\,
	cout => \LCD|clk_count_400hz[7]~35\);

-- Location: FF_X63_Y32_N27
\LCD|clk_count_400hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[7]~34_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(7));

-- Location: LCCOMB_X63_Y32_N28
\LCD|clk_count_400hz[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[8]~36_combout\ = (\LCD|clk_count_400hz\(8) & (\LCD|clk_count_400hz[7]~35\ $ (GND))) # (!\LCD|clk_count_400hz\(8) & (!\LCD|clk_count_400hz[7]~35\ & VCC))
-- \LCD|clk_count_400hz[8]~37\ = CARRY((\LCD|clk_count_400hz\(8) & !\LCD|clk_count_400hz[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(8),
	datad => VCC,
	cin => \LCD|clk_count_400hz[7]~35\,
	combout => \LCD|clk_count_400hz[8]~36_combout\,
	cout => \LCD|clk_count_400hz[8]~37\);

-- Location: FF_X63_Y32_N29
\LCD|clk_count_400hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[8]~36_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(8));

-- Location: LCCOMB_X63_Y32_N30
\LCD|clk_count_400hz[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[9]~38_combout\ = (\LCD|clk_count_400hz\(9) & (!\LCD|clk_count_400hz[8]~37\)) # (!\LCD|clk_count_400hz\(9) & ((\LCD|clk_count_400hz[8]~37\) # (GND)))
-- \LCD|clk_count_400hz[9]~39\ = CARRY((!\LCD|clk_count_400hz[8]~37\) # (!\LCD|clk_count_400hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(9),
	datad => VCC,
	cin => \LCD|clk_count_400hz[8]~37\,
	combout => \LCD|clk_count_400hz[9]~38_combout\,
	cout => \LCD|clk_count_400hz[9]~39\);

-- Location: FF_X63_Y32_N31
\LCD|clk_count_400hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[9]~38_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(9));

-- Location: LCCOMB_X63_Y31_N0
\LCD|clk_count_400hz[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[10]~40_combout\ = (\LCD|clk_count_400hz\(10) & (\LCD|clk_count_400hz[9]~39\ $ (GND))) # (!\LCD|clk_count_400hz\(10) & (!\LCD|clk_count_400hz[9]~39\ & VCC))
-- \LCD|clk_count_400hz[10]~41\ = CARRY((\LCD|clk_count_400hz\(10) & !\LCD|clk_count_400hz[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(10),
	datad => VCC,
	cin => \LCD|clk_count_400hz[9]~39\,
	combout => \LCD|clk_count_400hz[10]~40_combout\,
	cout => \LCD|clk_count_400hz[10]~41\);

-- Location: FF_X63_Y31_N1
\LCD|clk_count_400hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[10]~40_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(10));

-- Location: LCCOMB_X63_Y31_N2
\LCD|clk_count_400hz[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[11]~42_combout\ = (\LCD|clk_count_400hz\(11) & (!\LCD|clk_count_400hz[10]~41\)) # (!\LCD|clk_count_400hz\(11) & ((\LCD|clk_count_400hz[10]~41\) # (GND)))
-- \LCD|clk_count_400hz[11]~43\ = CARRY((!\LCD|clk_count_400hz[10]~41\) # (!\LCD|clk_count_400hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(11),
	datad => VCC,
	cin => \LCD|clk_count_400hz[10]~41\,
	combout => \LCD|clk_count_400hz[11]~42_combout\,
	cout => \LCD|clk_count_400hz[11]~43\);

-- Location: FF_X63_Y31_N3
\LCD|clk_count_400hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[11]~42_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(11));

-- Location: LCCOMB_X63_Y31_N4
\LCD|clk_count_400hz[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[12]~44_combout\ = (\LCD|clk_count_400hz\(12) & (\LCD|clk_count_400hz[11]~43\ $ (GND))) # (!\LCD|clk_count_400hz\(12) & (!\LCD|clk_count_400hz[11]~43\ & VCC))
-- \LCD|clk_count_400hz[12]~45\ = CARRY((\LCD|clk_count_400hz\(12) & !\LCD|clk_count_400hz[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(12),
	datad => VCC,
	cin => \LCD|clk_count_400hz[11]~43\,
	combout => \LCD|clk_count_400hz[12]~44_combout\,
	cout => \LCD|clk_count_400hz[12]~45\);

-- Location: FF_X63_Y31_N5
\LCD|clk_count_400hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[12]~44_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(12));

-- Location: LCCOMB_X63_Y31_N6
\LCD|clk_count_400hz[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[13]~47_combout\ = (\LCD|clk_count_400hz\(13) & (!\LCD|clk_count_400hz[12]~45\)) # (!\LCD|clk_count_400hz\(13) & ((\LCD|clk_count_400hz[12]~45\) # (GND)))
-- \LCD|clk_count_400hz[13]~48\ = CARRY((!\LCD|clk_count_400hz[12]~45\) # (!\LCD|clk_count_400hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(13),
	datad => VCC,
	cin => \LCD|clk_count_400hz[12]~45\,
	combout => \LCD|clk_count_400hz[13]~47_combout\,
	cout => \LCD|clk_count_400hz[13]~48\);

-- Location: FF_X63_Y31_N7
\LCD|clk_count_400hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[13]~47_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(13));

-- Location: LCCOMB_X63_Y31_N8
\LCD|clk_count_400hz[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[14]~49_combout\ = (\LCD|clk_count_400hz\(14) & (\LCD|clk_count_400hz[13]~48\ $ (GND))) # (!\LCD|clk_count_400hz\(14) & (!\LCD|clk_count_400hz[13]~48\ & VCC))
-- \LCD|clk_count_400hz[14]~50\ = CARRY((\LCD|clk_count_400hz\(14) & !\LCD|clk_count_400hz[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(14),
	datad => VCC,
	cin => \LCD|clk_count_400hz[13]~48\,
	combout => \LCD|clk_count_400hz[14]~49_combout\,
	cout => \LCD|clk_count_400hz[14]~50\);

-- Location: FF_X63_Y31_N9
\LCD|clk_count_400hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[14]~49_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(14));

-- Location: LCCOMB_X63_Y31_N10
\LCD|clk_count_400hz[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[15]~51_combout\ = (\LCD|clk_count_400hz\(15) & (!\LCD|clk_count_400hz[14]~50\)) # (!\LCD|clk_count_400hz\(15) & ((\LCD|clk_count_400hz[14]~50\) # (GND)))
-- \LCD|clk_count_400hz[15]~52\ = CARRY((!\LCD|clk_count_400hz[14]~50\) # (!\LCD|clk_count_400hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(15),
	datad => VCC,
	cin => \LCD|clk_count_400hz[14]~50\,
	combout => \LCD|clk_count_400hz[15]~51_combout\,
	cout => \LCD|clk_count_400hz[15]~52\);

-- Location: FF_X63_Y31_N11
\LCD|clk_count_400hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[15]~51_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(15));

-- Location: LCCOMB_X63_Y31_N12
\LCD|clk_count_400hz[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[16]~53_combout\ = (\LCD|clk_count_400hz\(16) & (\LCD|clk_count_400hz[15]~52\ $ (GND))) # (!\LCD|clk_count_400hz\(16) & (!\LCD|clk_count_400hz[15]~52\ & VCC))
-- \LCD|clk_count_400hz[16]~54\ = CARRY((\LCD|clk_count_400hz\(16) & !\LCD|clk_count_400hz[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(16),
	datad => VCC,
	cin => \LCD|clk_count_400hz[15]~52\,
	combout => \LCD|clk_count_400hz[16]~53_combout\,
	cout => \LCD|clk_count_400hz[16]~54\);

-- Location: FF_X63_Y31_N13
\LCD|clk_count_400hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[16]~53_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(16));

-- Location: LCCOMB_X63_Y31_N14
\LCD|clk_count_400hz[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[17]~55_combout\ = (\LCD|clk_count_400hz\(17) & (!\LCD|clk_count_400hz[16]~54\)) # (!\LCD|clk_count_400hz\(17) & ((\LCD|clk_count_400hz[16]~54\) # (GND)))
-- \LCD|clk_count_400hz[17]~56\ = CARRY((!\LCD|clk_count_400hz[16]~54\) # (!\LCD|clk_count_400hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(17),
	datad => VCC,
	cin => \LCD|clk_count_400hz[16]~54\,
	combout => \LCD|clk_count_400hz[17]~55_combout\,
	cout => \LCD|clk_count_400hz[17]~56\);

-- Location: FF_X63_Y31_N15
\LCD|clk_count_400hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[17]~55_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(17));

-- Location: LCCOMB_X63_Y31_N16
\LCD|clk_count_400hz[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[18]~57_combout\ = (\LCD|clk_count_400hz\(18) & (\LCD|clk_count_400hz[17]~56\ $ (GND))) # (!\LCD|clk_count_400hz\(18) & (!\LCD|clk_count_400hz[17]~56\ & VCC))
-- \LCD|clk_count_400hz[18]~58\ = CARRY((\LCD|clk_count_400hz\(18) & !\LCD|clk_count_400hz[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|clk_count_400hz\(18),
	datad => VCC,
	cin => \LCD|clk_count_400hz[17]~56\,
	combout => \LCD|clk_count_400hz[18]~57_combout\,
	cout => \LCD|clk_count_400hz[18]~58\);

-- Location: FF_X63_Y31_N17
\LCD|clk_count_400hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[18]~57_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(18));

-- Location: LCCOMB_X63_Y31_N18
\LCD|clk_count_400hz[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_count_400hz[19]~59_combout\ = \LCD|clk_count_400hz[18]~58\ $ (\LCD|clk_count_400hz\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|clk_count_400hz\(19),
	cin => \LCD|clk_count_400hz[18]~58\,
	combout => \LCD|clk_count_400hz[19]~59_combout\);

-- Location: FF_X63_Y31_N19
\LCD|clk_count_400hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_count_400hz[19]~59_combout\,
	sclr => \LCD|clk_count_400hz[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_count_400hz\(19));

-- Location: LCCOMB_X63_Y31_N22
\LCD|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan0~5_combout\ = (\LCD|clk_count_400hz\(16)) # ((\LCD|clk_count_400hz\(19)) # ((\LCD|clk_count_400hz\(17)) # (\LCD|clk_count_400hz\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|clk_count_400hz\(16),
	datab => \LCD|clk_count_400hz\(19),
	datac => \LCD|clk_count_400hz\(17),
	datad => \LCD|clk_count_400hz\(18),
	combout => \LCD|LessThan0~5_combout\);

-- Location: LCCOMB_X63_Y31_N24
\LCD|clk_400hz_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|clk_400hz_enable~0_combout\ = (\ControlSystemUnit|pState.Init~q\ & ((\LCD|LessThan0~5_combout\) # (\LCD|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|LessThan0~5_combout\,
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \LCD|LessThan0~4_combout\,
	combout => \LCD|clk_400hz_enable~0_combout\);

-- Location: FF_X63_Y31_N25
\LCD|clk_400hz_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|clk_400hz_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|clk_400hz_enable~q\);

-- Location: FF_X66_Y32_N27
\LCD|state.drop_lcd_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|lcd_rs~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.drop_lcd_e~q\);

-- Location: FF_X66_Y32_N3
\LCD|state.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|state.drop_lcd_e~q\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.hold~q\);

-- Location: LCCOMB_X65_Y31_N8
\LCD|state.reset1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state.reset1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LCD|state.reset1~feeder_combout\);

-- Location: FF_X65_Y31_N9
\LCD|state.reset1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state.reset1~feeder_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.reset1~q\);

-- Location: LCCOMB_X65_Y32_N30
\LCD|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector18~0_combout\ = (\LCD|state.reset1~q\ & ((\LCD|next_command.reset2~q\) # ((!\LCD|state.hold~q\ & !\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.hold~q\,
	datab => \LCD|state.drop_lcd_e~q\,
	datac => \LCD|next_command.reset2~q\,
	datad => \LCD|state.reset1~q\,
	combout => \LCD|Selector18~0_combout\);

-- Location: FF_X65_Y32_N31
\LCD|next_command.reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector18~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.reset2~q\);

-- Location: LCCOMB_X65_Y32_N28
\LCD|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~36_combout\ = (\LCD|state.hold~q\ & !\LCD|next_command.reset2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.hold~q\,
	datac => \LCD|next_command.reset2~q\,
	combout => \LCD|state~36_combout\);

-- Location: FF_X65_Y32_N29
\LCD|state.reset2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~36_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.reset2~q\);

-- Location: LCCOMB_X65_Y32_N22
\LCD|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector19~0_combout\ = (\LCD|state.reset2~q\) # ((\LCD|next_command.reset3~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.hold~q\,
	datab => \LCD|state.drop_lcd_e~q\,
	datac => \LCD|next_command.reset3~q\,
	datad => \LCD|state.reset2~q\,
	combout => \LCD|Selector19~0_combout\);

-- Location: FF_X65_Y32_N23
\LCD|next_command.reset3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector19~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.reset3~q\);

-- Location: LCCOMB_X65_Y32_N8
\LCD|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~34_combout\ = (\LCD|state.hold~q\ & \LCD|next_command.reset3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.hold~q\,
	datac => \LCD|next_command.reset3~q\,
	combout => \LCD|state~34_combout\);

-- Location: FF_X65_Y32_N9
\LCD|state.reset3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~34_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.reset3~q\);

-- Location: LCCOMB_X65_Y32_N20
\LCD|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector12~0_combout\ = (\LCD|state.reset3~q\) # ((\LCD|next_command.func_set~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.reset3~q\,
	datab => \LCD|state.hold~q\,
	datac => \LCD|next_command.func_set~q\,
	datad => \LCD|state.drop_lcd_e~q\,
	combout => \LCD|Selector12~0_combout\);

-- Location: FF_X65_Y32_N21
\LCD|next_command.func_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector12~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.func_set~q\);

-- Location: LCCOMB_X65_Y32_N26
\LCD|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~35_combout\ = (\LCD|next_command.func_set~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|next_command.func_set~q\,
	datac => \LCD|state.hold~q\,
	combout => \LCD|state~35_combout\);

-- Location: FF_X65_Y32_N27
\LCD|state.func_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~35_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.func_set~q\);

-- Location: LCCOMB_X65_Y32_N24
\LCD|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector20~0_combout\ = (\LCD|state.func_set~q\) # ((\LCD|next_command.display_off~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.func_set~q\,
	datab => \LCD|state.hold~q\,
	datac => \LCD|next_command.display_off~q\,
	datad => \LCD|state.drop_lcd_e~q\,
	combout => \LCD|Selector20~0_combout\);

-- Location: FF_X65_Y32_N25
\LCD|next_command.display_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector20~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.display_off~q\);

-- Location: LCCOMB_X65_Y32_N2
\LCD|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~37_combout\ = (\LCD|next_command.display_off~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|next_command.display_off~q\,
	datac => \LCD|state.hold~q\,
	combout => \LCD|state~37_combout\);

-- Location: FF_X65_Y32_N3
\LCD|state.display_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~37_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.display_off~q\);

-- Location: LCCOMB_X65_Y32_N0
\LCD|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector21~0_combout\ = (\LCD|state.display_off~q\) # ((\LCD|next_command.display_clear~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.hold~q\,
	datab => \LCD|state.drop_lcd_e~q\,
	datac => \LCD|next_command.display_clear~q\,
	datad => \LCD|state.display_off~q\,
	combout => \LCD|Selector21~0_combout\);

-- Location: FF_X65_Y32_N1
\LCD|next_command.display_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector21~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.display_clear~q\);

-- Location: LCCOMB_X65_Y32_N18
\LCD|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~32_combout\ = (\LCD|next_command.display_clear~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|next_command.display_clear~q\,
	datac => \LCD|state.hold~q\,
	combout => \LCD|state~32_combout\);

-- Location: FF_X65_Y32_N19
\LCD|state.display_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~32_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.display_clear~q\);

-- Location: LCCOMB_X68_Y31_N14
\LCD|char_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[0]~5_combout\ = \LCD|char_count\(0) $ (VCC)
-- \LCD|char_count[0]~6\ = CARRY(\LCD|char_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(0),
	datad => VCC,
	combout => \LCD|char_count[0]~5_combout\,
	cout => \LCD|char_count[0]~6\);

-- Location: LCCOMB_X67_Y31_N4
\LCD|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector26~0_combout\ = (\LCD|char_count\(0) & \LCD|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|char_count\(0),
	datad => \LCD|state.reset1~q\,
	combout => \LCD|Selector26~0_combout\);

-- Location: LCCOMB_X65_Y31_N30
\LCD|char_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[4]~13_combout\ = (\ControlSystemUnit|pState.Init~q\ & \LCD|clk_400hz_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Init~q\,
	datad => \LCD|clk_400hz_enable~q\,
	combout => \LCD|char_count[4]~13_combout\);

-- Location: FF_X68_Y31_N15
\LCD|char_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|char_count[0]~5_combout\,
	asdata => \LCD|Selector26~0_combout\,
	sload => \LCD|ALT_INV_state.print_string~q\,
	ena => \LCD|char_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|char_count\(0));

-- Location: LCCOMB_X68_Y31_N16
\LCD|char_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[1]~7_combout\ = (\LCD|char_count\(1) & (!\LCD|char_count[0]~6\)) # (!\LCD|char_count\(1) & ((\LCD|char_count[0]~6\) # (GND)))
-- \LCD|char_count[1]~8\ = CARRY((!\LCD|char_count[0]~6\) # (!\LCD|char_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datad => VCC,
	cin => \LCD|char_count[0]~6\,
	combout => \LCD|char_count[1]~7_combout\,
	cout => \LCD|char_count[1]~8\);

-- Location: LCCOMB_X66_Y31_N26
\LCD|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector25~0_combout\ = (\LCD|state.reset1~q\ & \LCD|char_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.reset1~q\,
	datad => \LCD|char_count\(1),
	combout => \LCD|Selector25~0_combout\);

-- Location: FF_X68_Y31_N17
\LCD|char_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|char_count[1]~7_combout\,
	asdata => \LCD|Selector25~0_combout\,
	sload => \LCD|ALT_INV_state.print_string~q\,
	ena => \LCD|char_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|char_count\(1));

-- Location: LCCOMB_X68_Y31_N18
\LCD|char_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[2]~9_combout\ = (\LCD|char_count\(2) & (\LCD|char_count[1]~8\ $ (GND))) # (!\LCD|char_count\(2) & (!\LCD|char_count[1]~8\ & VCC))
-- \LCD|char_count[2]~10\ = CARRY((\LCD|char_count\(2) & !\LCD|char_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(2),
	datad => VCC,
	cin => \LCD|char_count[1]~8\,
	combout => \LCD|char_count[2]~9_combout\,
	cout => \LCD|char_count[2]~10\);

-- Location: LCCOMB_X67_Y31_N6
\LCD|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector24~0_combout\ = (\LCD|char_count\(2) & \LCD|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(2),
	datad => \LCD|state.reset1~q\,
	combout => \LCD|Selector24~0_combout\);

-- Location: FF_X68_Y31_N19
\LCD|char_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|char_count[2]~9_combout\,
	asdata => \LCD|Selector24~0_combout\,
	sload => \LCD|ALT_INV_state.print_string~q\,
	ena => \LCD|char_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|char_count\(2));

-- Location: LCCOMB_X68_Y31_N20
\LCD|char_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[3]~11_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count[2]~10\)) # (!\LCD|char_count\(3) & ((\LCD|char_count[2]~10\) # (GND)))
-- \LCD|char_count[3]~12\ = CARRY((!\LCD|char_count[2]~10\) # (!\LCD|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datad => VCC,
	cin => \LCD|char_count[2]~10\,
	combout => \LCD|char_count[3]~11_combout\,
	cout => \LCD|char_count[3]~12\);

-- Location: LCCOMB_X67_Y31_N16
\LCD|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector23~0_combout\ = (\LCD|char_count\(3) & \LCD|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|char_count\(3),
	datad => \LCD|state.reset1~q\,
	combout => \LCD|Selector23~0_combout\);

-- Location: FF_X68_Y31_N21
\LCD|char_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|char_count[3]~11_combout\,
	asdata => \LCD|Selector23~0_combout\,
	sload => \LCD|ALT_INV_state.print_string~q\,
	ena => \LCD|char_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|char_count\(3));

-- Location: LCCOMB_X67_Y33_N4
\LCD|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Equal1~0_combout\ = (\LCD|char_count\(1) & (\LCD|char_count\(2) & \LCD|char_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Equal1~0_combout\);

-- Location: LCCOMB_X68_Y31_N22
\LCD|char_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|char_count[4]~14_combout\ = \LCD|char_count[3]~12\ $ (!\LCD|char_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD|char_count\(4),
	cin => \LCD|char_count[3]~12\,
	combout => \LCD|char_count[4]~14_combout\);

-- Location: LCCOMB_X66_Y31_N0
\LCD|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector22~0_combout\ = (\LCD|char_count\(4) & \LCD|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datad => \LCD|state.reset1~q\,
	combout => \LCD|Selector22~0_combout\);

-- Location: FF_X68_Y31_N23
\LCD|char_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|char_count[4]~14_combout\,
	asdata => \LCD|Selector22~0_combout\,
	sload => \LCD|ALT_INV_state.print_string~q\,
	ena => \LCD|char_count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|char_count\(4));

-- Location: LCCOMB_X67_Y33_N30
\LCD|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector17~2_combout\ = (\LCD|char_count\(3) & (\LCD|state.print_string~q\ & (\LCD|Equal1~0_combout\ & \LCD|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|state.print_string~q\,
	datac => \LCD|Equal1~0_combout\,
	datad => \LCD|char_count\(4),
	combout => \LCD|Selector17~2_combout\);

-- Location: LCCOMB_X66_Y32_N14
\LCD|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector17~3_combout\ = (\LCD|Selector17~2_combout\) # ((\LCD|next_command.return_home~q\ & ((\LCD|state.drop_lcd_e~q\) # (\LCD|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.drop_lcd_e~q\,
	datab => \LCD|Selector17~2_combout\,
	datac => \LCD|next_command.return_home~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|Selector17~3_combout\);

-- Location: FF_X66_Y32_N15
\LCD|next_command.return_home\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector17~3_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.return_home~q\);

-- Location: LCCOMB_X66_Y32_N6
\LCD|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~31_combout\ = (\LCD|next_command.return_home~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|next_command.return_home~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|state~31_combout\);

-- Location: FF_X66_Y32_N7
\LCD|state.return_home\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~31_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.return_home~q\);

-- Location: LCCOMB_X67_Y33_N28
\LCD|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector16~2_combout\ = (\LCD|char_count\(3) & (\LCD|state.print_string~q\ & (\LCD|Equal1~0_combout\ & !\LCD|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|state.print_string~q\,
	datac => \LCD|Equal1~0_combout\,
	datad => \LCD|char_count\(4),
	combout => \LCD|Selector16~2_combout\);

-- Location: LCCOMB_X66_Y32_N12
\LCD|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector16~3_combout\ = (\LCD|Selector16~2_combout\) # ((\LCD|next_command.line2~q\ & ((\LCD|state.drop_lcd_e~q\) # (\LCD|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.drop_lcd_e~q\,
	datab => \LCD|Selector16~2_combout\,
	datac => \LCD|next_command.line2~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|Selector16~3_combout\);

-- Location: FF_X66_Y32_N13
\LCD|next_command.line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector16~3_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.line2~q\);

-- Location: LCCOMB_X66_Y31_N10
\LCD|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~30_combout\ = (\LCD|next_command.line2~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|next_command.line2~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|state~30_combout\);

-- Location: FF_X66_Y32_N5
\LCD|state.line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|state~30_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.line2~q\);

-- Location: LCCOMB_X65_Y32_N6
\LCD|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector13~0_combout\ = (\LCD|state.display_clear~q\) # ((\LCD|next_command.display_on~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.display_clear~q\,
	datab => \LCD|next_command.display_on~q\,
	datac => \LCD|state.hold~q\,
	datad => \LCD|state.drop_lcd_e~q\,
	combout => \LCD|Selector13~0_combout\);

-- Location: FF_X66_Y32_N23
\LCD|next_command.display_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|Selector13~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.display_on~q\);

-- Location: LCCOMB_X66_Y32_N28
\LCD|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~33_combout\ = (\LCD|state.hold~q\ & \LCD|next_command.display_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.hold~q\,
	datad => \LCD|next_command.display_on~q\,
	combout => \LCD|state~33_combout\);

-- Location: FF_X66_Y32_N29
\LCD|state.display_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|state~33_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.display_on~q\);

-- Location: LCCOMB_X66_Y32_N0
\LCD|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector14~0_combout\ = (\LCD|state.display_on~q\) # ((\LCD|next_command.mode_set~q\ & ((\LCD|state.drop_lcd_e~q\) # (\LCD|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.drop_lcd_e~q\,
	datab => \LCD|state.display_on~q\,
	datac => \LCD|next_command.mode_set~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|Selector14~0_combout\);

-- Location: FF_X66_Y32_N1
\LCD|next_command.mode_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector14~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.mode_set~q\);

-- Location: LCCOMB_X66_Y31_N16
\LCD|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~29_combout\ = (\LCD|next_command.mode_set~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|next_command.mode_set~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|state~29_combout\);

-- Location: FF_X66_Y32_N17
\LCD|state.mode_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|state~29_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.mode_set~q\);

-- Location: LCCOMB_X66_Y32_N2
\LCD|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~0_combout\ = (!\LCD|state.return_home~q\ & (!\LCD|state.line2~q\ & !\LCD|state.mode_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.return_home~q\,
	datab => \LCD|state.line2~q\,
	datad => \LCD|state.mode_set~q\,
	combout => \LCD|Selector5~0_combout\);

-- Location: LCCOMB_X67_Y33_N26
\LCD|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector15~0_combout\ = (\LCD|state.print_string~q\ & ((!\LCD|char_count\(3)) # (!\LCD|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.print_string~q\,
	datac => \LCD|Equal1~0_combout\,
	datad => \LCD|char_count\(3),
	combout => \LCD|Selector15~0_combout\);

-- Location: LCCOMB_X66_Y32_N10
\LCD|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector15~1_combout\ = ((\LCD|Selector15~0_combout\) # ((!\LCD|lcd_rs~0_combout\ & \LCD|next_command.print_string~q\))) # (!\LCD|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|lcd_rs~0_combout\,
	datab => \LCD|Selector5~0_combout\,
	datac => \LCD|next_command.print_string~q\,
	datad => \LCD|Selector15~0_combout\,
	combout => \LCD|Selector15~1_combout\);

-- Location: FF_X66_Y32_N11
\LCD|next_command.print_string\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector15~1_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|next_command.print_string~q\);

-- Location: LCCOMB_X66_Y32_N4
\LCD|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|state~28_combout\ = (\LCD|next_command.print_string~q\ & \LCD|state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|next_command.print_string~q\,
	datad => \LCD|state.hold~q\,
	combout => \LCD|state~28_combout\);

-- Location: FF_X67_Y32_N29
\LCD|state.print_string\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \LCD|state~28_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	sload => VCC,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|state.print_string~q\);

-- Location: LCCOMB_X67_Y31_N26
\LCD|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~4_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (((!\BreadBakerFSM|WideOr11~combout\ & !\BreadBakerFSM|WideOr10~0_combout\)) # (!\BreadBakerFSM|s_temp~q\))) # (!\TimerAuxFSM|Add0~0_combout\ & (((!\BreadBakerFSM|WideOr11~combout\ & 
-- \BreadBakerFSM|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \BreadBakerFSM|WideOr11~combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux63~4_combout\);

-- Location: LCCOMB_X66_Y31_N24
\LCD|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux38~0_combout\ = (\LCD|char_count\(1) & (!\LCD|char_count\(3) & (\LCD|char_count\(2) & \LCD|char_count\(0)))) # (!\LCD|char_count\(1) & (\LCD|char_count\(3) & (!\LCD|char_count\(2) & !\LCD|char_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux38~0_combout\);

-- Location: LCCOMB_X67_Y31_N8
\LCD|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux38~1_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(0) & (\LCD|char_count\(1) $ (\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(1) & (\LCD|char_count\(0) & \LCD|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux38~1_combout\);

-- Location: LCCOMB_X67_Y31_N2
\LCD|Mux63~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~21_combout\ = (!\BreadBakerFSM|s_currentState.TCozer~q\ & (!\TimerAuxFSM|Add0~0_combout\ & (\BreadBakerFSM|WideOr11~combout\ & !\BreadBakerFSM|s_currentState.TLevedar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \BreadBakerFSM|WideOr11~combout\,
	datad => \BreadBakerFSM|s_currentState.TLevedar~q\,
	combout => \LCD|Mux63~21_combout\);

-- Location: LCCOMB_X67_Y31_N18
\LCD|Mux66~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~5_combout\ = (\LCD|Mux63~21_combout\ & ((\LCD|char_count\(4) & (\LCD|Mux38~0_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux38~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux38~0_combout\,
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux38~1_combout\,
	datad => \LCD|Mux63~21_combout\,
	combout => \LCD|Mux66~5_combout\);

-- Location: LCCOMB_X68_Y30_N28
\LCD|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux59~1_combout\ = (\LCD|char_count\(4) & ((\LCD|char_count\(1) $ (\LCD|char_count\(2))))) # (!\LCD|char_count\(4) & ((\LCD|char_count\(3) & (!\LCD|char_count\(1) & !\LCD|char_count\(2))) # (!\LCD|char_count\(3) & (\LCD|char_count\(1) & 
-- \LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux59~1_combout\);

-- Location: LCCOMB_X68_Y30_N30
\LCD|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux59~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(4) & (!\LCD|char_count\(1) & !\LCD|char_count\(2)))) # (!\LCD|char_count\(3) & (((\LCD|char_count\(1) & \LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux59~0_combout\);

-- Location: LCCOMB_X69_Y30_N6
\LCD|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~3_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (\BreadBakerFSM|s_temp~q\ & ((\BreadBakerFSM|WideOr11~combout\) # (\BreadBakerFSM|WideOr10~0_combout\)))) # (!\TimerAuxFSM|Add0~0_combout\ & (((!\BreadBakerFSM|WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \BreadBakerFSM|WideOr11~combout\,
	datac => \TimerAuxFSM|Add0~0_combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux66~3_combout\);

-- Location: LCCOMB_X68_Y30_N6
\LCD|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~4_combout\ = (\LCD|Mux66~3_combout\ & ((\LCD|char_count\(0) & ((\LCD|Mux59~0_combout\))) # (!\LCD|char_count\(0) & (\LCD|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|Mux59~1_combout\,
	datac => \LCD|Mux59~0_combout\,
	datad => \LCD|Mux66~3_combout\,
	combout => \LCD|Mux66~4_combout\);

-- Location: LCCOMB_X70_Y31_N0
\LCD|Mux66~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~16_combout\ = (\BreadBakerFSM|s_temp~q\) # ((!\BreadBakerFSM|s_currentState.TLevedar~q\ & !\BreadBakerFSM|s_currentState.TCozer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datac => \BreadBakerFSM|s_temp~q\,
	datad => \BreadBakerFSM|s_currentState.TCozer~q\,
	combout => \LCD|Mux66~16_combout\);

-- Location: LCCOMB_X68_Y31_N30
\LCD|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux52~0_combout\ = (!\LCD|char_count\(4) & (!\LCD|char_count\(1) & (\LCD|char_count\(3) & !\LCD|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux52~0_combout\);

-- Location: LCCOMB_X68_Y31_N0
\LCD|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux52~1_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(2) & (\LCD|char_count\(4) $ (!\LCD|char_count\(0))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(2) & ((!\LCD|char_count\(0)) # (!\LCD|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux52~1_combout\);

-- Location: LCCOMB_X68_Y31_N10
\LCD|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux52~2_combout\ = (\LCD|char_count\(1) & ((\LCD|Mux52~1_combout\) # ((!\LCD|char_count\(0) & \LCD|Mux52~0_combout\)))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & (\LCD|Mux52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(0),
	datac => \LCD|Mux52~0_combout\,
	datad => \LCD|Mux52~1_combout\,
	combout => \LCD|Mux52~2_combout\);

-- Location: LCCOMB_X67_Y31_N12
\LCD|Mux66~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~6_combout\ = (\LCD|char_count\(3) & ((\LCD|char_count\(1) & ((!\LCD|char_count\(2)))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & \LCD|char_count\(2))))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(2) & (\LCD|char_count\(1))) # 
-- (!\LCD|char_count\(2) & ((\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux66~6_combout\);

-- Location: LCCOMB_X69_Y31_N24
\LCD|Mux66~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~7_combout\ = (!\BreadBakerFSM|s_currentState.TFim~q\ & (!\BreadBakerFSM|s_currentState.TExtra~q\ & ((\BreadBakerFSM|s_currentState.TLevedar~q\) # (!\BreadBakerFSM|s_currentState.TInit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TInit~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \LCD|Mux66~7_combout\);

-- Location: LCCOMB_X69_Y31_N6
\LCD|Mux66~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~8_combout\ = (\BreadBakerFSM|s_currentState.TExtra~q\) # ((\BreadBakerFSM|s_currentState.TFim~q\) # ((\Flipflop|dataOut~q\ & \LCD|Mux66~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TExtra~q\,
	datab => \Flipflop|dataOut~q\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \LCD|Mux66~7_combout\,
	combout => \LCD|Mux66~8_combout\);

-- Location: LCCOMB_X67_Y31_N14
\LCD|Mux66~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~9_combout\ = (\LCD|char_count\(3) & ((\LCD|char_count\(1) & ((\LCD|Mux66~8_combout\))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & !\LCD|Mux66~8_combout\)))) # (!\LCD|char_count\(3) & (((\LCD|char_count\(0) & \LCD|Mux66~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux66~8_combout\,
	combout => \LCD|Mux66~9_combout\);

-- Location: LCCOMB_X67_Y31_N28
\LCD|Mux66~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~10_combout\ = (\LCD|Mux66~7_combout\ & ((!\LCD|char_count\(0)) # (!\LCD|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(0),
	datad => \LCD|Mux66~7_combout\,
	combout => \LCD|Mux66~10_combout\);

-- Location: LCCOMB_X67_Y31_N22
\LCD|Mux66~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~11_combout\ = (\LCD|Mux66~10_combout\ & (\LCD|Mux66~6_combout\)) # (!\LCD|Mux66~10_combout\ & (\LCD|Mux66~9_combout\ & (\LCD|Mux66~6_combout\ $ (!\LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~6_combout\,
	datab => \LCD|char_count\(1),
	datac => \LCD|Mux66~9_combout\,
	datad => \LCD|Mux66~10_combout\,
	combout => \LCD|Mux66~11_combout\);

-- Location: LCCOMB_X69_Y31_N20
\LCD|Mux66~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~13_combout\ = (\LCD|char_count\(1) & ((\LCD|Mux66~7_combout\) # ((!\LCD|char_count\(0))))) # (!\LCD|char_count\(1) & ((\LCD|Mux66~7_combout\ & (\LCD|char_count\(0))) # (!\LCD|Mux66~7_combout\ & ((\LCD|Mux66~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|Mux66~7_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux66~8_combout\,
	combout => \LCD|Mux66~13_combout\);

-- Location: LCCOMB_X68_Y31_N12
\LCD|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux16~0_combout\ = (\LCD|char_count\(1) & (!\LCD|char_count\(3) & \LCD|char_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux16~0_combout\);

-- Location: LCCOMB_X68_Y31_N2
\LCD|Mux66~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~12_combout\ = (\LCD|Mux16~0_combout\ & (!\LCD|Mux66~7_combout\ & (!\LCD|char_count\(0) & \LCD|Mux66~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux16~0_combout\,
	datab => \LCD|Mux66~7_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux66~8_combout\,
	combout => \LCD|Mux66~12_combout\);

-- Location: LCCOMB_X67_Y31_N20
\LCD|Mux66~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~14_combout\ = (\LCD|Mux66~12_combout\) # ((\LCD|char_count\(3) & (!\LCD|char_count\(2) & !\LCD|Mux66~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(2),
	datac => \LCD|Mux66~13_combout\,
	datad => \LCD|Mux66~12_combout\,
	combout => \LCD|Mux66~14_combout\);

-- Location: LCCOMB_X67_Y31_N30
\LCD|Mux66~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~15_combout\ = (\LCD|char_count\(4) & (\LCD|Mux66~11_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux66~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux66~11_combout\,
	datad => \LCD|Mux66~14_combout\,
	combout => \LCD|Mux66~15_combout\);

-- Location: LCCOMB_X70_Y31_N2
\LCD|Mux66~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~20_combout\ = (\BreadBakerFSM|s_currentState.TCozer~q\ & (((\BreadBakerFSM|s_temp~q\) # (\BreadBakerFSM|WideOr11~combout\)))) # (!\BreadBakerFSM|s_currentState.TCozer~q\ & (\BreadBakerFSM|s_currentState.TLevedar~q\ & ((\BreadBakerFSM|s_temp~q\) 
-- # (\BreadBakerFSM|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datac => \BreadBakerFSM|s_temp~q\,
	datad => \BreadBakerFSM|WideOr11~combout\,
	combout => \LCD|Mux66~20_combout\);

-- Location: LCCOMB_X70_Y31_N26
\LCD|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux24~0_combout\ = (\LCD|char_count\(0) & (\LCD|char_count\(1) & (\LCD|char_count\(3) $ (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux24~0_combout\);

-- Location: LCCOMB_X69_Y32_N20
\LCD|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux21~0_combout\ = (!\LCD|char_count\(2) & (!\LCD|char_count\(1) & \LCD|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux21~0_combout\);

-- Location: LCCOMB_X70_Y31_N8
\LCD|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux24~1_combout\ = (\LCD|char_count\(4) & (!\LCD|char_count\(0) & ((\LCD|Mux21~0_combout\)))) # (!\LCD|char_count\(4) & (((\LCD|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux24~0_combout\,
	datad => \LCD|Mux21~0_combout\,
	combout => \LCD|Mux24~1_combout\);

-- Location: LCCOMB_X70_Y31_N18
\LCD|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux31~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(0) & ((!\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & (((\LCD|char_count\(1) & \LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux31~0_combout\);

-- Location: LCCOMB_X70_Y31_N16
\LCD|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux31~1_combout\ = (\LCD|char_count\(4) & (((!\LCD|char_count\(0) & \LCD|Mux21~0_combout\)))) # (!\LCD|char_count\(4) & (\LCD|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux31~0_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux21~0_combout\,
	combout => \LCD|Mux31~1_combout\);

-- Location: LCCOMB_X70_Y31_N10
\LCD|Mux66~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~17_combout\ = (\LCD|Mux66~16_combout\ & (\LCD|Mux66~20_combout\)) # (!\LCD|Mux66~16_combout\ & ((\LCD|Mux66~20_combout\ & (\LCD|Mux24~1_combout\)) # (!\LCD|Mux66~20_combout\ & ((\LCD|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~16_combout\,
	datab => \LCD|Mux66~20_combout\,
	datac => \LCD|Mux24~1_combout\,
	datad => \LCD|Mux31~1_combout\,
	combout => \LCD|Mux66~17_combout\);

-- Location: LCCOMB_X67_Y31_N24
\LCD|Mux66~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~18_combout\ = (\LCD|Mux66~16_combout\ & ((\LCD|Mux66~17_combout\ & (\LCD|Mux52~2_combout\)) # (!\LCD|Mux66~17_combout\ & ((\LCD|Mux66~15_combout\))))) # (!\LCD|Mux66~16_combout\ & (((\LCD|Mux66~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~16_combout\,
	datab => \LCD|Mux52~2_combout\,
	datac => \LCD|Mux66~15_combout\,
	datad => \LCD|Mux66~17_combout\,
	combout => \LCD|Mux66~18_combout\);

-- Location: LCCOMB_X67_Y31_N0
\LCD|Mux66~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~19_combout\ = (\LCD|Mux66~5_combout\) # ((\LCD|Mux66~4_combout\) # ((\LCD|Mux63~4_combout\ & \LCD|Mux66~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux63~4_combout\,
	datab => \LCD|Mux66~5_combout\,
	datac => \LCD|Mux66~4_combout\,
	datad => \LCD|Mux66~18_combout\,
	combout => \LCD|Mux66~19_combout\);

-- Location: LCCOMB_X66_Y31_N2
\LCD|Mux64~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~12_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(2) & (\LCD|char_count\(1) $ (\LCD|char_count\(0))))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(1) & (\LCD|char_count\(2))) # (!\LCD|char_count\(1) & ((!\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux64~12_combout\);

-- Location: LCCOMB_X66_Y31_N12
\LCD|Mux64~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~13_combout\ = (\LCD|char_count\(4) & (\LCD|Mux64~12_combout\ $ (((!\LCD|char_count\(0) & \LCD|char_count\(2)))))) # (!\LCD|char_count\(4) & (\LCD|Mux64~12_combout\ & (\LCD|char_count\(0) $ (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|Mux64~12_combout\,
	combout => \LCD|Mux64~13_combout\);

-- Location: LCCOMB_X70_Y31_N22
\LCD|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux66~2_combout\ = (!\BreadBakerFSM|s_currentState.TCozer~q\ & (!\BreadBakerFSM|s_currentState.TLevedar~q\ & ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TFim~q\,
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \LCD|Mux66~2_combout\);

-- Location: LCCOMB_X66_Y31_N30
\LCD|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux50~0_combout\ = (\LCD|char_count\(1) & (((\LCD|char_count\(0)) # (!\LCD|char_count\(2))))) # (!\LCD|char_count\(1) & ((\LCD|char_count\(3) & ((\LCD|char_count\(2)) # (!\LCD|char_count\(0)))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux50~0_combout\);

-- Location: LCCOMB_X66_Y31_N28
\LCD|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux50~1_combout\ = (\LCD|char_count\(4) & (!\LCD|Mux50~0_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux50~0_combout\,
	datad => \LCD|Mux38~0_combout\,
	combout => \LCD|Mux50~1_combout\);

-- Location: LCCOMB_X68_Y31_N26
\LCD|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux16~2_combout\ = (!\LCD|char_count\(1) & (\LCD|char_count\(0) & (\LCD|char_count\(2) $ (\LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux16~2_combout\);

-- Location: LCCOMB_X68_Y31_N4
\LCD|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux16~3_combout\ = (\LCD|char_count\(4) & (((\LCD|Mux16~2_combout\)))) # (!\LCD|char_count\(4) & (!\LCD|char_count\(0) & ((\LCD|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datac => \LCD|Mux16~2_combout\,
	datad => \LCD|Mux16~0_combout\,
	combout => \LCD|Mux16~3_combout\);

-- Location: LCCOMB_X68_Y31_N28
\LCD|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux57~0_combout\ = (\LCD|char_count\(2) & (((!\LCD|char_count\(3)) # (!\LCD|char_count\(0))) # (!\LCD|char_count\(1)))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(1)) # ((\LCD|char_count\(0)) # (\LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux57~0_combout\);

-- Location: LCCOMB_X68_Y31_N6
\LCD|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux57~1_combout\ = (\LCD|char_count\(4) & (((!\LCD|char_count\(0) & \LCD|Mux52~0_combout\)) # (!\LCD|Mux57~0_combout\))) # (!\LCD|char_count\(4) & (!\LCD|char_count\(0) & (\LCD|Mux52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datac => \LCD|Mux52~0_combout\,
	datad => \LCD|Mux57~0_combout\,
	combout => \LCD|Mux57~1_combout\);

-- Location: LCCOMB_X66_Y31_N22
\LCD|Mux64~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~8_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & ((\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux57~1_combout\))) # (!\BreadBakerFSM|s_temp~q\ & (\LCD|Mux16~3_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & (\BreadBakerFSM|s_temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr10~0_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux16~3_combout\,
	datad => \LCD|Mux57~1_combout\,
	combout => \LCD|Mux64~8_combout\);

-- Location: LCCOMB_X67_Y33_N24
\LCD|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux29~0_combout\ = (!\LCD|char_count\(4) & !\LCD|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux29~0_combout\);

-- Location: LCCOMB_X67_Y33_N18
\LCD|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux29~1_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & (\LCD|char_count\(4) & \LCD|char_count\(0)))) # (!\LCD|char_count\(2) & (\LCD|char_count\(3) & (\LCD|char_count\(4) $ (!\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux29~1_combout\);

-- Location: LCCOMB_X67_Y33_N16
\LCD|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux29~2_combout\ = (\LCD|char_count\(1) & (\LCD|Mux29~0_combout\ & (\LCD|Equal1~0_combout\))) # (!\LCD|char_count\(1) & ((\LCD|Mux29~1_combout\) # ((\LCD|Mux29~0_combout\ & \LCD|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|Mux29~0_combout\,
	datac => \LCD|Equal1~0_combout\,
	datad => \LCD|Mux29~1_combout\,
	combout => \LCD|Mux29~2_combout\);

-- Location: LCCOMB_X66_Y31_N6
\LCD|Mux64~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~9_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & (((\LCD|Mux64~8_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux64~8_combout\ & (\LCD|Mux50~1_combout\)) # (!\LCD|Mux64~8_combout\ & ((\LCD|Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr10~0_combout\,
	datab => \LCD|Mux50~1_combout\,
	datac => \LCD|Mux64~8_combout\,
	datad => \LCD|Mux29~2_combout\,
	combout => \LCD|Mux64~9_combout\);

-- Location: LCCOMB_X66_Y31_N4
\LCD|Mux64~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~10_combout\ = (\LCD|Mux64~13_combout\ & ((\LCD|Mux66~2_combout\) # ((\TimerAuxFSM|Add0~0_combout\ & \LCD|Mux64~9_combout\)))) # (!\LCD|Mux64~13_combout\ & (\TimerAuxFSM|Add0~0_combout\ & ((\LCD|Mux64~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux64~13_combout\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \LCD|Mux66~2_combout\,
	datad => \LCD|Mux64~9_combout\,
	combout => \LCD|Mux64~10_combout\);

-- Location: LCCOMB_X68_Y29_N0
\LCD|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux13~0_combout\ = (\LCD|char_count\(0) & ((\LCD|char_count\(2) & ((!\LCD|char_count\(3)))) # (!\LCD|char_count\(2) & (\LCD|char_count\(4) & \LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux13~0_combout\);

-- Location: LCCOMB_X68_Y29_N14
\LCD|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~1_combout\ = (!\LCD|char_count\(1) & (!\Flipflop|dataOut~q\ & \LCD|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datac => \Flipflop|dataOut~q\,
	datad => \LCD|Mux13~0_combout\,
	combout => \LCD|Mux64~1_combout\);

-- Location: LCCOMB_X68_Y29_N20
\LCD|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux22~0_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & ((\LCD|char_count\(4)) # (!\LCD|char_count\(1))))) # (!\LCD|char_count\(2) & (!\LCD|char_count\(1) & (\LCD|char_count\(4) & \LCD|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux22~0_combout\);

-- Location: LCCOMB_X68_Y29_N6
\LCD|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~0_combout\ = (\LCD|char_count\(0) & (\Flipflop|dataOut~q\ & \LCD|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datac => \Flipflop|dataOut~q\,
	datad => \LCD|Mux22~0_combout\,
	combout => \LCD|Mux64~0_combout\);

-- Location: LCCOMB_X68_Y29_N8
\LCD|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~2_combout\ = (\BreadBakerFSM|s_temp~q\ & (\LCD|Mux57~1_combout\)) # (!\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux64~1_combout\) # (\LCD|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux57~1_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux64~1_combout\,
	datad => \LCD|Mux64~0_combout\,
	combout => \LCD|Mux64~2_combout\);

-- Location: LCCOMB_X68_Y29_N18
\LCD|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~3_combout\ = (\LCD|char_count\(1) & (((\LCD|char_count\(2) & !\LCD|char_count\(3))))) # (!\LCD|char_count\(1) & ((\LCD|char_count\(2) & (\LCD|char_count\(4))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux64~3_combout\);

-- Location: LCCOMB_X68_Y29_N4
\LCD|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~4_combout\ = (!\BreadBakerFSM|s_temp~q\ & (\LCD|Mux64~3_combout\ & (\LCD|char_count\(0) $ (!\LCD|char_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|char_count\(4),
	datad => \LCD|Mux64~3_combout\,
	combout => \LCD|Mux64~4_combout\);

-- Location: LCCOMB_X68_Y29_N26
\LCD|Mux64~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~5_combout\ = (\LCD|Mux64~4_combout\) # ((\BreadBakerFSM|s_temp~q\ & \LCD|Mux57~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux64~4_combout\,
	datad => \LCD|Mux57~1_combout\,
	combout => \LCD|Mux64~5_combout\);

-- Location: LCCOMB_X68_Y31_N8
\LCD|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux49~0_combout\ = (!\LCD|char_count\(3) & (!\LCD|char_count\(1) & (\LCD|char_count\(0) & \LCD|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux49~0_combout\);

-- Location: LCCOMB_X68_Y29_N30
\LCD|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux36~0_combout\ = (\LCD|char_count\(2)) # ((\LCD|char_count\(0) & ((\LCD|char_count\(1)))) # (!\LCD|char_count\(0) & (\LCD|char_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux36~0_combout\);

-- Location: LCCOMB_X68_Y29_N12
\LCD|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux36~1_combout\ = (\LCD|Mux49~0_combout\ & ((\LCD|char_count\(4)) # ((\LCD|char_count\(3) & !\LCD|Mux36~0_combout\)))) # (!\LCD|Mux49~0_combout\ & (\LCD|char_count\(3) & (!\LCD|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux49~0_combout\,
	datab => \LCD|char_count\(3),
	datac => \LCD|Mux36~0_combout\,
	datad => \LCD|char_count\(4),
	combout => \LCD|Mux36~1_combout\);

-- Location: LCCOMB_X68_Y29_N16
\LCD|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~6_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (\BreadBakerFSM|WideOr10~0_combout\ & (\LCD|Mux64~5_combout\))) # (!\TimerAuxFSM|Add0~0_combout\ & (((\LCD|Mux36~1_combout\)) # (!\BreadBakerFSM|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~0_combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux64~5_combout\,
	datad => \LCD|Mux36~1_combout\,
	combout => \LCD|Mux64~6_combout\);

-- Location: LCCOMB_X68_Y29_N2
\LCD|Mux64~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~7_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & (((\LCD|Mux64~6_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux64~6_combout\ & (\LCD|Mux57~1_combout\)) # (!\LCD|Mux64~6_combout\ & ((\LCD|Mux64~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux57~1_combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux64~2_combout\,
	datad => \LCD|Mux64~6_combout\,
	combout => \LCD|Mux64~7_combout\);

-- Location: LCCOMB_X67_Y32_N8
\LCD|Mux64~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux64~11_combout\ = (\BreadBakerFSM|WideOr11~combout\ & ((\LCD|Mux64~7_combout\))) # (!\BreadBakerFSM|WideOr11~combout\ & (\LCD|Mux64~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr11~combout\,
	datac => \LCD|Mux64~10_combout\,
	datad => \LCD|Mux64~7_combout\,
	combout => \LCD|Mux64~11_combout\);

-- Location: LCCOMB_X67_Y33_N14
\LCD|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux44~0_combout\ = (\LCD|char_count\(3) & ((\LCD|char_count\(4) & ((!\LCD|char_count\(1)))) # (!\LCD|char_count\(4) & (!\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(2) & (!\LCD|char_count\(4))) # (!\LCD|char_count\(2) & 
-- ((\LCD|char_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux44~0_combout\);

-- Location: LCCOMB_X67_Y33_N0
\LCD|Mux65~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~16_combout\ = (\LCD|char_count\(0) & (\LCD|char_count\(1) & (!\LCD|char_count\(2) & \LCD|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(2),
	datad => \LCD|Mux29~0_combout\,
	combout => \LCD|Mux65~16_combout\);

-- Location: LCCOMB_X68_Y33_N12
\LCD|Mux65~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~17_combout\ = (\LCD|Mux66~2_combout\ & ((\LCD|Mux65~16_combout\) # ((\LCD|Mux44~0_combout\ & !\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux44~0_combout\,
	datab => \LCD|char_count\(0),
	datac => \LCD|Mux65~16_combout\,
	datad => \LCD|Mux66~2_combout\,
	combout => \LCD|Mux65~17_combout\);

-- Location: LCCOMB_X69_Y33_N2
\LCD|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux51~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(0) & ((!\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(2) & (!\LCD|char_count\(0))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux51~0_combout\);

-- Location: LCCOMB_X69_Y33_N16
\LCD|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux30~0_combout\ = (\LCD|char_count\(0) & ((\LCD|char_count\(1) & (!\LCD|char_count\(3) & \LCD|char_count\(2))) # (!\LCD|char_count\(1) & (\LCD|char_count\(3) & !\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux30~0_combout\);

-- Location: LCCOMB_X69_Y33_N30
\LCD|Mux65~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~14_combout\ = (\LCD|char_count\(4) & (\BreadBakerFSM|s_temp~q\ & (\LCD|Mux51~0_combout\))) # (!\LCD|char_count\(4) & (((\LCD|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \LCD|Mux51~0_combout\,
	datac => \LCD|char_count\(4),
	datad => \LCD|Mux30~0_combout\,
	combout => \LCD|Mux65~14_combout\);

-- Location: LCCOMB_X68_Y33_N0
\LCD|Mux65~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~11_combout\ = (\LCD|char_count\(4) & ((!\Flipflop|dataOut~q\) # (!\LCD|char_count\(0)))) # (!\LCD|char_count\(4) & (\LCD|char_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(0),
	datad => \Flipflop|dataOut~q\,
	combout => \LCD|Mux65~11_combout\);

-- Location: LCCOMB_X68_Y33_N22
\LCD|Mux65~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~12_combout\ = (\LCD|char_count\(1) & (\LCD|char_count\(2) & !\LCD|Mux65~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(2),
	datad => \LCD|Mux65~11_combout\,
	combout => \LCD|Mux65~12_combout\);

-- Location: LCCOMB_X68_Y33_N4
\LCD|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux58~1_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(0) & ((!\LCD|char_count\(1)) # (!\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(0) & (\LCD|char_count\(2) $ (\LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux58~1_combout\);

-- Location: LCCOMB_X69_Y33_N18
\LCD|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux58~0_combout\ = (!\LCD|char_count\(1) & ((\LCD|char_count\(2) & (!\LCD|char_count\(3) & \LCD|char_count\(0))) # (!\LCD|char_count\(2) & (\LCD|char_count\(3) & !\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux58~0_combout\);

-- Location: LCCOMB_X68_Y33_N6
\LCD|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux58~2_combout\ = (\LCD|char_count\(4) & (\LCD|Mux58~1_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux58~1_combout\,
	datad => \LCD|Mux58~0_combout\,
	combout => \LCD|Mux58~2_combout\);

-- Location: LCCOMB_X68_Y33_N16
\LCD|Mux65~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~13_combout\ = (\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux58~2_combout\)))) # (!\BreadBakerFSM|s_temp~q\ & (\LCD|Mux65~12_combout\ & (!\LCD|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux65~12_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|char_count\(3),
	datad => \LCD|Mux58~2_combout\,
	combout => \LCD|Mux65~13_combout\);

-- Location: LCCOMB_X68_Y33_N14
\LCD|Mux65~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~15_combout\ = (\TimerAuxFSM|Add0~0_combout\ & ((\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux65~13_combout\))) # (!\BreadBakerFSM|WideOr10~0_combout\ & (\LCD|Mux65~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~0_combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux65~14_combout\,
	datad => \LCD|Mux65~13_combout\,
	combout => \LCD|Mux65~15_combout\);

-- Location: LCCOMB_X67_Y33_N6
\LCD|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux28~0_combout\ = (\LCD|char_count\(4) & (\LCD|Equal1~0_combout\ & !\LCD|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|Equal1~0_combout\,
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux28~0_combout\);

-- Location: LCCOMB_X69_Y29_N22
\LCD|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux54~0_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & ((\LCD|char_count\(0)) # (\LCD|char_count\(1))))) # (!\LCD|char_count\(2) & (((!\LCD|char_count\(1) & \LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux54~0_combout\);

-- Location: LCCOMB_X68_Y33_N20
\LCD|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~0_combout\ = (\LCD|char_count\(4) & (!\Flipflop|dataOut~q\ & (\LCD|Mux28~0_combout\))) # (!\LCD|char_count\(4) & ((\LCD|Mux54~0_combout\) # ((!\Flipflop|dataOut~q\ & \LCD|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \Flipflop|dataOut~q\,
	datac => \LCD|Mux28~0_combout\,
	datad => \LCD|Mux54~0_combout\,
	combout => \LCD|Mux65~0_combout\);

-- Location: LCCOMB_X68_Y33_N26
\LCD|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~1_combout\ = (\BreadBakerFSM|s_temp~q\ & (\LCD|Mux58~2_combout\)) # (!\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux58~2_combout\,
	datac => \BreadBakerFSM|s_temp~q\,
	datad => \LCD|Mux65~0_combout\,
	combout => \LCD|Mux65~1_combout\);

-- Location: LCCOMB_X68_Y33_N24
\LCD|Mux65~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~7_combout\ = \LCD|char_count\(0) $ (((\LCD|char_count\(2) & \LCD|char_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux65~7_combout\);

-- Location: LCCOMB_X68_Y33_N18
\LCD|Mux65~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~8_combout\ = (!\LCD|char_count\(4) & ((\LCD|char_count\(2) & (!\LCD|char_count\(3) & \LCD|Mux65~7_combout\)) # (!\LCD|char_count\(2) & (\LCD|char_count\(3) & !\LCD|Mux65~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(3),
	datad => \LCD|Mux65~7_combout\,
	combout => \LCD|Mux65~8_combout\);

-- Location: LCCOMB_X68_Y31_N24
\LCD|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~2_combout\ = (\LCD|char_count\(4) & ((\LCD|char_count\(3) & ((!\LCD|char_count\(1)) # (!\LCD|char_count\(0)))) # (!\LCD|char_count\(3) & (\LCD|char_count\(0) $ (!\LCD|char_count\(1)))))) # (!\LCD|char_count\(4) & (((\LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux65~2_combout\);

-- Location: LCCOMB_X68_Y33_N8
\LCD|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~3_combout\ = (\LCD|char_count\(2) & (((!\LCD|char_count\(3) & \LCD|Mux65~2_combout\)))) # (!\LCD|char_count\(2) & (!\Flipflop|dataOut~q\ & (\LCD|char_count\(3) & !\LCD|Mux65~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flipflop|dataOut~q\,
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(3),
	datad => \LCD|Mux65~2_combout\,
	combout => \LCD|Mux65~3_combout\);

-- Location: LCCOMB_X69_Y30_N10
\LCD|Mux65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~4_combout\ = (\LCD|char_count\(1) & (\LCD|char_count\(2) $ (((!\LCD|char_count\(0) & \LCD|char_count\(4)))))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & (\LCD|char_count\(4) & \LCD|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux65~4_combout\);

-- Location: LCCOMB_X69_Y30_N16
\LCD|Mux65~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~5_combout\ = (\Flipflop|dataOut~q\ & ((\LCD|Mux52~0_combout\) # ((!\LCD|char_count\(3) & \LCD|Mux65~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \Flipflop|dataOut~q\,
	datac => \LCD|Mux52~0_combout\,
	datad => \LCD|Mux65~4_combout\,
	combout => \LCD|Mux65~5_combout\);

-- Location: LCCOMB_X68_Y33_N2
\LCD|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~6_combout\ = (\BreadBakerFSM|s_temp~q\ & (\LCD|Mux58~2_combout\)) # (!\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux65~3_combout\) # (\LCD|Mux65~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux58~2_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux65~3_combout\,
	datad => \LCD|Mux65~5_combout\,
	combout => \LCD|Mux65~6_combout\);

-- Location: LCCOMB_X68_Y33_N28
\LCD|Mux65~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~9_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux65~6_combout\)))) # (!\TimerAuxFSM|Add0~0_combout\ & (((\LCD|Mux65~8_combout\)) # (!\BreadBakerFSM|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~0_combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux65~8_combout\,
	datad => \LCD|Mux65~6_combout\,
	combout => \LCD|Mux65~9_combout\);

-- Location: LCCOMB_X68_Y33_N10
\LCD|Mux65~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~10_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & (((\LCD|Mux65~9_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux65~9_combout\ & (\LCD|Mux58~2_combout\)) # (!\LCD|Mux65~9_combout\ & ((\LCD|Mux65~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux58~2_combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux65~1_combout\,
	datad => \LCD|Mux65~9_combout\,
	combout => \LCD|Mux65~10_combout\);

-- Location: LCCOMB_X68_Y33_N30
\LCD|Mux65~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux65~18_combout\ = (\BreadBakerFSM|WideOr11~combout\ & (((\LCD|Mux65~10_combout\)))) # (!\BreadBakerFSM|WideOr11~combout\ & ((\LCD|Mux65~17_combout\) # ((\LCD|Mux65~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux65~17_combout\,
	datab => \BreadBakerFSM|WideOr11~combout\,
	datac => \LCD|Mux65~15_combout\,
	datad => \LCD|Mux65~10_combout\,
	combout => \LCD|Mux65~18_combout\);

-- Location: LCCOMB_X67_Y32_N2
\LCD|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|LessThan1~0_combout\ = (\LCD|Mux64~11_combout\ & ((\LCD|Mux66~19_combout\) # (\LCD|Mux65~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Mux66~19_combout\,
	datac => \LCD|Mux64~11_combout\,
	datad => \LCD|Mux65~18_combout\,
	combout => \LCD|LessThan1~0_combout\);

-- Location: LCCOMB_X66_Y31_N8
\LCD|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux46~0_combout\ = (\LCD|char_count\(3) & (((!\LCD|char_count\(0)) # (!\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(1) $ (((\LCD|char_count\(2) & !\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux46~0_combout\);

-- Location: LCCOMB_X66_Y31_N18
\LCD|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux46~1_combout\ = (\LCD|char_count\(1) & (!\LCD|char_count\(3) & (\LCD|char_count\(2) $ (\LCD|char_count\(0))))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & ((\LCD|char_count\(3)) # (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux46~1_combout\);

-- Location: LCCOMB_X66_Y31_N20
\LCD|Mux67~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~14_combout\ = (\LCD|Mux66~2_combout\ & ((\LCD|char_count\(4) & (\LCD|Mux46~0_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux46~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~2_combout\,
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux46~0_combout\,
	datad => \LCD|Mux46~1_combout\,
	combout => \LCD|Mux67~14_combout\);

-- Location: LCCOMB_X69_Y33_N4
\LCD|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux60~0_combout\ = (\LCD|char_count\(2) & ((\LCD|char_count\(3) & ((\LCD|char_count\(0)) # (!\LCD|char_count\(1)))) # (!\LCD|char_count\(3) & (!\LCD|char_count\(0))))) # (!\LCD|char_count\(2) & (!\LCD|char_count\(3) & (\LCD|char_count\(0) & 
-- \LCD|char_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux60~0_combout\);

-- Location: LCCOMB_X69_Y33_N12
\LCD|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux60~1_combout\ = (\LCD|char_count\(4) & (\LCD|Mux60~0_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datac => \LCD|Mux60~0_combout\,
	datad => \LCD|Mux58~0_combout\,
	combout => \LCD|Mux60~1_combout\);

-- Location: LCCOMB_X67_Y30_N10
\LCD|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux25~0_combout\ = (\LCD|char_count\(4) & (((!\LCD|char_count\(1) & \LCD|char_count\(3))))) # (!\LCD|char_count\(4) & ((\LCD|char_count\(0) & (\LCD|char_count\(1) & !\LCD|char_count\(3))) # (!\LCD|char_count\(0) & ((\LCD|char_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux25~0_combout\);

-- Location: LCCOMB_X67_Y30_N12
\LCD|Mux67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~4_combout\ = (!\LCD|char_count\(2) & \LCD|Mux25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|char_count\(2),
	datad => \LCD|Mux25~0_combout\,
	combout => \LCD|Mux67~4_combout\);

-- Location: LCCOMB_X67_Y30_N28
\LCD|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux16~1_combout\ = (!\LCD|char_count\(4) & (!\LCD|char_count\(0) & \LCD|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datad => \LCD|Mux16~0_combout\,
	combout => \LCD|Mux16~1_combout\);

-- Location: LCCOMB_X68_Y30_N8
\LCD|Mux67~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~5_combout\ = (\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux60~1_combout\)))) # (!\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux67~4_combout\) # ((\LCD|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux67~4_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux60~1_combout\,
	datad => \LCD|Mux16~1_combout\,
	combout => \LCD|Mux67~5_combout\);

-- Location: LCCOMB_X67_Y30_N30
\LCD|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux39~0_combout\ = (\LCD|char_count\(1) & (!\LCD|char_count\(4) & (\LCD|char_count\(0)))) # (!\LCD|char_count\(1) & (((\LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux39~0_combout\);

-- Location: LCCOMB_X67_Y30_N16
\LCD|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux39~1_combout\ = (\LCD|Mux16~1_combout\) # ((!\LCD|char_count\(2) & \LCD|Mux39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(2),
	datac => \LCD|Mux39~0_combout\,
	datad => \LCD|Mux16~1_combout\,
	combout => \LCD|Mux39~1_combout\);

-- Location: LCCOMB_X68_Y30_N4
\LCD|Mux67~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~8_combout\ = (\LCD|char_count\(3)) # ((!\LCD|char_count\(1) & (\Flipflop|dataOut~q\ & !\LCD|char_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \Flipflop|dataOut~q\,
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux67~8_combout\);

-- Location: LCCOMB_X68_Y30_N2
\LCD|Mux67~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~7_combout\ = (\LCD|char_count\(3) & (\LCD|char_count\(1) & ((\Flipflop|dataOut~q\) # (\LCD|char_count\(2))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(1) $ (((\Flipflop|dataOut~q\ & \LCD|char_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \Flipflop|dataOut~q\,
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux67~7_combout\);

-- Location: LCCOMB_X68_Y30_N12
\LCD|Mux67~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~10_combout\ = (\LCD|char_count\(2) & ((\LCD|Mux67~8_combout\ & ((\LCD|char_count\(0)) # (!\LCD|Mux67~7_combout\))) # (!\LCD|Mux67~8_combout\ & (!\LCD|char_count\(0))))) # (!\LCD|char_count\(2) & (!\LCD|Mux67~8_combout\ & (\LCD|char_count\(0) & 
-- \LCD|Mux67~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|Mux67~8_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux67~7_combout\,
	combout => \LCD|Mux67~10_combout\);

-- Location: LCCOMB_X68_Y30_N14
\LCD|Mux67~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~9_combout\ = (\LCD|Mux67~8_combout\ & (\LCD|Mux67~7_combout\ & ((\LCD|char_count\(0)) # (!\LCD|char_count\(2))))) # (!\LCD|Mux67~8_combout\ & ((\LCD|char_count\(0) & ((\LCD|char_count\(2)) # (!\LCD|Mux67~7_combout\))) # (!\LCD|char_count\(0) & 
-- ((\LCD|Mux67~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|Mux67~8_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux67~7_combout\,
	combout => \LCD|Mux67~9_combout\);

-- Location: LCCOMB_X68_Y30_N26
\LCD|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux56~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(1) & (\LCD|char_count\(0) & !\LCD|char_count\(2)))) # (!\LCD|char_count\(3) & (\LCD|char_count\(1) & ((\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux56~0_combout\);

-- Location: LCCOMB_X68_Y30_N20
\LCD|Mux67~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~6_combout\ = (\LCD|char_count\(4) & (\BreadBakerFSM|s_temp~q\)) # (!\LCD|char_count\(4) & ((\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux58~0_combout\))) # (!\BreadBakerFSM|s_temp~q\ & (\LCD|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux56~0_combout\,
	datad => \LCD|Mux58~0_combout\,
	combout => \LCD|Mux67~6_combout\);

-- Location: LCCOMB_X68_Y30_N10
\LCD|Mux67~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~11_combout\ = (\LCD|char_count\(4) & (\LCD|Mux67~10_combout\ $ (((\LCD|Mux67~9_combout\ & !\LCD|Mux67~6_combout\))))) # (!\LCD|char_count\(4) & (((\LCD|Mux67~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux67~10_combout\,
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux67~9_combout\,
	datad => \LCD|Mux67~6_combout\,
	combout => \LCD|Mux67~11_combout\);

-- Location: LCCOMB_X68_Y30_N24
\LCD|Mux67~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~12_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & ((\TimerAuxFSM|Add0~0_combout\ & ((\LCD|Mux67~11_combout\))) # (!\TimerAuxFSM|Add0~0_combout\ & (\LCD|Mux39~1_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & 
-- (!\TimerAuxFSM|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr10~0_combout\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \LCD|Mux39~1_combout\,
	datad => \LCD|Mux67~11_combout\,
	combout => \LCD|Mux67~12_combout\);

-- Location: LCCOMB_X68_Y30_N22
\LCD|Mux67~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~13_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & (((\LCD|Mux67~12_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux67~12_combout\ & (\LCD|Mux60~1_combout\)) # (!\LCD|Mux67~12_combout\ & ((\LCD|Mux67~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr10~0_combout\,
	datab => \LCD|Mux60~1_combout\,
	datac => \LCD|Mux67~5_combout\,
	datad => \LCD|Mux67~12_combout\,
	combout => \LCD|Mux67~13_combout\);

-- Location: LCCOMB_X69_Y30_N26
\LCD|Mux67~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~21_combout\ = (\LCD|char_count\(0) & ((\BreadBakerFSM|s_currentState.TCozer~q\) # ((\BreadBakerFSM|s_currentState.TLevedar~q\) # (!\Flipflop|dataOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TCozer~q\,
	datab => \Flipflop|dataOut~q\,
	datac => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux67~21_combout\);

-- Location: LCCOMB_X69_Y30_N22
\LCD|Mux67~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~16_combout\ = (\LCD|char_count\(1) & (\LCD|char_count\(2) & (!\LCD|char_count\(3) & !\LCD|Mux67~21_combout\))) # (!\LCD|char_count\(1) & (!\LCD|char_count\(2) & (\LCD|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(3),
	datad => \LCD|Mux67~21_combout\,
	combout => \LCD|Mux67~16_combout\);

-- Location: LCCOMB_X69_Y30_N18
\LCD|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux32~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(1) & (\LCD|char_count\(0) & !\LCD|char_count\(2)))) # (!\LCD|char_count\(3) & (\LCD|char_count\(2) & ((\LCD|char_count\(1)) # (!\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux32~0_combout\);

-- Location: LCCOMB_X69_Y30_N4
\LCD|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux12~0_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & ((\LCD|char_count\(1)) # (\LCD|char_count\(0))))) # (!\LCD|char_count\(2) & (\LCD|char_count\(3) $ (((\LCD|char_count\(1) & \LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux12~0_combout\);

-- Location: LCCOMB_X69_Y30_N24
\LCD|Mux67~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~15_combout\ = (!\LCD|char_count\(4) & ((\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux12~0_combout\))) # (!\BreadBakerFSM|WideOr10~0_combout\ & (\LCD|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux32~0_combout\,
	datac => \LCD|Mux12~0_combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux67~15_combout\);

-- Location: LCCOMB_X69_Y30_N8
\LCD|Mux67~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~17_combout\ = (!\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux67~15_combout\) # ((\LCD|char_count\(4) & \LCD|Mux67~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux67~16_combout\,
	datad => \LCD|Mux67~15_combout\,
	combout => \LCD|Mux67~17_combout\);

-- Location: LCCOMB_X69_Y33_N14
\LCD|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux53~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(1) & (\LCD|char_count\(0) $ (\LCD|char_count\(4))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(0) & (\LCD|char_count\(4) & \LCD|char_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux53~0_combout\);

-- Location: LCCOMB_X69_Y33_N8
\LCD|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux53~1_combout\ = (\LCD|char_count\(4) & (\LCD|char_count\(0))) # (!\LCD|char_count\(4) & ((\LCD|char_count\(3)) # ((\LCD|char_count\(0) & !\LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux53~1_combout\);

-- Location: LCCOMB_X69_Y33_N22
\LCD|Mux67~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~18_combout\ = (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|char_count\(2) & ((!\LCD|Mux53~1_combout\))) # (!\LCD|char_count\(2) & (\LCD|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|Mux53~0_combout\,
	datac => \LCD|Mux53~1_combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux67~18_combout\);

-- Location: LCCOMB_X69_Y33_N28
\LCD|Mux67~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~19_combout\ = (\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux67~18_combout\) # ((\BreadBakerFSM|WideOr10~0_combout\ & \LCD|Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux67~18_combout\,
	datad => \LCD|Mux60~1_combout\,
	combout => \LCD|Mux67~19_combout\);

-- Location: LCCOMB_X68_Y30_N0
\LCD|Mux67~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~22_combout\ = (!\BreadBakerFSM|s_currentState.TExtra~q\ & (!\BreadBakerFSM|s_currentState.TFim~q\ & ((\LCD|Mux67~17_combout\) # (\LCD|Mux67~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TExtra~q\,
	datab => \BreadBakerFSM|s_currentState.TFim~q\,
	datac => \LCD|Mux67~17_combout\,
	datad => \LCD|Mux67~19_combout\,
	combout => \LCD|Mux67~22_combout\);

-- Location: LCCOMB_X68_Y30_N16
\LCD|Mux67~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux67~20_combout\ = (\BreadBakerFSM|WideOr11~combout\ & (((\LCD|Mux67~13_combout\)))) # (!\BreadBakerFSM|WideOr11~combout\ & ((\LCD|Mux67~14_combout\) # ((\LCD|Mux67~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr11~combout\,
	datab => \LCD|Mux67~14_combout\,
	datac => \LCD|Mux67~13_combout\,
	datad => \LCD|Mux67~22_combout\,
	combout => \LCD|Mux67~20_combout\);

-- Location: LCCOMB_X69_Y32_N18
\LCD|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux21~1_combout\ = (!\LCD|char_count\(0) & (\LCD|char_count\(4) & \LCD|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datad => \LCD|Mux21~0_combout\,
	combout => \LCD|Mux21~1_combout\);

-- Location: LCCOMB_X67_Y31_N10
\LCD|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux35~0_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(1) & (!\LCD|char_count\(0) & !\LCD|char_count\(4)))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(4) & (\LCD|char_count\(1))) # (!\LCD|char_count\(4) & ((\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(4),
	combout => \LCD|Mux35~0_combout\);

-- Location: LCCOMB_X68_Y32_N0
\LCD|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~6_combout\ = (\LCD|Mux63~21_combout\ & ((\LCD|Mux21~1_combout\) # ((\LCD|char_count\(2) & \LCD|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|Mux21~1_combout\,
	datac => \LCD|Mux35~0_combout\,
	datad => \LCD|Mux63~21_combout\,
	combout => \LCD|Mux63~6_combout\);

-- Location: LCCOMB_X69_Y30_N28
\LCD|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux56~1_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(2) & (\LCD|char_count\(1) $ (!\LCD|char_count\(0))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(2) $ (((\LCD|char_count\(1) & !\LCD|char_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(2),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux56~1_combout\);

-- Location: LCCOMB_X69_Y30_N30
\LCD|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~5_combout\ = (\LCD|Mux66~3_combout\ & ((\LCD|char_count\(4) & ((\LCD|Mux56~1_combout\))) # (!\LCD|char_count\(4) & (\LCD|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~3_combout\,
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux56~0_combout\,
	datad => \LCD|Mux56~1_combout\,
	combout => \LCD|Mux63~5_combout\);

-- Location: LCCOMB_X68_Y32_N30
\LCD|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux49~1_combout\ = (\LCD|char_count\(4) & ((\LCD|char_count\(0) & ((\LCD|char_count\(3)))) # (!\LCD|char_count\(0) & (\LCD|char_count\(1))))) # (!\LCD|char_count\(4) & (((\LCD|char_count\(3) & !\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux49~1_combout\);

-- Location: LCCOMB_X68_Y32_N12
\LCD|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux49~2_combout\ = (\LCD|Mux49~0_combout\ & ((\LCD|char_count\(4)) # ((!\LCD|char_count\(2) & \LCD|Mux49~1_combout\)))) # (!\LCD|Mux49~0_combout\ & (!\LCD|char_count\(2) & (\LCD|Mux49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux49~0_combout\,
	datab => \LCD|char_count\(2),
	datac => \LCD|Mux49~1_combout\,
	datad => \LCD|char_count\(4),
	combout => \LCD|Mux49~2_combout\);

-- Location: LCCOMB_X68_Y32_N2
\LCD|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux21~2_combout\ = (\LCD|char_count\(4) & (((!\LCD|char_count\(3) & \LCD|char_count\(2))))) # (!\LCD|char_count\(4) & (\LCD|char_count\(0) & (\LCD|char_count\(3) $ (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(4),
	combout => \LCD|Mux21~2_combout\);

-- Location: LCCOMB_X68_Y32_N28
\LCD|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux21~3_combout\ = (\LCD|Mux21~1_combout\) # ((\LCD|char_count\(1) & \LCD|Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datac => \LCD|Mux21~2_combout\,
	datad => \LCD|Mux21~1_combout\,
	combout => \LCD|Mux21~3_combout\);

-- Location: LCCOMB_X67_Y33_N8
\LCD|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux28~1_combout\ = (\LCD|char_count\(3) & (!\LCD|char_count\(2) & ((!\LCD|char_count\(1)) # (!\LCD|char_count\(4))))) # (!\LCD|char_count\(3) & (\LCD|char_count\(4) & (\LCD|char_count\(2) & \LCD|char_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux28~1_combout\);

-- Location: LCCOMB_X67_Y33_N22
\LCD|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux28~2_combout\ = (\LCD|Mux28~0_combout\) # ((!\LCD|char_count\(0) & \LCD|Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datac => \LCD|Mux28~1_combout\,
	datad => \LCD|Mux28~0_combout\,
	combout => \LCD|Mux28~2_combout\);

-- Location: LCCOMB_X68_Y32_N14
\LCD|Mux63~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~15_combout\ = (!\LCD|char_count\(1) & (!\LCD|char_count\(4) & (!\LCD|char_count\(3) & \LCD|char_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(3),
	datad => \LCD|char_count\(0),
	combout => \LCD|Mux63~15_combout\);

-- Location: LCCOMB_X68_Y32_N4
\LCD|Mux63~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~16_combout\ = (\LCD|Mux63~15_combout\ & (!\LCD|Mux66~7_combout\ & \LCD|Mux66~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Mux63~15_combout\,
	datac => \LCD|Mux66~7_combout\,
	datad => \LCD|Mux66~8_combout\,
	combout => \LCD|Mux63~16_combout\);

-- Location: LCCOMB_X69_Y31_N8
\LCD|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~12_combout\ = (\LCD|char_count\(0) & (!\LCD|char_count\(3) & ((!\LCD|Mux66~7_combout\)))) # (!\LCD|char_count\(0) & ((\LCD|char_count\(3) & (!\LCD|char_count\(1))) # (!\LCD|char_count\(3) & ((\LCD|char_count\(1)) # (\LCD|Mux66~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(1),
	datad => \LCD|Mux66~7_combout\,
	combout => \LCD|Mux63~12_combout\);

-- Location: LCCOMB_X69_Y31_N18
\LCD|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~13_combout\ = (\LCD|Mux66~8_combout\) # ((\LCD|char_count\(3) & \LCD|Mux66~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(3),
	datac => \LCD|Mux66~7_combout\,
	datad => \LCD|Mux66~8_combout\,
	combout => \LCD|Mux63~13_combout\);

-- Location: LCCOMB_X69_Y31_N0
\LCD|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~14_combout\ = (\LCD|char_count\(4) & (\LCD|Mux63~12_combout\ & (\LCD|char_count\(1) $ (\LCD|Mux63~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux63~12_combout\,
	datad => \LCD|Mux63~13_combout\,
	combout => \LCD|Mux63~14_combout\);

-- Location: LCCOMB_X69_Y31_N10
\LCD|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~7_combout\ = (\LCD|char_count\(1) & ((\LCD|char_count\(4)) # ((\LCD|char_count\(3) & !\LCD|Mux66~7_combout\)))) # (!\LCD|char_count\(1) & (\LCD|char_count\(3) $ (((\LCD|char_count\(4) & \LCD|Mux66~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(3),
	datad => \LCD|Mux66~7_combout\,
	combout => \LCD|Mux63~7_combout\);

-- Location: LCCOMB_X69_Y31_N28
\LCD|Mux63~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~8_combout\ = (\LCD|char_count\(0) & (\LCD|Mux66~7_combout\ & ((\LCD|char_count\(3)) # (\LCD|char_count\(1))))) # (!\LCD|char_count\(0) & (\LCD|char_count\(3) & (\LCD|char_count\(1) $ (!\LCD|Mux66~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(1),
	datad => \LCD|Mux66~7_combout\,
	combout => \LCD|Mux63~8_combout\);

-- Location: LCCOMB_X69_Y31_N26
\LCD|Mux63~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~9_combout\ = (\LCD|Mux63~8_combout\) # ((\LCD|char_count\(0) & !\LCD|char_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datad => \LCD|Mux63~8_combout\,
	combout => \LCD|Mux63~9_combout\);

-- Location: LCCOMB_X69_Y31_N16
\LCD|Mux63~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~10_combout\ = (\LCD|char_count\(0) & (((\LCD|Mux63~7_combout\)))) # (!\LCD|char_count\(0) & (\LCD|char_count\(1) & ((\LCD|Mux63~7_combout\) # (!\LCD|Mux66~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|Mux66~7_combout\,
	datac => \LCD|char_count\(1),
	datad => \LCD|Mux63~7_combout\,
	combout => \LCD|Mux63~10_combout\);

-- Location: LCCOMB_X69_Y31_N2
\LCD|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~11_combout\ = (\LCD|Mux66~8_combout\ & (((\LCD|Mux63~10_combout\)))) # (!\LCD|Mux66~8_combout\ & (\LCD|Mux63~7_combout\ & (\LCD|Mux63~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~8_combout\,
	datab => \LCD|Mux63~7_combout\,
	datac => \LCD|Mux63~9_combout\,
	datad => \LCD|Mux63~10_combout\,
	combout => \LCD|Mux63~11_combout\);

-- Location: LCCOMB_X68_Y32_N6
\LCD|Mux63~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~17_combout\ = (\LCD|char_count\(2) & ((\LCD|Mux63~16_combout\) # ((\LCD|Mux63~14_combout\)))) # (!\LCD|char_count\(2) & (((\LCD|Mux63~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|Mux63~16_combout\,
	datac => \LCD|Mux63~14_combout\,
	datad => \LCD|Mux63~11_combout\,
	combout => \LCD|Mux63~17_combout\);

-- Location: LCCOMB_X68_Y32_N16
\LCD|Mux63~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~18_combout\ = (\LCD|Mux66~20_combout\ & (\LCD|Mux66~16_combout\)) # (!\LCD|Mux66~20_combout\ & ((\LCD|Mux66~16_combout\ & ((\LCD|Mux63~17_combout\))) # (!\LCD|Mux66~16_combout\ & (\LCD|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux66~20_combout\,
	datab => \LCD|Mux66~16_combout\,
	datac => \LCD|Mux28~2_combout\,
	datad => \LCD|Mux63~17_combout\,
	combout => \LCD|Mux63~18_combout\);

-- Location: LCCOMB_X68_Y32_N10
\LCD|Mux63~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~19_combout\ = (\LCD|Mux66~20_combout\ & ((\LCD|Mux63~18_combout\ & (\LCD|Mux49~2_combout\)) # (!\LCD|Mux63~18_combout\ & ((\LCD|Mux21~3_combout\))))) # (!\LCD|Mux66~20_combout\ & (((\LCD|Mux63~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux49~2_combout\,
	datab => \LCD|Mux21~3_combout\,
	datac => \LCD|Mux66~20_combout\,
	datad => \LCD|Mux63~18_combout\,
	combout => \LCD|Mux63~19_combout\);

-- Location: LCCOMB_X68_Y32_N8
\LCD|Mux63~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux63~20_combout\ = (\LCD|Mux63~6_combout\) # ((\LCD|Mux63~5_combout\) # ((\LCD|Mux63~4_combout\ & \LCD|Mux63~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux63~4_combout\,
	datab => \LCD|Mux63~6_combout\,
	datac => \LCD|Mux63~5_combout\,
	datad => \LCD|Mux63~19_combout\,
	combout => \LCD|Mux63~20_combout\);

-- Location: LCCOMB_X69_Y29_N24
\LCD|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux54~1_combout\ = (\LCD|char_count\(1) & (((!\LCD|char_count\(3)) # (!\LCD|char_count\(2))))) # (!\LCD|char_count\(1) & ((\LCD|char_count\(2)) # ((!\LCD|char_count\(0) & \LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux54~1_combout\);

-- Location: LCCOMB_X69_Y29_N6
\LCD|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux54~2_combout\ = (\LCD|char_count\(4) & ((\LCD|Mux54~1_combout\))) # (!\LCD|char_count\(4) & (\LCD|Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datac => \LCD|Mux54~0_combout\,
	datad => \LCD|Mux54~1_combout\,
	combout => \LCD|Mux54~2_combout\);

-- Location: LCCOMB_X69_Y29_N16
\LCD|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux34~0_combout\ = (\LCD|char_count\(0) & (!\LCD|char_count\(3) & (\LCD|char_count\(1) $ (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux34~0_combout\);

-- Location: LCCOMB_X69_Y29_N10
\LCD|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~2_combout\ = (\LCD|char_count\(4)) # (!\LCD|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|char_count\(4),
	datad => \LCD|Mux34~0_combout\,
	combout => \LCD|Mux62~2_combout\);

-- Location: LCCOMB_X69_Y29_N26
\LCD|Mux62~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~12_combout\ = (\BreadBakerFSM|s_temp~q\ & (!\LCD|Mux54~2_combout\)) # (!\BreadBakerFSM|s_temp~q\ & ((\TimerAuxFSM|Add0~0_combout\ & ((\LCD|Mux62~2_combout\))) # (!\TimerAuxFSM|Add0~0_combout\ & (!\LCD|Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux54~2_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \TimerAuxFSM|Add0~0_combout\,
	datad => \LCD|Mux62~2_combout\,
	combout => \LCD|Mux62~12_combout\);

-- Location: LCCOMB_X69_Y29_N4
\LCD|Mux61~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~11_combout\ = (\BreadBakerFSM|s_temp~q\ & ((\LCD|char_count\(4) & (\LCD|Mux54~1_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux54~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux54~1_combout\,
	datac => \BreadBakerFSM|s_temp~q\,
	datad => \LCD|Mux54~0_combout\,
	combout => \LCD|Mux61~11_combout\);

-- Location: LCCOMB_X69_Y30_N20
\LCD|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux4~0_combout\ = (\LCD|char_count\(4) & ((\LCD|char_count\(0)) # ((\LCD|char_count\(1)) # (\LCD|char_count\(2))))) # (!\LCD|char_count\(4) & (((\LCD|char_count\(1) & \LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y29_N0
\LCD|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~3_combout\ = (!\BreadBakerFSM|s_temp~q\ & ((\LCD|Mux52~0_combout\) # ((!\LCD|char_count\(3) & \LCD|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_temp~q\,
	datab => \LCD|char_count\(3),
	datac => \LCD|Mux52~0_combout\,
	datad => \LCD|Mux4~0_combout\,
	combout => \LCD|Mux62~3_combout\);

-- Location: LCCOMB_X69_Y29_N30
\LCD|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~4_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (((!\LCD|Mux61~11_combout\ & !\LCD|Mux62~3_combout\)))) # (!\TimerAuxFSM|Add0~0_combout\ & (\LCD|Mux62~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux62~2_combout\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \LCD|Mux61~11_combout\,
	datad => \LCD|Mux62~3_combout\,
	combout => \LCD|Mux62~4_combout\);

-- Location: LCCOMB_X69_Y31_N12
\LCD|Mux62~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~5_combout\ = (\BreadBakerFSM|s_temp~q\ & (\LCD|char_count\(1) $ (\LCD|char_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datad => \BreadBakerFSM|s_temp~q\,
	combout => \LCD|Mux62~5_combout\);

-- Location: LCCOMB_X69_Y31_N22
\LCD|Mux62~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~6_combout\ = (\LCD|char_count\(4) & (!\LCD|char_count\(2) & (\LCD|Mux62~5_combout\))) # (!\LCD|char_count\(4) & (\LCD|char_count\(2) & ((!\LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|char_count\(2),
	datac => \LCD|Mux62~5_combout\,
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux62~6_combout\);

-- Location: LCCOMB_X69_Y29_N14
\LCD|Mux62~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~14_combout\ = (!\BreadBakerFSM|s_currentState.TExtra~q\ & (!\BreadBakerFSM|s_currentState.TFim~q\ & ((\LCD|char_count\(0)) # (!\LCD|Mux62~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TExtra~q\,
	datab => \LCD|char_count\(0),
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \LCD|Mux62~6_combout\,
	combout => \LCD|Mux62~14_combout\);

-- Location: LCCOMB_X69_Y29_N8
\LCD|Mux62~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~7_combout\ = (\LCD|char_count\(1) & ((\LCD|char_count\(0) & (!\LCD|char_count\(3) & \LCD|char_count\(2))) # (!\LCD|char_count\(0) & ((!\LCD|char_count\(2)))))) # (!\LCD|char_count\(1) & (\LCD|char_count\(3) & ((!\LCD|char_count\(2)) # 
-- (!\LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(1),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux62~7_combout\);

-- Location: LCCOMB_X69_Y29_N18
\LCD|Mux62~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~8_combout\ = (\LCD|char_count\(0) & (\LCD|char_count\(3) $ (((\LCD|char_count\(1)) # (\LCD|char_count\(2)))))) # (!\LCD|char_count\(0) & (\LCD|char_count\(3) & (\LCD|char_count\(1) $ (\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux62~8_combout\);

-- Location: LCCOMB_X69_Y29_N28
\LCD|Mux62~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~9_combout\ = (\TimerAuxFSM|Add0~0_combout\ & (!\LCD|char_count\(4) & (!\LCD|Mux62~7_combout\ & \LCD|Mux62~8_combout\))) # (!\TimerAuxFSM|Add0~0_combout\ & (\LCD|Mux62~7_combout\ & ((\LCD|char_count\(4)) # (!\LCD|Mux62~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Add0~0_combout\,
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux62~7_combout\,
	datad => \LCD|Mux62~8_combout\,
	combout => \LCD|Mux62~9_combout\);

-- Location: LCCOMB_X69_Y29_N2
\LCD|Mux62~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~10_combout\ = (\BreadBakerFSM|s_temp~q\ & ((\TimerAuxFSM|Add0~0_combout\ & (!\LCD|Mux54~2_combout\)) # (!\TimerAuxFSM|Add0~0_combout\ & ((!\LCD|Mux62~9_combout\))))) # (!\BreadBakerFSM|s_temp~q\ & (((!\LCD|Mux62~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux54~2_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \TimerAuxFSM|Add0~0_combout\,
	datad => \LCD|Mux62~9_combout\,
	combout => \LCD|Mux62~10_combout\);

-- Location: LCCOMB_X69_Y29_N20
\LCD|Mux62~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~11_combout\ = (\BreadBakerFSM|WideOr11~combout\ & (!\BreadBakerFSM|WideOr10~0_combout\)) # (!\BreadBakerFSM|WideOr11~combout\ & ((\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux62~10_combout\))) # (!\BreadBakerFSM|WideOr10~0_combout\ & 
-- (\LCD|Mux62~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr11~combout\,
	datab => \BreadBakerFSM|WideOr10~0_combout\,
	datac => \LCD|Mux62~14_combout\,
	datad => \LCD|Mux62~10_combout\,
	combout => \LCD|Mux62~11_combout\);

-- Location: LCCOMB_X69_Y29_N12
\LCD|Mux62~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux62~13_combout\ = (\BreadBakerFSM|WideOr11~combout\ & ((\LCD|Mux62~11_combout\ & (\LCD|Mux62~12_combout\)) # (!\LCD|Mux62~11_combout\ & ((\LCD|Mux62~4_combout\))))) # (!\BreadBakerFSM|WideOr11~combout\ & (((\LCD|Mux62~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux62~12_combout\,
	datab => \BreadBakerFSM|WideOr11~combout\,
	datac => \LCD|Mux62~4_combout\,
	datad => \LCD|Mux62~11_combout\,
	combout => \LCD|Mux62~13_combout\);

-- Location: LCCOMB_X69_Y32_N4
\LCD|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux20~0_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & ((\LCD|char_count\(1)) # (\LCD|char_count\(0))))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(3)) # ((\LCD|char_count\(1) & \LCD|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux20~0_combout\);

-- Location: LCCOMB_X69_Y32_N26
\LCD|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~2_combout\ = (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux21~1_combout\) # ((!\LCD|char_count\(4) & \LCD|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux21~1_combout\,
	datac => \LCD|Mux20~0_combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux61~2_combout\);

-- Location: LCCOMB_X70_Y31_N4
\LCD|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux4~1_combout\ = (\LCD|char_count\(1)) # ((\LCD|char_count\(4) & ((\LCD|char_count\(0)) # (!\LCD|char_count\(2)))) # (!\LCD|char_count\(4) & ((\LCD|char_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(4),
	datad => \LCD|char_count\(2),
	combout => \LCD|Mux4~1_combout\);

-- Location: LCCOMB_X69_Y32_N0
\LCD|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~3_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|char_count\(3) & (!\LCD|Mux4~1_combout\)) # (!\LCD|char_count\(3) & ((\LCD|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|Mux4~1_combout\,
	datac => \LCD|Mux4~0_combout\,
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux61~3_combout\);

-- Location: LCCOMB_X69_Y32_N10
\LCD|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~4_combout\ = (\BreadBakerFSM|s_temp~q\ & (\LCD|Mux54~2_combout\)) # (!\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux61~2_combout\) # (\LCD|Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux54~2_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \LCD|Mux61~2_combout\,
	datad => \LCD|Mux61~3_combout\,
	combout => \LCD|Mux61~4_combout\);

-- Location: LCCOMB_X70_Y32_N28
\LCD|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux33~0_combout\ = (\LCD|char_count\(2) & (\LCD|char_count\(3) $ (((\LCD|char_count\(0)) # (\LCD|char_count\(1)))))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(3)) # ((\LCD|char_count\(0) & \LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(3),
	datab => \LCD|char_count\(0),
	datac => \LCD|char_count\(2),
	datad => \LCD|char_count\(1),
	combout => \LCD|Mux33~0_combout\);

-- Location: LCCOMB_X70_Y32_N30
\LCD|Mux61~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~9_combout\ = (\LCD|char_count\(4) & (((!\LCD|char_count\(0) & \LCD|Mux21~0_combout\)))) # (!\LCD|char_count\(4) & (\LCD|Mux33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux33~0_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux21~0_combout\,
	combout => \LCD|Mux61~9_combout\);

-- Location: LCCOMB_X69_Y32_N22
\LCD|Mux61~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~12_combout\ = (\BreadBakerFSM|s_currentState.TLevedar~q\ & (((\LCD|Mux54~2_combout\)))) # (!\BreadBakerFSM|s_currentState.TLevedar~q\ & ((\BreadBakerFSM|s_currentState.TCozer~q\ & ((\LCD|Mux54~2_combout\))) # 
-- (!\BreadBakerFSM|s_currentState.TCozer~q\ & (\LCD|Mux61~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|s_currentState.TLevedar~q\,
	datab => \BreadBakerFSM|s_currentState.TCozer~q\,
	datac => \LCD|Mux61~9_combout\,
	datad => \LCD|Mux54~2_combout\,
	combout => \LCD|Mux61~12_combout\);

-- Location: LCCOMB_X68_Y29_N10
\LCD|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux40~1_combout\ = (\LCD|char_count\(1) & ((\LCD|char_count\(3)) # (\LCD|char_count\(4) $ (\LCD|char_count\(0))))) # (!\LCD|char_count\(1) & (((\LCD|char_count\(0) & \LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(4),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux40~1_combout\);

-- Location: LCCOMB_X68_Y29_N28
\LCD|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux40~0_combout\ = (\LCD|char_count\(1) & (((!\LCD|char_count\(4)) # (!\LCD|char_count\(0))) # (!\LCD|char_count\(3)))) # (!\LCD|char_count\(1) & (\LCD|char_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(1),
	datab => \LCD|char_count\(3),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(4),
	combout => \LCD|Mux40~0_combout\);

-- Location: LCCOMB_X68_Y29_N24
\LCD|Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~5_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|char_count\(2) & (!\LCD|Mux40~1_combout\)) # (!\LCD|char_count\(2) & ((\LCD|Mux40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux40~1_combout\,
	datab => \LCD|Mux40~0_combout\,
	datac => \LCD|char_count\(2),
	datad => \BreadBakerFSM|WideOr10~0_combout\,
	combout => \LCD|Mux61~5_combout\);

-- Location: LCCOMB_X69_Y32_N24
\LCD|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux26~0_combout\ = (\LCD|char_count\(2) & (!\LCD|char_count\(3) & ((\LCD|char_count\(1)) # (!\LCD|char_count\(0))))) # (!\LCD|char_count\(2) & (\LCD|char_count\(3) & ((!\LCD|char_count\(0)) # (!\LCD|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux26~0_combout\);

-- Location: LCCOMB_X69_Y32_N30
\LCD|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux26~1_combout\ = (\LCD|char_count\(4) & (\LCD|Mux21~0_combout\ & (!\LCD|char_count\(0)))) # (!\LCD|char_count\(4) & (((\LCD|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(4),
	datab => \LCD|Mux21~0_combout\,
	datac => \LCD|char_count\(0),
	datad => \LCD|Mux26~0_combout\,
	combout => \LCD|Mux26~1_combout\);

-- Location: LCCOMB_X69_Y32_N8
\LCD|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux47~0_combout\ = (\LCD|char_count\(2) & ((\LCD|char_count\(1) & (!\LCD|char_count\(0) & !\LCD|char_count\(3))) # (!\LCD|char_count\(1) & ((!\LCD|char_count\(3)) # (!\LCD|char_count\(0)))))) # (!\LCD|char_count\(2) & ((\LCD|char_count\(1)) # 
-- ((\LCD|char_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(2),
	datab => \LCD|char_count\(1),
	datac => \LCD|char_count\(0),
	datad => \LCD|char_count\(3),
	combout => \LCD|Mux47~0_combout\);

-- Location: LCCOMB_X69_Y32_N14
\LCD|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux47~1_combout\ = (\LCD|char_count\(4) & (\LCD|Mux47~0_combout\)) # (!\LCD|char_count\(4) & ((\LCD|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux47~0_combout\,
	datad => \LCD|Mux26~0_combout\,
	combout => \LCD|Mux47~1_combout\);

-- Location: LCCOMB_X69_Y32_N12
\LCD|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux20~1_combout\ = (\LCD|char_count\(4) & (!\LCD|char_count\(0) & ((\LCD|Mux21~0_combout\)))) # (!\LCD|char_count\(4) & (((\LCD|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|char_count\(0),
	datab => \LCD|char_count\(4),
	datac => \LCD|Mux20~0_combout\,
	datad => \LCD|Mux21~0_combout\,
	combout => \LCD|Mux20~1_combout\);

-- Location: LCCOMB_X69_Y32_N2
\LCD|Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~6_combout\ = (\BreadBakerFSM|s_temp~q\ & (((\LCD|Mux54~2_combout\) # (!\BreadBakerFSM|WideOr10~0_combout\)))) # (!\BreadBakerFSM|s_temp~q\ & (\LCD|Mux20~1_combout\ & (\BreadBakerFSM|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux20~1_combout\,
	datab => \BreadBakerFSM|s_temp~q\,
	datac => \BreadBakerFSM|WideOr10~0_combout\,
	datad => \LCD|Mux54~2_combout\,
	combout => \LCD|Mux61~6_combout\);

-- Location: LCCOMB_X69_Y32_N16
\LCD|Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~7_combout\ = (\BreadBakerFSM|WideOr10~0_combout\ & (((\LCD|Mux61~6_combout\)))) # (!\BreadBakerFSM|WideOr10~0_combout\ & ((\LCD|Mux61~6_combout\ & ((\LCD|Mux47~1_combout\))) # (!\LCD|Mux61~6_combout\ & (\LCD|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux26~1_combout\,
	datab => \LCD|Mux47~1_combout\,
	datac => \BreadBakerFSM|WideOr10~0_combout\,
	datad => \LCD|Mux61~6_combout\,
	combout => \LCD|Mux61~7_combout\);

-- Location: LCCOMB_X69_Y32_N6
\LCD|Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~8_combout\ = (\BreadBakerFSM|WideOr11~combout\ & (!\TimerAuxFSM|Add0~0_combout\)) # (!\BreadBakerFSM|WideOr11~combout\ & ((\TimerAuxFSM|Add0~0_combout\ & ((\LCD|Mux61~7_combout\))) # (!\TimerAuxFSM|Add0~0_combout\ & (\LCD|Mux61~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|WideOr11~combout\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \LCD|Mux61~5_combout\,
	datad => \LCD|Mux61~7_combout\,
	combout => \LCD|Mux61~8_combout\);

-- Location: LCCOMB_X69_Y32_N28
\LCD|Mux61~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Mux61~10_combout\ = (\BreadBakerFSM|WideOr11~combout\ & ((\LCD|Mux61~8_combout\ & ((\LCD|Mux61~12_combout\))) # (!\LCD|Mux61~8_combout\ & (\LCD|Mux61~4_combout\)))) # (!\BreadBakerFSM|WideOr11~combout\ & (((\LCD|Mux61~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux61~4_combout\,
	datab => \BreadBakerFSM|WideOr11~combout\,
	datac => \LCD|Mux61~12_combout\,
	datad => \LCD|Mux61~8_combout\,
	combout => \LCD|Mux61~10_combout\);

-- Location: LCCOMB_X68_Y32_N26
\LCD|data_bus_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|data_bus_value~0_combout\ = (!\LCD|Mux63~20_combout\ & (!\LCD|Mux62~13_combout\ & !\LCD|Mux61~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Mux63~20_combout\,
	datac => \LCD|Mux62~13_combout\,
	datad => \LCD|Mux61~10_combout\,
	combout => \LCD|data_bus_value~0_combout\);

-- Location: LCCOMB_X67_Y32_N0
\LCD|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector9~0_combout\ = (\LCD|state.print_string~q\ & (\LCD|Mux67~20_combout\ $ (((\LCD|LessThan1~0_combout\ & \LCD|data_bus_value~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|LessThan1~0_combout\,
	datac => \LCD|Mux67~20_combout\,
	datad => \LCD|data_bus_value~0_combout\,
	combout => \LCD|Selector9~0_combout\);

-- Location: LCCOMB_X67_Y32_N22
\LCD|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector9~1_combout\ = (\LCD|state.display_clear~q\) # ((\LCD|Selector9~0_combout\) # ((!\LCD|lcd_rs~0_combout\ & \LCD|data_bus_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.display_clear~q\,
	datab => \LCD|lcd_rs~0_combout\,
	datac => \LCD|data_bus_value\(0),
	datad => \LCD|Selector9~0_combout\,
	combout => \LCD|Selector9~1_combout\);

-- Location: FF_X67_Y32_N23
\LCD|data_bus_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector9~1_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(0));

-- Location: LCCOMB_X68_Y29_N22
\LCD|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~2_combout\ = (!\LCD|Mux62~13_combout\ & \LCD|state.print_string~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Mux62~13_combout\,
	datad => \LCD|state.print_string~q\,
	combout => \LCD|Selector8~2_combout\);

-- Location: LCCOMB_X67_Y32_N12
\LCD|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~3_combout\ = (!\LCD|Mux61~10_combout\ & (\LCD|LessThan1~0_combout\ & (!\LCD|Mux63~20_combout\ & \LCD|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux61~10_combout\,
	datab => \LCD|LessThan1~0_combout\,
	datac => \LCD|Mux63~20_combout\,
	datad => \LCD|Selector8~2_combout\,
	combout => \LCD|Selector8~3_combout\);

-- Location: LCCOMB_X66_Y32_N16
\LCD|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~1_combout\ = (\LCD|state.mode_set~q\) # ((\LCD|data_bus_value\(1) & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.hold~q\,
	datab => \LCD|data_bus_value\(1),
	datac => \LCD|state.mode_set~q\,
	datad => \LCD|state.drop_lcd_e~q\,
	combout => \LCD|Selector8~1_combout\);

-- Location: LCCOMB_X67_Y32_N18
\LCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~0_combout\ = \LCD|Mux67~20_combout\ $ (\LCD|Mux66~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Mux67~20_combout\,
	datad => \LCD|Mux66~19_combout\,
	combout => \LCD|Add1~0_combout\);

-- Location: LCCOMB_X67_Y32_N10
\LCD|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~0_combout\ = (\LCD|state.print_string~q\ & (\LCD|Mux66~19_combout\ & ((!\LCD|data_bus_value~0_combout\) # (!\LCD|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|Mux66~19_combout\,
	datac => \LCD|LessThan1~0_combout\,
	datad => \LCD|data_bus_value~0_combout\,
	combout => \LCD|Selector8~0_combout\);

-- Location: LCCOMB_X67_Y32_N4
\LCD|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector8~4_combout\ = (\LCD|Selector8~1_combout\) # ((\LCD|Selector8~0_combout\) # ((\LCD|Selector8~3_combout\ & !\LCD|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector8~3_combout\,
	datab => \LCD|Selector8~1_combout\,
	datac => \LCD|Add1~0_combout\,
	datad => \LCD|Selector8~0_combout\,
	combout => \LCD|Selector8~4_combout\);

-- Location: FF_X67_Y32_N5
\LCD|data_bus_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector8~4_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(1));

-- Location: LCCOMB_X66_Y32_N26
\LCD|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector7~2_combout\ = (\LCD|state.display_on~q\) # ((\LCD|state.mode_set~q\) # ((!\LCD|lcd_rs~0_combout\ & \LCD|data_bus_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.display_on~q\,
	datab => \LCD|state.mode_set~q\,
	datac => \LCD|lcd_rs~0_combout\,
	datad => \LCD|data_bus_value\(2),
	combout => \LCD|Selector7~2_combout\);

-- Location: LCCOMB_X67_Y32_N16
\LCD|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~1_combout\ = \LCD|Mux65~18_combout\ $ (((\LCD|Mux67~20_combout\) # (\LCD|Mux66~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux65~18_combout\,
	datac => \LCD|Mux67~20_combout\,
	datad => \LCD|Mux66~19_combout\,
	combout => \LCD|Add1~1_combout\);

-- Location: LCCOMB_X67_Y32_N20
\LCD|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector7~0_combout\ = (\LCD|Mux62~13_combout\) # ((\LCD|Mux61~10_combout\) # (!\LCD|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Mux62~13_combout\,
	datac => \LCD|Mux61~10_combout\,
	datad => \LCD|LessThan1~0_combout\,
	combout => \LCD|Selector7~0_combout\);

-- Location: LCCOMB_X67_Y32_N30
\LCD|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector7~1_combout\ = (\LCD|state.print_string~q\ & (\LCD|Mux65~18_combout\ & ((\LCD|Mux63~20_combout\) # (\LCD|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|Mux65~18_combout\,
	datac => \LCD|Mux63~20_combout\,
	datad => \LCD|Selector7~0_combout\,
	combout => \LCD|Selector7~1_combout\);

-- Location: LCCOMB_X67_Y32_N26
\LCD|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector7~3_combout\ = (\LCD|Selector7~2_combout\) # ((\LCD|Selector7~1_combout\) # ((!\LCD|Add1~1_combout\ & \LCD|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector7~2_combout\,
	datab => \LCD|Add1~1_combout\,
	datac => \LCD|Selector7~1_combout\,
	datad => \LCD|Selector8~3_combout\,
	combout => \LCD|Selector7~3_combout\);

-- Location: FF_X67_Y32_N27
\LCD|data_bus_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector7~3_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(2));

-- Location: LCCOMB_X65_Y32_N16
\LCD|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~1_combout\ = (!\LCD|state.display_off~q\ & !\LCD|state.display_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.display_off~q\,
	datad => \LCD|state.display_on~q\,
	combout => \LCD|Selector5~1_combout\);

-- Location: LCCOMB_X65_Y32_N14
\LCD|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector6~1_combout\ = (\LCD|state.func_set~q\) # (((\LCD|state.reset3~q\) # (\LCD|state.reset2~q\)) # (!\LCD|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.func_set~q\,
	datab => \LCD|Selector5~1_combout\,
	datac => \LCD|state.reset3~q\,
	datad => \LCD|state.reset2~q\,
	combout => \LCD|Selector6~1_combout\);

-- Location: LCCOMB_X66_Y32_N20
\LCD|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector6~2_combout\ = ((\LCD|Selector6~1_combout\) # ((!\LCD|data_bus_value\(3) & !\LCD|lcd_rs~0_combout\))) # (!\LCD|state.reset1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.reset1~q\,
	datab => \LCD|data_bus_value\(3),
	datac => \LCD|lcd_rs~0_combout\,
	datad => \LCD|Selector6~1_combout\,
	combout => \LCD|Selector6~2_combout\);

-- Location: LCCOMB_X67_Y32_N6
\LCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Add1~2_combout\ = \LCD|Mux64~11_combout\ $ (((\LCD|Mux66~19_combout\) # ((\LCD|Mux67~20_combout\) # (\LCD|Mux65~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux64~11_combout\,
	datab => \LCD|Mux66~19_combout\,
	datac => \LCD|Mux67~20_combout\,
	datad => \LCD|Mux65~18_combout\,
	combout => \LCD|Add1~2_combout\);

-- Location: LCCOMB_X67_Y32_N28
\LCD|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector6~0_combout\ = (\LCD|Mux64~11_combout\ & (\LCD|state.print_string~q\ & ((!\LCD|data_bus_value~0_combout\) # (!\LCD|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Mux64~11_combout\,
	datab => \LCD|LessThan1~0_combout\,
	datac => \LCD|state.print_string~q\,
	datad => \LCD|data_bus_value~0_combout\,
	combout => \LCD|Selector6~0_combout\);

-- Location: LCCOMB_X67_Y32_N24
\LCD|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector6~3_combout\ = (!\LCD|Selector6~2_combout\ & (!\LCD|Selector6~0_combout\ & ((!\LCD|Add1~2_combout\) # (!\LCD|Selector8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector8~3_combout\,
	datab => \LCD|Selector6~2_combout\,
	datac => \LCD|Add1~2_combout\,
	datad => \LCD|Selector6~0_combout\,
	combout => \LCD|Selector6~3_combout\);

-- Location: FF_X67_Y32_N25
\LCD|data_bus_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector6~3_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(3));

-- Location: LCCOMB_X65_Y32_N4
\LCD|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~3_combout\ = (!\LCD|state.display_clear~q\ & (\LCD|Selector5~1_combout\ & (!\LCD|state.print_string~q\ & \LCD|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.display_clear~q\,
	datab => \LCD|Selector5~1_combout\,
	datac => \LCD|state.print_string~q\,
	datad => \LCD|Selector5~0_combout\,
	combout => \LCD|Selector5~3_combout\);

-- Location: LCCOMB_X68_Y32_N24
\LCD|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~2_combout\ = (\LCD|state.print_string~q\ & (!\LCD|Mux61~10_combout\ & (!\LCD|Mux62~13_combout\ & !\LCD|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|Mux61~10_combout\,
	datac => \LCD|Mux62~13_combout\,
	datad => \LCD|LessThan1~0_combout\,
	combout => \LCD|Selector5~2_combout\);

-- Location: LCCOMB_X68_Y32_N20
\LCD|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector5~4_combout\ = (!\LCD|Selector5~3_combout\ & (!\LCD|Selector5~2_combout\ & ((!\LCD|state.print_string~q\) # (!\LCD|Mux63~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector5~3_combout\,
	datab => \LCD|Mux63~20_combout\,
	datac => \LCD|state.print_string~q\,
	datad => \LCD|Selector5~2_combout\,
	combout => \LCD|Selector5~4_combout\);

-- Location: LCCOMB_X65_Y32_N10
\LCD|data_bus_value[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|data_bus_value[5]~1_combout\ = (!\LCD|state.drop_lcd_e~q\ & (!\LCD|state.hold~q\ & \LCD|clk_400hz_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|state.drop_lcd_e~q\,
	datac => \LCD|state.hold~q\,
	datad => \LCD|clk_400hz_enable~q\,
	combout => \LCD|data_bus_value[5]~1_combout\);

-- Location: FF_X68_Y32_N21
\LCD|data_bus_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector5~4_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|data_bus_value[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(4));

-- Location: LCCOMB_X68_Y32_N18
\LCD|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector4~0_combout\ = (\LCD|state.print_string~q\ & (!\LCD|Mux61~10_combout\ & (!\LCD|Mux63~20_combout\ & !\LCD|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|Mux61~10_combout\,
	datac => \LCD|Mux63~20_combout\,
	datad => \LCD|LessThan1~0_combout\,
	combout => \LCD|Selector4~0_combout\);

-- Location: LCCOMB_X68_Y32_N22
\LCD|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector4~1_combout\ = (!\LCD|Selector5~3_combout\ & (!\LCD|Selector4~0_combout\ & ((!\LCD|state.print_string~q\) # (!\LCD|Mux62~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector5~3_combout\,
	datab => \LCD|Mux62~13_combout\,
	datac => \LCD|state.print_string~q\,
	datad => \LCD|Selector4~0_combout\,
	combout => \LCD|Selector4~1_combout\);

-- Location: FF_X68_Y32_N23
\LCD|data_bus_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector4~1_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|data_bus_value[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(5));

-- Location: LCCOMB_X66_Y32_N8
\LCD|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector3~0_combout\ = (\LCD|state.line2~q\) # ((\LCD|data_bus_value\(6) & ((\LCD|state.drop_lcd_e~q\) # (\LCD|state.hold~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.drop_lcd_e~q\,
	datab => \LCD|state.hold~q\,
	datac => \LCD|data_bus_value\(6),
	datad => \LCD|state.line2~q\,
	combout => \LCD|Selector3~0_combout\);

-- Location: LCCOMB_X67_Y32_N14
\LCD|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector3~1_combout\ = (\LCD|Selector3~0_combout\) # ((\LCD|Selector8~3_combout\) # ((\LCD|state.print_string~q\ & \LCD|Mux61~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|Selector3~0_combout\,
	datab => \LCD|state.print_string~q\,
	datac => \LCD|Mux61~10_combout\,
	datad => \LCD|Selector8~3_combout\,
	combout => \LCD|Selector3~1_combout\);

-- Location: FF_X67_Y32_N15
\LCD|data_bus_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector3~1_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(6));

-- Location: LCCOMB_X66_Y32_N24
\LCD|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector2~0_combout\ = (\LCD|state.return_home~q\) # ((\LCD|state.line2~q\) # ((\LCD|data_bus_value\(7) & !\LCD|lcd_rs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.return_home~q\,
	datab => \LCD|state.line2~q\,
	datac => \LCD|data_bus_value\(7),
	datad => \LCD|lcd_rs~0_combout\,
	combout => \LCD|Selector2~0_combout\);

-- Location: FF_X66_Y32_N25
\LCD|data_bus_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector2~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|data_bus_value\(7));

-- Location: LCCOMB_X70_Y31_N28
\BreadBakerFSM|ledRed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|ledRed~0_combout\ = (\BreadBakerFSM|s_currentState.TExtra~q\) # (!\BreadBakerFSM|s_currentState.TInit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BreadBakerFSM|s_currentState.TInit~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \BreadBakerFSM|ledRed~0_combout\);

-- Location: LCCOMB_X70_Y31_N6
\BreadBakerFSM|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BreadBakerFSM|Selector0~1_combout\ = (\BreadBakerFSM|ledRed~0_combout\) # ((\BreadBakerFSM|Selector0~0_combout\ & (!\TimerAuxFSM|s_cntZero~q\ & !\ControlSystemUnit|pState.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BreadBakerFSM|Selector0~0_combout\,
	datab => \TimerAuxFSM|s_cntZero~q\,
	datac => \ControlSystemUnit|pState.StartPrg~q\,
	datad => \BreadBakerFSM|ledRed~0_combout\,
	combout => \BreadBakerFSM|Selector0~1_combout\);

-- Location: LCCOMB_X68_Y26_N30
\BinTOBCDTemporizador|outBCD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD~2_combout\ = (\Temporizador|s_count\(4) & ((\Temporizador|s_count\(1)) # ((\Temporizador|s_count\(2)) # (\Temporizador|s_count\(3))))) # (!\Temporizador|s_count\(4) & (((!\Temporizador|s_count\(1) & 
-- !\Temporizador|s_count\(2))) # (!\Temporizador|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datab => \Temporizador|s_count\(4),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|outBCD~2_combout\);

-- Location: LCCOMB_X68_Y26_N18
\BinTOBCDTemporizador|outBCD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD~3_combout\ = (\BinTOBCDTemporizador|outBCD~2_combout\) # ((\Temporizador|s_count\(7)) # ((\Temporizador|s_count\(5)) # (\Temporizador|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD~2_combout\,
	datab => \Temporizador|s_count\(7),
	datac => \Temporizador|s_count\(5),
	datad => \Temporizador|s_count\(6),
	combout => \BinTOBCDTemporizador|outBCD~3_combout\);

-- Location: LCCOMB_X69_Y26_N10
\BinTOBCDTemporizador|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|LessThan0~0_combout\ = (\Temporizador|Equal0~0_combout\ & (((!\Temporizador|s_count\(2) & !\Temporizador|s_count\(1))) # (!\Temporizador|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|Equal0~0_combout\,
	datac => \Temporizador|s_count\(1),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|LessThan0~0_combout\);

-- Location: LCCOMB_X69_Y26_N0
\MuxforHEX4|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~14_combout\ = (\BinTOBCDTemporizador|LessThan0~0_combout\) # ((\ControlSystemUnit|pState.Extra~q\) # ((!\ControlSystemUnit|pState.TimeProcess~q\ & !\ControlSystemUnit|pState.Timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datab => \ControlSystemUnit|pState.Extra~q\,
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \MuxforHEX4|Mux0~14_combout\);

-- Location: LCCOMB_X68_Y26_N6
\MuxforHEX4|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~21_combout\ = (\Temporizador|s_count\(2) & ((\Temporizador|s_count\(5) & (\Temporizador|s_count\(1) & !\Temporizador|s_count\(3))) # (!\Temporizador|s_count\(5) & (!\Temporizador|s_count\(1) & \Temporizador|s_count\(3))))) # 
-- (!\Temporizador|s_count\(2) & (\Temporizador|s_count\(3) $ (((!\Temporizador|s_count\(1)) # (!\Temporizador|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(1),
	datad => \Temporizador|s_count\(3),
	combout => \MuxforHEX4|Mux0~21_combout\);

-- Location: LCCOMB_X68_Y26_N28
\MuxforHEX4|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~22_combout\ = (\Temporizador|s_count\(5) & (\MuxforHEX4|Mux0~21_combout\ & (\Temporizador|s_count\(2) $ (\Temporizador|s_count\(4))))) # (!\Temporizador|s_count\(5) & (((\MuxforHEX4|Mux0~21_combout\) # (!\Temporizador|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(4),
	datad => \MuxforHEX4|Mux0~21_combout\,
	combout => \MuxforHEX4|Mux0~22_combout\);

-- Location: LCCOMB_X68_Y26_N0
\MuxforHEX4|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~20_combout\ = (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & \MuxforHEX4|Mux0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \MuxforHEX4|Mux0~22_combout\,
	combout => \MuxforHEX4|Mux0~20_combout\);

-- Location: LCCOMB_X70_Y23_N24
\ControlSystemUnit|en_3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlSystemUnit|en_3~combout\ = (\ControlSystemUnit|pState.TimeProcess~q\) # (\ControlSystemUnit|pState.Timer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \ControlSystemUnit|en_3~combout\);

-- Location: LCCOMB_X69_Y26_N6
\BinTOBCDTemporizador|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|LessThan1~0_combout\ = (!\Temporizador|s_count\(5) & (((!\Temporizador|s_count\(2) & !\Temporizador|s_count\(3))) # (!\Temporizador|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(4),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|LessThan1~0_combout\);

-- Location: LCCOMB_X70_Y26_N0
\BinTOBCDTemporizador|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|LessThan1~1_combout\ = (\BinTOBCDTemporizador|LessThan1~0_combout\ & !\Temporizador|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BinTOBCDTemporizador|LessThan1~0_combout\,
	datad => \Temporizador|s_count\(6),
	combout => \BinTOBCDTemporizador|LessThan1~1_combout\);

-- Location: LCCOMB_X70_Y26_N14
\MuxforHEX4|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~16_combout\ = (\MuxforHEX4|Mux0~14_combout\ & (\ControlSystemUnit|en_3~combout\)) # (!\MuxforHEX4|Mux0~14_combout\ & (((!\Temporizador|s_count\(7) & \BinTOBCDTemporizador|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~14_combout\,
	datab => \ControlSystemUnit|en_3~combout\,
	datac => \Temporizador|s_count\(7),
	datad => \BinTOBCDTemporizador|LessThan1~1_combout\,
	combout => \MuxforHEX4|Mux0~16_combout\);

-- Location: LCCOMB_X70_Y26_N20
\MuxforHEX4|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~17_combout\ = (\MuxforHEX4|Mux0~14_combout\ & ((\ControlSystemUnit|pState.Extra~q\) # (\MuxforHEX4|Mux0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \MuxforHEX4|Mux0~16_combout\,
	datac => \MuxforHEX4|Mux0~14_combout\,
	combout => \MuxforHEX4|Mux0~17_combout\);

-- Location: LCCOMB_X69_Y28_N28
\MuxforHEX4|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~15_combout\ = (\Temporizador|s_count\(3)) # (\ControlSystemUnit|pState.Extra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Temporizador|s_count\(3),
	datad => \ControlSystemUnit|pState.Extra~q\,
	combout => \MuxforHEX4|Mux0~15_combout\);

-- Location: LCCOMB_X69_Y28_N30
\MuxforHEX4|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~18_combout\ = (\MuxforHEX4|Mux0~17_combout\ & ((\MuxforHEX4|Mux0~16_combout\ & (\MuxforHEX4|Mux0~15_combout\)) # (!\MuxforHEX4|Mux0~16_combout\ & ((\TimeExtra|Counter|s_count\(3)))))) # (!\MuxforHEX4|Mux0~17_combout\ & 
-- (((!\MuxforHEX4|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~17_combout\,
	datab => \MuxforHEX4|Mux0~15_combout\,
	datac => \MuxforHEX4|Mux0~16_combout\,
	datad => \TimeExtra|Counter|s_count\(3),
	combout => \MuxforHEX4|Mux0~18_combout\);

-- Location: LCCOMB_X69_Y26_N8
\MuxforHEX4|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~combout\ = (\MuxforHEX4|Mux0~14_combout\ & (((\MuxforHEX4|Mux0~18_combout\)))) # (!\MuxforHEX4|Mux0~14_combout\ & ((\MuxforHEX4|Mux0~18_combout\ & ((\MuxforHEX4|Mux0~20_combout\))) # (!\MuxforHEX4|Mux0~18_combout\ & 
-- (\BinTOBCDTemporizador|outBCD~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD~3_combout\,
	datab => \MuxforHEX4|Mux0~14_combout\,
	datac => \MuxforHEX4|Mux0~20_combout\,
	datad => \MuxforHEX4|Mux0~18_combout\,
	combout => \MuxforHEX4|Mux0~combout\);

-- Location: LCCOMB_X68_Y26_N14
\MuxforHEX4|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~4_combout\ = (\Temporizador|s_count\(5) & ((\Temporizador|s_count\(1) & (\Temporizador|s_count\(2) $ (!\Temporizador|s_count\(4)))) # (!\Temporizador|s_count\(1) & (\Temporizador|s_count\(2) & !\Temporizador|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(4),
	combout => \MuxforHEX4|Mux1~4_combout\);

-- Location: LCCOMB_X68_Y26_N20
\MuxforHEX4|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~5_combout\ = (\Temporizador|s_count\(2) & (((\Temporizador|s_count\(5) & !\Temporizador|s_count\(4))))) # (!\Temporizador|s_count\(2) & (\Temporizador|s_count\(4) & ((!\Temporizador|s_count\(5)) # (!\Temporizador|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(4),
	combout => \MuxforHEX4|Mux1~5_combout\);

-- Location: LCCOMB_X68_Y26_N10
\MuxforHEX4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~3_combout\ = (\Temporizador|s_count\(3) & ((\MuxforHEX4|Mux1~5_combout\))) # (!\Temporizador|s_count\(3) & (\MuxforHEX4|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(3),
	datac => \MuxforHEX4|Mux1~4_combout\,
	datad => \MuxforHEX4|Mux1~5_combout\,
	combout => \MuxforHEX4|Mux1~3_combout\);

-- Location: LCCOMB_X68_Y26_N16
\MuxforHEX4|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~10_combout\ = (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & \MuxforHEX4|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \MuxforHEX4|Mux1~3_combout\,
	combout => \MuxforHEX4|Mux1~10_combout\);

-- Location: LCCOMB_X68_Y26_N26
\BinTOBCDTemporizador|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr0~4_combout\ = (\Temporizador|s_count\(1) & (!\Temporizador|s_count\(4) & (\Temporizador|s_count\(2) & \Temporizador|s_count\(3)))) # (!\Temporizador|s_count\(1) & (\Temporizador|s_count\(4) & (!\Temporizador|s_count\(2) & 
-- !\Temporizador|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datab => \Temporizador|s_count\(4),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|WideOr0~4_combout\);

-- Location: LCCOMB_X68_Y26_N4
\BinTOBCDTemporizador|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr0~combout\ = (\BinTOBCDTemporizador|WideOr0~4_combout\ & (!\Temporizador|s_count\(5) & (!\Temporizador|s_count\(7) & !\Temporizador|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|WideOr0~4_combout\,
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(6),
	combout => \BinTOBCDTemporizador|WideOr0~combout\);

-- Location: LCCOMB_X70_Y26_N26
\MuxforHEX4|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~8_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (\Temporizador|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ControlSystemUnit|pState.Extra~q\,
	datad => \Temporizador|s_count\(2),
	combout => \MuxforHEX4|Mux1~8_combout\);

-- Location: LCCOMB_X70_Y26_N24
\MuxforHEX4|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~9_combout\ = (\MuxforHEX4|Mux0~17_combout\ & ((\MuxforHEX4|Mux0~16_combout\ & (\MuxforHEX4|Mux1~8_combout\)) # (!\MuxforHEX4|Mux0~16_combout\ & ((\TimeExtra|Counter|s_count\(2)))))) # (!\MuxforHEX4|Mux0~17_combout\ & 
-- (!\MuxforHEX4|Mux0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~17_combout\,
	datab => \MuxforHEX4|Mux0~16_combout\,
	datac => \MuxforHEX4|Mux1~8_combout\,
	datad => \TimeExtra|Counter|s_count\(2),
	combout => \MuxforHEX4|Mux1~9_combout\);

-- Location: LCCOMB_X69_Y26_N24
\MuxforHEX4|Mux1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux1~combout\ = (\MuxforHEX4|Mux0~14_combout\ & (((\MuxforHEX4|Mux1~9_combout\)))) # (!\MuxforHEX4|Mux0~14_combout\ & ((\MuxforHEX4|Mux1~9_combout\ & (\MuxforHEX4|Mux1~10_combout\)) # (!\MuxforHEX4|Mux1~9_combout\ & 
-- ((\BinTOBCDTemporizador|WideOr0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux1~10_combout\,
	datab => \MuxforHEX4|Mux0~14_combout\,
	datac => \BinTOBCDTemporizador|WideOr0~combout\,
	datad => \MuxforHEX4|Mux1~9_combout\,
	combout => \MuxforHEX4|Mux1~combout\);

-- Location: LCCOMB_X67_Y29_N10
\MuxforHEX4|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~15_combout\ = ((\Temporizador|s_count\(2) & (!\Temporizador|s_count\(3) & \Temporizador|s_count\(5))) # (!\Temporizador|s_count\(2) & ((\Temporizador|s_count\(5)) # (!\Temporizador|s_count\(3))))) # (!\Temporizador|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(2),
	datac => \Temporizador|s_count\(3),
	datad => \Temporizador|s_count\(5),
	combout => \MuxforHEX4|Mux3~15_combout\);

-- Location: LCCOMB_X67_Y29_N4
\MuxforHEX4|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~16_combout\ = (\Temporizador|s_count\(0) & ((\MuxforHEX4|Mux3~15_combout\) # (!\Temporizador|s_count\(5)))) # (!\Temporizador|s_count\(0) & (!\Temporizador|s_count\(5) & \MuxforHEX4|Mux3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(0),
	datac => \Temporizador|s_count\(5),
	datad => \MuxforHEX4|Mux3~15_combout\,
	combout => \MuxforHEX4|Mux3~16_combout\);

-- Location: LCCOMB_X67_Y28_N30
\MuxforHEX4|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~14_combout\ = (!\Temporizador|s_count\(7) & (!\Temporizador|s_count\(6) & \MuxforHEX4|Mux3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(7),
	datac => \Temporizador|s_count\(6),
	datad => \MuxforHEX4|Mux3~16_combout\,
	combout => \MuxforHEX4|Mux3~14_combout\);

-- Location: LCCOMB_X68_Y26_N12
\BinTOBCDTemporizador|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr2~0_combout\ = (\Temporizador|s_count\(4) & (((!\Temporizador|s_count\(2) & !\Temporizador|s_count\(3))))) # (!\Temporizador|s_count\(4) & (\Temporizador|s_count\(3) & ((\Temporizador|s_count\(1)) # 
-- (\Temporizador|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(1),
	datab => \Temporizador|s_count\(4),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|WideOr2~0_combout\);

-- Location: LCCOMB_X68_Y26_N24
\MuxforHEX4|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~12_combout\ = (!\Temporizador|s_count\(7) & !\Temporizador|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(6),
	combout => \MuxforHEX4|Mux0~12_combout\);

-- Location: LCCOMB_X68_Y26_N22
\BinTOBCDTemporizador|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr2~1_combout\ = (\BinTOBCDTemporizador|WideOr2~0_combout\ & (!\Temporizador|s_count\(5) & (!\Temporizador|s_count\(0) & \MuxforHEX4|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|WideOr2~0_combout\,
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(0),
	datad => \MuxforHEX4|Mux0~12_combout\,
	combout => \BinTOBCDTemporizador|WideOr2~1_combout\);

-- Location: LCCOMB_X69_Y28_N4
\MuxforHEX4|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~12_combout\ = (\Temporizador|s_count\(0)) # (\ControlSystemUnit|pState.Extra~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Temporizador|s_count\(0),
	datad => \ControlSystemUnit|pState.Extra~q\,
	combout => \MuxforHEX4|Mux3~12_combout\);

-- Location: LCCOMB_X69_Y28_N6
\MuxforHEX4|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~13_combout\ = (\MuxforHEX4|Mux0~17_combout\ & ((\MuxforHEX4|Mux0~16_combout\ & (\MuxforHEX4|Mux3~12_combout\)) # (!\MuxforHEX4|Mux0~16_combout\ & ((\TimeExtra|Counter|s_count\(0)))))) # (!\MuxforHEX4|Mux0~17_combout\ & 
-- (((!\MuxforHEX4|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~17_combout\,
	datab => \MuxforHEX4|Mux3~12_combout\,
	datac => \MuxforHEX4|Mux0~16_combout\,
	datad => \TimeExtra|Counter|s_count\(0),
	combout => \MuxforHEX4|Mux3~13_combout\);

-- Location: LCCOMB_X68_Y26_N8
\MuxforHEX4|Mux3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux3~combout\ = (\MuxforHEX4|Mux0~14_combout\ & (((\MuxforHEX4|Mux3~13_combout\)))) # (!\MuxforHEX4|Mux0~14_combout\ & ((\MuxforHEX4|Mux3~13_combout\ & (\MuxforHEX4|Mux3~14_combout\)) # (!\MuxforHEX4|Mux3~13_combout\ & 
-- ((!\BinTOBCDTemporizador|WideOr2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux3~14_combout\,
	datab => \MuxforHEX4|Mux0~14_combout\,
	datac => \BinTOBCDTemporizador|WideOr2~1_combout\,
	datad => \MuxforHEX4|Mux3~13_combout\,
	combout => \MuxforHEX4|Mux3~combout\);

-- Location: LCCOMB_X70_Y26_N28
\MuxforHEX4|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~8_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (\Temporizador|s_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datac => \Temporizador|s_count\(1),
	combout => \MuxforHEX4|Mux2~8_combout\);

-- Location: LCCOMB_X70_Y26_N10
\MuxforHEX4|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~9_combout\ = (\MuxforHEX4|Mux0~17_combout\ & ((\MuxforHEX4|Mux0~16_combout\ & ((\MuxforHEX4|Mux2~8_combout\))) # (!\MuxforHEX4|Mux0~16_combout\ & (\TimeExtra|Counter|s_count\(1))))) # (!\MuxforHEX4|Mux0~17_combout\ & 
-- (((!\MuxforHEX4|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~17_combout\,
	datab => \TimeExtra|Counter|s_count\(1),
	datac => \MuxforHEX4|Mux0~16_combout\,
	datad => \MuxforHEX4|Mux2~8_combout\,
	combout => \MuxforHEX4|Mux2~9_combout\);

-- Location: LCCOMB_X69_Y26_N30
\BinTOBCDTemporizador|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr10~0_combout\ = (!\Temporizador|s_count\(4) & (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & \Temporizador|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|WideOr10~0_combout\);

-- Location: LCCOMB_X69_Y26_N22
\BinTOBCDTemporizador|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|Equal2~0_combout\ = (\BinTOBCDTemporizador|WideOr10~0_combout\ & (!\Temporizador|s_count\(5) & (\Temporizador|s_count\(2) & !\Temporizador|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|WideOr10~0_combout\,
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(2),
	datad => \Temporizador|s_count\(1),
	combout => \BinTOBCDTemporizador|Equal2~0_combout\);

-- Location: LCCOMB_X69_Y26_N26
\BinTOBCDTemporizador|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|Equal6~0_combout\ = (\Temporizador|s_count\(4) & (!\Temporizador|s_count\(5) & (!\Temporizador|s_count\(7) & !\Temporizador|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(6),
	combout => \BinTOBCDTemporizador|Equal6~0_combout\);

-- Location: LCCOMB_X69_Y26_N14
\BinTOBCDTemporizador|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|Equal6~1_combout\ = (!\Temporizador|s_count\(2) & (!\Temporizador|s_count\(1) & !\Temporizador|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datac => \Temporizador|s_count\(1),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|Equal6~1_combout\);

-- Location: LCCOMB_X70_Y26_N30
\BinTOBCDTemporizador|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|WideOr1~combout\ = (\BinTOBCDTemporizador|Equal2~0_combout\) # ((\BinTOBCDTemporizador|Equal6~0_combout\ & \BinTOBCDTemporizador|Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|Equal2~0_combout\,
	datac => \BinTOBCDTemporizador|Equal6~0_combout\,
	datad => \BinTOBCDTemporizador|Equal6~1_combout\,
	combout => \BinTOBCDTemporizador|WideOr1~combout\);

-- Location: LCCOMB_X69_Y26_N12
\MuxforHEX4|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~11_combout\ = (\Temporizador|s_count\(4) & (\Temporizador|s_count\(5) $ ((\Temporizador|s_count\(1))))) # (!\Temporizador|s_count\(4) & (\Temporizador|s_count\(5) & (\Temporizador|s_count\(1) $ (!\Temporizador|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(1),
	datad => \Temporizador|s_count\(3),
	combout => \MuxforHEX4|Mux2~11_combout\);

-- Location: LCCOMB_X69_Y26_N2
\MuxforHEX4|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~12_combout\ = (\MuxforHEX4|Mux2~11_combout\ & ((\Temporizador|s_count\(3) $ (\Temporizador|s_count\(2))) # (!\Temporizador|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(3),
	datac => \Temporizador|s_count\(2),
	datad => \MuxforHEX4|Mux2~11_combout\,
	combout => \MuxforHEX4|Mux2~12_combout\);

-- Location: LCCOMB_X70_Y26_N18
\MuxforHEX4|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~10_combout\ = (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & \MuxforHEX4|Mux2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \MuxforHEX4|Mux2~12_combout\,
	combout => \MuxforHEX4|Mux2~10_combout\);

-- Location: LCCOMB_X70_Y26_N8
\MuxforHEX4|Mux2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux2~combout\ = (\MuxforHEX4|Mux2~9_combout\ & ((\MuxforHEX4|Mux0~14_combout\) # ((\MuxforHEX4|Mux2~10_combout\)))) # (!\MuxforHEX4|Mux2~9_combout\ & (!\MuxforHEX4|Mux0~14_combout\ & (\BinTOBCDTemporizador|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux2~9_combout\,
	datab => \MuxforHEX4|Mux0~14_combout\,
	datac => \BinTOBCDTemporizador|WideOr1~combout\,
	datad => \MuxforHEX4|Mux2~10_combout\,
	combout => \MuxforHEX4|Mux2~combout\);

-- Location: LCCOMB_X76_Y4_N24
\Bin7SegHEX4|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~0_combout\ = (\MuxforHEX4|Mux2~combout\ & (\MuxforHEX4|Mux0~combout\)) # (!\MuxforHEX4|Mux2~combout\ & ((\MuxforHEX4|Mux1~combout\ & ((!\MuxforHEX4|Mux3~combout\))) # (!\MuxforHEX4|Mux1~combout\ & (!\MuxforHEX4|Mux0~combout\ & 
-- \MuxforHEX4|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~0_combout\);

-- Location: LCCOMB_X76_Y4_N6
\Bin7SegHEX4|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~1_combout\ = (\MuxforHEX4|Mux0~combout\ & ((\MuxforHEX4|Mux2~combout\) # ((\MuxforHEX4|Mux1~combout\ & !\MuxforHEX4|Mux3~combout\)))) # (!\MuxforHEX4|Mux0~combout\ & (\MuxforHEX4|Mux1~combout\ & (\MuxforHEX4|Mux3~combout\ $ 
-- (\MuxforHEX4|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~1_combout\);

-- Location: LCCOMB_X76_Y4_N20
\Bin7SegHEX4|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~2_combout\ = (\MuxforHEX4|Mux1~combout\ & (\MuxforHEX4|Mux0~combout\ & (\MuxforHEX4|Mux3~combout\))) # (!\MuxforHEX4|Mux1~combout\ & (\MuxforHEX4|Mux2~combout\ & ((\MuxforHEX4|Mux0~combout\) # (!\MuxforHEX4|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~2_combout\);

-- Location: LCCOMB_X76_Y4_N18
\Bin7SegHEX4|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~3_combout\ = (\MuxforHEX4|Mux3~combout\ & (\MuxforHEX4|Mux1~combout\ $ (((!\MuxforHEX4|Mux0~combout\ & !\MuxforHEX4|Mux2~combout\))))) # (!\MuxforHEX4|Mux3~combout\ & ((\MuxforHEX4|Mux0~combout\ & ((\MuxforHEX4|Mux2~combout\))) # 
-- (!\MuxforHEX4|Mux0~combout\ & (\MuxforHEX4|Mux1~combout\ & !\MuxforHEX4|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~3_combout\);

-- Location: LCCOMB_X76_Y4_N12
\Bin7SegHEX4|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~4_combout\ = (\MuxforHEX4|Mux1~combout\ & ((\MuxforHEX4|Mux2~combout\ & ((\MuxforHEX4|Mux3~combout\))) # (!\MuxforHEX4|Mux2~combout\ & (!\MuxforHEX4|Mux0~combout\)))) # (!\MuxforHEX4|Mux1~combout\ & (\MuxforHEX4|Mux3~combout\ $ 
-- (((\MuxforHEX4|Mux0~combout\ & \MuxforHEX4|Mux2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~4_combout\);

-- Location: LCCOMB_X76_Y4_N10
\Bin7SegHEX4|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~5_combout\ = (\MuxforHEX4|Mux1~combout\ & ((\MuxforHEX4|Mux3~combout\ & ((\MuxforHEX4|Mux2~combout\))) # (!\MuxforHEX4|Mux3~combout\ & (\MuxforHEX4|Mux0~combout\)))) # (!\MuxforHEX4|Mux1~combout\ & ((\MuxforHEX4|Mux3~combout\ & 
-- (!\MuxforHEX4|Mux0~combout\)) # (!\MuxforHEX4|Mux3~combout\ & ((\MuxforHEX4|Mux2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~5_combout\);

-- Location: LCCOMB_X76_Y4_N4
\Bin7SegHEX4|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX4|decOut_n~6_combout\ = (\MuxforHEX4|Mux3~combout\ & ((\MuxforHEX4|Mux0~combout\) # (\MuxforHEX4|Mux1~combout\ $ (\MuxforHEX4|Mux2~combout\)))) # (!\MuxforHEX4|Mux3~combout\ & ((\MuxforHEX4|Mux1~combout\) # (\MuxforHEX4|Mux0~combout\ $ 
-- (\MuxforHEX4|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxforHEX4|Mux0~combout\,
	datab => \MuxforHEX4|Mux1~combout\,
	datac => \MuxforHEX4|Mux3~combout\,
	datad => \MuxforHEX4|Mux2~combout\,
	combout => \Bin7SegHEX4|decOut_n~6_combout\);

-- Location: LCCOMB_X69_Y26_N20
\BinTOBCDTemporizador|outBCD_2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD_2~19_combout\ = (\Temporizador|s_count\(2) & ((\Temporizador|s_count\(5) & ((!\Temporizador|s_count\(3)))) # (!\Temporizador|s_count\(5) & (\Temporizador|s_count\(1) & \Temporizador|s_count\(3))))) # 
-- (!\Temporizador|s_count\(2) & ((\Temporizador|s_count\(5) & ((\Temporizador|s_count\(1)) # (\Temporizador|s_count\(3)))) # (!\Temporizador|s_count\(5) & ((!\Temporizador|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(1),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|outBCD_2~19_combout\);

-- Location: LCCOMB_X69_Y26_N18
\BinTOBCDTemporizador|outBCD_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD_2~20_combout\ = (\Temporizador|s_count\(4) & (\BinTOBCDTemporizador|outBCD_2~19_combout\)) # (!\Temporizador|s_count\(4) & (((!\Temporizador|s_count\(3)) # (!\Temporizador|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \BinTOBCDTemporizador|outBCD_2~19_combout\,
	datac => \Temporizador|s_count\(5),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|outBCD_2~20_combout\);

-- Location: LCCOMB_X70_Y26_N12
\BinTOBCDTemporizador|outBCD_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD_2~18_combout\ = (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & \BinTOBCDTemporizador|outBCD_2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \BinTOBCDTemporizador|outBCD_2~20_combout\,
	combout => \BinTOBCDTemporizador|outBCD_2~18_combout\);

-- Location: LCCOMB_X69_Y26_N4
\MuxforHEX4|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~13_combout\ = (\MuxforHEX4|Mux0~12_combout\ & (((!\Temporizador|s_count\(4) & !\Temporizador|s_count\(3))) # (!\Temporizador|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \MuxforHEX4|Mux0~12_combout\,
	datac => \Temporizador|s_count\(5),
	datad => \Temporizador|s_count\(3),
	combout => \MuxforHEX4|Mux0~13_combout\);

-- Location: LCCOMB_X69_Y26_N28
\BinTOBCDTemporizador|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|LessThan5~0_combout\ = (\Temporizador|s_count\(2) & (\Temporizador|s_count\(5) & (\Temporizador|s_count\(4) & \Temporizador|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(2),
	datab => \Temporizador|s_count\(5),
	datac => \Temporizador|s_count\(4),
	datad => \Temporizador|s_count\(3),
	combout => \BinTOBCDTemporizador|LessThan5~0_combout\);

-- Location: LCCOMB_X70_Y26_N4
\MuxforHEX4|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX4|Mux0~19_combout\ = (!\Temporizador|s_count\(6) & (!\Temporizador|s_count\(7) & !\BinTOBCDTemporizador|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Temporizador|s_count\(6),
	datac => \Temporizador|s_count\(7),
	datad => \BinTOBCDTemporizador|LessThan5~0_combout\,
	combout => \MuxforHEX4|Mux0~19_combout\);

-- Location: LCCOMB_X69_Y26_N16
\BinTOBCDTemporizador|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|LessThan4~0_combout\ = ((\BinTOBCDTemporizador|Equal6~1_combout\) # (!\Temporizador|s_count\(5))) # (!\Temporizador|s_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Temporizador|s_count\(4),
	datab => \Temporizador|s_count\(5),
	datac => \BinTOBCDTemporizador|Equal6~1_combout\,
	combout => \BinTOBCDTemporizador|LessThan4~0_combout\);

-- Location: LCCOMB_X70_Y26_N16
\BinTOBCDTemporizador|outBCD_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD_2~17_combout\ = (\BinTOBCDTemporizador|LessThan4~0_combout\ & (!\BinTOBCDTemporizador|LessThan1~0_combout\ & (!\Temporizador|s_count\(7) & !\Temporizador|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|LessThan4~0_combout\,
	datab => \BinTOBCDTemporizador|LessThan1~0_combout\,
	datac => \Temporizador|s_count\(7),
	datad => \Temporizador|s_count\(6),
	combout => \BinTOBCDTemporizador|outBCD_2~17_combout\);

-- Location: LCCOMB_X70_Y26_N22
\Bin7SegHEX5|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~17_combout\ = ((\BinTOBCDTemporizador|outBCD_2~18_combout\ & ((\BinTOBCDTemporizador|outBCD_2~17_combout\) # (!\MuxforHEX4|Mux0~13_combout\))) # (!\BinTOBCDTemporizador|outBCD_2~18_combout\ & (\MuxforHEX4|Mux0~13_combout\))) # 
-- (!\MuxforHEX4|Mux0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \MuxforHEX4|Mux0~13_combout\,
	datac => \MuxforHEX4|Mux0~19_combout\,
	datad => \BinTOBCDTemporizador|outBCD_2~17_combout\,
	combout => \Bin7SegHEX5|decOut_n~17_combout\);

-- Location: LCCOMB_X70_Y23_N14
\Bin7SegHEX5|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~4_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (((!\BinTOBCDTemporizador|LessThan0~0_combout\ & !\Bin7SegHEX5|decOut_n~17_combout\)) # (!\ControlSystemUnit|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \ControlSystemUnit|en_3~combout\,
	datac => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datad => \Bin7SegHEX5|decOut_n~17_combout\,
	combout => \Bin7SegHEX5|decOut_n~4_combout\);

-- Location: LCCOMB_X70_Y23_N30
\Bin7SegHEX5|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~6_combout\ = (\ControlSystemUnit|pState.Extra~q\ & (!\MuxforHEX4|Mux0~13_combout\)) # (!\ControlSystemUnit|pState.Extra~q\ & (\MuxforHEX4|Mux0~13_combout\ & ((\ControlSystemUnit|pState.TimeProcess~q\) # 
-- (\ControlSystemUnit|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \MuxforHEX4|Mux0~13_combout\,
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \Bin7SegHEX5|decOut_n~6_combout\);

-- Location: LCCOMB_X70_Y26_N6
\BinTOBCDTemporizador|outBCD_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTemporizador|outBCD_2~16_combout\ = ((\MuxforHEX4|Mux0~13_combout\ & \BinTOBCDTemporizador|outBCD_2~17_combout\)) # (!\MuxforHEX4|Mux0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MuxforHEX4|Mux0~13_combout\,
	datac => \MuxforHEX4|Mux0~19_combout\,
	datad => \BinTOBCDTemporizador|outBCD_2~17_combout\,
	combout => \BinTOBCDTemporizador|outBCD_2~16_combout\);

-- Location: LCCOMB_X70_Y23_N8
\Bin7SegHEX5|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~5_combout\ = (!\BinTOBCDTemporizador|LessThan0~0_combout\ & (\BinTOBCDTemporizador|outBCD_2~18_combout\ $ (\BinTOBCDTemporizador|outBCD_2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datac => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datad => \BinTOBCDTemporizador|outBCD_2~16_combout\,
	combout => \Bin7SegHEX5|decOut_n~5_combout\);

-- Location: LCCOMB_X70_Y23_N28
\Bin7SegHEX5|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~7_combout\ = (\Bin7SegHEX5|decOut_n~6_combout\ & (((!\MuxforHEX4|Mux0~13_combout\)))) # (!\Bin7SegHEX5|decOut_n~6_combout\ & ((\Bin7SegHEX5|decOut_n~5_combout\) # ((\MuxforHEX4|Mux0~13_combout\) # 
-- (!\ControlSystemUnit|en_3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegHEX5|decOut_n~6_combout\,
	datab => \Bin7SegHEX5|decOut_n~5_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~7_combout\);

-- Location: LCCOMB_X70_Y23_N4
\MuxforHEX5|muxOut[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxforHEX5|muxOut[1]~2_combout\ = (\BinTOBCDTemporizador|outBCD_2~16_combout\ & (((!\ControlSystemUnit|pState.TimeProcess~q\ & !\ControlSystemUnit|pState.Timer~q\)) # (!\BinTOBCDTemporizador|LessThan0~0_combout\))) # 
-- (!\BinTOBCDTemporizador|outBCD_2~16_combout\ & (((!\ControlSystemUnit|pState.TimeProcess~q\ & !\ControlSystemUnit|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~16_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \ControlSystemUnit|pState.TimeProcess~q\,
	datad => \ControlSystemUnit|pState.Timer~q\,
	combout => \MuxforHEX5|muxOut[1]~2_combout\);

-- Location: LCCOMB_X70_Y23_N22
\Bin7SegHEX5|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~8_combout\ = ((\MuxforHEX4|Mux0~13_combout\ & ((\BinTOBCDTemporizador|LessThan0~0_combout\) # (!\BinTOBCDTemporizador|outBCD_2~18_combout\)))) # (!\ControlSystemUnit|en_3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~8_combout\);

-- Location: LCCOMB_X70_Y23_N16
\Bin7SegHEX5|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~9_combout\ = (\ControlSystemUnit|pState.Extra~q\) # ((\MuxforHEX5|muxOut[1]~2_combout\ & \Bin7SegHEX5|decOut_n~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \MuxforHEX5|muxOut[1]~2_combout\,
	datac => \Bin7SegHEX5|decOut_n~8_combout\,
	combout => \Bin7SegHEX5|decOut_n~9_combout\);

-- Location: LCCOMB_X70_Y23_N2
\Bin7SegHEX5|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~10_combout\ = (\ControlSystemUnit|en_3~combout\ & (\MuxforHEX4|Mux0~13_combout\ $ (((\BinTOBCDTemporizador|LessThan0~0_combout\) # (!\BinTOBCDTemporizador|outBCD_2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~10_combout\);

-- Location: LCCOMB_X70_Y23_N12
\Bin7SegHEX5|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~11_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (((\Bin7SegHEX5|decOut_n~10_combout\ & !\MuxforHEX5|muxOut[1]~2_combout\)) # (!\ControlSystemUnit|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \Bin7SegHEX5|decOut_n~10_combout\,
	datac => \MuxforHEX5|muxOut[1]~2_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~11_combout\);

-- Location: LCCOMB_X70_Y23_N18
\Bin7SegHEX5|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~12_combout\ = (\ControlSystemUnit|pState.Extra~q\) # (((\BinTOBCDTemporizador|outBCD_2~18_combout\ & !\BinTOBCDTemporizador|LessThan0~0_combout\)) # (!\ControlSystemUnit|en_3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \ControlSystemUnit|pState.Extra~q\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~12_combout\);

-- Location: LCCOMB_X70_Y23_N0
\Bin7SegHEX5|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~13_combout\ = (\Bin7SegHEX5|decOut_n~12_combout\) # ((!\MuxforHEX5|muxOut[1]~2_combout\ & ((!\ControlSystemUnit|en_3~combout\) # (!\MuxforHEX4|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegHEX5|decOut_n~12_combout\,
	datab => \MuxforHEX4|Mux0~13_combout\,
	datac => \MuxforHEX5|muxOut[1]~2_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~13_combout\);

-- Location: LCCOMB_X70_Y23_N6
\Bin7SegHEX5|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~14_combout\ = (\ControlSystemUnit|en_3~combout\ & (\MuxforHEX4|Mux0~13_combout\ $ (((\BinTOBCDTemporizador|LessThan0~0_combout\) # (!\BinTOBCDTemporizador|outBCD_2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \ControlSystemUnit|en_3~combout\,
	combout => \Bin7SegHEX5|decOut_n~14_combout\);

-- Location: LCCOMB_X70_Y23_N20
\Bin7SegHEX5|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~15_combout\ = (\ControlSystemUnit|pState.Extra~q\) # ((\Bin7SegHEX5|decOut_n~14_combout\ & ((\MuxforHEX4|Mux0~13_combout\))) # (!\Bin7SegHEX5|decOut_n~14_combout\ & (\MuxforHEX5|muxOut[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.Extra~q\,
	datab => \MuxforHEX5|muxOut[1]~2_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \Bin7SegHEX5|decOut_n~14_combout\,
	combout => \Bin7SegHEX5|decOut_n~15_combout\);

-- Location: LCCOMB_X70_Y23_N10
\Bin7SegHEX5|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~16_combout\ = (\BinTOBCDTemporizador|LessThan0~0_combout\ & (((!\MuxforHEX4|Mux0~13_combout\)))) # (!\BinTOBCDTemporizador|LessThan0~0_combout\ & ((\MuxforHEX4|Mux0~13_combout\ & ((\BinTOBCDTemporizador|outBCD_2~16_combout\))) # 
-- (!\MuxforHEX4|Mux0~13_combout\ & ((!\BinTOBCDTemporizador|outBCD_2~16_combout\) # (!\BinTOBCDTemporizador|outBCD_2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTemporizador|outBCD_2~18_combout\,
	datab => \BinTOBCDTemporizador|LessThan0~0_combout\,
	datac => \MuxforHEX4|Mux0~13_combout\,
	datad => \BinTOBCDTemporizador|outBCD_2~16_combout\,
	combout => \Bin7SegHEX5|decOut_n~16_combout\);

-- Location: LCCOMB_X70_Y23_N26
\Bin7SegHEX5|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX5|decOut_n~18_combout\ = (\ControlSystemUnit|pState.Extra~q\) # ((!\Bin7SegHEX5|decOut_n~16_combout\ & ((\ControlSystemUnit|pState.TimeProcess~q\) # (\ControlSystemUnit|pState.Timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlSystemUnit|pState.TimeProcess~q\,
	datab => \ControlSystemUnit|pState.Timer~q\,
	datac => \ControlSystemUnit|pState.Extra~q\,
	datad => \Bin7SegHEX5|decOut_n~16_combout\,
	combout => \Bin7SegHEX5|decOut_n~18_combout\);

-- Location: LCCOMB_X72_Y27_N22
\BinTOBCDTimerAuxFSM|outBCD[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[1]~56_combout\ = (\TimerAuxFSM|s_count\(4) & (!\TimerAuxFSM|s_count\(2) & (\TimerAuxFSM|s_count\(1) $ (\TimerAuxFSM|s_count\(5))))) # (!\TimerAuxFSM|s_count\(4) & ((\TimerAuxFSM|s_count\(1) & ((\TimerAuxFSM|s_count\(5)))) # 
-- (!\TimerAuxFSM|s_count\(1) & (\TimerAuxFSM|s_count\(2) & !\TimerAuxFSM|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(5),
	combout => \BinTOBCDTimerAuxFSM|outBCD[1]~56_combout\);

-- Location: LCCOMB_X72_Y27_N8
\BinTOBCDTimerAuxFSM|outBCD[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[1]~55_combout\ = (\TimerAuxFSM|s_count\(1) & (!\TimerAuxFSM|s_count\(5) & ((\TimerAuxFSM|s_count\(2)) # (!\TimerAuxFSM|s_count\(4))))) # (!\TimerAuxFSM|s_count\(1) & (\TimerAuxFSM|s_count\(5) $ (((\TimerAuxFSM|s_count\(4) & 
-- !\TimerAuxFSM|s_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(5),
	combout => \BinTOBCDTimerAuxFSM|outBCD[1]~55_combout\);

-- Location: LCCOMB_X72_Y27_N20
\BinTOBCDTimerAuxFSM|outBCD[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[1]~24_combout\ = (\TimerAuxFSM|s_count\(3) & (\BinTOBCDTimerAuxFSM|outBCD[1]~56_combout\)) # (!\TimerAuxFSM|s_count\(3) & ((\BinTOBCDTimerAuxFSM|outBCD[1]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~56_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[1]~55_combout\,
	datac => \TimerAuxFSM|s_count\(3),
	combout => \BinTOBCDTimerAuxFSM|outBCD[1]~24_combout\);

-- Location: LCCOMB_X72_Y27_N2
\BinTOBCDTimerAuxFSM|outBCD[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[1]~24_combout\ & (!\TimerAuxFSM|s_count\(7) & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinTOBCDTimerAuxFSM|outBCD[1]~24_combout\,
	datac => \TimerAuxFSM|s_count\(7),
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\);

-- Location: LCCOMB_X72_Y27_N30
\BinTOBCDTimerAuxFSM|outBCD[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[3]~49_combout\ = (\TimerAuxFSM|s_count\(5) & (!\TimerAuxFSM|s_count\(3) & (\TimerAuxFSM|s_count\(1) & \TimerAuxFSM|s_count\(2)))) # (!\TimerAuxFSM|s_count\(5) & (\TimerAuxFSM|s_count\(3) & (!\TimerAuxFSM|s_count\(1) & 
-- !\TimerAuxFSM|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(3),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(2),
	combout => \BinTOBCDTimerAuxFSM|outBCD[3]~49_combout\);

-- Location: LCCOMB_X72_Y27_N4
\BinTOBCDTimerAuxFSM|outBCD[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[3]~50_combout\ = (\TimerAuxFSM|s_count\(5) & (!\TimerAuxFSM|s_count\(2) & (\TimerAuxFSM|s_count\(3) $ (!\TimerAuxFSM|s_count\(1))))) # (!\TimerAuxFSM|s_count\(5) & ((\TimerAuxFSM|s_count\(3) & (!\TimerAuxFSM|s_count\(1) & 
-- \TimerAuxFSM|s_count\(2))) # (!\TimerAuxFSM|s_count\(3) & (\TimerAuxFSM|s_count\(1) & !\TimerAuxFSM|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(3),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(2),
	combout => \BinTOBCDTimerAuxFSM|outBCD[3]~50_combout\);

-- Location: LCCOMB_X72_Y27_N10
\BinTOBCDTimerAuxFSM|outBCD[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[3]~48_combout\ = (\TimerAuxFSM|s_count\(4) & ((\BinTOBCDTimerAuxFSM|outBCD[3]~50_combout\))) # (!\TimerAuxFSM|s_count\(4) & (\BinTOBCDTimerAuxFSM|outBCD[3]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[3]~49_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[3]~50_combout\,
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|outBCD[3]~48_combout\);

-- Location: LCCOMB_X72_Y27_N24
\BinTOBCDTimerAuxFSM|outBCD[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[3]~48_combout\ & (!\TimerAuxFSM|s_count\(7) & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[3]~48_combout\,
	datac => \TimerAuxFSM|s_count\(7),
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\);

-- Location: LCCOMB_X72_Y27_N26
\BinTOBCDTimerAuxFSM|outBCD[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[2]~39_combout\ = (\TimerAuxFSM|s_count\(4) & (!\TimerAuxFSM|s_count\(2) & ((!\TimerAuxFSM|s_count\(5)) # (!\TimerAuxFSM|s_count\(1))))) # (!\TimerAuxFSM|s_count\(4) & (\TimerAuxFSM|s_count\(2) & ((\TimerAuxFSM|s_count\(1)) # 
-- (\TimerAuxFSM|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(5),
	combout => \BinTOBCDTimerAuxFSM|outBCD[2]~39_combout\);

-- Location: LCCOMB_X72_Y27_N28
\BinTOBCDTimerAuxFSM|outBCD[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[2]~38_combout\ = (\TimerAuxFSM|s_count\(4) & ((\TimerAuxFSM|s_count\(2) & (\TimerAuxFSM|s_count\(1) & \TimerAuxFSM|s_count\(5))) # (!\TimerAuxFSM|s_count\(2) & (!\TimerAuxFSM|s_count\(1) & !\TimerAuxFSM|s_count\(5))))) # 
-- (!\TimerAuxFSM|s_count\(4) & (\TimerAuxFSM|s_count\(2) $ (((\TimerAuxFSM|s_count\(1) & \TimerAuxFSM|s_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(5),
	combout => \BinTOBCDTimerAuxFSM|outBCD[2]~38_combout\);

-- Location: LCCOMB_X72_Y27_N0
\BinTOBCDTimerAuxFSM|outBCD[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[2]~37_combout\ = (\TimerAuxFSM|s_count\(3) & (\BinTOBCDTimerAuxFSM|outBCD[2]~39_combout\)) # (!\TimerAuxFSM|s_count\(3) & ((\BinTOBCDTimerAuxFSM|outBCD[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[2]~39_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[2]~38_combout\,
	datac => \TimerAuxFSM|s_count\(3),
	combout => \BinTOBCDTimerAuxFSM|outBCD[2]~37_combout\);

-- Location: LCCOMB_X72_Y27_N18
\BinTOBCDTimerAuxFSM|outBCD[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[2]~37_combout\ & (!\TimerAuxFSM|s_count\(7) & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinTOBCDTimerAuxFSM|outBCD[2]~37_combout\,
	datac => \TimerAuxFSM|s_count\(7),
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\);

-- Location: LCCOMB_X72_Y28_N30
\BinTOBCDTimerAuxFSM|outBCD[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[0]~9_combout\ = (((!\TimerAuxFSM|s_count\(4)) # (!\TimerAuxFSM|s_count\(3))) # (!\TimerAuxFSM|s_count\(2))) # (!\TimerAuxFSM|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(3),
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|outBCD[0]~9_combout\);

-- Location: LCCOMB_X72_Y28_N4
\BinTOBCDTimerAuxFSM|outBCD[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ = (!\TimerAuxFSM|s_count\(7) & (\TimerAuxFSM|s_count\(0) & (\BinTOBCDTimerAuxFSM|outBCD[0]~9_combout\ & !\TimerAuxFSM|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(7),
	datab => \TimerAuxFSM|s_count\(0),
	datac => \BinTOBCDTimerAuxFSM|outBCD[0]~9_combout\,
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\);

-- Location: LCCOMB_X68_Y27_N12
\Bin7SegHEX6|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~25_combout\ = (!\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & ((!\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\))) # (!\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & 
-- (!\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ & \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~25_combout\);

-- Location: LCCOMB_X68_Y27_N30
\Bin7SegHEX6|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~26_combout\ = (\Bin7SegHEX6|decOut_n~25_combout\) # (((\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\)) # (!\TimerAuxFSM|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegHEX6|decOut_n~25_combout\,
	datab => \TimerAuxFSM|Add0~0_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	combout => \Bin7SegHEX6|decOut_n~26_combout\);

-- Location: LCCOMB_X68_Y27_N28
\Bin7SegHEX6|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~27_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\) # ((\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & !\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\)))) # 
-- (!\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ $ (\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~27_combout\);

-- Location: LCCOMB_X68_Y27_N6
\Bin7SegHEX6|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~32_combout\ = (\Bin7SegHEX6|decOut_n~27_combout\) # ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegHEX6|decOut_n~27_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~32_combout\);

-- Location: LCCOMB_X73_Y28_N28
\Bin7SegHEX6|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~38_combout\ = (\TimerAuxFSM|s_count\(4) & (\TimerAuxFSM|s_count\(2) & (\TimerAuxFSM|s_count\(5) $ (\TimerAuxFSM|s_count\(1))))) # (!\TimerAuxFSM|s_count\(4) & (\TimerAuxFSM|s_count\(2) $ (((\TimerAuxFSM|s_count\(5)) # 
-- (\TimerAuxFSM|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(4),
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(2),
	combout => \Bin7SegHEX6|decOut_n~38_combout\);

-- Location: LCCOMB_X73_Y28_N26
\Bin7SegHEX6|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~39_combout\ = (\Bin7SegHEX6|decOut_n~38_combout\ & (\TimerAuxFSM|s_count\(5) $ (\TimerAuxFSM|s_count\(1) $ (\TimerAuxFSM|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \Bin7SegHEX6|decOut_n~38_combout\,
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(3),
	combout => \Bin7SegHEX6|decOut_n~39_combout\);

-- Location: LCCOMB_X73_Y28_N10
\Bin7SegHEX6|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~13_combout\ = (\Bin7SegHEX6|decOut_n~39_combout\ & (!\TimerAuxFSM|s_count\(0) & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegHEX6|decOut_n~39_combout\,
	datab => \TimerAuxFSM|s_count\(0),
	datac => \TimerAuxFSM|s_count\(6),
	combout => \Bin7SegHEX6|decOut_n~13_combout\);

-- Location: LCCOMB_X72_Y28_N6
\Bin7SegHEX6|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~37_combout\ = (\BreadBakerFSM|s_currentState.TFim~q\) # ((\BreadBakerFSM|s_currentState.TExtra~q\) # ((!\TimerAuxFSM|s_count\(7) & \Bin7SegHEX6|decOut_n~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(7),
	datab => \Bin7SegHEX6|decOut_n~13_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~37_combout\);

-- Location: LCCOMB_X68_Y27_N18
\Bin7SegHEX6|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~28_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ $ (((!\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & !\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\))))) # 
-- (!\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\)) # (!\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & (!\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ & 
-- \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~28_combout\);

-- Location: LCCOMB_X68_Y27_N8
\Bin7SegHEX6|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~33_combout\ = (\Bin7SegHEX6|decOut_n~28_combout\) # ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegHEX6|decOut_n~28_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~33_combout\);

-- Location: LCCOMB_X68_Y27_N16
\Bin7SegHEX6|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~29_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ $ (((\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\ & !\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\))))) # 
-- (!\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & (!\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\)) # (!\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~29_combout\);

-- Location: LCCOMB_X68_Y27_N26
\Bin7SegHEX6|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~34_combout\ = (\Bin7SegHEX6|decOut_n~29_combout\) # ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegHEX6|decOut_n~29_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~34_combout\);

-- Location: LCCOMB_X68_Y27_N22
\Bin7SegHEX6|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~30_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\)) # (!\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & 
-- ((\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\))))) # (!\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & ((!\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\))) # (!\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & 
-- (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~30_combout\);

-- Location: LCCOMB_X68_Y27_N24
\Bin7SegHEX6|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~35_combout\ = (\Bin7SegHEX6|decOut_n~30_combout\) # ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegHEX6|decOut_n~30_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~35_combout\);

-- Location: LCCOMB_X68_Y27_N20
\Bin7SegHEX6|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~31_combout\ = (\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\) # (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ $ (\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\)))) # 
-- (!\BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\) # (\BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\ $ (\BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[1]~60_combout\,
	datab => \BinTOBCDTimerAuxFSM|outBCD[3]~61_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD[2]~62_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD[0]~63_combout\,
	combout => \Bin7SegHEX6|decOut_n~31_combout\);

-- Location: LCCOMB_X68_Y27_N10
\Bin7SegHEX6|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX6|decOut_n~36_combout\ = ((\BreadBakerFSM|s_currentState.TFim~q\) # (\BreadBakerFSM|s_currentState.TExtra~q\)) # (!\Bin7SegHEX6|decOut_n~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegHEX6|decOut_n~31_combout\,
	datac => \BreadBakerFSM|s_currentState.TFim~q\,
	datad => \BreadBakerFSM|s_currentState.TExtra~q\,
	combout => \Bin7SegHEX6|decOut_n~36_combout\);

-- Location: LCCOMB_X72_Y27_N16
\BinTOBCDTimerAuxFSM|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|Equal6~0_combout\ = (!\TimerAuxFSM|s_count\(1) & !\TimerAuxFSM|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerAuxFSM|s_count\(1),
	datad => \TimerAuxFSM|s_count\(2),
	combout => \BinTOBCDTimerAuxFSM|Equal6~0_combout\);

-- Location: LCCOMB_X72_Y27_N12
\BinTOBCDTimerAuxFSM|outBCD[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\ = (\TimerAuxFSM|s_count\(5) & (\TimerAuxFSM|s_count\(4) & ((\TimerAuxFSM|s_count\(3)) # (!\BinTOBCDTimerAuxFSM|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \BinTOBCDTimerAuxFSM|Equal6~0_combout\,
	datac => \TimerAuxFSM|s_count\(3),
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\);

-- Location: LCCOMB_X72_Y24_N20
\BinTOBCDTimerAuxFSM|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|Equal2~0_combout\ = (!\TimerAuxFSM|s_count\(7) & !\TimerAuxFSM|s_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(7),
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|Equal2~0_combout\);

-- Location: LCCOMB_X72_Y28_N26
\BinTOBCDTimerAuxFSM|outBCD[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\ = (\TimerAuxFSM|s_count\(4) & ((\TimerAuxFSM|s_count\(2)) # (\TimerAuxFSM|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(4),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(3),
	combout => \BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\);

-- Location: LCCOMB_X72_Y24_N26
\BinTOBCDTimerAuxFSM|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan1~0_combout\ = (!\TimerAuxFSM|s_count\(5) & (!\BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\ & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(5),
	datac => \BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\,
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|LessThan1~0_combout\);

-- Location: LCCOMB_X72_Y28_N8
\BinTOBCDTimerAuxFSM|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan0~2_combout\ = (\TimerAuxFSM|Equal0~0_combout\ & (((!\TimerAuxFSM|s_count\(2) & !\TimerAuxFSM|s_count\(1))) # (!\TimerAuxFSM|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|Equal0~0_combout\,
	datab => \TimerAuxFSM|s_count\(3),
	datac => \TimerAuxFSM|s_count\(2),
	datad => \TimerAuxFSM|s_count\(1),
	combout => \BinTOBCDTimerAuxFSM|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y24_N24
\BinTOBCDTimerAuxFSM|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan5~0_combout\ = (!\BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\ & !\BinTOBCDTimerAuxFSM|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\,
	datad => \BinTOBCDTimerAuxFSM|LessThan0~2_combout\,
	combout => \BinTOBCDTimerAuxFSM|LessThan5~0_combout\);

-- Location: LCCOMB_X72_Y28_N0
\BinTOBCDTimerAuxFSM|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|Equal11~0_combout\ = (\TimerAuxFSM|s_count\(1) & \TimerAuxFSM|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerAuxFSM|s_count\(1),
	datac => \TimerAuxFSM|s_count\(2),
	combout => \BinTOBCDTimerAuxFSM|Equal11~0_combout\);

-- Location: LCCOMB_X72_Y24_N22
\BinTOBCDTimerAuxFSM|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan2~0_combout\ = (!\TimerAuxFSM|s_count\(5) & (((!\TimerAuxFSM|s_count\(4)) # (!\TimerAuxFSM|s_count\(3))) # (!\BinTOBCDTimerAuxFSM|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|Equal11~0_combout\,
	datab => \TimerAuxFSM|s_count\(3),
	datac => \TimerAuxFSM|s_count\(5),
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|LessThan2~0_combout\);

-- Location: LCCOMB_X72_Y24_N0
\BinTOBCDTimerAuxFSM|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan3~0_combout\ = (!\TimerAuxFSM|s_count\(6) & (((!\TimerAuxFSM|s_count\(3) & !\TimerAuxFSM|s_count\(4))) # (!\TimerAuxFSM|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(6),
	datab => \TimerAuxFSM|s_count\(3),
	datac => \TimerAuxFSM|s_count\(5),
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|LessThan3~0_combout\);

-- Location: LCCOMB_X72_Y24_N8
\BinTOBCDTimerAuxFSM|outBCD_2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD_2[0]~1_combout\ = (\BinTOBCDTimerAuxFSM|LessThan5~0_combout\ & ((\BinTOBCDTimerAuxFSM|LessThan1~0_combout\) # ((!\BinTOBCDTimerAuxFSM|LessThan2~0_combout\ & \BinTOBCDTimerAuxFSM|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|LessThan1~0_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan5~0_combout\,
	datac => \BinTOBCDTimerAuxFSM|LessThan2~0_combout\,
	datad => \BinTOBCDTimerAuxFSM|LessThan3~0_combout\,
	combout => \BinTOBCDTimerAuxFSM|outBCD_2[0]~1_combout\);

-- Location: LCCOMB_X72_Y27_N6
\BinTOBCDTimerAuxFSM|outBCD_2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\ = (((!\TimerAuxFSM|s_count\(4)) # (!\TimerAuxFSM|s_count\(3))) # (!\TimerAuxFSM|s_count\(2))) # (!\TimerAuxFSM|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(5),
	datab => \TimerAuxFSM|s_count\(2),
	datac => \TimerAuxFSM|s_count\(3),
	datad => \TimerAuxFSM|s_count\(4),
	combout => \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\);

-- Location: LCCOMB_X72_Y24_N10
\BinTOBCDTimerAuxFSM|outBCD_2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ = (\BinTOBCDTimerAuxFSM|Equal2~0_combout\ & ((\BinTOBCDTimerAuxFSM|outBCD_2[0]~1_combout\) # ((\BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\ & \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\,
	datab => \BinTOBCDTimerAuxFSM|Equal2~0_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[0]~1_combout\,
	datad => \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\,
	combout => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\);

-- Location: LCCOMB_X72_Y24_N2
\BinTOBCDTimerAuxFSM|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|LessThan3~1_combout\ = (\BinTOBCDTimerAuxFSM|LessThan3~0_combout\ & !\TimerAuxFSM|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BinTOBCDTimerAuxFSM|LessThan3~0_combout\,
	datad => \TimerAuxFSM|s_count\(7),
	combout => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\);

-- Location: LCCOMB_X72_Y27_N14
\BinTOBCDTimerAuxFSM|outBCD[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD[0]~59_combout\ = (\BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\ & (!\TimerAuxFSM|s_count\(7) & !\TimerAuxFSM|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~0_combout\,
	datac => \TimerAuxFSM|s_count\(7),
	datad => \TimerAuxFSM|s_count\(6),
	combout => \BinTOBCDTimerAuxFSM|outBCD[0]~59_combout\);

-- Location: LCCOMB_X72_Y24_N4
\BinTOBCDTimerAuxFSM|outBCD_2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\ = ((\BinTOBCDTimerAuxFSM|LessThan5~0_combout\ & (!\BinTOBCDTimerAuxFSM|LessThan1~0_combout\ & \BinTOBCDTimerAuxFSM|LessThan3~0_combout\))) # (!\BinTOBCDTimerAuxFSM|outBCD[0]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[0]~59_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan5~0_combout\,
	datac => \BinTOBCDTimerAuxFSM|LessThan1~0_combout\,
	datad => \BinTOBCDTimerAuxFSM|LessThan3~0_combout\,
	combout => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\);

-- Location: LCCOMB_X72_Y24_N18
\Bin7SegHEX7|decOut_n[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n[0]~4_combout\ = ((!\BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\ & (\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ $ (!\BinTOBCDTimerAuxFSM|LessThan3~1_combout\)))) # (!\TimerAuxFSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n[0]~4_combout\);

-- Location: LCCOMB_X72_Y24_N6
\Bin7SegHEX7|decOut_n[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n[1]~10_combout\ = (\TimerAuxFSM|s_count\(6)) # ((\TimerAuxFSM|s_count\(7)) # ((\BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\) # (!\TimerAuxFSM|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerAuxFSM|s_count\(6),
	datab => \TimerAuxFSM|s_count\(7),
	datac => \BinTOBCDTimerAuxFSM|outBCD[0]~57_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n[1]~10_combout\);

-- Location: LCCOMB_X72_Y24_N12
\Bin7SegHEX7|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n[2]~5_combout\ = ((!\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ & (\BinTOBCDTimerAuxFSM|LessThan3~1_combout\ & \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\))) # (!\TimerAuxFSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X72_Y24_N14
\Bin7SegHEX7|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n~6_combout\ = ((\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ & (\BinTOBCDTimerAuxFSM|LessThan3~1_combout\ $ (\BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\))) # (!\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ & 
-- (!\BinTOBCDTimerAuxFSM|LessThan3~1_combout\ & !\BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\))) # (!\TimerAuxFSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n~6_combout\);

-- Location: LCCOMB_X72_Y24_N28
\Bin7SegHEX7|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n~7_combout\ = (\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\) # (((!\BinTOBCDTimerAuxFSM|LessThan3~1_combout\ & !\BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\)) # (!\TimerAuxFSM|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n~7_combout\);

-- Location: LCCOMB_X72_Y24_N30
\Bin7SegHEX7|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n~8_combout\ = ((\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ & ((\BinTOBCDTimerAuxFSM|LessThan3~1_combout\) # (\BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\))) # (!\BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\ & 
-- (\BinTOBCDTimerAuxFSM|LessThan3~1_combout\ & \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\))) # (!\TimerAuxFSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD_2[0]~2_combout\,
	datab => \BinTOBCDTimerAuxFSM|LessThan3~1_combout\,
	datac => \BinTOBCDTimerAuxFSM|outBCD_2[1]~3_combout\,
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n~8_combout\);

-- Location: LCCOMB_X72_Y24_N16
\Bin7SegHEX7|decOut_n[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegHEX7|decOut_n[6]~9_combout\ = ((!\BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\ & (\BinTOBCDTimerAuxFSM|Equal2~0_combout\ & !\TimerAuxFSM|s_count\(5)))) # (!\TimerAuxFSM|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BinTOBCDTimerAuxFSM|outBCD[3]~58_combout\,
	datab => \BinTOBCDTimerAuxFSM|Equal2~0_combout\,
	datac => \TimerAuxFSM|s_count\(5),
	datad => \TimerAuxFSM|Add0~0_combout\,
	combout => \Bin7SegHEX7|decOut_n[6]~9_combout\);

-- Location: LCCOMB_X65_Y32_N12
\LCD|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|Selector1~0_combout\ = (\LCD|state.print_string~q\) # ((\LCD|lcd_rs~q\ & ((\LCD|state.hold~q\) # (\LCD|state.drop_lcd_e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.print_string~q\,
	datab => \LCD|state.hold~q\,
	datac => \LCD|lcd_rs~q\,
	datad => \LCD|state.drop_lcd_e~q\,
	combout => \LCD|Selector1~0_combout\);

-- Location: FF_X65_Y32_N13
\LCD|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|Selector1~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	ena => \LCD|clk_400hz_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_rs~q\);

-- Location: LCCOMB_X66_Y32_N18
\LCD|lcd_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD|lcd_e~0_combout\ = (\LCD|state.hold~q\ & (((\LCD|lcd_e~q\)))) # (!\LCD|state.hold~q\ & ((\LCD|clk_400hz_enable~q\ & (\LCD|state.drop_lcd_e~q\)) # (!\LCD|clk_400hz_enable~q\ & ((\LCD|lcd_e~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|state.drop_lcd_e~q\,
	datab => \LCD|state.hold~q\,
	datac => \LCD|lcd_e~q\,
	datad => \LCD|clk_400hz_enable~q\,
	combout => \LCD|lcd_e~0_combout\);

-- Location: FF_X66_Y32_N19
\LCD|lcd_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LCD|lcd_e~0_combout\,
	clrn => \ControlSystemUnit|pState.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|lcd_e~q\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


