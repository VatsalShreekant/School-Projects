LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY generator1 IS
	PORT
	(
		clk								: IN	STD_LOGIC;
		enable							: IN 	STD_LOGIC;
		lcd_RS, lcd_RW, lcd_EN 			: OUT	STD_LOGIC;
		lcd_DATA						: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		init_done						: OUT	STD_LOGIC
	);
END generator1;


ARCHITECTURE behavior OF generator1 IS

COMPONENT displayUnit
	PORT
	(
		clk						: IN	STD_LOGIC;
		start, address			: IN	STD_LOGIC;
		data					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
		lcd_RS, lcd_RW, lcd_EN	: OUT	STD_LOGIC;
		lcd_DATA				: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)	
	);
END COMPONENT;

	TYPE system_state IS (off, running);
	SIGNAL state1: system_state;

	SIGNAL waitCount : STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL waitCount2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	SIGNAL startDisplay : STD_LOGIC;
	SIGNAL data_to_display : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN

	instruction : displayUnit  
	PORT MAP
	(
		clk => clk,
		start => startDisplay,
		address => '1',
		data => data_to_display,
		lcd_RS => lcd_RS,
		lcd_RW => lcd_RW,
		lcd_EN => lcd_EN,
		lcd_DATA => lcd_DATA
	);
	
	init_loop:
	PROCESS (enable, clk, state1)
	BEGIN
		IF(clk'event AND clk = '1')THEN
		
			IF(enable = '1' AND state1 = off)THEN
				state1 <= running;
				waitCount <= "0000000000";
				waitCount2 <= "0000";
				startDisplay <= '0';
				data_to_display <= "00000000";
				init_done <= '0';
				
			ELSIF(state1 = running) THEN
			
				-- 15 ms Wait.
				IF(waitCount < "1011101111") THEN
					waitCount <= waitCount + 1;
					startDisplay <= '0';
					data_to_display <= "00000000";
			
				-- First iteration and 4.1 ms wait.
				ELSIF(waitCount2 < "1111" AND waitCount >= "1011101111" AND waitCount < "1110111101") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00110000";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount >= "1011101111" AND waitCount < "1110111101") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1110111101") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Second iteration and 100 us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1110111101" AND waitCount < "1111000011") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00110000";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1110111101" AND waitCount < "1111000011") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111000011") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Third iteration and 100 us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1111000011" AND waitCount < "1111001001") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00110000";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1111000011" AND waitCount < "1111001001") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111001001") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Function Set and 100us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1111001001" AND waitCount < "1111001111") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00111000";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1111001001" AND waitCount < "1111001111") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111001111") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Display off and 100us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1111001111" AND waitCount < "1111010101") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00001100";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1111001111" AND waitCount < "1111010101") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111010101") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Display Clear and 100us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1111010101" AND waitCount < "1111011011") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00000001";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1111010101" AND waitCount < "1111011011") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111011011") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
					
				-- Entry mode set and 100us wait.
				ELSIF(waitCount2 < "1111" AND waitCount > "1111011011" AND waitCount < "1111100001") THEN
					waitCount2 <= waitcount2 + 1;
					data_to_display <= "00000110";
					startDisplay <= '1';
				ELSIF(waitCount2 = "1111" AND waitCount > "1111011011" AND waitCount < "1111100001") THEN
					waitCount <= waitCount + 1;
					data_to_display <= "00000000";
					startDisplay <= '0';
				ELSIF(waitCount2 = "1111" AND waitCount = "1111100001") THEN
					waitCount2 <= "0000";
					waitCount <= waitCount + 1;
				
				ELSE
					waitCount <= "0000000000";
					waitCount2 <= "0000";
					state1 <= off;
					init_done <= '1';
					startDisplay <= '0';
					data_to_display <= "00000000";
				END IF;
					
			ELSE
				state1 <= off;
				waitCount <= "0000000000";
				waitCount2 <= "0000";
				startDisplay <= '0';
				data_to_display <= "00000000";
				init_done <= '0';
			END IF;
			
		END IF;
			
	END PROCESS init_loop;


END behavior;
