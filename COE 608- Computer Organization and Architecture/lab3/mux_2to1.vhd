LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY mux_2to1 IS
	PORT(in0, in1	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel       :IN STD_LOGIC;
		  y         :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux_2to1;

ARCHITECTURE mux_2to1Impl OF mux_2to1 IS
BEGIN
	PROCESS(sel,in0,in1)
	Begin 
		case sel is
		when '0' => y <= in0;
		when '1' => y <= in1;
		when others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
END mux_2to1Impl;
	