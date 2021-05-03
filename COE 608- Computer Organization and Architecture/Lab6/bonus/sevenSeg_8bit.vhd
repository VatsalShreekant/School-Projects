-- Victor Dumitriu
-- Ryerson University Electrical and Computer Engineering Department.

-- 7-Segment display decoder for 8-bit, 2's complement signed numbers.

-- Usage: connect the desired binary number to be displayed to dataIn and
-- the two output vectors to two 7-segment displays.

-- NOTE: the decoder is built for active low displays, and segVal1(0) coresponds
-- to led 0 in standard seven-segment displays.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

ENTITY sevenSeg_8bit IS
	PORT
	(
	-- 4-bit signed number input.
		dataIn		: IN	STD_LOGIC_VECTOR(7 downto 0);
	-- 7-bit segment control signals.
		segVal1		: OUT	STD_LOGIC_VECTOR(6 downto 0);
		segVal2		: OUT	STD_LOGIC_VECTOR(6 downto 0);
	-- 1-bit sign control signal.
		sign		: OUT	STD_LOGIC
	);
END sevenSeg_8bit;


ARCHITECTURE behaviour OF sevenSeg_8bit IS
	SIGNAL numVal 			: STD_LOGIC_VECTOR(6 downto 0);
	SIGNAL numVal2 			: STD_LOGIC_VECTOR(6 downto 0);	
	SIGNAL numProcess		: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL numProcess2		: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL signInternal		: STD_LOGIC;
BEGIN
	
	numVal <= dataIn(6 downto 0);
	signInternal <= dataIn(7);
	sign <= signInternal;
	
	-- Perform the appropriate conversion if the input is negative.
	negative_decode:
	PROCESS (signInternal)
	BEGIN
		IF(signInternal = '1') THEN
			numVal2 <= numVal - 1;
			numProcess <= not numVal2(3 DOWNTO 0);
			numProcess2 <= not numVal2(6 DOWNTO 4);
		ELSE
			numProcess <= numVal(3 DOWNTO 0);
			numProcess2 <= numVal(6 DOWNTO 4);
		END IF;
	END PROCESS negative_decode;
	
	-- Generate the first set of 7-segment control signal.
	sevenSeg_decode2:
	PROCESS (numProcess2)
	BEGIN
			CASE numProcess2 IS
			WHEN "000" =>							--0
				segVal2 <= "1000000";
			WHEN "001" =>							--1
				segVal2 <= "1111001";
			WHEN "010" =>							--2
				segVal2 <= "0100100";
			WHEN "011" =>							--3
				segVal2 <= "0110000";
			WHEN "100" =>							--4
				segVal2 <= "0011001";
			WHEN "101" =>							--5
				segVal2 <= "0010010";
			WHEN "110" =>							--6
				segVal2 <= "0000010";
			WHEN "111" =>							--7
				segVal2 <= "1111000";
		END CASE;
		
	END PROCESS sevenSeg_decode2;
		
	-- Generate the second set of 7-segment control signal.
	sevenSeg_decode1:
	PROCESS (numProcess)
	BEGIN
			CASE numProcess IS
			WHEN "0000" =>							--0
				segVal1 <= "1000000";
			WHEN "0001" =>							--1
				segVal1 <= "1111001";
			WHEN "0010" =>							--2
				segVal1 <= "0100100";
			WHEN "0011" =>							--3
				segVal1 <= "0110000";
			WHEN "0100" =>							--4
				segVal1 <= "0011001";
			WHEN "0101" =>							--5
				segVal1 <= "0010010";
			WHEN "0110" =>							--6
				segVal1 <= "0000010";
			WHEN "0111" =>							--7
				segVal1 <= "1111000";
			WHEN "1000" =>							--8
				segVal1 <= "0000000";
			WHEN "1001" =>							--9
				segVal1 <= "0011000";
			WHEN "1010" =>							--A
				segVal1 <= "0001000";
			WHEN "1011" =>							--B
				segVal1 <= "0000011";
			WHEN "1100" =>							--C
				segVal1 <= "1000110";
			WHEN "1101" =>							--D
				segVal1 <= "0100001";
			WHEN "1110" =>							--E
				segVal1 <= "0000110";
			WHEN "1111" =>							--F
				segVal1 <= "0001110";
			END CASE;

		END PROCESS sevenSeg_decode1;
	
END behaviour;

