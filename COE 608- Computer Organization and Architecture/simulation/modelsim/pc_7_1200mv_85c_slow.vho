-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "01/31/2019 16:01:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pc IS
    PORT (
	clr : IN std_logic;
	clk : IN std_logic;
	ld : IN std_logic;
	inc : IN std_logic;
	d : IN std_logic_vector(31 DOWNTO 0);
	q : INOUT std_logic_vector(31 DOWNTO 0)
	);
END pc;

-- Design Ports Information
-- q[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[17]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[18]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[19]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[20]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[21]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[22]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[25]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[26]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[27]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[28]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[29]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[30]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[31]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_d : std_logic_vector(31 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \q[4]~input_o\ : std_logic;
SIGNAL \q[5]~input_o\ : std_logic;
SIGNAL \q[6]~input_o\ : std_logic;
SIGNAL \q[7]~input_o\ : std_logic;
SIGNAL \q[8]~input_o\ : std_logic;
SIGNAL \q[9]~input_o\ : std_logic;
SIGNAL \q[10]~input_o\ : std_logic;
SIGNAL \q[11]~input_o\ : std_logic;
SIGNAL \q[12]~input_o\ : std_logic;
SIGNAL \q[13]~input_o\ : std_logic;
SIGNAL \q[14]~input_o\ : std_logic;
SIGNAL \q[15]~input_o\ : std_logic;
SIGNAL \q[16]~input_o\ : std_logic;
SIGNAL \q[17]~input_o\ : std_logic;
SIGNAL \q[18]~input_o\ : std_logic;
SIGNAL \q[19]~input_o\ : std_logic;
SIGNAL \q[20]~input_o\ : std_logic;
SIGNAL \q[21]~input_o\ : std_logic;
SIGNAL \q[22]~input_o\ : std_logic;
SIGNAL \q[23]~input_o\ : std_logic;
SIGNAL \q[24]~input_o\ : std_logic;
SIGNAL \q[25]~input_o\ : std_logic;
SIGNAL \q[26]~input_o\ : std_logic;
SIGNAL \q[27]~input_o\ : std_logic;
SIGNAL \q[28]~input_o\ : std_logic;
SIGNAL \q[29]~input_o\ : std_logic;
SIGNAL \q[30]~input_o\ : std_logic;
SIGNAL \q[31]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \d[19]~input_o\ : std_logic;
SIGNAL \d[21]~input_o\ : std_logic;
SIGNAL \d[22]~input_o\ : std_logic;
SIGNAL \d[24]~input_o\ : std_logic;
SIGNAL \d[26]~input_o\ : std_logic;
SIGNAL \d[29]~input_o\ : std_logic;
SIGNAL \d[30]~input_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \q~64_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \q~65_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL \d[16]~input_o\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \q[16]~reg0_q\ : std_logic;
SIGNAL \d[17]~input_o\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \q[17]~reg0_q\ : std_logic;
SIGNAL \d[18]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \q[18]~reg0_q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \q[19]~reg0_q\ : std_logic;
SIGNAL \d[20]~input_o\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \q[20]~reg0_q\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \q[21]~reg0_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \q[22]~reg0_q\ : std_logic;
SIGNAL \d[23]~input_o\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \q[23]~reg0_q\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \q[24]~reg0_q\ : std_logic;
SIGNAL \d[25]~input_o\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \q[25]~reg0_q\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \q[26]~reg0_q\ : std_logic;
SIGNAL \d[27]~input_o\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \q[27]~reg0_q\ : std_logic;
SIGNAL \d[28]~input_o\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \q[28]~reg0_q\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \q[29]~reg0_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \q[30]~reg0_q\ : std_logic;
SIGNAL \d[31]~input_o\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \q[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ld~input_o\ : std_logic;

BEGIN

ww_clr <= clr;
ww_clk <= clk;
ww_ld <= ld;
ww_inc <= inc;
ww_d <= d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
\ALT_INV_ld~input_o\ <= NOT \ld~input_o\;

-- Location: LCCOMB_X59_Y2_N20
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\q[11]~reg0_q\ & (!\Add0~25\)) # (!\q[11]~reg0_q\ & ((\Add0~25\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~25\) # (!\q[11]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[11]~reg0_q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X59_Y2_N26
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\q[14]~reg0_q\ & (\Add0~34\ $ (GND))) # (!\q[14]~reg0_q\ & (!\Add0~34\ & VCC))
-- \Add0~37\ = CARRY((\q[14]~reg0_q\ & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[14]~reg0_q\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X59_Y2_N30
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\q[16]~reg0_q\ & (\Add0~40\ $ (GND))) # (!\q[16]~reg0_q\ & (!\Add0~40\ & VCC))
-- \Add0~43\ = CARRY((\q[16]~reg0_q\ & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[16]~reg0_q\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X59_Y1_N16
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\q[25]~reg0_q\ & (!\Add0~67\)) # (!\q[25]~reg0_q\ & ((\Add0~67\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~67\) # (!\q[25]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[25]~reg0_q\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: IOIBUF_X81_Y0_N15
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\d[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(19),
	o => \d[19]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\d[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(21),
	o => \d[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\d[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(22),
	o => \d[22]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\d[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(24),
	o => \d[24]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\d[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(26),
	o => \d[26]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\d[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(29),
	o => \d[29]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\d[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(30),
	o => \d[30]~input_o\);

-- Location: IOOBUF_X60_Y73_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[16]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[17]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[18]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[19]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[20]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[21]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[22]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[23]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[24]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\q[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[25]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\q[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[26]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\q[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[27]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\q[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[28]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\q[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[29]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\q[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[30]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\q[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[31]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \q[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y37_N1
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X60_Y2_N22
\q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~64_combout\ = (\inc~input_o\ & (((\q[0]~reg0_q\)))) # (!\inc~input_o\ & ((\ld~input_o\ & ((\d[0]~input_o\))) # (!\ld~input_o\ & (\q[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \ld~input_o\,
	datac => \q[0]~reg0_q\,
	datad => \d[0]~input_o\,
	combout => \q~64_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X60_Y2_N23
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~64_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N22
\inc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

-- Location: LCCOMB_X60_Y1_N26
\q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~65_combout\ = (\ld~input_o\ & ((\inc~input_o\ & ((\q[1]~reg0_q\))) # (!\inc~input_o\ & (\d[1]~input_o\)))) # (!\ld~input_o\ & (((\q[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~input_o\,
	datab => \ld~input_o\,
	datac => \q[1]~reg0_q\,
	datad => \inc~input_o\,
	combout => \q~65_combout\);

-- Location: FF_X60_Y1_N27
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q~65_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X74_Y0_N8
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X59_Y2_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \q[2]~reg0_q\ $ (VCC)
-- \Add0~1\ = CARRY(\q[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~reg0_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X60_Y2_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\inc~input_o\ & ((\Add0~0_combout\))) # (!\inc~input_o\ & (\d[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[2]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Add0~2_combout\);

-- Location: FF_X60_Y2_N21
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	asdata => \q[2]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LCCOMB_X59_Y2_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\q[3]~reg0_q\ & (!\Add0~1\)) # (!\q[3]~reg0_q\ & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!\q[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: IOIBUF_X74_Y0_N1
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X60_Y2_N6
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\inc~input_o\ & (\Add0~3_combout\)) # (!\inc~input_o\ & ((\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \Add0~3_combout\,
	datad => \d[3]~input_o\,
	combout => \Add0~5_combout\);

-- Location: FF_X60_Y2_N7
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	asdata => \q[3]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N15
\d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: LCCOMB_X59_Y2_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\q[4]~reg0_q\ & (\Add0~4\ $ (GND))) # (!\q[4]~reg0_q\ & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((\q[4]~reg0_q\ & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[4]~reg0_q\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X59_Y2_N0
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\inc~input_o\ & ((\Add0~6_combout\))) # (!\inc~input_o\ & (\d[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[4]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: FF_X59_Y2_N1
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	asdata => \q[4]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X69_Y0_N1
\d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: LCCOMB_X59_Y2_N8
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\q[5]~reg0_q\ & (!\Add0~7\)) # (!\q[5]~reg0_q\ & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!\q[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~reg0_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X60_Y2_N12
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\inc~input_o\ & ((\Add0~9_combout\))) # (!\inc~input_o\ & (\d[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[5]~input_o\,
	datad => \Add0~9_combout\,
	combout => \Add0~11_combout\);

-- Location: FF_X60_Y2_N13
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~11_combout\,
	asdata => \q[5]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N8
\d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: LCCOMB_X59_Y2_N10
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\q[6]~reg0_q\ & (\Add0~10\ $ (GND))) # (!\q[6]~reg0_q\ & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((\q[6]~reg0_q\ & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~reg0_q\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X60_Y2_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\inc~input_o\ & ((\Add0~12_combout\))) # (!\inc~input_o\ & (\d[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[6]~input_o\,
	datad => \Add0~12_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X60_Y2_N27
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	asdata => \q[6]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N1
\d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: LCCOMB_X59_Y2_N12
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\q[7]~reg0_q\ & (!\Add0~13\)) # (!\q[7]~reg0_q\ & ((\Add0~13\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~13\) # (!\q[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[7]~reg0_q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X60_Y2_N8
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\inc~input_o\ & ((\Add0~15_combout\))) # (!\inc~input_o\ & (\d[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[7]~input_o\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X60_Y2_N9
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	asdata => \q[7]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: LCCOMB_X59_Y2_N14
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\q[8]~reg0_q\ & (\Add0~16\ $ (GND))) # (!\q[8]~reg0_q\ & (!\Add0~16\ & VCC))
-- \Add0~19\ = CARRY((\q[8]~reg0_q\ & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[8]~reg0_q\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: IOIBUF_X29_Y0_N22
\d[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: LCCOMB_X58_Y2_N12
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\inc~input_o\ & (\Add0~18_combout\)) # (!\inc~input_o\ & ((\d[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \Add0~18_combout\,
	datad => \d[8]~input_o\,
	combout => \Add0~20_combout\);

-- Location: FF_X58_Y2_N13
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	asdata => \q[8]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X42_Y0_N22
\d[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: LCCOMB_X59_Y2_N16
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\q[9]~reg0_q\ & (!\Add0~19\)) # (!\q[9]~reg0_q\ & ((\Add0~19\) # (GND)))
-- \Add0~22\ = CARRY((!\Add0~19\) # (!\q[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[9]~reg0_q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X58_Y2_N14
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\inc~input_o\ & ((\Add0~21_combout\))) # (!\inc~input_o\ & (\d[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[9]~input_o\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X58_Y2_N15
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	asdata => \q[9]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X67_Y0_N8
\d[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: LCCOMB_X59_Y2_N18
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\q[10]~reg0_q\ & (\Add0~22\ $ (GND))) # (!\q[10]~reg0_q\ & (!\Add0~22\ & VCC))
-- \Add0~25\ = CARRY((\q[10]~reg0_q\ & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[10]~reg0_q\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X60_Y2_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\inc~input_o\ & ((\Add0~24_combout\))) # (!\inc~input_o\ & (\d[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[10]~input_o\,
	datad => \Add0~24_combout\,
	combout => \Add0~26_combout\);

-- Location: FF_X60_Y2_N3
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	asdata => \q[10]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N15
\d[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: LCCOMB_X58_Y2_N8
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\inc~input_o\ & (\Add0~27_combout\)) # (!\inc~input_o\ & ((\d[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \inc~input_o\,
	datad => \d[11]~input_o\,
	combout => \Add0~29_combout\);

-- Location: FF_X58_Y2_N9
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_combout\,
	asdata => \q[11]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X67_Y0_N1
\d[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: LCCOMB_X59_Y2_N22
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\q[12]~reg0_q\ & (\Add0~28\ $ (GND))) # (!\q[12]~reg0_q\ & (!\Add0~28\ & VCC))
-- \Add0~31\ = CARRY((\q[12]~reg0_q\ & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[12]~reg0_q\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X60_Y2_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\inc~input_o\ & ((\Add0~30_combout\))) # (!\inc~input_o\ & (\d[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[12]~input_o\,
	datad => \Add0~30_combout\,
	combout => \Add0~32_combout\);

-- Location: FF_X60_Y2_N5
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	asdata => \q[12]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N15
\d[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: LCCOMB_X59_Y2_N24
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\q[13]~reg0_q\ & (!\Add0~31\)) # (!\q[13]~reg0_q\ & ((\Add0~31\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~31\) # (!\q[13]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[13]~reg0_q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X58_Y2_N26
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\inc~input_o\ & ((\Add0~33_combout\))) # (!\inc~input_o\ & (\d[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[13]~input_o\,
	datad => \Add0~33_combout\,
	combout => \Add0~35_combout\);

-- Location: FF_X58_Y2_N27
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~35_combout\,
	asdata => \q[13]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X67_Y0_N22
\d[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

-- Location: LCCOMB_X60_Y2_N30
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\inc~input_o\ & (\Add0~36_combout\)) # (!\inc~input_o\ & ((\d[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \inc~input_o\,
	datad => \d[14]~input_o\,
	combout => \Add0~38_combout\);

-- Location: FF_X60_Y2_N31
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	asdata => \q[14]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X69_Y0_N8
\d[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

-- Location: LCCOMB_X59_Y2_N28
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\q[15]~reg0_q\ & (!\Add0~37\)) # (!\q[15]~reg0_q\ & ((\Add0~37\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~37\) # (!\q[15]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[15]~reg0_q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X60_Y2_N28
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\inc~input_o\ & ((\Add0~39_combout\))) # (!\inc~input_o\ & (\d[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[15]~input_o\,
	datad => \Add0~39_combout\,
	combout => \Add0~41_combout\);

-- Location: FF_X60_Y2_N29
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~41_combout\,
	asdata => \q[15]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: IOIBUF_X42_Y0_N15
\d[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(16),
	o => \d[16]~input_o\);

-- Location: LCCOMB_X58_Y2_N16
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\inc~input_o\ & (\Add0~42_combout\)) # (!\inc~input_o\ & ((\d[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \inc~input_o\,
	datad => \d[16]~input_o\,
	combout => \Add0~44_combout\);

-- Location: FF_X58_Y2_N17
\q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	asdata => \q[16]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[16]~reg0_q\);

