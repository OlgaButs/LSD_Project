-- VHDL Architecture DE2_LCD_lib.LCD_DISPLAY_nty.LCD_DISPLAY_arch
--
-- Created:
--          by - Gerry O'Brien 
--          WWW.DIGITAL-CIRCUITRY.COM
--          at - 15:30:18 26/03/2015
--
-- using Mentor Graphics HDL Designer(TM) 2010.3 (Build 21)

-- (!) Adaptado por Olha Buts (112920) & André Correia (87818).
-- (!) NOTA: O ficheiro original foi simplificado para esta atual versão.


LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


-- Interface:
ENTITY DE2_LCD_DISPLAY IS
   GENERIC(num_hex_digits : integer := 2);
   PORT( reset              : IN     std_logic;  -- Map this Port to a Switch within your [Port Declarations / Pin Planer]  
			clock_50           : IN     std_logic;  -- Using the DE2 50Mhz Clk, in order to Genreate the 400Hz signal... clk_count_400hz reset count value must be set to:  <= x"0F424"
			lcd_rs             : OUT    std_logic;
			lcd_e              : OUT    std_logic;
			lcd_rw             : OUT    std_logic;
			lcd_on             : OUT    std_logic;
			lcd_blon           : OUT    std_logic;
			data_bus_0         : INOUT  STD_LOGIC;
			data_bus_1         : INOUT  STD_LOGIC;
			data_bus_2         : INOUT  STD_LOGIC;
			data_bus_3         : INOUT  STD_LOGIC;
			data_bus_4         : INOUT  STD_LOGIC;
			data_bus_5         : INOUT  STD_LOGIC;
			data_bus_6         : INOUT  STD_LOGIC;
			data_bus_7         : INOUT  STD_LOGIC;
			LCD_CHAR_ARRAY_0   : IN     STD_LOGIC;
			LCD_CHAR_ARRAY_1   : IN     STD_LOGIC;
			LCD_CHAR_ARRAY_2   : IN     STD_LOGIC;
			LCD_CHAR_ARRAY_3   : IN     STD_LOGIC);
END DE2_LCD_DISPLAY ;


-- Architecture:
ARCHITECTURE DE2_LCD_DISPLAY_arch OF DE2_LCD_DISPLAY IS
	-- Type Declarations:
	type character_string is array ( 0 to 31 ) of STD_LOGIC_VECTOR( 7 downto 0 );
	type state_type is (hold, func_set, display_on, mode_set, print_string,
							  line2, return_home, drop_lcd_e, reset1, reset2,
                       reset3, display_off, display_clear);
	-- Signal Declarations:
	signal state, next_command         : state_type;
	signal lcd_display_string_0000     : character_string;
	signal lcd_display_string_0001     : character_string;
	signal lcd_display_string_0010     : character_string;
	signal lcd_display_string_0011     : character_string;
	signal lcd_display_string_1000     : character_string;
	signal lcd_display_string_1001     : character_string;
	signal lcd_display_string_1010     : character_string;
	signal lcd_display_string_1011     : character_string;
	signal lcd_display_string_0110     : character_string;
	signal lcd_display_string_1111     : character_string;
	signal lcd_display_string_OTHERS   : character_string;
	signal data_bus_value, next_char   : STD_LOGIC_VECTOR(7 downto 0);
	signal clk_count_400hz             : STD_LOGIC_VECTOR(19 downto 0);
	signal char_count                  : STD_LOGIC_VECTOR(4 downto 0);
	signal clk_400hz_enable,lcd_rw_int : std_logic;
	signal data_bus                    : STD_LOGIC_VECTOR(7 downto 0);	
	signal LCD_CHAR_ARRAY              : STD_LOGIC_VECTOR(3 DOWNTO 0);
	--SIGNAL SIG_ENABLE_count            : STD_LOGIC_VECTOR(19 DOWNTO 0) := "00000000000000000000";  
	--SIGNAL LCD_ENABLE_SET              : std_logic;
	--SIGNAL LCD_ENABLE_RESET            : std_logic;
	--SIGNAL ENABLE_LINE                 : std_logic := '0';
BEGIN
  
	--===================================================--  
	-- SIGNAL STD_LOGIC_VECTORS assigned to OUTPUT PORTS 
	--===================================================--    
	data_bus_0 <= data_bus(0);
	data_bus_1 <= data_bus(1);
	data_bus_2 <= data_bus(2);
	data_bus_3 <= data_bus(3);
	data_bus_4 <= data_bus(4);
	data_bus_5 <= data_bus(5);
	data_bus_6 <= data_bus(6);
	data_bus_7 <= data_bus(7);
	LCD_CHAR_ARRAY(0) <= LCD_CHAR_ARRAY_0;
	LCD_CHAR_ARRAY(1) <= LCD_CHAR_ARRAY_1;
	LCD_CHAR_ARRAY(2) <= LCD_CHAR_ARRAY_2;
	LCD_CHAR_ARRAY(3) <= LCD_CHAR_ARRAY_3;

