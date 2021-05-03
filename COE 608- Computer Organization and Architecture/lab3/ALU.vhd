LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_signed.all;

ENTITY ALU is 
	PORT(a				:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b		   	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  operation		:IN STD_lOGIC_VECTOR(2 DOWNTO 0);
		  result			:INOUT STD_lOGIC_VECTOR(31 DOWNTO 0);
		  carry_out		:OUT STD_lOGIC;
		  zero			:OUT STD_lOGIC);
END ALU;

ARCHITECTURE ALUImplementation of ALU is
	-- Internal Components
	
	--32 BIT ADDER
	COMPONENT adder_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b_in		   :IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  c_in			:IN STD_lOGIC;
		  c_out			:OUT STD_lOGIC;
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 32 bit and
	COMPONENT and_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b_in		:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 32 BIT OR GATE
	COMPONENT or_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  b_in		:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 32 BIT RIGHT SHIFT
	COMPONENT rightshift_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	--32 BIT LEFT SHIFT
	COMPONENT leftshift_32bit IS
	PORT(a_in			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  result			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 8 TO 1 MULTIPLEXER
	COMPONENT mux_8to1 IS
	PORT(in0, in1, in2, in3, in4, in5, in6, in7	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel                                  	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  y                              			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 2 TO 1 MULTIPLEXER
	COMPONENT mux_2to1 IS
	PORT(in0, in1	:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  sel       :IN STD_LOGIC;
		  y         :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	-- 32 BIT NOT
	COMPONENT not_32bit IS
	PORT(x			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		  y			:OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	-- INTERNAL WIRES
	SIGNAL andResult		:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL orResult		:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL adderResult	:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL lslResult		:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL lsrResult		:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bNegOrNot		:STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL bNot				:STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	BEGIN
		-- connect to 8 o 1 mux
		mux1: mux_8to1	PORT MAP(in0	=> andResult,
										in1	=> orResult,
										in2 	=> adderResult,
										in3 	=> "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
										in4	=> lslResult,
										in5	=> lsrResult,
										in6	=> adderResult,
										in7	=>	"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
										sel	=> operation,
										y		=> result);
		-- connect 32 bit adder
		adder1:adder_32bit PORT MAP(	a_in	=> a,
												b_in	=> bNegOrNot,
												c_in	=>operation(2),
												c_out	=> carry_out,
												result=> adderResult);
		-- connect 32 bit and
		and1: and_32bit PORT MAP( a,b,andResult);
		-- connect 32 bit OR
		or1: or_32bit PORT MAP( a,b,orResult);
		-- connect 32 bit Shift right
		lsr1:rightshift_32bit PORT MAP( a,lsrResult);
		-- connect 32 bit Shift left
		lsl1:leftshift_32bit PORT MAP( a,lslResult);
		-- connect b negative decider mux
		negMux: mux_2to1 PORT MAP( in0		=> b,
											in1	=> bNot,
											sel	=> operation(2),
											y		=> bNegOrNot);
		--Connect NOT Gate
		notber: not_32bit PORT MAP(b,bNot);
		--zero flag
		zero <= NOT(result(0) OR result(1) OR result(2) OR result(3) OR result(4) OR result(5) OR result(6) OR result(7) OR result(8) OR result(9) OR result(10) OR result(11) OR result(12) OR result(13) OR result(14) OR result(15) OR result(16) OR result(17) OR result(18) OR result(19) OR result(20) OR result(21) OR result(22) OR result(23) OR result(24) OR result(25) OR result(26) OR result(27) OR result(28) OR result(29) OR result(30) OR result(31));
	END ALUImplementation;