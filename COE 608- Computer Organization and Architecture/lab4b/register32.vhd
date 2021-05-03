LIBRARY ieee;            
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL;  

ENTITY register32 IS 
PORT(            
	d   : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
	ld  : IN STD_LOGIC;     -- load/enable.  
	clr : IN STD_LOGIC;     -- async. clear.  
	clk : IN STD_LOGIC; -- clock
	Q   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END register32;
            
ARCHITECTURE description OF register32 IS  
BEGIN            
	process(clk, clr)
    begin
        if clr = '1' then
            q <= "00000000000000000000000000000000";
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
        end if;
    end process;
END description;            