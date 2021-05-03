LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY and_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b_in		:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END and_32bit;

ARCHITECTURE and_32bitImpl OF and_32bit IS
BEGIN
	result<= a_in AND b_in;
END and_32bitImpl;
	