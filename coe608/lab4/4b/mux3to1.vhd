LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY mux_3to1 IS
	PORT(in0, in1, in2	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel       :IN STD_LOGIC_VECTOR(1 downto 0);
		  y         :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux_3to1;

ARCHITECTURE mux_3to1Impl OF mux_3to1 IS
BEGIN
	PROCESS(sel,in0,in1,in2)
	Begin 
		case sel is
		when "00" => y <= in0;
		when "01" => y <= in1;
		when "10" => y <= in2;


		when others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
END mux_3to1Impl;
	