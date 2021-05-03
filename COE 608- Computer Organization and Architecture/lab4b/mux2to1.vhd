LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY mux2to1 IS
PORT(
		in0,in1 :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel									  :IN STD_LOGIC;
		y										  :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux2to1;
ARCHITECTURE description OF mux2to1 IS 
BEGIN
	PROCESS(sel,in0,in1) 
		BEGIN
			CASE sel IS
				when '0' => 
					y <= in0; 
				when '1' => 
					y <= in1; 
				when others => 
					y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			END CASE;
		END PROCESS;
END description;