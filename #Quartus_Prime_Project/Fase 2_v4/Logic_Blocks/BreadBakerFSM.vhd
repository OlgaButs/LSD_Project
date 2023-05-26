library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Versao para ROM
entity BreadBakerFSM is
  port(
    reset      : in  std_logic;
    clk        : in  std_logic;
    p1_p2      : in  std_logic;--_vector(1 downto 0);
    start_stop : in  std_logic;
    timeExtra  : in  std_logic_vector(7 downto 0);
    newTime    : out std_logic;
    timeVal    : out std_logic_vector(7 downto 0);
    stOut      : out std_logic_vector(2 downto 0);
    timeExp    : in  std_logic;
    ledRed     : out std_logic;
    newPrg     : out std_logic;
    extra      : out std_logic;
    addr       : out std_logic_vector(3 downto 0);
    DataTime   : in std_logic_vector(7 downto 0);
	 timeEnable1: out std_logic;
	 InitLoad   : out std_logic;
    d_enable   : out std_logic; 
    mensagens  : out std_logic
  );
end BreadBakerFSM;

architecture Behavioral of BreadBakerFSM is
  signal add_ammassar, add_TotalTime, add_levedar, add_cozer, add_TFim : std_logic_vector(3 downto 0);
  signal s_mensagens : std_logic := '0';
  signal s_extra : std_logic;
  signal s_time, s_valueExtra : std_logic_vector(7 downto 0); 

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
  end process sync_proc;

 newTime <= s_stateChanged;

 address_proc : process(p1_p2)
 begin
 -- signal aprovado <= '1';
   case p1_p2 is
		when '1' =>
       add_ammassar <= "0101";
       add_TotalTime <= "0100";
       add_levedar <= "0110";
       add_cozer <= "0111";
		 add_TFim <= "1000";
     when others =>
       add_ammassar <= "0001";
       add_TotalTime <= "0000";
       add_levedar <= "0010";
       add_cozer <= "0011";
		 add_TFim <= "1000";
   end case;
 end process address_proc;

 
 addr <= add_ammassar when s_currentState = TAmmassar else
         add_TotalTime when s_currentState = TInit else
         add_levedar when s_currentState = TLevedar else
			add_TFIM when s_currentState = TFIM else
         add_cozer;

 s_time <= DataTime; 
 
 
 comb_proc : process(s_currentState, start_stop, timeExp,s_extra, s_time, s_valueExtra, timeExtra)
 begin
	s_valueExtra <= "00000000";
   s_mensagens <= '0';
   timeVal <= "00000000";
   newPrg  <= '0';
   s_extra <= '0';
   ledRed  <= '0';
   d_enable <= '1';
	timeEnable1 <= '1';
	InitLoad <= '0';
		
		
   case s_currentState is
	
     when TInit =>
		 InitLoad <= '1';
       timeVal <= s_time;
       if (start_stop = '1') then
         s_nextState <= TAmmassar;
       else
         s_nextState <= TInit;
       end if;

     when TAmmassar =>
       ledRed <= '1';
       timeVal <= s_time;
       if (timeExp = '1') then
         s_nextState <= TLevedar;
			InitLoad <= '1';---------------------------------------
       elsif start_stop = '0' then
         timeEnable1 <= '0';
         s_mensagens <= '1';
			s_nextState <= TAmmassar;
       else
         s_nextState <= TAmmassar;
       end if;

     when TLevedar =>
       ledRed <= '1';
       timeVal <= s_time;
       if (timeExp = '1') then
         s_nextState <= TCozer;
			InitLoad <= '1';---------------------------------------
       elsif start_stop = '0' then
         timeEnable1 <= '0';
         s_mensagens <= '1';
			s_nextState <= TLevedar;
       else
         s_nextState <= TLevedar;
       end if;

    when TCozer =>
			ledRed <= '1';
			if(s_extra = '1')then
			timeVal <= s_valueExtra;
			else
			timeVal <= s_time;
			end if;
			
			if (timeExp = '1') then
				s_nextState <= TFim;
				InitLoad <= '1';---------------------------------------
			elsif (start_stop = '0') then
				timeEnable1 <= '0';
				s_mensagens <= '1';
				s_nextState <= TCozer;
			else
				s_nextState <= TCozer;
			end if;


     when TFim =>
		 ledRed <= '1';
       d_enable <= '0';
       timeVal <= s_time;
       if (timeExp = '1') then
         s_nextState <= TExtra;
				s_extra <= '1';
       else
         s_nextState <= TFim;
			s_mensagens <= '1';
       end if;

     when TExtra => 
			 d_enable <= '0';
			 s_valueExtra <= timeExtra;
			 s_extra <= '0'; 
			 if (start_stop = '1') then
				if (s_valueExtra /= "00000000") then
				  s_nextState <= TCozer;
				else
				  s_nextState <= TInit;
				  newPrg <= '1';
				end if;
			 else
				s_nextState <= TExtra;
				s_mensagens <= '0';
			end if;

		when others => 
			 d_enable <= '1';
			 timeVal <= (others => '0');
			 s_extra <= '0';
			 newPrg <= '0';
			 ledRed <= '0';
			 s_mensagens <= '0';
			 report "Reach undefined state";

 end case;
 end process comb_proc;

 mensagens <= s_mensagens;
 extra <= s_extra;

 with s_currentState select
   stOut <= "000" when TInit,
				"001" when TAmmassar,
            "010" when TLevedar,
            "011" when TCozer,
				"100" when TFim,
				"101" when TExtra,
            "111" when others;
				
end Behavioral;
