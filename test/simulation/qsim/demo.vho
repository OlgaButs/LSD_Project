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

-- DATE "05/18/2023 16:56:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlSystemUnit IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	start : IN std_logic;
	freezeEnd : IN std_logic;
	extraEn : IN std_logic;
	newPrg : IN std_logic;
	freeze : IN std_logic;
	en_1 : BUFFER std_logic;
	en_2 : BUFFER std_logic;
	en_3 : BUFFER std_logic;
	start_stop : BUFFER std_logic;
	freezeStart : BUFFER std_logic;
	rstGlobal : BUFFER std_logic
	);
END ControlSystemUnit;

ARCHITECTURE structure OF ControlSystemUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_freezeEnd : std_logic;
SIGNAL ww_extraEn : std_logic;
SIGNAL ww_newPrg : std_logic;
SIGNAL ww_freeze : std_logic;
SIGNAL ww_en_1 : std_logic;
SIGNAL ww_en_2 : std_logic;
SIGNAL ww_en_3 : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_freezeStart : std_logic;
SIGNAL ww_rstGlobal : std_logic;
SIGNAL \en_1~output_o\ : std_logic;
SIGNAL \en_2~output_o\ : std_logic;
SIGNAL \en_3~output_o\ : std_logic;
SIGNAL \start_stop~output_o\ : std_logic;
SIGNAL \freezeStart~output_o\ : std_logic;
SIGNAL \rstGlobal~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \reg_fstate.Menu~0_combout\ : std_logic;
SIGNAL \freeze~input_o\ : std_logic;
SIGNAL \extraEn~input_o\ : std_logic;
SIGNAL \newPrg~input_o\ : std_logic;
SIGNAL \reg_fstate.Stop~0_combout\ : std_logic;
SIGNAL \reg_fstate.Stop~1_combout\ : std_logic;
SIGNAL \fstate.Stop~q\ : std_logic;
SIGNAL \reg_fstate.Extra~0_combout\ : std_logic;
SIGNAL \start_stop~0_combout\ : std_logic;
SIGNAL \reg_fstate.Extra~1_combout\ : std_logic;
SIGNAL \fstate.Extra~q\ : std_logic;
SIGNAL \reg_fstate.StartPrg~0_combout\ : std_logic;
SIGNAL \reg_fstate.StartPrg~1_combout\ : std_logic;
SIGNAL \reg_fstate.Timer~0_combout\ : std_logic;
SIGNAL \reg_fstate.Timer~1_combout\ : std_logic;
SIGNAL \fstate.Timer~q\ : std_logic;
SIGNAL \reg_fstate.StartPrg~2_combout\ : std_logic;
SIGNAL \reg_fstate.TimeProcess~2_combout\ : std_logic;
SIGNAL \freezeEnd~input_o\ : std_logic;
SIGNAL \reg_fstate.TimeProcess~3_combout\ : std_logic;
SIGNAL \fstate.TimeProcess~q\ : std_logic;
SIGNAL \freezeStart~0_combout\ : std_logic;
SIGNAL \reg_fstate.StartPrg~3_combout\ : std_logic;
SIGNAL \fstate.StartPrg~q\ : std_logic;
SIGNAL \reg_fstate.Init~0_combout\ : std_logic;
SIGNAL \fstate.Init~q\ : std_logic;
SIGNAL \rstGlobal~0_combout\ : std_logic;
SIGNAL \reg_fstate.Menu~1_combout\ : std_logic;
SIGNAL \fstate.Menu~q\ : std_logic;
SIGNAL \en_1~0_combout\ : std_logic;
SIGNAL \en_2~0_combout\ : std_logic;
SIGNAL \en_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rstGlobal~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_start <= start;
ww_freezeEnd <= freezeEnd;
ww_extraEn <= extraEn;
ww_newPrg <= newPrg;
ww_freeze <= freeze;
en_1 <= ww_en_1;
en_2 <= ww_en_2;
en_3 <= ww_en_3;
start_stop <= ww_start_stop;
freezeStart <= ww_freezeStart;
rstGlobal <= ww_rstGlobal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rstGlobal~0_combout\ <= NOT \rstGlobal~0_combout\;

