LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY decoder_4bit IS
	PORT
	(
		inData			: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		outPat			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END decoder_4bit;


ARCHITECTURE behavior OF decoder_4bit IS
	
BEGIN
	
	decoder:
	PROCESS (inData)
	BEGIN
	CASE inData IS
		WHEN "0000" =>
			outPat <= "00110000";
		WHEN "0001" =>
			outPat <= "00110001";
		WHEN "0010" =>
			outPat <= "00110010";
		WHEN "0011" =>
			outPat <= "00110011";
		WHEN "0100" =>
			outPat <= "00110100";
		WHEN "0101" =>
			outPat <= "00110101";
		WHEN "0110" =>
			outPat <= "00110110";
		WHEN "0111" =>
			outPat <= "00110111";
		WHEN "1000" =>
			outPat <= "00111000";
		WHEN "1001" =>
			outPat <= "00111001";
		WHEN "1010" =>
			outPat <= "01000001";
		WHEN "1011" =>
			outPat <= "01000010";
		WHEN "1100" =>
			outPat <= "01000011";
		WHEN "1101" =>
			outPat <= "01000100";
		WHEN "1110" =>
			outPat <= "01000101";
		WHEN "1111" =>
			outPat <= "01000110";
	END CASE;

	END PROCESS decoder;

END behavior;
