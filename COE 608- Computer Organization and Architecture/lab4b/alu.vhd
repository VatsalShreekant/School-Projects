LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY alu IS
PORT(
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:IN std_LOGIC_VECTOR(2 DOWNTO 0);
		result	:INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout		:OUT STD_LOGIC;
		zero		:OUT STD_LOGIC);
END alu;
ARCHITECTURE description OF alu IS 

COMPONENT mux2to1 IS
PORT(
		in0,in1 :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel									  :IN STD_LOGIC;
		y										  :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT mux8to1 IS
PORT(
		in0,in1,in2,in3,in4,in5,in6,in7 :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel									  :IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		y										  :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT adder32 IS
	PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		cin32 :IN STD_LOGIC;
		sum32 :OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout32 : OUT STD_LOGIC);
END COMPONENT;

COMPONENT and32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT or32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT ror32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT rol32 IS
PORT(
		a32 :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		result :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

COMPONENT not32 IS
PORT(
		x :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		y :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;

SIGNAL andResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL orResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL adderResult:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL rorResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL rolResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL negResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL notResult	:STD_LOGIC_VECTOR (31 DOWNTO 0);
--SIGNAL zeroResult :STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN
	mux1:	mux8to1	PORT MAP(in0 => andResult,
									in1 => orResult,
									in2 => adderResult,
									in3 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in4 => rorResult,
									in5 => rolResult,
									in6 => adderResult,
									in7 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									sel => op,
									y => result);
	
	adder1:	adder32	PORT MAP(a32 => a,
										b32 => negResult,
										cin32 => op(2),
										sum32 => adderResult,
										cout32 => cout);
							
	and1:	and32	PORT MAP(a,b,andResult);
	or1:	or32	PORT MAP(a,b,orResult);
	ror1:	ror32	PORT MAP(a,rorResult);
	rol1: rol32 PORT MAP(a,rolResult);
	neg:	mux2to1 PORT MAP(in0 => b,
								  in1 => notResult,
								  sel => op(2),
								  y => negResult);
	not1:	not32	PORT MAP(b,notResult);
	
	zero <= NOT(result(0) OR result(1) OR result(2) OR result(3) OR result(4) OR result(5) OR result(6) OR result(7));
	
	
	
END description;