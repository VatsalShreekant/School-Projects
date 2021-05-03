LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY reg1 IS
PORT(
d : IN STD_LOGIC; -- input.
ld : IN STD_LOGIC; -- load/enable.
clr : IN STD_LOGIC; -- async. clear.
clk : IN STD_LOGIC; -- clock.
Q : OUT STD_LOGIC); -- output.
END reg1;

ARCHITECTURE description OF reg1 IS
BEGIN
	process(clk,clr)
	BEGIN
	if (clr='0') then			
		if (rising_edge(clk) and (clk='1'))
			then 		
				if (ld='1')	then Q<=d;
				end if;				
			end if;
		else Q<='0';
		end if;
	end process;
END description;