LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY pollUnit IS
	PORT
	(
		clk							: IN 	STD_LOGIC;
		enable, start				: IN	STD_LOGIC;
		lcd_DATA					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
		lcd_EN, lcd_RS, lcd_RW		: OUT	STD_LOGIC;
		ready						: OUT	STD_LOGIC
	);
END pollUnit;

ARCHITECTURE behavior OF pollUnit IS

	TYPE sysState IS (Idle, Check);
	SIGNAL state1: sysState;

	SIGNAL busyF : STD_LOGIC;
	SIGNAL waitCount : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN

	busyF <= lcd_DATA(7);

	mainOp:
	PROCESS (enable, clk, start, state1, busyF)
	BEGIN
	
		IF(enable = '1') THEN
	
			IF(clk'event AND clk = '1') THEN
			
				IF(state1 = Idle AND start = '1') THEN
					state1 <= Check;
					waitCount <= "0000";
					lcd_EN <= '0';
					lcd_RS <= '0';
					lcd_RW <= '1';
					ready <= '0';
					
				ELSIF(state1 = Check) THEN
					IF(waitCount < "0011") THEN
						lcd_EN <= '1';
						waitCount <= waitCount + 1;
						
					ELSIF(waitCount = "0011") THEN
						IF(busyF = '1') THEN
							waitCount <= "0000";
							lcd_EN <= '0';
						ELSE
							ready <= '1';
							waitCount <= waitCount + 1;
						END IF;
						
					ELSIF(waitCount > "0011" AND waitCount < "0110") THEN
						waitCount <= waitCount + 1;
						
					ELSE
						state1 <= Idle;
						waitCount <= "0000";
						lcd_EN <= '0';
						lcd_RW <= '0';
						lcd_RS <= '0';
					END IF;
					
				ELSE
					lcd_EN <= '0';
					lcd_RS <= '0';
					lcd_RW <= '0';
					ready <= '1';
				END IF;
			
			END IF;
		
		ELSE
			lcd_EN <= '0';
			lcd_RS <= '0';
			lcd_RW <= '0';
			ready <= '0';
		END IF;
		
	END PROCESS mainOp;

END behavior;

