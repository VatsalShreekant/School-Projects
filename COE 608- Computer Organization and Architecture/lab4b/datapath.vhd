LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
USE ieee.std_logic_arith.ALL; 
USE ieee.std_logic_unsigned.ALL; 

ENTITY datapath IS 
PORT(
	Clk, mClk  : IN STD_LOGIC;  --clock Signal 
--Memory Signals 
	WEN, EN :    IN STD_LOGIC; 
-- Register Control Signals (CLR and LD). 
	Clr_A , Ld_A :       IN STD_LOGIC; 
	Clr_B , Ld_B :  IN STD_LOGIC; 
	Clr_C , Ld_C :  IN STD_LOGIC; 
	Clr_Z , Ld_Z :  IN STD_LOGIC; 
	Clr_PC , Ld_PC :     IN STD_LOGIC; 
	Clr_IR , Ld_IR :      IN STD_LOGIC; 
-- Register outputs (Some needed to feed back to control unit. Others pulled out for testing. 
	Out_A :       OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_C :       OUT STD_LOGIC; 
	Out_Z : OUT STD_LOGIC; 
	Out_PC :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	Out_IR :      OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
-- Special inputs to PC. 
	Inc_PC :      IN STD_LOGIC; 
-- Address and Data Bus signals for debugging. 
	ADDR_OUT :  OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	DATA_IN  :   IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
	DATA_OUT, MEM_OUT, MEM_IN :     OUT STD_LOGIC_VECTOR(31 DOWNTO 0); 
	MEM_ADDR :       OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
-- Various MUX controls. 
	DATA_Mux:   IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
	REG_Mux :    IN STD_LOGIC; 
	A_MUX, B_MUX :   IN STD_LOGIC; 
	IM_MUX1 :    IN STD_LOGIC; 
	IM_MUX2 :    IN STD_LOGIC_VECTOR(1 DOWNTO 0);  
-- ALU Operations. 
	ALU_Op :     IN STD_LOGIC_VECTOR(2 DOWNTO 0)); 
END datapath; 
--------------------------------------------------------------------------------------------------------------------------- 
ARCHITECTURE description OF datapath IS 
--  Component instantiations  
component register32 IS 
PORT(            
	d   : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input.  
	ld  : IN STD_LOGIC;     -- load/enable.  
	clr : IN STD_LOGIC;     -- async. clear.  
	clk : IN STD_LOGIC; -- clock. 
	Q   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output.  
END component; 

component pc IS 
PORT(  
	d   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);   
	clr : IN STD_LOGIC;    
	clk : IN STD_LOGIC;
	ld  : IN STD_LOGIC;     
	inc  : IN STD_LOGIC;    
	q   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  -- using intermediate signal q_temp as input
END component;

component mux_3to1 IS
PORT(
	sig0,sig1,sig2: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	selector: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
	output:OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;

component mux2to1 IS
PORT(
		in0,in1 :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel									  :IN STD_LOGIC;
		y										  :OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END component;

component data_mem IS 
PORT( 
clk 		  : IN STD_LOGIC; 
addr 		  : IN UNSIGNED(7 DOWNTO 0);  
data_in    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);  
wen 		  : IN STD_LOGIC; 
en 		  : IN STD_LOGIC; 
data_out   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));  
END component; 

component alu IS
PORT(
		a			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		b			:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		op			:IN std_LOGIC_VECTOR(2 DOWNTO 0);
		result	:INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		cout		:OUT STD_LOGIC;
		zero		:OUT STD_LOGIC);
END component;

-- buffers
SIGNAL inA :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inB :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outA :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outB :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outIR :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL addrOut :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL memOut, memIn:	STD_LOGIC_VECTOR(31 DOWNTO 0);

SIGNAL dataBus :			STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL aluInput1:		   STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL aluInput2:		   STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL aluOutput:		   STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 


--  2 to 1 mux
	aMux: mux2to1 port map(
		in0 => dataBus,
		in1 => outIR(15 downto 0) & "0000000000000000",
		sel => A_mux,
		y => inA);
		
	bMux: mux2to1 port map(
		in0 => dataBus,
		in1 => outIR(15 downto 0) & "0000000000000000",
		sel => B_mux,
		y => inB);
		
	MemMux: mux2to1 port map(
		in0 => outA,
		in1 => outB,
		sel => REG_Mux,
		y => memIn);
		
	aluMux1: mux2to1 port map(
		in0 => outA,
		in1 => "0000000000000000" & outIR(31 downto 16),
		sel => IM_MUX1,
		y => aluInput1);
		
-- 3 to 1 mux
	aluMux2: mux_3to1 port map(
		sig0 => outB,
		sig1 => outIR(15 downto 0) & "0000000000000000",
		sig2 => "11111111111111111111111111111111",	
		selector => IM_MUX2,
		output => aluInput2);
		
	dataMux: mux_3to1 port map(
		sig0 => DATA_IN,
		sig1 => memOut,
		sig2 => aluOutput,
		selector => DATA_Mux,
		output => dataBus);
-- registers
	regA: register32 port map(
		d => inA,
		ld => LD_A,
		clr => CLR_A,
		clk => Clk,
		Q => outA);
		
	regB: register32 port map(
		d => inB,
		ld => LD_B,
		clr => CLR_B,
		clk => Clk,
		Q => outB);
	
	regIR: register32 port map(
		d => dataBus,
		ld => LD_IR,
		clr => CLR_IR,
		clk => Clk,
		Q => outIR);

-- alu
	aluComp: alu port map(
		a => aluInput1,
		b => aluInput2,
		op => ALU_Op,
		result => aluOutput,
		cout => Out_C,
		zero => Out_Z);

-- pc
	pcComp: pc port map(
		d 		=> outIR(15 downto 0) & "0000000000000000",
		clr 	=> CLR_PC,
		clk 	=> Clk,
		ld 	=> LD_PC,
		inc	=> inc_PC,
		q 		=> addrOut);

-- data memory
	dataMem: data_mem port map(
		clk => mClk,
		addr => unsigned(outIR(7 downto 0)),
		data_in => memIn,
		wen => WEN,
		en => EN,
		data_out => memOut);
		
-- buffer outputs
	OUT_IR <= outIR;
	Out_A <= outA;
	Out_B <= outB;
	Mem_OUT <= memOut;
	Mem_IN <= memIn;
	ADDR_OUT <= addrOut; 
	
END description; 


