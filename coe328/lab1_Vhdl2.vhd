LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY lab1_vhdl2 IS
PORT (
w1, w2, w3, w4: IN STD_LOGIC;
g,h : OUT STD_LOGIC );
end lab1_vhdl2;

ARCHITECTURE Behavior OF lab1_vhdl2 IS
BEGIN
g<= (w1 AND w2) OR (w3 AND w4);
h<= (w1 AND w3) OR (w2 AND w4);
END Behavior; 