-- Location: IOIBUF_X65_Y0_N1
\d[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(17),
	o => \d[17]~input_o\);

-- Location: LCCOMB_X59_Y1_N0
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\q[17]~reg0_q\ & (!\Add0~43\)) # (!\q[17]~reg0_q\ & ((\Add0~43\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~43\) # (!\q[17]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[17]~reg0_q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X60_Y1_N8
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\inc~input_o\ & ((\Add0~45_combout\))) # (!\inc~input_o\ & (\d[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[17]~input_o\,
	datad => \Add0~45_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X60_Y1_N9
\q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~47_combout\,
	asdata => \q[17]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[17]~reg0_q\);

-- Location: IOIBUF_X79_Y0_N1
\d[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(18),
	o => \d[18]~input_o\);

-- Location: LCCOMB_X59_Y1_N2
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\q[18]~reg0_q\ & (\Add0~46\ $ (GND))) # (!\q[18]~reg0_q\ & (!\Add0~46\ & VCC))
-- \Add0~49\ = CARRY((\q[18]~reg0_q\ & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[18]~reg0_q\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X60_Y1_N22
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\inc~input_o\ & ((\Add0~48_combout\))) # (!\inc~input_o\ & (\d[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[18]~input_o\,
	datad => \Add0~48_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X60_Y1_N23
\q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	asdata => \q[18]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[18]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N4
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\q[19]~reg0_q\ & (!\Add0~49\)) # (!\q[19]~reg0_q\ & ((\Add0~49\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~49\) # (!\q[19]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[19]~reg0_q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X60_Y1_N4
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\inc~input_o\ & ((\Add0~51_combout\))) # (!\inc~input_o\ & (\d[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[19]~input_o\,
	datab => \Add0~51_combout\,
	datad => \inc~input_o\,
	combout => \Add0~53_combout\);

