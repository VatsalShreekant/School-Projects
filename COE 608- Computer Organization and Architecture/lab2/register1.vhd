LIBRARY ieee;           
USE ieee.std_logic_1164.ALL; 
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_unsigned.ALL; 
ENTITY register1 IS
PORT(           
    d   : IN STD_LOGIC; -- input. 
    ld  : IN STD_LOGIC;     -- load/enable. 
    clr : IN STD_LOGIC;     -- async. clear. 
    clk : IN STD_LOGIC; -- clock.
    Q   : OUT STD_LOGIC -- output. 
);
END register1;
           
ARCHITECTURE description OF register1 IS 
BEGIN           
    process(clk, clr)
    begin
        if clr = '1' then
         q <= '0';
        elsif rising_edge(clk) then
            if ld = '1' then
           q <= d;
            end if;
        end if;
    end process;
END description; 