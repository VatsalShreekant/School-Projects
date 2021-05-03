LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY lab1_vhdl1 IS
PORT (
x1, x2, x3: IN STD_LOGIC;
f : OUT STD_LOGIC );
end lab1_vhdl1;

ARCHITECTURE Behavior OF lab1_vhdl1 IS
BEGIN
f <= (x1 AND x2) OR ((NOT x2) AND x3);
END Behavior; 
