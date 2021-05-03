LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
ENTITY red IS 
PORT( 
red_input    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
red_output   : OUT unsigned(7 DOWNTO 0));  
END red; 

ARCHITECTURE Description OF red IS  

BEGIN 
	red_output <= unsigned(red_input(7 downto 0));
END Description;  