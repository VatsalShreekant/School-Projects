LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY or_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b_in		:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END or_32bit;

ARCHITECTURE or_32bitImpl OF or_32bit IS
BEGIN
	result<= a_in OR b_in;
END or_32bitImpl;
	