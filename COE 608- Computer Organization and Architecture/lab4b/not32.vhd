LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY not32 IS
PORT(
		x :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		y :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END not32;
ARCHITECTURE description OF not32 IS 
BEGIN
	y <= NOT x;
END description;