-- Location: FF_X60_Y1_N5
\q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_combout\,
	asdata => \q[19]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[19]~reg0_q\);

-- Location: IOIBUF_X81_Y0_N22
\d[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(20),
	o => \d[20]~input_o\);

-- Location: LCCOMB_X59_Y1_N6
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\q[20]~reg0_q\ & (\Add0~52\ $ (GND))) # (!\q[20]~reg0_q\ & (!\Add0~52\ & VCC))
-- \Add0~55\ = CARRY((\q[20]~reg0_q\ & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[20]~reg0_q\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X60_Y1_N6
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\inc~input_o\ & ((\Add0~54_combout\))) # (!\inc~input_o\ & (\d[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[20]~input_o\,
	datad => \Add0~54_combout\,
	combout => \Add0~56_combout\);

-- Location: FF_X60_Y1_N7
\q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	asdata => \q[20]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[20]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N8
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\q[21]~reg0_q\ & (!\Add0~55\)) # (!\q[21]~reg0_q\ & ((\Add0~55\) # (GND)))
-- \Add0~58\ = CARRY((!\Add0~55\) # (!\q[21]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[21]~reg0_q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X58_Y1_N16
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\inc~input_o\ & ((\Add0~57_combout\))) # (!\inc~input_o\ & (\d[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[21]~input_o\,
	datab => \Add0~57_combout\,
	datad => \inc~input_o\,
	combout => \Add0~59_combout\);

