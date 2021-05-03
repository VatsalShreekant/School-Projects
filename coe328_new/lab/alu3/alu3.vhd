LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.NUMERIC_STD.ALL;

ENTITY alu3 IS
	PORT( Clock : in STD_LOGIC;
			A,B : in unsigned (7 downto 0);
			student_id : in unsigned (3 downto 0);
			OP : in unsigned (15 downto 0);
			Neg: out STD_LOGIC;
			R1: OUT unsigned (3 downto 0);
			R2: OUT unsigned (3 downto 0));
END alu3;  

ARCHITECTURE calculation OF alu3 IS 
Signal Reg1, Reg2, Result:unsigned(7 downto 0):=(others=> '0');
signal Reg4 : unsigned(7 downto 0);

BEGIN
Reg1<= A;
Reg2<=B;





PROCESS (Clock, OP)
	BEGIN
		if(rising_edge(Clock))THEN 
			Neg <= '0';
					if((Reg2(7 downto 4)= student_id) or (Reg2(3 downto 0)= student_id)) then
						Neg<= '1';
					else 
						Neg<= '0';
					end if;

	END if;
END PROCESS;
END calculation;