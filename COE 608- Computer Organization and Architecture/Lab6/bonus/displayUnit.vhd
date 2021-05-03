LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY displayUnit IS
	PORT
	(
		clk						: IN	STD_LOGIC;
		start, address			: IN	STD_LOGIC;
		data					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
		lcd_RS, lcd_RW, lcd_EN	: OUT	STD_LOGIC;
		lcd_DATA				: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END displayUnit;

ARCHITECTURE behavior OF displayUnit IS

	-- The delay generator. Used to make the appropriate dealys.
	SIGNAL waitCount : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN

	mainOp:
	PROCESS (start, address, clk)
	BEGIN
		IF(clk'event AND clk = '1') THEN
			IF(start = '1') THEN
		
				IF(address = '1') THEN
					lcd_RS <= '0';
				ELSE
					lcd_RS <= '1';
				END IF;
		
				lcd_RW <= '0';
				lcd_DATA <= data;
			
				IF(waitCount < "0011") THEN
					waitCount <= waitCount + 1;
					lcd_EN <= '0';
				ELSIF(waitCount >= "0011" AND waitCount < "0110") THEN
					waitCount <= waitCount + 1;
					lcd_EN <= '1';
				ELSIF(waitCount >= "0110" AND waitCount < "1001") THEN
					waitCount <= waitCount + 1;
					lcd_EN <= '0';
				ELSE
				END IF;
			ELSE
				lcd_RS <= '0';
				lcd_RW <= '0';
				lcd_EN <= '0';
				lcd_DATA <= "00000000";
				waitCount <= "0000";
			END IF;
			
		END IF;

	END PROCESS mainOp;


END behavior;


