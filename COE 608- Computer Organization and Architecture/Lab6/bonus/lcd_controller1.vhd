-- Victor Dumitriu
-- Ryerson University Electrical and Computer Engineering Department.

-- Dedicated LCD display unit. The circuit can be used to display any two 32-bit
-- binary numbers on Optrex 1602 or compatible LCD displays.

-- Usage: The two numbers to be displayed should be connected to inA and inB.
-- Signals enIN, enDI, enPL, ready and start are used for debugging purposes only
-- and should be left un-connected during normal operation.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY lcd_controller1 IS
	PORT
	(
	-- Circuit clock; a slow clock should be used as the circuit does not require
	-- a high-frequency clock.
		clk								: IN	STD_LOGIC;
	-- Enabling signal for the circuit.
		enable							: IN	STD_LOGIC;
	-- Input data coming from the LCD unit.
		lcdDataIn						: IN 	STD_LOGIC_VECTOR(7 DOWNTO 0);
	-- The two 32-bit numbers to be displayed.
		inA, inB						: IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
	-- Controll output signals for the LCD unit.
		lcd_RS, lcd_RW, lcd_EN			: OUT	STD_LOGIC;
		lcd_ON							: OUT 	STD_LOGIC;
		lcd_DATA						: OUT 	STD_LOGIC_VECTOR(7 DOWNTO 0);
	-- Debug signals used during testing.
		enIN, enDI, enPL				: out	STD_LOGIC;
		ready, start					: out 	STD_LOGIC
	);
END lcd_controller1;