-- Location: FF_X58_Y1_N17
\q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~59_combout\,
	asdata => \q[21]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[21]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N10
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\q[22]~reg0_q\ & (\Add0~58\ $ (GND))) # (!\q[22]~reg0_q\ & (!\Add0~58\ & VCC))
-- \Add0~61\ = CARRY((\q[22]~reg0_q\ & !\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[22]~reg0_q\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X58_Y1_N22
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\inc~input_o\ & ((\Add0~60_combout\))) # (!\inc~input_o\ & (\d[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[22]~input_o\,
	datab => \inc~input_o\,
	datad => \Add0~60_combout\,
	combout => \Add0~62_combout\);

-- Location: FF_X58_Y1_N23
\q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	asdata => \q[22]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[22]~reg0_q\);

-- Location: IOIBUF_X65_Y0_N8
\d[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(23),
	o => \d[23]~input_o\);

-- Location: LCCOMB_X59_Y1_N12
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\q[23]~reg0_q\ & (!\Add0~61\)) # (!\q[23]~reg0_q\ & ((\Add0~61\) # (GND)))
-- \Add0~64\ = CARRY((!\Add0~61\) # (!\q[23]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[23]~reg0_q\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X60_Y1_N20
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\inc~input_o\ & ((\Add0~63_combout\))) # (!\inc~input_o\ & (\d[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[23]~input_o\,
	datad => \Add0~63_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X60_Y1_N21
