LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY UZE IS
PORT(
       d        : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       o		: out  STD_LOGIC_VECTOR(31 DOWNTO 0));
     
end UZE;

architecture behv of UZE is

	begin
		o(15 downto 0) <= (others => '0');
		o(31 downto 16)<=d(15 downto 0);
end behv;