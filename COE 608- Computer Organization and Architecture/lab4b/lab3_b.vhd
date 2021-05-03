--COE 608: Computer Organization and Architecture
--8-Bit ALU test-fixture circuit.
--This circuit relies on the presence of the sevenSeg_8bit.vhd file
--in the same project.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab3_b IS
	PORT
	(
	--Input Switches
		SW					: IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
	--Seven-Segment Display Outputs
		HEX0, HEX1			: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2, HEX3			: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4, HEX5			: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX6, HEX7			: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
	--Green Led Outputs
		LEDG				: OUT	STD_LOGIC_VECTOR(8 DOWNTO 0);
	--Red Led Outputs
		LEDR				: OUT	STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END lab3_b;

ARCHITECTURE behavior OF lab3_b IS

	--Use these signals to connect inputs to your ALU. A and B 
	--are the operand inputs and op is the Op-Code input.
	SIGNAL A_to_ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL B_to_ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL op_to_ALU : STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	--Use these signals to connect ALU outputs to the seven-segment displays
	--and leds. Result is the 8-bit output of the ALU. Zero and Cout should
	--be self-evident.
	SIGNAL result_from_ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL zero_from_ALU : STD_LOGIC;
	SIGNAL cout_from_ALU : STD_LOGIC;
	
	SIGNAL tmpInv : STD_LOGIC;
	
	COMPONENT sevenSeg_8bit
	PORT
	(
	-- 8-bit signed number input.
		dataIn		: IN	STD_LOGIC_VECTOR(7 downto 0);
	-- 7-bit segment control signals.
		segVal1		: OUT	STD_LOGIC_VECTOR(6 downto 0);
		segVal2		: OUT	STD_LOGIC_VECTOR(6 downto 0);
	-- 1-bit sign control signal.
		sign		: OUT	STD_LOGIC
	);
	END COMPONENT;
	
	--==========================================================
	-- This is where your ALU component declarations should go.
	--==========================================================
	COMPONENT alu
	PORT
	(		
		a			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		b			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		op			:IN std_LOGIC_VECTOR(2 DOWNTO 0);
		result	:INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout		:OUT STD_LOGIC;
		zero		:OUT STD_LOGIC);
	END COMPONENT;

BEGIN

	--Signal routing from the input/output pins to the ALU and other
	--utilities.
	A_to_ALU <= SW(17 DOWNTO 10);
	B_to_ALU <= SW(10 DOWNTO 3);
	op_to_ALU <= SW(2 DOWNTO 0);
	
	LEDG(0) <= zero_from_ALU;
	LEDG(1) <= cout_from_ALU;
	
	HEX2(6) <= NOT tmpInv;
	
	--Constants
	HEX2(5 DOWNTO 0) <= "111111";
	HEX3(6 DOWNTO 0) <= "1111111";
	
	sevSeg_driver_A : sevenSeg_8bit 
	PORT MAP
	(
		dataIn => A_to_ALU,
		segVal1 => HEX6,
		segVal2 => HEX7,
		sign => LEDR(16)
	);
	
	sevSeg_driver_B : sevenSeg_8bit 
	PORT MAP
	(
		dataIn => B_to_ALU,
		segVal1 => HEX4,
		segVal2 => HEX5,
		sign => LEDR(13)
	);

	sevSeg_driver_ALU : sevenSeg_8bit 
	PORT MAP
	(
		dataIn => result_from_ALU,
		segVal1 => HEX0,
		segVal2 => HEX1,
		sign => tmpInv
	);
	
	--==========================================================
	--This is where the ALU must be connected. The signal names
	--should be changed to match your ALU.
	--==========================================================
	
	the_ALU : alu 
	PORT MAP
	(
	--Operand A
		a => A_to_ALU,
	--Operand B
		b => B_to_ALU,
	--Operation Code
		op => op_to_ALU,
	--ALU Result
		result => result_from_ALU,
	--Zero Signal
		zero => zero_from_ALU,
	--Cout Signal
		cout => cout_from_ALU
	);

END behavior;
