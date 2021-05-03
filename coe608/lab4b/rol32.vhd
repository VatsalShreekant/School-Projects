LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY rol32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END rol32;
ARCHITECTURE description OF rol32 IS 
BEGIN
	result(31 DOWNTO 1) <= a32(30 DOWNTO 0);
	result(0) <= '0';
END description;