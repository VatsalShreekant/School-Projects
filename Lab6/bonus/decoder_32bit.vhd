LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY decoder_32bit IS
	PORT
	(
		inData			: IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
		outPat1			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat2			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat3			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat4			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat5			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat6			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat7			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		outPat8			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END decoder_32bit;

ARCHITECTURE behavior OF decoder_32bit IS

	COMPONENT decoder_4bit
		PORT
		(
			inData			: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			outPat			: OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;


BEGIN

	pat1 : decoder_4bit 
	PORT MAP
	(
		inData => inData(31 DOWNTO 28), 
		outPat => outPat1
	);
	
	pat2 : decoder_4bit 
	PORT MAP
	(
		inData => inData(27 DOWNTO 24), 
		outPat => outPat2
	);
	
	pat3 : decoder_4bit 
	PORT MAP
	(
		inData => inData(23 DOWNTO 20), 
		outPat => outPat3
	);
	
	pat4 : decoder_4bit 
	PORT MAP
	(
		inData => inData(19 DOWNTO 16), 
		outPat => outPat4
	);
	
	pat5 : decoder_4bit 
	PORT MAP
	(
		inData => inData(15 DOWNTO 12), 
		outPat => outPat5
	);
	
	pat6 : decoder_4bit 
	PORT MAP
	(
		inData => inData(11 DOWNTO 8), 
		outPat => outPat6
	);
	
	pat7 : decoder_4bit 
	PORT MAP
	(
		inData => inData(7 DOWNTO 4), 
		outPat => outPat7
	);

	pat8 : decoder_4bit 
	PORT MAP
	(
		inData => inData(3 DOWNTO 0), 
		outPat => outPat8
	);

END behavior;

