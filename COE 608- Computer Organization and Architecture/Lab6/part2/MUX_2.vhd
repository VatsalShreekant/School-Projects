LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY MUX_2 IS --Multiplexer 2 to 1 implementation 
PORT(
	in_ch1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input port 0.
	in_ch2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input port 1.
	sel_ch: IN STD_LOGIC; -- select input port
	Out2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.
END MUX_2;

ARCHITECTURE description OF MUX_2 IS
begin
	process(sel_ch)
	begin
		case sel_ch is
			when '0' => Out2<=in_ch1; 
			when '1' => Out2<= in_ch2; 
		end case;
	end process; 
END description;