-- ASCII hex values for LCD Display
-- Enter Live Hex Data Values from hardware here

-- LCD DISPLAYS THE FOLLOWING:

------------------------------
--| Count=XX |
--| DE2 |
------------------------------


-- Accessing the Input Switches for 2 digit HEX Display 
-------------------------------------------------------------------------

 lcd_display_string_0000 <= 
  (
-- Line 1: "MENU"
          x"20",x"20",x"20",x"20",x"20",x"20",x"4D",x"45",x"4E",x"55",x"20",x"20",x"20",x"20",x"20",x"20",
   
-- Line 2: "CASEIRO (24s)"
          x"20",x"43",x"41",x"53",x"45",x"49",x"52",x"4F",x"20",x"28",x"32",x"34",x"73",x"29",x"20",x"20" 
   );
   
--========================================================================================================================================================================================== 
 
 lcd_display_string_0001 <= 
  (
-- Line 1: "A Amassar"
          x"20",x"20",x"20",x"41",x"20",x"41",x"6D",x"61",x"73",x"73",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(10s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"31",x"30",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
   
--========================================================================================================================================================================================== 

 lcd_display_string_0010 <= 
  (
-- Line 1: "A Levedar"
          x"20",x"20",x"20",x"41",x"20",x"4C",x"65",x"76",x"65",x"64",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(04s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"30",x"34",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20" 
   );
--========================================================================================================================================================================================== 

 lcd_display_string_0011 <= 
  (
-- Line 1: "A Cozer"
          x"20",x"20",x"20",x"41",x"20",x"4C",x"65",x"76",x"65",x"64",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(10s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"31",x"30",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
	
--========================================================================================================================================================================================== 
 
 lcd_display_string_1000 <= 
  (
-- Line 1: "MENU"
          x"20",x"20",x"20",x"20",x"20",x"20",x"4D",x"45",x"4E",x"55",x"20",x"20",x"20",x"20",x"20",x"20",
   
-- Line 2: "RUSTICO (33s)"
          x"20",x"52",x"55",x"53",x"54",x"49",x"43",x"4F",x"20",x"28",x"33",x"33",x"73",x"29",x"20",x"20"
   );
   
--========================================================================================================================================================================================== 

 lcd_display_string_1001 <= 
  (
-- Line 1: "A Amassar"
          x"20",x"20",x"20",x"41",x"20",x"41",x"6D",x"61",x"73",x"73",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(15s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"31",x"35",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
	
--========================================================================================================================================================================================== 

 lcd_display_string_1010 <= 
  (
-- Line 1: "A Levedar"
          x"20",x"20",x"20",x"41",x"20",x"4C",x"65",x"76",x"65",x"64",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(15s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"31",x"35",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
	
--========================================================================================================================================================================================== 

 lcd_display_string_1011 <= 
  (
-- Line 1: "A Cozer"
          x"20",x"20",x"20",x"41",x"20",x"4C",x"65",x"76",x"65",x"64",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "(10s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"31",x"30",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
	
--========================================================================================================================================================================================== 

 lcd_display_string_0110 <=
  (
-- Line 1: "A Terminar"
          x"20",x"20",x"20",x"41",x"20",x"54",x"65",x"72",x"6D",x"69",x"6E",x"61",x"72",x"20",x"20",x"20",
   
-- Line 2: "(02s)"
          x"20",x"20",x"20",x"20",x"20",x"28",x"30",x"32",x"73",x"29",x"20",x"20",x"20",x"20",x"20",x"20"
   );
	
--========================================================================================================================================================================================== 

 lcd_display_string_1111 <= 
  (
-- Line 1: "Tempo Extra:"
          x"20",x"20",x"20",x"41",x"20",x"4C",x"65",x"76",x"65",x"64",x"61",x"72",x"20",x"20",x"20",x"20",
   
-- Line 2: "( Usar KEY[2] )"
          x"28",x"20",x"55",x"73",x"61",x"72",x"20",x"4B",x"45",x"59",x"5B",x"32",x"5D",x"20",x"29",x"20"
   );
	
--========================================================================================================================================================================================== 

 lcd_display_string_OTHERS <= 
  (
-- Line 1: "ERROR"
          x"20",x"20",x"20",x"20",x"20",x"45",x"52",x"52",x"4F",x"52",x"20",x"20",x"20",x"20",x"20",x"20",
   
-- Line 2: "( RESTART FPGA )"
          x"28",x"20",x"52",x"45",x"53",x"54",x"41",x"52",x"54",x"20",x"46",x"50",x"47",x"41",x"20",x"29"
   );
	
	
-------------------------------------------------------------------------------------------------------
-- BIDIRECTIONAL TRI STATE LCD DATA BUS
   data_bus <= data_bus_value when lcd_rw_int = '0' else "ZZZZZZZZ";
   
-- LCD_RW PORT is assigned to it matching SIGNAL 
 lcd_rw <= lcd_rw_int;
 
 

------------------------------------ STATE MACHINE FOR LCD SCREEN MESSAGE SELECT -----------------------------
---------------------------------------------------------------------------------------------------------------
PROCESS (LCD_CHAR_ARRAY)
BEGIN
  
-- get next character in display string based on the LCD_CHAR_ARRAY (switches or Multiplexer)

     CASE (LCD_CHAR_ARRAY) IS
          
				-- MENU DO CASEIRO
       WHEN "0000" =>
            next_char <= lcd_display_string_0000(CONV_INTEGER(char_count));
				
				-- MENU DO RUSTICO                                                         
       WHEN "1000" =>      
            next_char <= lcd_display_string_1000(CONV_INTEGER(char_count));  
                                                                          
				-- AMASSAR DO CASEIRO                                                                                         
       WHEN "0001" =>      
            next_char <= lcd_display_string_0001(CONV_INTEGER(char_count));
            
            -- LEVEDAR DO CASEIRO
       WHEN "0010" =>      
            next_char <= lcd_display_string_0010(CONV_INTEGER(char_count));            
            
            -- COZER DO CASEIRO                                                          
       WHEN "0011" =>      
            next_char <= lcd_display_string_0011(CONV_INTEGER(char_count));
                                                                          
				-- AMASSAR DO RUSTICO                                                                                         
       WHEN "1001" =>      
            next_char <= lcd_display_string_1001(CONV_INTEGER(char_count));
            
            -- LEVEDAR DO RUSTICO
       WHEN "1010" =>      
            next_char <= lcd_display_string_1010(CONV_INTEGER(char_count));            
            
            -- COZER DO RUSTICO                                                          
       WHEN "1011" =>      
            next_char <= lcd_display_string_1011(CONV_INTEGER(char_count));
				
				-- A TERMINAR                                                          
       WHEN ("0100" OR "1100") =>      
            next_char <= lcd_display_string_0110(CONV_INTEGER(char_count));
				
				-- TEMPO EXTRA                                                          
       WHEN ("0101" OR "1101") =>      
            next_char <= lcd_display_string_1111(CONV_INTEGER(char_count));
                                                                                                                              
			  --  WHEN OTHERS                                                                 
		WHEN OTHERS =>              
			next_char <= lcd_display_string_OTHERS(CONV_INTEGER(char_count));
                                                     
       END CASE;
END PROCESS;
 
 
--=====================================================================-- 
--======================= CLOCK #1 SIGNALS ============================--  
--=====================================================================-- 
process(clock_50)
begin
      if (rising_edge(clock_50)) then
         if (reset = '0') then
            clk_count_400hz <= x"00000";
            clk_400hz_enable <= '0';
         else
            if (clk_count_400hz <= x"0F424") then             
                   clk_count_400hz <= clk_count_400hz + 1;                                   
                   clk_400hz_enable <= '0';                
            else
                   clk_count_400hz <= x"00000";
                   clk_400hz_enable <= '1';
            end if;
         end if;
      end if;
end process;  
--==================================================================--    
  
  
--======================== LCD DRIVER CORE ==============================--   
--                     STATE MACHINE WITH RESET                          -- 
--===================================================-----===============--  
process (clock_50, reset)
begin
 
  
        if reset = '0' then
           state <= reset1;
           data_bus_value <= x"38"; -- RESET
           next_command <= reset2;
           lcd_e <= '1';
           lcd_rs <= '0';
           lcd_rw_int <= '0';  
        
    
    
        elsif rising_edge(clock_50) then
             if clk_400hz_enable = '1' then  
                 
                 
                 
              --========================================================--                 
              -- State Machine to send commands and data to LCD DISPLAY
              --========================================================--
                 case state is
                 -- Set Function to 8-bit transfer and 2 line display with 5x8 Font size
                 -- see Hitachi HD44780 family data sheet for LCD command and timing details
                       
                       
                       
--======================= INITIALIZATION START ============================--
                       when reset1 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= reset2;
                            char_count <= "00000";
  
                       when reset2 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= reset3;
                            
                       when reset3 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= func_set;
            
            
                       -- Function Set
                       --==============--
                       when func_set =>                
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38";  -- Set Function to 8-bit transfer, 2 line display and a 5x8 Font size
                            state <= drop_lcd_e;
                            next_command <= display_off;
                            
                            
                            
                       -- Turn off Display
                       --==============-- 
                       when display_off =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"08"; -- Turns OFF the Display, Cursor OFF and Blinking Cursor Position OFF.......(0F = Display ON and Cursor ON, Blinking cursor position ON)
                            state <= drop_lcd_e;
                            next_command <= display_clear;
                           
                           
                       -- Clear Display 
                       --==============--
                       when display_clear =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"01"; -- Clears the Display    
                            state <= drop_lcd_e;
                            next_command <= display_on;
                           
                           
                           
                       -- Turn on Display and Turn off cursor
                       --===================================--
                       when display_on =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"0C"; -- Turns on the Display (0E = Display ON, Cursor ON and Blinking cursor OFF) 
                            state <= drop_lcd_e;
                            next_command <= mode_set;
                          
                          
                       -- Set write mode to auto increment address and move cursor to the right
                       --====================================================================--
                       when mode_set =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"06"; -- Auto increment address and move cursor to the right
                            state <= drop_lcd_e;
                            next_command <= print_string; 
                            
                                
--======================= INITIALIZATION END ============================--                          
                          
                          
--=======================================================================--                           
--               Write ASCII hex character Data to the LCD
--=======================================================================--
                       when print_string =>          
                            state <= drop_lcd_e;
                            lcd_e <= '1';
                            lcd_rs <= '1';
                            lcd_rw_int <= '0';
                          
                          
                               -- ASCII character to output
                               if (next_char(7 downto 4) /= x"0") then
                                  data_bus_value <= next_char;
                               else
                             
                                    -- Convert 4-bit value to an ASCII hex digit
                                    if next_char(3 downto 0) >9 then 
                              
                                    -- ASCII A...F
                                      data_bus_value <= x"4" & (next_char(3 downto 0)-9); 
                                    else 
                                
                                    -- ASCII 0...9
                                      data_bus_value <= x"3" & next_char(3 downto 0);
                                    end if;
                               end if;
                          
                            state <= drop_lcd_e; 
                          
                          
                            -- Loop to send out 32 characters to LCD Display (16 by 2 lines)
                               if (char_count < 31) AND (next_char /= x"fe") then
                                   char_count <= char_count +1;                            
                               else
                                   char_count <= "00000";
                               end if;
                  
                  
                  
                            -- Jump to second line?
                               if char_count = 15 then 
                                  next_command <= line2;
                   
                   
                   
                            -- Return to first line?
                               elsif (char_count = 31) or (next_char = x"fe") then
                                     next_command <= return_home;
                               else 
                                     next_command <= print_string; 
                               end if; 
                 
                 
                 
                       -- Set write address to line 2 character 1
                       --======================================--
                       when line2 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"c0";
                            state <= drop_lcd_e;
                            next_command <= print_string;      
                     
                     
                       -- Return write address to first character position on line 1
                       --=========================================================--
                       when return_home =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"80";
                            state <= drop_lcd_e;
                            next_command <= print_string; 
                    
                    
                       -- lcd_e will match clk_CUSTOM_hz_enable line when instructed to go LOW, however, if the clk_CUSTOM_hz_enable source clock must be a lower count value or it will reset LOW anyhow.
                       -- The next states occur at the end of each command or data transfer to the LCD
                       -- Drop LCD E line - falling edge loads inst/data to LCD controller
                       --============================================================================--
                       when drop_lcd_e =>
                            lcd_e <= '0';
                            lcd_blon <= '1';
                            lcd_on   <= '1';
                            state <= hold;
                   
                       -- Hold LCD inst/data valid after falling edge of E line
                       --====================================================--
                       when hold =>
                            state <= next_command;
                            lcd_blon <= '1';
                            lcd_on   <= '1';
                       end case;

             end if;-- CLOSING STATEMENT FOR "IF clk_400hz_enable = '1' THEN"
             
      end if;-- CLOSING STATEMENT FOR "IF reset = '0' THEN" 
      
end process;                                                            
  
END ARCHITECTURE DE2_LCD_DISPLAY_arch;

