LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY mux_8to1 IS
	PORT(in0, in1, in2, in3, in4, in5, in6, in7	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel                                  	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  y                              			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux_8to1;

ARCHITECTURE mux_8to1Impl OF mux_8to1 IS
BEGIN
	PROCESS(sel,in0,in1,in2,in3,in4,in5,in6,in7)
	Begin 
		case sel is
		when "000" => y <= in0;
		when "001" => y <= in1;
		when "010" => y <= in2;
		when "011" => y <= in3;
		when "100" => y <= in4;
		when "101" => y <= in5;
		when "110" => y <= in6;
		when "111" => y <= in7;
		when others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
END mux_8to1Impl;
	