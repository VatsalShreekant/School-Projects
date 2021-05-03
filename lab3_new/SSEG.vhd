LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY SSEG IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	sign : IN STD_LOGIC;
leds, leds2 : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END SSEG ;
ARCHITECTURE Behavior OF SSEG IS
BEGIN
PROCESS ( bcd )
BEGIN
CASE bcd IS -- abcdef g
WHEN "0000" =>leds <= "0000001" ;
WHEN "0001" =>leds <= "1111001" ;
WHEN "0010" =>leds <= "0010010" ;
WHEN "0011" =>leds <= "0000110" ;
WHEN "0100" =>leds <= "1001100" ;
WHEN "0101" =>leds <= "0100100" ;
WHEN "0110" =>leds <= "0100000" ;
WHEN "0111" =>leds <= "0001111" ;
WHEN "1000" =>leds <= "0000000" ;
WHEN "1001" =>leds <= "0001100" ;

WHEN "1010" =>leds <= "0001000" ;
WHEN "1011" =>leds <= "0000000" ;
WHEN "1100" =>leds <= "0110001" ;
WHEN "1101" =>leds <= "0000001" ;
WHEN "1110" =>leds <= "0110000" ;
WHEN "1111" =>leds <= "0111000" ;

WHEN OTHERS =>leds <= "-------" ;
END CASE ;

if(sign='1') then leds2<="1111110";
END if;
if(sign='0') then leds2<="1111111";
END if;


END PROCESS ;
END Behavior ;