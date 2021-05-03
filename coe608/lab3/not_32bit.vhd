LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY not_32bit IS
	PORT(x			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  y			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END not_32bit;

ARCHITECTURE not_32bitImpl OF not_32bit IS
BEGIN
	y<= NOT x;
END not_32bitImpl;
	