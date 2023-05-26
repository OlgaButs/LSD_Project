library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

--Versão para register
entity BakeBreadFSM is
  port(reset       : in  std_logic;
       clk         : in  std_logic;
       start_stop  : in  std_logic;
       timeExtra   : in  std_logic_vector(7 downto 0);
		 TimeAmaassar: in  std_logic_vector(7 downto 0);
		 TimeCozer   : in  std_logic_vector(7 downto 0);
		 TimeLevedar : in  std_logic_vector(7 downto 0);
       newTime     : out std_logic;
       timeVal     : out std_logic_vector(7 downto 0);
       stOut       : out std_logic_vector(2 downto 0);
       timeExp     : in  std_logic;
       ledRed      : out std_logic;
       newPrg      : out std_logic;
       extra       : out std_logic;
       d_enable    : out std_logic;
		 timeEnable  : out std_logic;
		 InitLoad    : out std_logic;
       mensagens   : out std_logic_vector(2 downto 0)
  );
end BakeBreadFSM ;

architecture Behavioral of BakeBreadFSM is

  signal s_ammassar, s_levedar, s_cozer, s_valueExtra, s_totalTime : std_logic_vector(7 downto 0);
  signal s_mensagens : std_logic_vector(2 downto 0) := "000";
  signal s_extra : std_logic;

  type TState is (TInit, TAmmassar, TLevedar, TCozer, TFim, TExtra);
  signal s_currentState, s_nextState : TState := TInit;
  signal s_stateChanged : std_logic := '1';

begin

  sync_proc : process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        s_currentState <= TInit;
        s_stateChanged <= '1';
      else
        if s_currentState /= s_nextState then
          s_stateChanged <= '1';
        else
          s_stateChanged <= '0';
        end if;
        s_currentState <= s_nextState;
      end if;
    end if;
  end process;

  newTime <= s_stateChanged;
  s_TotalTime <= std_logic_vector(unsigned(s_ammassar)  + unsigned(s_cozer) + unsigned(s_levedar));
  
 comb_proc : process(s_currentState, start_stop, timeExp, s_valueExtra,timeExtra)
 begin
	s_valueExtra <= "00000000";
   s_mensagens <= "000";
   timeVal <= "00000000";
   newPrg  <= '0';
   s_extra <= '0';
   ledRed  <= '0';
   d_enable <= '1';
	timeEnable <= '1';
	InitLoad <= '0';
		
		
   case s_currentState is
	
     when TInit =>
		 InitLoad <= '1';	 
       timeVal <= s_totalTime;
       if (start_stop = '1'and s_totalTime /= "00000000") then
         s_nextState <= TAmmassar;
       else
         s_nextState <= TInit;
       end if;

     when TAmmassar =>
	  
       ledRed <= '1';
       timeVal <= TimeAmaassar;
       if (timeExp = '1') then
         s_nextState <= TLevedar;
       elsif start_stop = '0' then
         timeEnable <= '0';
         s_mensagens <= "001";
			s_nextState <= TAmmassar;
       else
         s_nextState <= TAmmassar;
       end if;

     when TLevedar =>
	  
       ledRed <= '1';
       timeVal <= TimeAmaassar;
       if (timeExp = '1') then
         s_nextState <= TCozer;
       elsif start_stop = '0' then
         timeEnable <= '0';
         s_mensagens <= "010";
			s_nextState <= TLevedar;
       else
         s_nextState <= TLevedar;
       end if;

    when TCozer =>
			ledRed <= '1';
			
			if(s_extra = '1')then
			timeVal <= s_valueExtra;
			else
			timeVal <= TimeCozer;
			end if;
			
			if (timeExp = '1') then
				s_nextState <= TFim;
			elsif (start_stop = '0') then
				timeEnable <= '0';
				s_mensagens <= "011";
				s_nextState <= TCozer;
			else
				s_nextState <= TCozer;
			end if;


     when TFim => 
       d_enable <= '0';
       timeVal <= "00000010";
       if (timeExp = '1') then
         s_nextState <= TExtra;
       else
         s_nextState <= TFim;
       end if;

     when TExtra => 
			 d_enable <= '0';
			 s_valueExtra <= timeExtra;
			 s_extra <= '1'; 
			 if (start_stop = '1') then
				if (s_valueExtra /= "00000000") then
				  s_nextState <= TCozer;
				else
				  s_nextState <= TInit;
				  newPrg <= '1';
				end if;
			 else
				s_nextState <= TExtra;
       end if;
		 
		 when others => 
				 d_enable <= '1';
				 timeVal <= (others => '0');
				 s_extra <= '0';
				 newPrg <= '0';
				 ledRed <= '0';
				 timeEnable <= '0';
				 InitLoad <= '0'; 
				 report "Reach undefined state";
 end case;
 end process comb_proc;
  mensagens <= s_mensagens;
  extra <= s_extra;

  with s_currentState select
    stOut <= "001" when TAmmassar,
             "010" when TLevedar,
             "011" when TCozer,
             "000" when others;

end Behavioral;