ARCHITECTURE behavior OF lcd_controller1 IS

	-- Initialization pattern generator.
	COMPONENT generator1
		PORT
		(
			clk								: IN	STD_LOGIC;
			enable							: IN 	STD_LOGIC;
			lcd_RS, lcd_RW, lcd_EN 			: OUT	STD_LOGIC;
			lcd_DATA						: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			init_done						: OUT	STD_LOGIC
		);
	END COMPONENT;

	-- Main display pattern generator.
	COMPONENT generatorUnit
		PORT
		(
			clk								: IN	STD_LOGIC;
			enable, ready					: IN	STD_LOGIC;
			A1, A2, A3, A4, A5, A6, A7, A8	: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			B1, B2, B3, B4, B5, B6, B7, B8	: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			lcd_EN, lcd_RS, lcd_RW			: OUT	STD_LOGIC;
			start							: OUT 	STD_LOGIC;
			lcd_DATA						: OUT 	STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;

	-- Polling unit used to check if the LCD unit is busy.
	COMPONENT pollUnit
		PORT
		(
			clk							: IN 	STD_LOGIC;
			enable, start				: IN	STD_LOGIC;
			lcd_DATA					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			lcd_EN, lcd_RS, lcd_RW		: OUT	STD_LOGIC;
			ready						: OUT	STD_LOGIC
		);
	END COMPONENT;
	
	-- Decoder used to generate the required set of addresses for the 8 digits
	-- used when displaying a 32-bit number in hexadecimal notation.
	COMPONENT decoder_32bit
		PORT
		(
			inData			: IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
			outPat1			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat2			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat3			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat4			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat5			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat6			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat7			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			outPat8			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;


	-- Controller state signals.
	TYPE sysState IS (off, init, running);
	SIGNAL state1: sysState;

	-- Init Unit signals.
	SIGNAL RS_from_INIT : STD_LOGIC;
	SIGNAL RW_from_INIT	: STD_LOGIC;
	SIGNAL EN_from_INIT	: STD_LOGIC;
	SIGNAL done_from_INIT : STD_LOGIC;
	SIGNAL DATA_from_INIT : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL EN_to_INIT : STD_LOGIC;
	
	-- Display Unit signals.
	SIGNAL RS_from_DISP : STD_LOGIC;
	SIGNAL RW_from_DISP	: STD_LOGIC;
	SIGNAL EN_from_DISP	: STD_LOGIC;
	SIGNAL DATA_from_DISP : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL EN_to_DISP : STD_LOGIC;
	
	-- Polling Unit Signals.
	SIGNAL RS_from_POLL : STD_LOGIC;
	SIGNAL RW_from_POLL	: STD_LOGIC;
	SIGNAL EN_from_POLL	: STD_LOGIC;
	SIGNAL EN_to_POLL : STD_LOGIC;
	
	-- Universal Signals
	SIGNAL pollStart : STD_LOGIC;
	SIGNAL pollReady : STD_LOGIC;
	
	-- Data Signals for A
	SIGNAL A1_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A2_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A3_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A4_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A5_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A6_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A7_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL A8_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- Data Signals for B
	SIGNAL B1_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B2_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B3_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B4_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B5_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B6_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B7_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B8_from_DEC : STD_LOGIC_VECTOR(7 DOWNTO 0);

	
BEGIN

-- Instantiation of the components used in the system. these consist of an
-- initialization unit, a main display unit, a polling unit and two 32-bit
-- decoders.

	initialization_unit : generator1 
	PORT MAP
	(
		clk => clk,
		enable => EN_to_INIT,
		lcd_RS => RS_from_INIT,
		lcd_RW => RW_from_INIT,
		lcd_EN => EN_from_INIT,
		lcd_DATA => DATA_from_INIT,
		init_done => done_from_INIT
	);
	
	display_unit : generatorUnit 
	PORT MAP
	(
		clk => clk,
		enable => EN_to_DISP,
		ready => pollReady,
		A1 => A1_from_DEC,
		A2 => A2_from_DEC,
		A3 => A3_from_DEC,
		A4 => A4_from_DEC,
		A5 => A5_from_DEC,
		A6 => A6_from_DEC,
		A7 => A7_from_DEC,
		A8 => A8_from_DEC,
		B1 => B1_from_DEC,
		B2 => B2_from_DEC,
		B3 => B3_from_DEC,
		B4 => B4_from_DEC,
		B5 => B5_from_DEC,
		B6 => B6_from_DEC,
		B7 => B7_from_DEC,
		B8 => B8_from_DEC,
		lcd_EN => EN_from_DISP,
		lcd_RS => RS_from_DISP,
		lcd_RW => RW_from_DISP,
		start => pollStart,
		lcd_DATA => DATA_from_DISP
	);
	
	polling_unit : pollUnit 
	PORT MAP
	(
		clk => clk,
		enable => EN_to_POLL,
		start => pollStart,
		lcd_DATA => lcdDataIn,
		lcd_EN => EN_from_POLL,
		lcd_RS => RS_from_POLL,
		lcd_RW => RW_from_POLL,
		ready => pollReady
	);
	
	decoderA : decoder_32bit 
	PORT MAP
	(
		inData => inA,
		outPat1 => A1_from_DEC,
		outPat2	=> A2_from_DEC,
		outPat3	=> A3_from_DEC,
		outPat4	=> A4_from_DEC,
		outPat5	=> A5_from_DEC,
		outPat6	=> A6_from_DEC,
		outPat7	=> A7_from_DEC,
		outPat8	=> A8_from_DEC
	);
	
	decoderB : decoder_32bit 
	PORT MAP
	(
		inData => inB,
		outPat1 => B1_from_DEC,
		outPat2	=> B2_from_DEC,
		outPat3	=> B3_from_DEC,
		outPat4	=> B4_from_DEC,
		outPat5	=> B5_from_DEC,
		outPat6	=> B6_from_DEC,
		outPat7	=> B7_from_DEC,
		outPat8	=> B8_from_DEC
	);

	
-- Routing of debug information outside the circuit.
	enIN <= EN_to_INIT;
	enDI <= EN_to_DISP;
	enPL <= EN_to_POLL;
	ready <= pollReady;
	start <= pollStart;
	
-- System state selection: clock-based process which moves the system between
-- off, initialization, and regular operation stages.	
	state_selection:
	PROCESS (clk, state1, done_from_INIT, enable)
	BEGIN
	
	-- The circuit only operates if it is turned on with the enable signal.
		IF(enable = '1') THEN
			-- All major state trnasitions occur on the positive clock edge.
			IF(clk'event AND clk = '1')THEN
			
				-- Transition from off state to initialization.
				IF(state1 = off)THEN
					state1 <= init;
					EN_to_INIT <= '1';
					
				-- Initialization state is maintained until the initialization
				-- unit completes operation.
				ELSIF(state1 = init)THEN
					-- Once initialization is complete the circuit enters normal
					-- operation.
					IF(done_from_INIT = '1') THEN
						state1 <= running;
						EN_to_INIT <= '0';
						EN_to_DISP <= '1';
						EN_to_POLL <= '1';
					ELSE
					END IF;
				
				-- The normal operation state.	
				ELSE
					state1 <= running;
				END IF;
			END IF;
		
		-- If the circuit is disabled, the state is set to off.	
		ELSE
			state1 <= off;
			EN_to_INIT <= '0';
			EN_to_DISP <= '0';
			EN_to_POLL <= '0';
		END IF;
	
	END PROCESS state_selection;

-- Combinational circuit used to select which set of outputs gets routed to
-- the LCD unit, based on the current state and various indicator signals.
	output_mux:
	PROCESS (done_from_INIT, pollReady, enable, state1)
	BEGIN
		IF(enable = '1')THEN
			-- LCD unit is turned on when the circuit is enabled.
			lcd_ON <= '1';
			
			-- While the initialization unit is in operation, its outputs are
			-- presented to the LCD unit.
			IF(state1 = init AND done_from_INIT = '0')THEN
				lcd_RS <= RS_from_INIT;
				lcd_RW <= RW_from_INIT;
				lcd_EN <= EN_from_INIT;
				lcd_DATA <= DATA_from_INIT;
			-- If initialization is complete, either the pattern generator or the
			-- polling unit will be routed to the LCD unit.	
			ELSE
				-- Generator is in operation.
				IF(pollReady = '1')THEN
					lcd_RS <= RS_from_DISP;
					lcd_RW <= RW_from_DISP;
					lcd_EN <= EN_from_DISP;
					lcd_DATA <= DATA_from_DISP;
				
				-- Polling is in effec. The generator is stading by.
				ELSE
					lcd_RS <= RS_from_POLL;
					lcd_RW <= RW_from_POLL;
					lcd_EN <= EN_from_POLL;
					lcd_DATA <= "00000000";
				END IF;
			END IF;
		
		-- If the system is off, all signals are driven low.	
		ELSE
			lcd_ON <= '0';
			lcd_RS <= '0';
			lcd_RW <= '0';
			lcd_EN <= '0';
			lcd_DATA <= "00000000";
		END IF;
	END PROCESS output_mux;

END behavior;