\en_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_1~0_combout\,
	devoe => ww_devoe,
	o => \en_1~output_o\);

\en_2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_2~0_combout\,
	devoe => ww_devoe,
	o => \en_2~output_o\);

\en_3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_3~0_combout\,
	devoe => ww_devoe,
	o => \en_3~output_o\);

\start_stop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \start_stop~0_combout\,
	devoe => ww_devoe,
	o => \start_stop~output_o\);

\freezeStart~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freezeStart~0_combout\,
	devoe => ww_devoe,
	o => \freezeStart~output_o\);

\rstGlobal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rstGlobal~0_combout\,
	devoe => ww_devoe,
	o => \rstGlobal~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\reg_fstate.Menu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Menu~0_combout\ = (!\reset~input_o\ & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \start~input_o\,
	combout => \reg_fstate.Menu~0_combout\);

\freeze~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freeze,
	o => \freeze~input_o\);

\extraEn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_extraEn,
	o => \extraEn~input_o\);

\newPrg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newPrg,
	o => \newPrg~input_o\);

\reg_fstate.Stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Stop~0_combout\ = (\fstate.StartPrg~q\ & (!\extraEn~input_o\ & !\newPrg~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.StartPrg~q\,
	datac => \extraEn~input_o\,
	datad => \newPrg~input_o\,
	combout => \reg_fstate.Stop~0_combout\);

\reg_fstate.Stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Stop~1_combout\ = (!\reset~input_o\ & ((\start~input_o\ & (\reg_fstate.Stop~0_combout\)) # (!\start~input_o\ & ((\fstate.Stop~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.Stop~0_combout\,
	datab => \fstate.Stop~q\,
	datac => \start~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.Stop~1_combout\);

\fstate.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.Stop~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Stop~q\);

\reg_fstate.Extra~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Extra~0_combout\ = (\fstate.Extra~q\ & (!\reset~input_o\ & !\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Extra~q\,
	datac => \reset~input_o\,
	datad => \start~input_o\,
	combout => \reg_fstate.Extra~0_combout\);

\start_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop~0_combout\ = (\fstate.StartPrg~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.StartPrg~q\,
	datad => \reset~input_o\,
	combout => \start_stop~0_combout\);

\reg_fstate.Extra~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Extra~1_combout\ = (\reg_fstate.Extra~0_combout\) # ((\start_stop~0_combout\ & (\extraEn~input_o\ & !\newPrg~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.Extra~0_combout\,
	datab => \start_stop~0_combout\,
	datac => \extraEn~input_o\,
	datad => \newPrg~input_o\,
	combout => \reg_fstate.Extra~1_combout\);

\fstate.Extra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.Extra~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Extra~q\);

\reg_fstate.StartPrg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.StartPrg~0_combout\ = (\fstate.Extra~q\) # ((\fstate.Menu~q\ & !\freeze~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Menu~q\,
	datab => \freeze~input_o\,
	datac => \fstate.Extra~q\,
	combout => \reg_fstate.StartPrg~0_combout\);

