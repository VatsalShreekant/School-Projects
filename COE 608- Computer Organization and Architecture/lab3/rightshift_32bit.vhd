LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY rightshift_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END rightshift_32bit;

ARCHITECTURE rightshift_32bitImpl OF rightshift_32bit IS
BEGIN
	result(30 DOWNTO 0)<= a_in(31 DOWNTO 1);
	result(31)<= '0';
END rightshift_32bitImpl;
	