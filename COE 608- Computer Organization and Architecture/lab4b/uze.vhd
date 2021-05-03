LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
ENTITY uze IS 
PORT( 
uze_input    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
uze_output   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END uze; 

ARCHITECTURE Description OF uze IS  

BEGIN 
	uze_output <= "0000000000000000" & uze_input(31 downto 16);
END Description;  