\reg_fstate.StartPrg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.StartPrg~1_combout\ = (\start~input_o\ & (!\reset~input_o\ & ((\fstate.Stop~q\) # (\reg_fstate.StartPrg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.Stop~q\,
	datad => \reg_fstate.StartPrg~0_combout\,
	combout => \reg_fstate.StartPrg~1_combout\);

\reg_fstate.Timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Timer~0_combout\ = (\fstate.Timer~q\ & (!\reset~input_o\ & (\start~input_o\ $ (!\freeze~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Timer~q\,
	datab => \start~input_o\,
	datac => \freeze~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.Timer~0_combout\);

\reg_fstate.Timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Timer~1_combout\ = (\reg_fstate.Timer~0_combout\) # ((\fstate.Menu~q\ & (\freeze~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.Timer~0_combout\,
	datab => \fstate.Menu~q\,
	datac => \freeze~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.Timer~1_combout\);

\fstate.Timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.Timer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Timer~q\);

\reg_fstate.StartPrg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.StartPrg~2_combout\ = (\reg_fstate.Menu~0_combout\ & ((\reg_fstate.Stop~0_combout\) # ((\fstate.Timer~q\ & \freeze~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.Menu~0_combout\,
	datab => \reg_fstate.Stop~0_combout\,
	datac => \fstate.Timer~q\,
	datad => \freeze~input_o\,
	combout => \reg_fstate.StartPrg~2_combout\);

\reg_fstate.TimeProcess~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.TimeProcess~2_combout\ = (\fstate.Timer~q\ & (\start~input_o\ & (!\reset~input_o\ & !\freeze~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Timer~q\,
	datab => \start~input_o\,
	datac => \reset~input_o\,
	datad => \freeze~input_o\,
	combout => \reg_fstate.TimeProcess~2_combout\);

\freezeEnd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freezeEnd,
	o => \freezeEnd~input_o\);

\reg_fstate.TimeProcess~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.TimeProcess~3_combout\ = (\reg_fstate.TimeProcess~2_combout\) # ((\fstate.TimeProcess~q\ & (!\reset~input_o\ & !\freezeEnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.TimeProcess~q\,
	datab => \reset~input_o\,
	datac => \reg_fstate.TimeProcess~2_combout\,
	datad => \freezeEnd~input_o\,
	combout => \reg_fstate.TimeProcess~3_combout\);

\fstate.TimeProcess\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.TimeProcess~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.TimeProcess~q\);

\freezeStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freezeStart~0_combout\ = (\fstate.TimeProcess~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.TimeProcess~q\,
	datad => \reset~input_o\,
	combout => \freezeStart~0_combout\);

\reg_fstate.StartPrg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.StartPrg~3_combout\ = (\reg_fstate.StartPrg~1_combout\) # ((\reg_fstate.StartPrg~2_combout\) # ((\freezeStart~0_combout\ & \freezeEnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.StartPrg~1_combout\,
	datab => \reg_fstate.StartPrg~2_combout\,
	datac => \freezeStart~0_combout\,
	datad => \freezeEnd~input_o\,
	combout => \reg_fstate.StartPrg~3_combout\);

\fstate.StartPrg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.StartPrg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.StartPrg~q\);

\reg_fstate.Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Init~0_combout\ = (!\reset~input_o\ & ((!\newPrg~input_o\) # (!\fstate.StartPrg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.StartPrg~q\,
	datac => \newPrg~input_o\,
	combout => \reg_fstate.Init~0_combout\);

\fstate.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.Init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Init~q\);

\rstGlobal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rstGlobal~0_combout\ = (\reset~input_o\) # (\fstate.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \fstate.Init~q\,
	combout => \rstGlobal~0_combout\);

\reg_fstate.Menu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.Menu~1_combout\ = ((\fstate.Menu~q\ & (\reg_fstate.Menu~0_combout\ & !\freeze~input_o\))) # (!\rstGlobal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Menu~q\,
	datab => \reg_fstate.Menu~0_combout\,
	datac => \freeze~input_o\,
	datad => \rstGlobal~0_combout\,
	combout => \reg_fstate.Menu~1_combout\);

\fstate.Menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.Menu~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.Menu~q\);

\en_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_1~0_combout\ = (!\reset~input_o\ & ((\fstate.Menu~q\) # (\fstate.Timer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Menu~q\,
	datab => \fstate.Timer~q\,
	datad => \reset~input_o\,
	combout => \en_1~0_combout\);

\en_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_2~0_combout\ = (\fstate.Extra~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Extra~q\,
	datad => \reset~input_o\,
	combout => \en_2~0_combout\);

\en_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_3~0_combout\ = (!\reset~input_o\ & ((\fstate.Timer~q\) # (\fstate.TimeProcess~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.Timer~q\,
	datab => \fstate.TimeProcess~q\,
	datad => \reset~input_o\,
	combout => \en_3~0_combout\);

ww_en_1 <= \en_1~output_o\;

ww_en_2 <= \en_2~output_o\;

ww_en_3 <= \en_3~output_o\;

ww_start_stop <= \start_stop~output_o\;

ww_freezeStart <= \freezeStart~output_o\;

ww_rstGlobal <= \rstGlobal~output_o\;
END structure;


