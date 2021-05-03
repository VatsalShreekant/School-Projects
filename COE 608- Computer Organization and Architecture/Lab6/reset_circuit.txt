LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY reset_circuit IS
PORT
	(
		Reset : IN STD_LOGIC;
		Clk : IN STD_LOGIC;
		Enable_PD : OUT STD_LOGIC;
		Clr_PC : OUT STD_LOGIC
	);
END reset_circuit;

ARCHITECTURE description OF reset_circuit IS
signal counter: integer range 0 to 5;
BEGIN
	process(clk,Reset)
	variable counter :integer:=5;
	BEGIN		
		if (rising_edge(clk) and (clk='1'))
			then 
			if(Reset='1')	
				then
				counter:=0;
			end if;
			if(counter<4)
			then		
				Enable_PD<='0';
				Clr_PC<='1';
				counter:=counter+1;
			else
				Enable_PD<='1';
				Clr_PC<='0';
			end if;				
		end if;
	end process;
END description;