LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
ENTITY data_mem IS 
PORT( 
clk 		  : IN STD_LOGIC; 
addr 		  : IN UNSIGNED(7 DOWNTO 0);  
data_in    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
wen 		  : IN STD_LOGIC; 
en 		  : IN STD_LOGIC; 
data_out   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END data_mem; 

ARCHITECTURE Description OF data_mem IS  
-- define array type and signal to store data
type tmatrix is array(0 to 255) of std_logic_vector(31 downto 0);
signal matrix : tmatrix;

BEGIN 
--Make it work!
	process(clk)
	begin
		if falling_edge(clk) then
		
		if en = '1' then
			if wen = '0' then
				data_out <= matrix(to_integer(addr));
			
			elsif wen = '1' then
				matrix(to_integer(addr)) <= data_in;
				data_out <= x"00000000";
			end if; -- conditional for wen
		elsif en = '0' then
			data_out <= x"00000000";
		end if; -- conditional for en
		end if;
	end process;
			
END Description; 