\q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_combout\,
	asdata => \q[23]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[23]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N14
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\q[24]~reg0_q\ & (\Add0~64\ $ (GND))) # (!\q[24]~reg0_q\ & (!\Add0~64\ & VCC))
-- \Add0~67\ = CARRY((\q[24]~reg0_q\ & !\Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[24]~reg0_q\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X58_Y1_N12
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\inc~input_o\ & ((\Add0~66_combout\))) # (!\inc~input_o\ & (\d[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[24]~input_o\,
	datab => \inc~input_o\,
	datad => \Add0~66_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X58_Y1_N13
\q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	asdata => \q[24]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[24]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N8
\d[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(25),
	o => \d[25]~input_o\);

-- Location: LCCOMB_X60_Y1_N14
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\inc~input_o\ & (\Add0~69_combout\)) # (!\inc~input_o\ & ((\d[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \d[25]~input_o\,
	datad => \inc~input_o\,
	combout => \Add0~71_combout\);

-- Location: FF_X60_Y1_N15
\q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	asdata => \q[25]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[25]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N18
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\q[26]~reg0_q\ & (\Add0~70\ $ (GND))) # (!\q[26]~reg0_q\ & (!\Add0~70\ & VCC))
-- \Add0~73\ = CARRY((\q[26]~reg0_q\ & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[26]~reg0_q\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X58_Y1_N10
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\inc~input_o\ & ((\Add0~72_combout\))) # (!\inc~input_o\ & (\d[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[26]~input_o\,
	datab => \inc~input_o\,
	datad => \Add0~72_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X58_Y1_N11
\q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	asdata => \q[26]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[26]~reg0_q\);

-- Location: IOIBUF_X79_Y0_N15
\d[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(27),
	o => \d[27]~input_o\);

-- Location: LCCOMB_X59_Y1_N20
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\q[27]~reg0_q\ & (!\Add0~73\)) # (!\q[27]~reg0_q\ & ((\Add0~73\) # (GND)))
-- \Add0~76\ = CARRY((!\Add0~73\) # (!\q[27]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[27]~reg0_q\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X60_Y1_N28
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\inc~input_o\ & ((\Add0~75_combout\))) # (!\inc~input_o\ & (\d[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[27]~input_o\,
	datad => \Add0~75_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X60_Y1_N29
\q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	asdata => \q[27]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[27]~reg0_q\);

-- Location: IOIBUF_X83_Y0_N8
\d[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(28),
	o => \d[28]~input_o\);

-- Location: LCCOMB_X59_Y1_N22
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\q[28]~reg0_q\ & (\Add0~76\ $ (GND))) # (!\q[28]~reg0_q\ & (!\Add0~76\ & VCC))
-- \Add0~79\ = CARRY((\q[28]~reg0_q\ & !\Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[28]~reg0_q\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X60_Y1_N30
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\inc~input_o\ & ((\Add0~78_combout\))) # (!\inc~input_o\ & (\d[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[28]~input_o\,
	datad => \Add0~78_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X60_Y1_N31
\q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	asdata => \q[28]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[28]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N24
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\q[29]~reg0_q\ & (!\Add0~79\)) # (!\q[29]~reg0_q\ & ((\Add0~79\) # (GND)))
-- \Add0~82\ = CARRY((!\Add0~79\) # (!\q[29]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[29]~reg0_q\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X58_Y1_N24
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\inc~input_o\ & ((\Add0~81_combout\))) # (!\inc~input_o\ & (\d[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[29]~input_o\,
	datab => \inc~input_o\,
	datad => \Add0~81_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X58_Y1_N25
