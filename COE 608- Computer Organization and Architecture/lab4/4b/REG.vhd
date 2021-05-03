LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.numeric_std.ALL; 
ENTITY REG IS 

Port(
clk 		  : IN STD_LOGIC; 
data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
CLR, LD : IN STD_LOGIC;
data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); 
END REG;
 
ARCHITECTURE Description OF REG IS  

BEGIN
	process(clk, data_in, LD, CLR)
	begin 
	
	

if(LD ='1') THEN 
	if(CLR='1') then
		data_out <= x"00000000";
		end if;
	if(clr='0')then 
		data_out<= data_in;
	end if;
end if;

elsif(LD='0') then

	if(clr='1') then
		data_out <= x"00000000";
	end if;
end if;
end process;
END Description; 