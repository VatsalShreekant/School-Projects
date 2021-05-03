LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY LZE IS
PORT(
       d        : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       o		: out  STD_LOGIC_VECTOR(31 DOWNTO 0));
     
end LZE;

architecture behv of LZE is

	begin
		o(31 downto 16) <= (others => '0');
		o(15 downto 0)<=d(15 downto 0);
end behv;