\q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	asdata => \q[29]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[29]~reg0_q\);

-- Location: LCCOMB_X59_Y1_N26
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\q[30]~reg0_q\ & (\Add0~82\ $ (GND))) # (!\q[30]~reg0_q\ & (!\Add0~82\ & VCC))
-- \Add0~85\ = CARRY((\q[30]~reg0_q\ & !\Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[30]~reg0_q\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X59_Y1_N30
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\inc~input_o\ & ((\Add0~84_combout\))) # (!\inc~input_o\ & (\d[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[30]~input_o\,
	datab => \inc~input_o\,
	datad => \Add0~84_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X59_Y1_N31
\q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	asdata => \q[30]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[30]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N1
\d[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(31),
	o => \d[31]~input_o\);

-- Location: LCCOMB_X59_Y1_N28
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = \Add0~85\ $ (\q[31]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[31]~reg0_q\,
	cin => \Add0~85\,
	combout => \Add0~87_combout\);

-- Location: LCCOMB_X60_Y1_N24
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\inc~input_o\ & ((\Add0~87_combout\))) # (!\inc~input_o\ & (\d[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc~input_o\,
	datab => \d[31]~input_o\,
	datad => \Add0~87_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X60_Y1_N25
\q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	asdata => \q[31]~reg0_q\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[31]~reg0_q\);

-- Location: IOIBUF_X60_Y73_N22
\q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(0),
	o => \q[0]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(1),
	o => \q[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(2),
	o => \q[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(3),
	o => \q[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\q[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(4),
	o => \q[4]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\q[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(5),
	o => \q[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\q[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(6),
	o => \q[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\q[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(7),
	o => \q[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\q[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(8),
	o => \q[8]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\q[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(9),
	o => \q[9]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\q[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(10),
	o => \q[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\q[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(11),
	o => \q[11]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\q[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(12),
	o => \q[12]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\q[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(13),
	o => \q[13]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\q[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(14),
	o => \q[14]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\q[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(15),
	o => \q[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\q[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(16),
	o => \q[16]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\q[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(17),
	o => \q[17]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\q[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(18),
	o => \q[18]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\q[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(19),
	o => \q[19]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\q[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(20),
	o => \q[20]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\q[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(21),
	o => \q[21]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\q[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(22),
	o => \q[22]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\q[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(23),
	o => \q[23]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\q[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(24),
	o => \q[24]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\q[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(25),
	o => \q[25]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\q[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(26),
	o => \q[26]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\q[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(27),
	o => \q[27]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\q[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(28),
	o => \q[28]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\q[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(29),
	o => \q[29]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\q[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(30),
	o => \q[30]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\q[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q(31),
	o => \q[31]~input_o\);

q(0) <= \q[0]~output_o\;

q(1) <= \q[1]~output_o\;

q(2) <= \q[2]~output_o\;

q(3) <= \q[3]~output_o\;

q(4) <= \q[4]~output_o\;

q(5) <= \q[5]~output_o\;

q(6) <= \q[6]~output_o\;

q(7) <= \q[7]~output_o\;

q(8) <= \q[8]~output_o\;

q(9) <= \q[9]~output_o\;

q(10) <= \q[10]~output_o\;

q(11) <= \q[11]~output_o\;

q(12) <= \q[12]~output_o\;

q(13) <= \q[13]~output_o\;

q(14) <= \q[14]~output_o\;

q(15) <= \q[15]~output_o\;

q(16) <= \q[16]~output_o\;

q(17) <= \q[17]~output_o\;

q(18) <= \q[18]~output_o\;

q(19) <= \q[19]~output_o\;

q(20) <= \q[20]~output_o\;

q(21) <= \q[21]~output_o\;

q(22) <= \q[22]~output_o\;

q(23) <= \q[23]~output_o\;

q(24) <= \q[24]~output_o\;

q(25) <= \q[25]~output_o\;

q(26) <= \q[26]~output_o\;

q(27) <= \q[27]~output_o\;

q(28) <= \q[28]~output_o\;

q(29) <= \q[29]~output_o\;

q(30) <= \q[30]~output_o\;

q(31) <= \q[31]~output_o\;
END structure;


