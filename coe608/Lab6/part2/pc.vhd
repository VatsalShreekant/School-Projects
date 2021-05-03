LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY pc IS
generic (n: natural := 32);
PORT(
       d        : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); 
       ld       : IN STD_LOGIC;
       inc		: IN STD_LOGIC; 
       clr      : IN STD_LOGIC; 
       clk      : IN STD_LOGIC; 
       q        : INOUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)); 
END PC;
ARCHITECTURE description OF pc IS

begin
    process(clk)    
    begin 
		if (rising_edge(clk) and (clk='1')) then
			if clr = '1' then
				q <= (q'range => '0'); 
			elsif (ld = '1' and inc = '0') then
				q <= d;	
			elsif (ld = '1' and inc = '1') then
				q <= q + 1;
			elsif (ld='0') then --//do nothing
			end if; 
		end if;
    end process;
END description;