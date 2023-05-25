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

-- Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
-- Created on Wed May 17 20:31:26 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ControlSystemUnit_v2 IS
    PORT (
        reset : IN STD_LOGIC;
        clock : IN STD_LOGIC;
        start : IN STD_LOGIC;
        freezeEnd : IN STD_LOGIC;
        extraEn : IN STD_LOGIC;
        newPrg : IN STD_LOGIC;
        freeze : IN STD_LOGIC;
        en_1 : OUT STD_LOGIC;
        en_2 : OUT STD_LOGIC;
        en_3 : OUT STD_LOGIC;
        start_stop : OUT STD_LOGIC;
        freezeStart : OUT STD_LOGIC;
        rstGlobal : OUT STD_LOGIC;
		  stOut : out std_logic_vector(3 downto 0)
    );
END ControlSystemUnit_v2;

ARCHITECTURE BEHAVIOR OF ControlSystemUnit_v2 IS
    TYPE type_fState IS (Init,Menu,Timer,TimeProcess,StartPrg,Stop,Extra);
    SIGNAL fState : type_fState;
    SIGNAL pState : type_fState;
BEGIN

    PROCESS (clock)
    BEGIN
        IF (clock='1' AND clock'event) THEN
				IF (reset='1') THEN
					pState <= Init;
				ELSE
					pState <= fState;
				END IF;
        END IF;
    END PROCESS;

    PROCESS (pState, start,freezeEnd,extraEn,newPrg,freeze)
    BEGIN
            en_1 <= '0';
            en_2 <= '0';
            en_3 <= '0';
            start_stop <= '0';
            freezeStart <= '0';
            rstGlobal <= '0';
				fState <= pState;
				
            CASE pState IS
				
                WHEN Init =>
                    fState <= Menu;
                    rstGlobal <= '1';
						  
                WHEN Menu =>
                    IF ((freeze = '1')) THEN
                        fState <= Timer;
                    ELSIF (start = '1') THEN
                        fState <= StartPrg;
                    END IF;
                    en_1 <= '1';
						  
                WHEN Timer =>
                    IF (((start = '1') AND NOT((freeze = '1')))) THEN
                        fState <= TimeProcess;
                    ELSE
                        fState <= Timer;
                    END IF;

                    en_3 <= '1';
                    en_1 <= '1';
						  
                WHEN TimeProcess =>
					 
                    IF (freezeEnd = '1') THEN
                        fState <= StartPrg;
                    END IF;

                    en_3 <= '1';
                    freezeStart <= '1';
						  
                WHEN StartPrg =>
                    IF (start = '1') THEN
                        fState <= Stop;
                    ELSIF (extraEn = '1') THEN
                        fState <= Extra;
                    ELSIF (newPrg = '1') THEN
                        fState <= Init;
                    END IF;

                    start_stop <= '1';

                WHEN Stop =>
                    IF (start = '1') THEN
                        fState <= StartPrg;
                    END IF;

                WHEN Extra =>
                    IF (start = '1') THEN
                        fState <= StartPrg;
                    END IF;
                    en_2 <= '1';

                WHEN OTHERS =>
                    fState <= Init;
                    report "Reach undefined state";
            END CASE;
    END PROCESS;
	 
	 
 with pState select
   stOut <= "0001" when Init,
            "0010" when Menu,
            "0011" when Timer,
				"0100" when TimeProcess,
				"0101" when StartPrg,
				"0110" when Stop,
				"0111" when Extra,
            "1000" when others;
END BEHAVIOR;
