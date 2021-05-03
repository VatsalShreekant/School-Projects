LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY reg32 IS
PORT(
	d32 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.
	ld : IN STD_LOGIC; -- load/enable.
	clr : IN STD_LOGIC; -- async. clear.
	clk : IN STD_LOGIC; -- clock.
	Q32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.
END reg32;
ARCHITECTURE description OF reg32 IS
BEGIN

	process(clk,clr)
	BEGIN
	if (clr='0') then			
		if (rising_edge(clk) and (clk='1'))
			then 		
				if (ld='1')	then Q32<=d32;
				end if;				
			end if;
		else Q32<=(others => '0');
		end if;
	end process;
END description;