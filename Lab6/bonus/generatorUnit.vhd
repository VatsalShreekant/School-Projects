LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY generatorUnit IS
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
END generatorUnit;

ARCHITECTURE behavior OF generatorUnit IS
	
	TYPE systemState IS (setAddrA, setA, setCol1, setA1, setA2, setA3, setA4, setA5, setA6,
						setA7, setA8, setAddrB, setB, setCol2, setB1, setB2, setB3, setB4,
						setB5, setB6, setB7, setB8, waitS);
	SIGNAL state1: systemState;
	
	SIGNAL waitCount : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL waitCount2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL data_to_display : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL address_to_display : STD_LOGIC;
	SIGNAL start_to_display : STD_LOGIC;
	
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

	
BEGIN

	disp1 : displayUnit 
	PORT MAP
	(
		clk => clk,
		start => start_to_display,
		address => address_to_display,
		data => data_to_display,
		lcd_RS => lcd_RS,
		lcd_RW => lcd_RW,
		lcd_EN => lcd_EN,
		lcd_DATA => lcd_DATA
	);


	main_op:
	PROCESS (clk, ready, state1, enable)
	BEGIN
	
		IF(enable = '1')THEN
		
			IF(clk'event AND clk = '1') THEN
			
				-- Address of A
				IF(state1 = setAddrA) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setAddrA;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "10000000";
							address_to_display <= '1';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA;
						waitCount <= "0000";
					END IF;
					
				-- A
				ELSIF(state1 = setA) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "01000001";
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setCol1;
						waitCount <= "0000";
					END IF;
				
				-- Colon 1
				ELSIF(state1 = setCol1) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setCol1;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "00111010";
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA1;
						waitCount <= "0000";
					END IF;
				
				-- A1
				ELSIF(state1 = setA1) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA1;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A1;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA2;
						waitCount <= "0000";
					END IF;
					
				-- A2
				ELSIF(state1 = setA2) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA2;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A2;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA3;
						waitCount <= "0000";
					END IF;
					
				-- A3
				ELSIF(state1 = setA3) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA3;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A3;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA4;
						waitCount <= "0000";
					END IF;
					
				-- A4
				ELSIF(state1 = setA4) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA4;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A4;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA5;
						waitCount <= "0000";
					END IF;
					
				-- A5
				ELSIF(state1 = setA5) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA5;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A5;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA6;
						waitCount <= "0000";
					END IF;
					
				-- A6
				ELSIF(state1 = setA6) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA6;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A6;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA7;
						waitCount <= "0000";
					END IF;
					
				-- A7
				ELSIF(state1 = setA7) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA7;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A7;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setA8;
						waitCount <= "0000";
					END IF;
					
				-- A8
				ELSIF(state1 = setA8) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setA8;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= A8;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setAddrB;
						waitCount <= "0000";
					END IF;
				
				-- Address of B
				ELSIF(state1 = setAddrB) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setAddrB;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "11000000";
							address_to_display <= '1';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB;
						waitCount <= "0000";
					END IF;
					
				-- B
				ELSIF(state1 = setB) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "01000010";
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setCol2;
						waitCount <= "0000";
					END IF;
				
				-- Colon 2
				ELSIF(state1 = setCol2) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setCol2;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= "00111010";
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB1;
						waitCount <= "0000";
					END IF;
				
				-- B1
				ELSIF(state1 = setB1) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB1;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B1;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB2;
						waitCount <= "0000";
					END IF;
					
				-- B2
				ELSIF(state1 = setB2) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB2;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B2;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB3;
						waitCount <= "0000";
					END IF;
					
				-- B3
				ELSIF(state1 = setB3) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB3;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B3;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB4;
						waitCount <= "0000";
					END IF;
					
				-- B4
				ELSIF(state1 = setB4) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB4;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B4;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB5;
						waitCount <= "0000";
					END IF;
					
				-- B5
				ELSIF(state1 = setB5) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB5;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B5;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB6;
						waitCount <= "0000";
					END IF;
					
				-- B6
				ELSIF(state1 = setB6) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB6;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B6;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB7;
						waitCount <= "0000";
					END IF;
					
				-- B7
				ELSIF(state1 = setB7) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB7;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B7;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= setB8;
						waitCount <= "0000";
					END IF;
					
				-- B8
				ELSIF(state1 = setB8) THEN
					IF(waitCount < "1010") THEN
						IF(ready = '1') THEN
							state1 <= setB8;
							waitCount <= waitCount + 1;
							start_to_display <= '1';
							data_to_display <= B8;
							address_to_display <= '0';
							start <= '0';
						ELSE
						END IF;
					ELSIF(waitCount >= "1010" AND waitCount < "1111") THEN
						start_to_display <= '0';
						start <= '1';
						waitCount <= waitCount + 1;
					ELSE
						state1 <= waitS;
						waitCount <= "0000";
						waitCount2 <= "0000000000";
					END IF;
				
				ELSIF(state1 = waitS) THEN
					IF(waitCount2 < "1111111111") THEN
						state1 <= waitS;
						start_to_display <= '0';
						start <= '0';
						waitCount2 <= waitCount2 + 1;
					ELSE
						state1 <= setAddrA;
					END IF;
					
				END IF;
				
			END IF;
		
		ELSE
			start_to_display <= '0';
			state1 <= setAddrA;
			waitCount <= "0000";
			waitCount2 <= "0000000000";
			start <= '0';
		END IF;
	
	END PROCESS main_op;

END behavior;



