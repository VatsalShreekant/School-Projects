-- Victor Dumitriu
-- Clock divider, used to turn a 27 MHz clock into a 270 KHz one.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY clDivide IS
	PORT
	(
		clkIn 		: IN	STD_LOGIC;
		clkOut		: OUT	STD_LOGIC
	);
END clDivide;

ARCHITECTURE behavior OF clDivide IS
	SIGNAL counter : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL tmp : STD_LOGIC;
BEGIN

	clock_divider:
	PROCESS (clkIn)
	BEGIN
	
		IF(clkIn'event AND clkIn = '1') THEN
			counter <= counter + 1;
			IF(counter = "1111101000") THEN
				tmp <= NOT tmp;
				clkOut <= tmp;
				counter <= "0000000000"; 
			END IF;
		END IF;
	
	END PROCESS clock_divider;

END behavior;
