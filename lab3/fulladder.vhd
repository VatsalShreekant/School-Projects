LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY fulladder IS
	PORT(a				:IN STD_LOGIC;
		  b		   	:IN STD_LOGIC;
		  cin			 	:IN STD_lOGIC;
		  cout			:OUT STD_lOGIC;
		  sum			:OUT STD_LOGIC);
END fulladder;

ARCHITECTURE fulladderImpl OF fulladder IS
BEGIN
	sum<= (a XOR b) XOR cin;
	cout <= (a AND b) OR ((a XOR b) AND cin);
END fulladderImpl;