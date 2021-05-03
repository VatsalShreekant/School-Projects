library IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY mux_3to1 IS
PORT(
	sig0,sig1,sig2: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	selector: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	output:OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END mux_3to1;
ARCHITECTURE mux_3to1 OF mux_3to1 IS 

BEGIN
		 process(sig0,sig1,sig2,selector)
		 begin
				case selector is
				
					when "00" => output <= sig0; 
					when "01" => output <= sig1; 
					when "10" => output <= sig2; 
					when others => output <= ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ");
		 
				end case;
		 end process;
		
END mux_3to1;
