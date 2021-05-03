LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY leftshift_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END leftshift_32bit;

ARCHITECTURE leftshift_32bitImpl OF leftshift_32bit IS
BEGIN
	result(31 DOWNTO 1)<= a_in(30 DOWNTO 0);
	result(0)<= '0';
END leftshift_32bitImpl;
	