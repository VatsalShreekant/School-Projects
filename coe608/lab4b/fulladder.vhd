LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY fulladder IS
PORT(
		a :IN STD_LOGIC;
		b :IN STD_LOGIC;
		cin :IN STD_LOGIC;
		sum :OUT STD_LOGIC;
		cout :OUT STD_LOGIC);
END fulladder;
ARCHITECTURE description OF fulladder IS 
BEGIN
	sum <= (a XOR b) XOR cin; 
	cout <= (a AND b) OR ((A XOR B) AND cin);
END description;