LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Interface: [ROM Version]
ENTITY BreadBakerFSM IS
	PORT (
		reset : IN STD_LOGIC;
		clk : IN STD_LOGIC;
		p1_p2 : IN STD_LOGIC;
		start_stop : IN STD_LOGIC;
		timeExtra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		newTime : OUT STD_LOGIC;
		timeVal : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		stOut : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		timeExp : IN STD_LOGIC;
		ledRed : OUT STD_LOGIC;
		newPrg : OUT STD_LOGIC;
		extra : OUT STD_LOGIC;
		addr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		DataTime : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		timeEnable1 : OUT STD_LOGIC;
		InitLoad : OUT STD_LOGIC;
		d_enable : OUT STD_LOGIC;
		mensagens : OUT STD_LOGIC;
		debug1 : OUT STD_LOGIC;
		debug2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END BreadBakerFSM;


-- Architecture:
ARCHITECTURE Behavioral OF BreadBakerFSM IS

	SIGNAL add_ammassar, add_TotalTime, add_levedar, add_cozer, add_TFim : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL s_mensagens : STD_LOGIC := '0';
	SIGNAL s_extra, s_temp : STD_LOGIC := '0';
	SIGNAL s_time, s_valueExtra : STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE TState IS (TInit, TAmassar, TLevedar, TCozer, TFim, TExtra);
	SIGNAL s_currentState, s_nextState : TState := TInit;
	SIGNAL s_stateChanged : STD_LOGIC := '1';

BEGIN

	-- Atribuições Concorrentes:
	newTime <= s_stateChanged;
	addr <= add_ammassar WHEN s_currentState = TAmassar ELSE
		add_TotalTime WHEN s_currentState = TInit ELSE
		add_levedar WHEN s_currentState = TLevedar ELSE
		add_TFIM WHEN s_currentState = TFIM ELSE
		add_cozer;
	s_time <= DataTime;
	mensagens <= s_mensagens;
	extra <= s_extra;

	-- Processo Responsável Pela Atribuição de Um Novo Estado à FSM (pState <= fState) & Pelo Reset da FSM.
	sync_proc : PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF reset = '1' THEN
				s_currentState <= TInit;
				s_stateChanged <= '1';
			ELSE
				IF s_currentState /= s_nextState THEN
					s_stateChanged <= '1';
				ELSE
					s_stateChanged <= '0';
				END IF;
				s_currentState <= s_nextState;
			END IF;
		END IF;
	END PROCESS sync_proc;
	-- NOTA: O Sinal "s_stateChanged" é Usado Para Disparar o Load de Valores do Temporizador 'TimerAuxFSM' (...)
	-- (...) Que são Carregados via ROM -> FSM -> TimerAux.

	-- Processo Responsável Por Ler os Valores de Tempo (da ROM) Para Cada Estado.
	address_proc : PROCESS (p1_p2)
	BEGIN
		CASE p1_p2 IS
			WHEN '1' =>
				add_ammassar <= "0101";
				add_TotalTime <= "0100";
				add_levedar <= "0110";
				add_cozer <= "0111";
				add_TFim <= "1000";
			WHEN OTHERS =>
				add_ammassar <= "0001";
				add_TotalTime <= "0000";
				add_levedar <= "0010";
				add_cozer <= "0011";
				add_TFim <= "1000";
		END CASE;
	END PROCESS address_proc;
	-- NOTA: Cada um Destes Valores (de 4 bits) Corresponde ao Address da ROM. (...)
	-- (...) O Sinal "p1_p2" Corresponde à Seleção entre Rústico/Tradicional (Tipo de Pão).
	
	-- Processo da FSM (Onde Estão as Designações dos Estados).
	-- Estados: MENU / AMASSAR / LEVEDAR / COZER / TEMPO EXTRA FINAL (de uma forma simplificada).
	comb_proc : PROCESS (s_currentState, start_stop, timeExp, s_extra, s_time, s_temp, s_valueExtra, timeExtra)
	BEGIN
		--s_valueExtra <= "00000000"; -- Cria uma Latch Intencionalmente. Serve para Armazenar o Valor do Tempo Extra Final (...)
		s_mensagens <= '0'; -- (...) Introduzido Pelo Utilizador (no Final de Todo o Processo).
		timeVal <= "00000000";
		newPrg <= '0';
		s_extra <= '0';
		ledRed <= '0';
		d_enable <= '1';
		timeEnable1 <= '1';
		InitLoad <= '0';
		
		CASE s_currentState IS

			WHEN TInit => -- MENU PRINCIPAL.
				s_mensagens <= '1';
				s_temp <= '0';
				InitLoad <= '1';
				timeVal <= s_time;
				IF (start_stop = '1') THEN
					s_nextState <= TAmassar;
				ELSE
					s_nextState <= TInit;
				END IF;

			WHEN TAmassar => -- AMASSAR.
				ledRed <= '1';
				timeVal <= s_time;
				IF (timeExp = '1') THEN
					s_nextState <= TLevedar;
					InitLoad <= '1';
				ELSIF start_stop = '0' THEN
					timeEnable1 <= '0';
					s_mensagens <= '1';
					s_nextState <= TAmassar;
				ELSE
					s_nextState <= TAmassar;
				END IF;

			WHEN TLevedar => -- LEVEDAR.
				ledRed <= '1';
				timeVal <= s_time;
				IF (timeExp = '1') THEN
					s_nextState <= TCozer;
					InitLoad <= '1';
				ELSIF start_stop = '0' THEN
					timeEnable1 <= '0';
					s_mensagens <= '1';
					s_nextState <= TLevedar;
				ELSE
					s_nextState <= TLevedar;
				END IF;

			WHEN TCozer => -- COZER.
				--d_enable <= '1'; -- DEBUGGING
				ledRed <= '1';
				IF (s_temp = '1') THEN
					timeVal <= s_valueExtra;
				ELSE
					timeVal <= s_time;
				END IF;
				IF (timeExp = '1') THEN
					s_nextState <= TFim;
					InitLoad <= '1';
				ELSIF (start_stop = '0') THEN
					timeEnable1 <= '0';
					s_mensagens <= '1';
					s_nextState <= TCozer;
				ELSE
					s_nextState <= TCozer;
				END IF;
				
			WHEN TFim => -- Estado Intermédio.
				s_mensagens <= '0';
				ledRed <= '1';
				d_enable <= '0';
				timeVal <= s_time;
				IF (timeExp = '1') THEN
					s_nextState <= TExtra;
					--InitLoad <= '1'; -- DEBUGGING
					s_extra <= '1';
				ELSE
					s_nextState <= TFim;
				END IF;
				
			WHEN TExtra => -- TEMPO EXTRA FINAL.
				s_mensagens <= '1';
				d_enable <= '0';
				timeEnable1 <= '0';
				s_valueExtra <= timeExtra;
				s_extra <= '0';
				IF (start_stop = '1') THEN
					IF (s_valueExtra /= "00000000") THEN
						s_temp <= '1';
						s_nextState <= TCozer;
					ELSE
						s_nextState <= TInit;
						newPrg <= '1';
					END IF;
				ELSE
					s_temp <= '0';
					s_nextState <= TExtra;
				END IF;
				
			WHEN OTHERS =>
				d_enable <= '1';
				timeVal <= (OTHERS => '0');
				s_extra <= '0';
				newPrg <= '0';
				ledRed <= '0';
				s_mensagens <= '1';
				REPORT "Reach undefined state";
				
		END CASE;
	END PROCESS comb_proc;
	
	-- For Debugging Purposes:
	debug1 <= s_temp;
	debug2 <= s_valueExtra;
	WITH s_currentState SELECT
		stOut <= "000" WHEN TInit,
		"001" WHEN TAmassar,
		"010" WHEN TLevedar,
		"011" WHEN TCozer,
		"100" WHEN TFim,
		"101" WHEN TExtra,
		"111" WHEN OTHERS;
	
END Behavioral;