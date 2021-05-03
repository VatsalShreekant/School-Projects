library ieee;
use ieee.std_logic_1164.ALL; 
ENTITY control IS
 PORT(
 clk, mclk : IN STD_LOGIC;
 enable : IN STD_LOGIC;
 statusC, statusZ : IN STD_LOGIC;
 INST : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
 A_Mux, B_Mux : OUT STD_LOGIC;
 IM_MUX1, REG_Mux : OUT STD_LOGIC;
 IM_MUX2, DATA_Mux : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
 ALU_op : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
 inc_PC, ld_PC : OUT STD_LOGIC;
 clr_IR : OUT STD_LOGIC;
 ld_IR : OUT STD_LOGIC;
 clr_A, clr_B, clr_C, clr_Z : OUT STD_LOGIC;
 ld_A, ld_B, ld_C, ld_Z : OUT STD_LOGIC;
 T : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
 wen, en : OUT STD_LOGIC);
END control;

ARCHITECTURE description OF control IS
 TYPE STATETYPE IS (state_0, state_1, state_2);
 SIGNAL present_state: STATETYPE;
BEGIN


-------- OPERATION DECODER ---------
 PROCESS (present_state, INST, statusC, statusZ, enable)
 BEGIN
-------- YOU FILL IN WHAT GOES IN HERE (DON'T FORGET TO CHECK FOR ENABLE)
if(enable='1') then
  
  case present_state is
    --state_0 is when the instruction is loaded to the instruction register
		
								when state_0 => 
		
                                    clr_IR   <= '0';
                                    ld_IR    <= '1';
                                    ALU_op   <= "XXX";
												A_mux    <='X';
                                    B_mux    <='X';
                                    REG_Mux  <= 'X';
                                    DATA_Mux <= "00";
                                    IM_MUX1  <= 'X';
                                    IM_MUX2  <= "XX";
                                    ld_PC    <= '0';
                                    inc_PC   <= '0';
                                    clr_A    <= '0';
                                    ld_A     <= '0';
                                    clr_B    <= '0';
                                    ld_B     <= '0';
                                    clr_C    <= '0';
                                    ld_C     <= '0';
                                    clr_Z    <= '0';
                                    ld_Z     <= '0';
                                                                                
								when state_1 =>  -- PC = PC + 4                                     
                                     
                                    case INST(31 DOWNTO 28) is         
                                                                                      
                                            when "0000" => --LDAI
                                                clr_IR   <= '0';
                                                ld_IR    <= '0';
                                                ld_PC    <= '1';
                                                inc_PC   <= '1';
                                                clr_A    <= '0';
                                                ld_A     <= '1';
                                                clr_B    <= '0';
                                                ld_B     <= '0';
                                                clr_C    <= '0';
                                                ld_C     <= '0';
                                                clr_Z    <= '0';
                                                ld_Z     <= '0';
                                                ALU_op   <= "XXX";
                                                REG_Mux   <= 'X';
                                                DATA_Mux <= "00";
                                                A_mux    <= '1';
                                                B_mux    <= 'X';
                                                IM_MUX1  <= 'X';
                                                IM_MUX2  <= "XX"; 
                                                                                         
                                                                                    
                                          when "0001" =>      --LDBI
                                               clr_IR    <= '0';
                                              ld_IR      <= '0';
                                              ld_PC      <= '1';
                                              inc_PC     <= '1';
                                              clr_A      <= '0';
                                              ld_A       <= '0';
                                              clr_B      <= '0';
                                              ld_B       <= '1';
                                              clr_C      <= '0';
                                              ld_C       <= '0';
                                              clr_Z      <= '0';
                                              ld_Z       <= '0';
                                              ALU_op     <= "XXX";
                                              REG_Mux    <= 'X';
                                              DATA_Mux   <= "00";
                                              A_mux      <= 'X';
                                              B_mux      <= '1';
                                              IM_MUX1    <= 'X';
                                              IM_MUX2    <= "XX"; 
                    
                                                                              
                                           when "0010" =>      --STA
                                               clr_IR   <= '0';
                                               ld_IR    <= '0';
                                               ld_PC    <= '1';
                                               inc_PC   <= '1';
                                               clr_A    <= '0';
                                               ld_A     <= '0';
                                               clr_B    <= '0';
                                               ld_B     <= '0';
                                               clr_C    <= '0';
                                               ld_C     <= '0';
                                               clr_Z    <= '0';
                                               ld_Z     <= '0';
                                               ALU_op   <= "XXX";
                                               REG_Mux  <= '0';
                                               DATA_Mux <= "XX";
                                               A_mux    <= 'X';
                                               B_mux    <= 'X';
                                               IM_MUX1  <= 'X';
                                               IM_MUX2  <= "XX";
                                                                                 
                               when "0011" =>  --STB
                                                clr_IR     <= '0';
                                                ld_IR      <= '0';
                                                ld_PC      <= '1';
                                                inc_PC     <= '1';
                                                clr_A      <= '0';
                                                ld_A       <= '0';
                                                clr_B      <= '0';
                                                ld_B       <= '0';
                                                clr_C      <= '0';
                                                ld_C       <= '0';
                                                clr_Z      <= '0';
                                                ld_Z       <= '0';
                                                ALU_op     <= "XXX";
                                                REG_Mux    <= '1';
                                                DATA_Mux   <= "XX";
                                                A_mux      <= 'X';
                                                B_mux      <= 'X';
                                                IM_MUX1    <= 'X';
                                                IM_MUX2    <= "XX";
                                                 
                                         when "1001" => --LDA
                                                clr_IR     <= '0';
                                                ld_IR      <= '0';
                                                ld_PC      <= '1';
                                                inc_PC     <= '1';
                                                clr_A      <= '0';
                                                ld_A       <= '1';
                                                clr_B      <= '0';
                                                ld_B       <= '0';
                                                clr_C      <= '0';
                                                ld_C       <= '0';
                                                clr_Z      <= '0';
                                                ld_Z       <= '0';
                                                ALU_op     <= "XXX";
                                                REG_Mux    <= 'X';
                                                DATA_Mux   <= "00";
                                                A_mux      <= '0';
                                                B_mux      <= 'X';
                                                IM_MUX1    <= 'X';
                                                IM_MUX2    <= "XX"; 
                                                 
                                            when "1010" =>  --LDB
                                                clr_IR     <= '0';
                                                ld_IR      <= '0';
                                                ld_PC      <= '1';
                                                inc_PC     <= '1';
                                                clr_A      <= '0';
                                                ld_A       <= '0';
                                                clr_B      <= '0';
                                                ld_B       <= '1';
                                                clr_C      <= '0';
                                                ld_C       <= '0';
                                                clr_Z      <= '0';
                                                ld_Z       <= '0';
                                                ALU_op     <= "XXX";
                                                REG_Mux    <= 'X';
                                                DATA_Mux   <= "00";
                                                A_mux      <= 'X';
                                                B_mux      <= '0';
                                                IM_MUX1    <= 'X';
                                                IM_MUX2    <= "XX";
                                         
                                                                                             
                                      when others =>              
                                                clr_IR   <= '0';
                                                ld_IR    <= '0';
                                                ld_PC    <= '1';
                                                inc_PC   <= '1';
                                                clr_A    <= '0';
                                                ld_A     <= '0';
                                                clr_B    <= '0';
                                                ld_B     <= '0';
                                                clr_C    <= '0';
                                                ld_C     <= '0';
                                                clr_Z    <= '0';
                                                ld_Z     <= '0';
                                                ALU_op   <= "XXX";
                                                REG_Mux  <= 'X';
                                                DATA_Mux <= "XX";
                                                A_mux    <= 'X';
                                                B_mux    <= 'X';
                                                IM_MUX1  <= 'X';
                                                IM_MUX2  <= "XX";
                                     end case;
                                     
      when state_2=>
                      case INST(31 DOWNTO 28) is
                                    when "1001" => --LDA
                                                clr_IR   <= '0';
                                                ld_IR    <= '0';
                                                ld_PC    <= '0';
                                                inc_PC   <= '0';
                                                clr_A    <= '0';
                                                ld_A     <= '1';
                                                clr_B    <= '0';
                                                ld_B     <= '0';
                                                clr_C    <= '0';
                                                ld_C     <= '0';
                                                clr_Z    <= '0';
                                                ld_Z     <= '0';
                                                ALU_op   <= "XXX";
                                                REG_Mux  <= 'X';
                                                DATA_Mux <= "01";
                                                A_mux    <= '0';
                                                B_mux    <= 'X';
                                                IM_MUX1  <= 'X';
                                                IM_MUX2  <= "XX";
																
                                   when "1010" => --LDB
                                              clr_IR   <= '0';
                                              ld_IR    <= '0';
                                              ld_PC    <= '0';
                                              inc_PC   <= '0';
                                              clr_A    <= '0';
                                              ld_A     <= '0';
                                              clr_B    <= '0';
                                              ld_B     <= '1';
                                              clr_C    <= '0';
                                              ld_C     <= '0';
                                              clr_Z    <= '0';
                                              ld_Z     <= '0';
                                              ALU_op   <= "XXX";
                                              REG_Mux  <= 'X';
                                              DATA_Mux <= "01";
                                              A_mux    <= 'X';
                                              B_mux    <= '0';
                                              IM_MUX1  <= 'X';
                                              IM_MUX2  <= "XX";
															 
                                     when "0100" => --LUI
                                               clr_IR    <= '0';
                                                ld_IR    <= '0';
                                                ld_PC    <= '0';
                                                inc_PC   <= '0';
                                                clr_A    <= '0';
                                                ld_A     <= '1';
                                                clr_B    <= '1';
                                                ld_B     <= '0';
                                                clr_C    <= '0';
                                                ld_C     <= '1';
                                                clr_Z    <= '0';
                                                ld_Z     <= '1';
                                                ALU_op   <= "010";
                                                REG_Mux  <= 'X';
                                                DATA_Mux <= "10";
                                                A_mux    <= '0';
                                                B_mux    <= '0';
                                                IM_MUX1  <= '1';
                                                IM_MUX2  <= "00";
																
                                    when "0101" => --JMP
                                              clr_IR   <= '0';
                                              ld_IR    <= '0';
                                              ld_PC    <= '1';
                                              inc_PC   <= '0';
                                              clr_A    <= '0';
                                              ld_A     <= '1';
                                              clr_B    <= '0';
                                              ld_B     <= '0';
                                              clr_C    <= '0';
                                              ld_C     <= '0';
                                              clr_Z    <= '0';
                                              ld_Z     <= '0';
                                              ALU_op   <= "XXX";
                                              REG_Mux  <= 'X';
                                              DATA_Mux <= "XX";
                                              A_mux    <= 'X';
                                              B_mux    <= 'X';
                                              IM_MUX1  <= 'X';
                                              IM_MUX2  <= "XX";
															 
                                    when "0110" => --BEQ
												
                                         if(statusZ='1') then
                                              clr_IR   <= '0';
                                              ld_IR    <= '0';
                                              ld_PC    <= '1';
                                              inc_PC   <= '0';
                                              clr_A    <= '0';
                                              ld_A     <= '0';
                                              clr_B    <= '0';
                                              ld_B     <= '0';
                                              clr_C    <= '0';
                                              ld_C     <= '0';
                                              clr_Z    <= '0';
                                              ld_Z     <= '0';
                                              ALU_op   <= "XXX";
                                              REG_Mux  <= 'X';
                                              DATA_Mux <= "XX";
                                              A_mux    <= 'X';
                                              B_mux    <= 'X';
                                              IM_MUX1  <= 'X';
                                              IM_MUX2  <= "XX";
                                            
														  else
                                               clr_IR   <= '0';
                                               ld_IR    <= '0';
                                               ld_PC    <= '0';
                                               inc_PC   <= '0';
                                               clr_A    <= '0';
                                               ld_A     <= '0';
                                               clr_B    <= '0';
                                               ld_B     <= '0';
                                               clr_C    <= '0';
                                               ld_C     <= '0';
                                               clr_Z    <= '0';
                                               ld_Z     <= '0';
                                               ALU_op   <= "XXX";
                                               REG_Mux  <= 'X';
                                               DATA_Mux <= "XX";
                                               A_mux    <= 'X';
                                               B_mux    <= 'X';
                                               IM_MUX1  <= 'X';
                                               IM_MUX2  <= "XX";
                                            end if;
														  
                                    when "1000" => --BNE
                                         if(statusZ='1') then
                                              clr_IR   <= '0';
                                              ld_IR    <= '0';
                                              ld_PC    <= '0';
                                              inc_PC   <= '0';
                                              clr_A    <= '0';
                                              ld_A     <= '0';
                                              clr_B    <= '0';
                                              ld_B     <= '0';
                                              clr_C    <= '0';
                                              ld_C     <= '0';
                                              clr_Z    <= '0';
                                              ld_Z     <= '0';
                                              ALU_op   <= "XXX";
                                              REG_Mux  <= 'X';
                                              DATA_Mux <= "XX";
                                              A_mux    <= 'X';
                                              B_mux    <= 'X';
                                              IM_MUX1  <= 'X';
                                              IM_MUX2  <= "XX";
                                            
														  else
                                               clr_IR   <= '0';
                                               ld_IR    <= '0';
                                               ld_PC    <= '1';
                                               inc_PC   <= '0';
                                               clr_A    <= '0';
                                               ld_A     <= '0';
                                               clr_B    <= '0';
                                               ld_B     <= '0';
                                               clr_C    <= '0';
                                               ld_C     <= '0';
                                               clr_Z    <= '0';
                                               ld_Z     <= '0';
                                               ALU_op   <= "XXX";
                                               REG_Mux  <= 'X';
                                               DATA_Mux <= "XX";
                                               A_mux    <= 'X';
                                               B_mux    <= 'X';
                                               IM_MUX1  <= 'X';
                                               IM_MUX2  <= "XX";
                                            end if;
														  
                                     when "0111"=>
                                          case INST(27 DOWNTO 24) is
                                                    when "0000" => --ADDI
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "010";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= '0';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "00";
                                                   when "0001" => --ADDI
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "010";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "01";
                                                    when "0010" => --SUB
                                                        clr_IR     <= '0';
                                                        ld_IR      <= '0';
                                                        ld_PC      <= '0';
                                                        inc_PC     <= '0';
                                                        clr_A      <= '0';
                                                        ld_A       <= '1';
                                                        clr_B      <= '0';
                                                        ld_B       <= '0';
                                                        clr_C      <= '0';
                                                        ld_C       <= '1';
                                                        clr_Z      <= '0';
                                                        ld_Z       <= '1';
                                                        ALU_op     <= "110";
                                                        REG_Mux    <= 'X';
                                                        DATA_Mux   <= "10";
                                                        A_mux      <= '0';
                                                        B_mux      <= '0';
                                                        IM_MUX1    <= '0';
                                                        IM_MUX2    <= "00";
                                                  
																  when "0011" => --INCA
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "010";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "10";
                                                   when "0100" => --ROL
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "100";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "XX";
                                                    when "0101" => --CLRA
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '1';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                                                    when "0110" => --CLRB
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '1';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                                                    when "0111" => --CLRC
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '1';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                                                    when "1000" => --CLRZ
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '1';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                                                    when "1001" => --ANDI
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "000";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "01";
                                                    when "1011" => --AND
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "000";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= '0';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "00";
                                                    when "1101" => --ORI
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "001";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "01";
                                                    when "1110" => --DECA
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "110";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "10";
                                                     when "1111" => --ROR
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '1';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '1';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '1';
                                                        ALU_op   <= "101";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "10";
                                                        A_mux    <= '0';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= '0';
                                                        IM_MUX2  <= "XX";
                                                     when others =>
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                                            end case;
                 when others =>
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
                    end case;
 when others =>
                                                        clr_IR   <= '0';
                                                        ld_IR    <= '0';
                                                        ld_PC    <= '0';
                                                        inc_PC   <= '0';
                                                        clr_A    <= '0';
                                                        ld_A     <= '0';
                                                        clr_B    <= '0';
                                                        ld_B     <= '0';
                                                        clr_C    <= '0';
                                                        ld_C     <= '0';
                                                        clr_Z    <= '0';
                                                        ld_Z     <= '0';
                                                        ALU_op   <= "XXX";
                                                        REG_Mux  <= 'X';
                                                        DATA_Mux <= "XX";
                                                        A_mux    <= 'X';
                                                        B_mux    <= 'X';
                                                        IM_MUX1  <= 'X';
                                                        IM_MUX2  <= "XX";
end case;
									elsif(enable='0') then
 
                                                ld_IR    <= '0';
                                                ld_PC    <= '0';
                                                inc_PC   <= '0';
                                                clr_A    <= '0';
                                                ld_A     <= '0';
                                                clr_B    <= '0';
                                                ld_B     <= '0';
                                                clr_C    <= '0';
                                                ld_C     <= '0';
                                                clr_Z    <= '0';
                                                ld_Z     <= '0';
                                                ALU_op   <= "XXX";
                                                REG_Mux  <= 'X';
                                                DATA_Mux <= "XX";
                                                A_mux    <= 'X';
                                                B_mux    <= 'X';
                                                IM_MUX1  <= 'X';
                                                IM_MUX2  <= "XX";
							end if;                                                     
                                                     
                                     
 END process;
-------- STATE MACHINE ---------
PROCESS (clk, enable)
BEGIN
    case enable is 
        when '1'=> 
                if(rising_edge(clk)) then
                        case present_state is
									when state_2 => present_state <= state_0;
										T <= "001";
                           when state_1 => present_state <= state_2;
                              T <= "100";
                           when state_0 => present_state <= state_1;
                              T <= "010";
                        end case;
                end if;     
        when '0' => present_state <= state_0;
                T <= "001";
     
end case;      
END process;
-------- DATA MEMORY INSTRUCTIONS ---------
PROCESS (mclk, clk, INST)
BEGIN
IF(falling_edge(mclk)) THEN
	IF(present_state = state_1 AND clk = '0') THEN
	--LDA and LDB Signals
		case inst(31 downto 28) is
		  when "1001" => -- LDA
					 en  <= '0';
					 wen <= '0';
					  
		  when "1010" => -- LDB
					en  <= '0';
					wen <= '0';
--STA and STB Signals                                         
 
                             
			 when "0010" => -- STA
						en  <= '1';
						wen <= '1';
						  
			  when "0011" => -- STB
						en  <= '1';
						wen <= '1';
 
 --Default Case Signals                             
			 when others =>  
						en  <= '0';
						wen <= '0';
	 end case;
 
 ELSIF(present_state = state_2 AND clk = '1') THEN
 
 case inst(31 downto 28) is
--LDA and LDB Signals
			  when "1001" => -- LDA
						 en  <= '1';
						 wen <= '0';
						  
			  when "1010" => -- LDB
						en  <= '1';
						wen <= '0';
						  
 
--STA and STB Signals
			 when "0010" => -- STA
						en  <= '0';
						wen <= '0';
						  
			  when "0011" => -- STB
						en  <= '0';
						wen <= '0';
  
--Default Case Signals
			 when others =>
						en  <= '0';
						wen <= '0';
		 end case;
 ELSIF(present_state = state_1) THEN --or alternatively just an ELSE statement
            en <= '0';
            wen <= '0';
 END IF;
 END IF;
END process;
END description;