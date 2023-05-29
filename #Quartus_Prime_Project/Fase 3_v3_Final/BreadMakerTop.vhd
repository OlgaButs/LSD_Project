LIBRARY ieee;
USE ieee.std_logic_1164.all; 

-- Interface:
ENTITY BreadMakerTop IS 
	PORT(	CLOCK_50 :  IN  STD_LOGIC;
			KEY      :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			SW       :  IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
			HEX0     :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX1 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX2 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX3 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX4 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX5 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX6 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			HEX7 		:  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
			LEDG 		:  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
			LEDR 		:  OUT  STD_LOGIC_VECTOR(0 DOWNTO 0);
			LCD_RS   :  OUT  STD_LOGIC;
			LCD_EN	:  OUT  STD_LOGIC;
			LCD_RW 	:  OUT  STD_LOGIC;
			LCD_ON 	:  OUT  STD_LOGIC;
			LCD_BLON :  OUT  STD_LOGIC;
			LCD_DATA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END BreadMakerTop;

-- Architecture:
ARCHITECTURE Shell OF BreadMakerTop IS 
-- Global reset and clock signal
SIGNAL	clk, globalReset :  STD_LOGIC;
-- Control signals
SIGNAL	s_key3, s_key2, s_key1, s_key0 :  STD_LOGIC;
-- PulseGen
SIGNAL	s_pulse1HZ :  STD_LOGIC;
-- ControlSystemUnit signals
SIGNAL	s_freezeEnable, s_freezeStart, s_en1, start_stop :  STD_LOGIC;
SIGNAL	S :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	s_freezeEnd, s_extra, s_newPrg:  STD_LOGIC;
--TimeExtra signals
SIGNAL	cnt     :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	s_words :  STD_LOGIC_VECTOR(15 DOWNTO 0);
--BreadBakerFSM signals
SIGNAL	p1_p2, s_timeExp,s_newTime, s_extraSelect, s_led, s_enableTime, s_InitLoad, s_messages, s_timeEnable, s_dEnable: STD_LOGIC;
SIGNAL	s_time, s_TimeVal :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	s_address         :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	stOut             :  STD_LOGIC_VECTOR(2 DOWNTO 0);
--TimerAuxFSM signals
SIGNAL	s_countFSM        :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	s_countFSM_1, s_countFSM_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	s_enableHEX5, s_displayReset,s_loadFSM :  STD_LOGIC;
--Display select
SIGNAL	s_mux2Out, s_mux3Out :  STD_LOGIC_VECTOR(3 DOWNTO 0);
--Temporizador
SIGNAL	s_freezeTime_1, s_freezeTime_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	s_freezeTime :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 


clk <= CLOCK_50;


							 
debouncerKEY0 :  entity work.Debouncer(Behavioral)
					GENERIC MAP(inPolarity => '0',
								kHzClkFreq => 50000,
								mSecMinInWidth => 100,
								outPolarity => '1'
								)
					PORT MAP(refClk => clk,
							 dirtyIn => KEY(0),
							 pulsedOut => s_key0);
							 
							 
debouncerKEY1 :  entity work.Debouncer(Behavioral)
					GENERIC MAP(inPolarity => '0',
								kHzClkFreq => 50000,
								mSecMinInWidth => 100,
								outPolarity => '1')
					PORT MAP(refClk => clk,
							 dirtyIn => KEY(1),
							 pulsedOut => s_key1);

debouncerKEY2 : entity work.Debouncer(Behavioral)
					GENERIC MAP(inPolarity => '0',
								kHzClkFreq => 50000,
								mSecMinInWidth => 100,
								outPolarity => '1')
								
					PORT MAP(refClk => clk,
							 dirtyIn => KEY(2),
							 pulsedOut => s_key2);
							 
debouncerKEY3 : entity work.Debouncer(Behavioral)
					GENERIC MAP(inPolarity => '0',
								kHzClkFreq => 50000,
								mSecMinInWidth => 100,
								outPolarity => '1')
					PORT MAP(refClk => clk,
							 dirtyIn => KEY(3),
							 pulsedOut => s_key3);
							 
							 
Flipflop : entity work.flipflopd(Behavioral)
				PORT MAP(clk => clk,
						 reset => globalReset,
						 enable => s_en1,
						 dataIn => SW(0),
						 dataOut => p1_p2);
						 

							 
ControlSystemUnit : entity work.controlsystemunit_v2(BEHAVIOR)
						PORT MAP(reset => s_key1,
									 clock => clk,
									 start => s_key0,
									 freezeEnd => s_freezeEnd,
									 extraEn => s_extra,
									 newPrg => s_newPrg,
									 freeze => s_key2,
									 en_1 => s_en1,
									 en_2 => S(0),
									 en_3 => S(1),
									 start_stop => start_stop,
									 freezeStart => s_freezeStart,
									 rstGlobal => globalReset);
								 
PulseGen1HZ : entity work.pulsegenn(Behavioral)
				GENERIC MAP(N => 50000000)
				PORT MAP(clkIn => clk,
						 reset => globalReset,
						 pulse => s_pulse1HZ);
						 
TimeExtra : entity work.timeextra(Structural)
				PORT MAP(clk => clk,
						 data => s_key3,
						 enable => S(0),
						 resetglb => globalReset,
						 reset => s_dEnable,
						 cnt => cnt);
						 
						 
s_freezeEnable <= s_pulse1HZ AND S(1) AND s_freezeStart;

Temporizador : entity work.timern(Behavioral)
					GENERIC MAP(N => 30)
					PORT MAP(clk => clk,
							 reset => globalReset,
							 enable => s_freezeEnable,
							 start => s_freezeStart,
							 timerOut => s_freezeEnd,
							 cnt => s_freezeTime);
							 
BinTOBCDTemporizador : entity work.bintobcd(Behavioral)
							PORT MAP(inBin => s_freezeTime,
									 outBCD => s_freezeTime_1,
									 outBCD_2 => s_freezeTime_2);

MuxforHEX4 : 		entity work.mux3_1(Behavioral)
						PORT MAP(dataIn1 => cnt(3 DOWNTO 0),
								 dataIn2 => s_freezeTime_1,
								 dataIn3 => "1111",
								 S => S,
								 dataOut => s_mux3Out);

								 
MuxforHEX5 : 	entity work.mux2_1(BehavAssign)
					 GENERIC MAP(N => 4)
					 PORT MAP(sel => S(1),
							 input0 => "1111",
							 input1 => s_freezeTime_2,
							 muxOut => s_mux2Out);
							 
							 
s_enableHEX5 <= NOT(S(0));	


BreadBakerFSM :entity work.breadbakerfsm(Behavioral)
					PORT MAP(reset => globalReset,
							 clk => clk,
							 p1_p2 => p1_p2,
							 start_stop => start_stop,
							 timeExp => s_timeExp,
							 DataTime => s_time,
							 timeExtra => cnt,
							 newTime => s_newTime,
							 ledRed => s_led,
							 newPrg => s_newPrg,
							 extra => s_extra,
							 timeEnable1 => s_timeEnable,
							 InitLoad => s_InitLoad,
							 d_enable => s_dEnable,
							 mensagens => s_messages,
							 extraSelect => s_extraSelect,
							 addr => s_address,
							 stOut => stOut,
							 timeVal => s_TimeVal);
LEDR(0) <= s_led;
						 
ROM_Time : entity work.rom_kxn_1p_v1(Behaviour)
				GENERIC MAP(K => 4,
							   N => 8)
				PORT MAP(address => s_address,
						 dataOut => s_time);

s_enableTime <= s_timeEnable AND s_pulse1HZ;
s_loadFSM <= s_InitLoad OR s_newTime;
LEDG(2 DOWNTO 0) <= stOut(2 DOWNTO 0);


TimerAuxFSM : entity work.timerauxfsm(Behavioral)
					GENERIC MAP(N => 8)
					PORT MAP(clk => clk,
							 enable => s_enableTime,
							 load => s_loadFSM,
							 reset => globalReset,
							 dataIn => s_TimeVal,
							 timeExp => s_timeExp,
							 count => s_countFSM);
							 
BinTOBCDTimerAuxFSM : entity work.bintobcd(Behavioral)
							PORT MAP(inBin => s_countFSM,
									 outBCD => s_countFSM_1,
									 outBCD_2 => s_countFSM_2);



ROM_Messages : entity work.rom_kxn_1p_v2(Behaviour)
					GENERIC MAP(K => 1,
								  N => 16)
					PORT MAP(address(0) => s_messages,
							 dataOut => s_words);
						 					 				 
						 
s_displayReset <= NOT(globalReset);

LCD :    entity work.de2_lcd_display(DE2_LCD_DISPLAY_arch)
			GENERIC MAP(num_hex_digits => 2)
			PORT MAP(reset => s_displayReset,
					 clock_50 => clk,
					 LCD_CHAR_ARRAY_0 => stOut(0),
					 LCD_CHAR_ARRAY_1 => stOut(1),
					 LCD_CHAR_ARRAY_2 => stOut(2),
					 LCD_CHAR_ARRAY_3 => p1_p2,
					 LCD_CHAR_ARRAY_4 => s_extraSelect,
					 data_bus_0 => LCD_DATA(0),
					 data_bus_1 => LCD_DATA(1),
					 data_bus_2 => LCD_DATA(2),
					 data_bus_3 => LCD_DATA(3),
					 data_bus_4 => LCD_DATA(4),
					 data_bus_5 => LCD_DATA(5),
					 data_bus_6 => LCD_DATA(6),
					 data_bus_7 => LCD_DATA(7),
					 lcd_rs => LCD_RS,
					 lcd_e => LCD_EN,
					 lcd_rw => LCD_RW,
					 lcd_on => LCD_ON,
					 lcd_blon => LCD_BLON);


Bin7SegHEX0: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => '1',
						 binInput => s_words(3 DOWNTO 0),
						 decOut_n => HEX0);


Bin7SegHEX1: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => '1',
						 binInput => s_words(7 DOWNTO 4),
						 decOut_n => HEX1);

Bin7SegHEX2 : entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => '1',
						 binInput => s_words(11 DOWNTO 8),
						 decOut_n => HEX2);


Bin7SegHEX3: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => '1',
						 binInput => s_words(15 DOWNTO 12),
						 decOut_n => HEX3);


Bin7SegHEX4: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => '1',
						 binInput => s_mux3Out,
						 decOut_n => HEX4);


Bin7SegHEX5: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => s_enableHEX5,
						 binInput => s_mux2Out,
						 decOut_n => HEX5);


Bin7SegHEX6: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => s_dEnable,
						 binInput => s_countFSM_1,
						 decOut_n => HEX6);

Bin7SegHEX7: entity work.bin7segdecoder(Behavioral)
				PORT MAP(enable => s_dEnable,
						 binInput => s_countFSM_2,
						 decOut_n => HEX7);



END Shell;