LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.STD_LOGIC_UNSIGNED.ALL;
USE ieee.NUMERIC_STD.ALL;

ENTITY alu_2 IS
	PORT( Clock : in STD_LOGIC;
			A,B : in unsigned (7 downto 0);
			student_id : in unsigned (3 downto 0);
			OP : in unsigned (15 downto 0);
			Neg: out STD_LOGIC;
			R1: OUT unsigned (3 downto 0);
			R2: OUT unsigned (3 downto 0));
END alu_2;  

ARCHITECTURE calculation OF alu_2 IS 
Signal Reg1, Reg2, Result:unsigned(7 downto 0):=(others=> '0');
signal Reg4 : unsigned(7 downto 0);

BEGIN
Reg1<= A;
Reg2<=B;

	PROCESS (Clock, OP)
	BEGIN
		if(rising_edge(Clock))THEN 
			Neg <= '0';
                case OP is
                    WHEN "0000000000000001"=>

                                         Result <= Reg1 srl 2;
                    WHEN "0000000000000010"=>

                        if((Reg1 + 4 )< Reg2) Then
                            Neg <= '1';
                            Result <= ((NOT(Reg1 - Reg2)) + 1) - 4;
                        else
                            Result <= (Reg1 - Reg2) + 4;
                        end if;
   
                    WHEN "0000000000000100"=>
                        if(Reg1< Reg2) Then
   
                            Result <= Reg2;
                        else
                            Result <= Reg1;
                        end if;                   
                    WHEN "0000000000001000"=>
                            Result(0) <= Reg1(0);
                            Result(1) <= Reg1(1);
                            Result(2) <= Reg1(2);
                            Result(3) <= Reg1(3);
                            Result(4) <= Reg2(0);
                            Result(5) <= Reg2(1);
                            Result(6) <= Reg2(2);
                            Result(7) <= Reg2(3);
                       
                    WHEN "0000000000010000"=>
                            Result <= Reg1 +1;
                       
                    WHEN "0000000000100000"=>
                            Result <= Reg1 AND Reg2;
                       
                    WHEN "0000000001000000"=>
                            Result(0) <= Reg1(0);
                            Result(1) <= Reg1(1);
                            Result(2) <= Reg1(2);
                            Result(3) <= Reg1(3);
                            Result(4) <= NOT Reg1(4);
                            Result(5) <= NOT Reg1(5);
                            Result(6) <= NOT Reg1(6);
                            Result(7) <= NOT Reg1(7);
                       
                    WHEN "0000000010000000"=>
                            Result <= Reg2 rol 3;
                       
                    WHEN "0000000100000000"=>

                            Result <="00000000";
                       
                    WHEN OTHERS =>
                            Result <= "--------";
		END case;
	END if;
END PROCESS;
R1<= Result(3 downto 0);
R2<= Result(7 downto 4);
END calculation;