LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY data_mem IS
PORT(
clk : IN STD_LOGIC;
addr : IN UNSIGNED(7 DOWNTO 0);
data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
wen : IN STD_LOGIC;
en : IN STD_LOGIC;
data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END data_mem;
ARCHITECTURE Description OF data_mem IS
	type memo is array(255 downto 0)of STD_LOGIC_VECTOR(31 downto 0);
	signal mem:memo;
BEGIN

process(clk)
 variable addr1 : natural;
BEGIN
 addr1 := to_integer(addr);			
		if falling_edge(clk) and (clk='0') then 
			if (en='1') then
				if (wen='0') then
					data_out<=mem(addr1);					
				else 
					mem(addr1)<=data_in;
			    	data_out<=(others=>'0');
				end if;
			else 
				data_out<=(others=>'0');
		end if;	

	end if;
end process;

END Description;