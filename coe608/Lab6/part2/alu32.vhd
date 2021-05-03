LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY alu32 IS
GENERIC(nBits:	INTEGER := 32);
PORT(
a : IN STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
b : IN STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
op : IN STD_LOGIC_VECTOR( 2 DOWNTO 0);
result : Buffer STD_LOGIC_VECTOR(nBits-1 DOWNTO 0);
cOut : Buffer std_logic_vector(nBits-1 downto 0);
coutF: OUT STD_LOGIC;
zero : OUT STD_LOGIC
);
END alu32;


ARCHITECTURE description OF alu32 IS
   
BEGIN
	process(op)
		begin 			   
		 case op is 
			 when "010" => --addition
				   result(0) <= (a(0) xor b(0)) xor '0';
				   cOut(0) <= (a(0) and b(0)) or ('0' and (a(0) xor b(0))); 
				 for I in 1 to nBits-1 loop	 
				   result(I) <= (a(I) xor b(I)) xor cOut(I-1);
				   cOut(I) <= (a(I) and b(I)) or (cOut(I-1) and (a(I) xor b(I)));
				 end loop;
			  
			 when "000" =>--and operation 
				result <= a AND b;
				--cOut <= (a and b) or (cIn and (a xor b));
				
			 when "001" =>--OR operation 
				result <= a OR b;
				--cOut <= (a and b) or (cIn and (a xor b));
				
			 when "110"=>--subtraction	    
				   result(0) <= (a(0) xor not(b(0))) xor '1';
				   cOut(0) <= (a(0) and not(b(0))) or ('1' and (a(0) xor not(b(0)))); 
				 for I in 1 to nBits-1 loop	 
				   result(I) <= (a(I) xor not(b(I))) xor cOut(I-1);
				   cOut(I) <= (a(I) and not(b(I))) or (cOut(I-1) and (a(I) xor not(b(I))));
				 end loop;

			 when "100" =>--left shift
				 for I in 1 to nBits-1 loop
				   result(0) <='0';	 
				   result(I) <=a(I-1); 
				 end loop;
				--maybe parse carry in and out by putting it as the result, 
             when "101" =>--right shift
                 result(nBits-1) <='0';	
				 for I in nBits-2 downto 1 loop				 
				   result(I-1) <=a(I); 
				 end loop;	
				 
			 when others =>
				-- result<=(others=>'0');
				-- cOut<=(others=>'0');
			 end case; 
		--	 zero<=result AND (others=>'0');
	end process;	
		 
		coutF<=cOut(nBits-1); 

process(result)
 begin
	if ( result=(result'range => '0')) then
		zero<='1';
		else zero<='0';
	end if;	
 end process;
 	
END description; 