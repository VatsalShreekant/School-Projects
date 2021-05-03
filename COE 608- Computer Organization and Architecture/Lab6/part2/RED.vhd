LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY RED IS--Reducer module //takes the lower 8 bits of an input and outputs them
PORT(
       d        : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       o		: OUT UNSIGNED(7 DOWNTO 0));     
end RED;
architecture behaviour of RED is
	begin
		o <= unsigned(d(7 downto 0));
end behaviour;