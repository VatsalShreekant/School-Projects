LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY or32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END or32;
ARCHITECTURE description OF or32 IS 
BEGIN
	result <= a32 OR b32;
END description;