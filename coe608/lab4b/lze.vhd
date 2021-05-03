LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
ENTITY lze IS 
PORT( 
lze_input    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
lze_output   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END lze; 

ARCHITECTURE Description OF lze IS  

BEGIN 
	lze_output <= lze_input(15 downto 0) & "0000000000000000";
END Description;  