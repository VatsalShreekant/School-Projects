LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY MUX_3 IS --Multiplexer 3 to 1 implementation
PORT(
	in_ch1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input port 0.
	in_ch2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input port 1.
	in_ch3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input port 2.
	sel_ch2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- select ports.
	Out3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.
END MUX_3;

ARCHITECTURE description OF MUX_3 IS
BEGIN
	process(sel_ch2)
	begin
		case sel_ch2 is
			when "00" => Out3 <=in_ch1; 
			when "01" => Out3<= in_ch2;
			when "10" => Out3<= in_ch3;
			when "11" => Out3<=(others=>'1');
		end case;
	end process; 			
END description;