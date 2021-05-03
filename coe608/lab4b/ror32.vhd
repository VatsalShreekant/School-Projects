LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY ror32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END ror32;
ARCHITECTURE description OF ror32 IS 
BEGIN
	result(30 DOWNTO 0) <= a32(31 DOWNTO 1);
	result(31) <= '0';
END description;