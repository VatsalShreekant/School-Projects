LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY adder32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		cin32 :IN STD_LOGIC;
		sum32 :OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout32 :OUT STD_LOGIC);
END adder32;
ARCHITECTURE description OF adder32 IS 
COMPONENT fulladder IS
	PORT(
		a :IN STD_LOGIC;
		b :IN STD_LOGIC;
		cin :IN STD_LOGIC;
		sum :OUT STD_LOGIC;
		cout :OUT STD_LOGIC);
END COMPONENT;
SIGNAL connect:STD_LOGIC_VECTOR(30 DOWNTO 0);
BEGIN
	fa0: fulladder PORT MAP(a32(0),b32(0),cin32,sum32(0),connect(0));
	fa1: fulladder PORT MAP(a32(1),b32(1),connect(0),sum32(1),connect(1));
	fa2: fulladder PORT MAP(a32(2),b32(2),connect(1),sum32(2),connect(2));
	fa3: fulladder PORT MAP(a32(3),b32(3),connect(2),sum32(3),connect(3));
	fa4: fulladder PORT MAP(a32(4),b32(4),connect(3),sum32(4),connect(4));
	fa5: fulladder PORT MAP(a32(5),b32(5),connect(4),sum32(5),connect(5));
	fa6: fulladder PORT MAP(a32(6),b32(6),connect(5),sum32(6),connect(6));
	fa7: fulladder PORT MAP(a32(7),b32(7),connect(6),sum32(7),connect(7));
	fa8: fulladder PORT MAP(a32(8),b32(8),connect(7),sum32(8),connect(8));
	fa9: fulladder PORT MAP(a32(9),b32(9),connect(8),sum32(9),connect(9));
	fa10: fulladder PORT MAP(a32(10),b32(10),connect(9),sum32(10),connect(10));
	fa11: fulladder PORT MAP(a32(11),b32(11),connect(10),sum32(11),connect(11));
	fa12: fulladder PORT MAP(a32(12),b32(12),connect(11),sum32(12),connect(12));
	fa13: fulladder PORT MAP(a32(13),b32(13),connect(12),sum32(13),connect(13));
	fa14: fulladder PORT MAP(a32(14),b32(14),connect(13),sum32(14),connect(14));
	fa15: fulladder PORT MAP(a32(15),b32(15),connect(14),sum32(15),connect(15));
	fa16: fulladder PORT MAP(a32(16),b32(16),connect(15),sum32(16),connect(16));
	fa17: fulladder PORT MAP(a32(17),b32(17),connect(16),sum32(17),connect(17));
	fa18: fulladder PORT MAP(a32(18),b32(18),connect(17),sum32(18),connect(18));
	fa19: fulladder PORT MAP(a32(19),b32(19),connect(18),sum32(19),connect(19));
	fa20: fulladder PORT MAP(a32(20),b32(20),connect(19),sum32(20),connect(20));
	fa21: fulladder PORT MAP(a32(21),b32(21),connect(20),sum32(21),connect(21));
	fa22: fulladder PORT MAP(a32(22),b32(22),connect(21),sum32(22),connect(22));
	fa23: fulladder PORT MAP(a32(23),b32(23),connect(22),sum32(23),connect(23));
	fa24: fulladder PORT MAP(a32(24),b32(24),connect(23),sum32(24),connect(24));
	fa25: fulladder PORT MAP(a32(25),b32(25),connect(24),sum32(25),connect(25));
	fa26: fulladder PORT MAP(a32(26),b32(26),connect(25),sum32(26),connect(26));
	fa27: fulladder PORT MAP(a32(27),b32(27),connect(26),sum32(27),connect(27));
	fa28: fulladder PORT MAP(a32(28),b32(28),connect(27),sum32(28),connect(28));
	fa29: fulladder PORT MAP(a32(29),b32(29),connect(28),sum32(29),connect(29));
	fa30: fulladder PORT MAP(a32(30),b32(30),connect(29),sum32(30),connect(30));
	fa31: fulladder PORT MAP(a32(31),b32(31),connect(30),sum32(31),cout32);	
END description;