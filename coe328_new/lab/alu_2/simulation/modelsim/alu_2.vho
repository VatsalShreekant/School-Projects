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

-- DATE "11/30/2017 12:08:11"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_2 IS
    PORT (
	Clock : IN std_logic;
	A : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	B : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	student_id : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	OP : IN IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	Neg : OUT std_logic;
	R1 : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	R2 : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0)
	);
END alu_2;

-- Design Ports Information
-- student_id[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[2]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Neg	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[7]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[8]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[9]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[10]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[11]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[12]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[13]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[14]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[15]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[3]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[5]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[7]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_student_id : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Neg : std_logic;
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Neg~0_combout\ : std_logic;
SIGNAL \Neg~reg0_regout\ : std_logic;
SIGNAL \Result[0]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Result[0]~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Result[0]~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Result[0]~0_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \OP~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_A <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(A);
ww_B <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(B);
ww_student_id <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(student_id);
ww_OP <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(OP);
Neg <= ww_Neg;
R1 <= IEEE.NUMERIC_STD.UNSIGNED(ww_R1);
R2 <= IEEE.NUMERIC_STD.UNSIGNED(ww_R2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

-- Location: LCCOMB_X51_Y29_N20
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A~combout\(2) & (\A~combout\(3) $ (VCC))) # (!\A~combout\(2) & (\A~combout\(3) & VCC))
-- \Add0~1\ = CARRY((\A~combout\(2) & \A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X51_Y29_N22
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A~combout\(4) & (!\Add0~1\)) # (!\A~combout\(4) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X51_Y29_N24
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\A~combout\(5) & (\Add0~3\ $ (GND))) # (!\A~combout\(5) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\A~combout\(5) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X51_Y29_N26
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A~combout\(6) & (!\Add0~5\)) # (!\A~combout\(6) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\A~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X51_Y29_N28
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!\A~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(7),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X51_Y29_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X51_Y29_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\LessThan0~1_cout\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X51_Y29_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\LessThan0~3_cout\))) # (!\A~combout\(2) & (\B~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X51_Y29_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add0~0_combout\ & ((!\LessThan0~5_cout\) # (!\B~combout\(3)))) # (!\Add0~0_combout\ & (!\B~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \B~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X51_Y29_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B~combout\(4) & ((!\LessThan0~7_cout\) # (!\Add0~2_combout\))) # (!\B~combout\(4) & (!\Add0~2_combout\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X51_Y29_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Add0~4_combout\ & ((!\LessThan0~9_cout\) # (!\B~combout\(5)))) # (!\Add0~4_combout\ & (!\B~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \B~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X51_Y29_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B~combout\(6) & ((!\LessThan0~11_cout\) # (!\Add0~6_combout\))) # (!\B~combout\(6) & (!\Add0~6_combout\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X51_Y29_N14
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\Add0~8_combout\ & (\LessThan0~13_cout\ & \B~combout\(7))) # (!\Add0~8_combout\ & ((\LessThan0~13_cout\) # (\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \B~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X53_Y29_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X53_Y29_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\A~combout\(1) & ((!\LessThan1~1_cout\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X53_Y29_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan1~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X53_Y29_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\A~combout\(3) & ((!\LessThan1~5_cout\) # (!\B~combout\(3)))) # (!\A~combout\(3) & (!\B~combout\(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X53_Y29_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\LessThan1~7_cout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X53_Y29_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\LessThan1~9_cout\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X53_Y29_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan1~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X53_Y29_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\A~combout\(7) & (\B~combout\(7) & \LessThan1~13_cout\)) # (!\A~combout\(7) & ((\B~combout\(7)) # (\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X51_Y28_N4
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \A~combout\(0) $ (VCC)
-- \Add5~1\ = CARRY(\A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X51_Y28_N6
\Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\A~combout\(1) & (!\Add5~1\)) # (!\A~combout\(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X53_Y28_N20
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add3~4_combout\ & (!\Add1~3\ & VCC)) # (!\Add3~4_combout\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!\Add3~4_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X53_Y28_N4
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \Add1~4_combout\ $ (VCC)
-- \Add2~1\ = CARRY(\Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X54_Y28_N20
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Add3~4_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X51_Y28_N12
\Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\A~combout\(4) & (\Add5~7\ $ (GND))) # (!\A~combout\(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((\A~combout\(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X53_Y28_N24
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add3~8_combout\ & (!\Add1~7\ & VCC)) # (!\Add3~8_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!\Add3~8_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X53_Y28_N8
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add1~8_combout\ & ((GND) # (!\Add2~3\))) # (!\Add1~8_combout\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\Add1~8_combout\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X54_Y28_N24
\Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add3~8_combout\ & (\Add4~3\ $ (GND))) # (!\Add3~8_combout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\Add3~8_combout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X51_Y28_N14
\Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\A~combout\(5) & (!\Add5~9\)) # (!\A~combout\(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\A~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X54_Y28_N28
\Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Add3~12_combout\ & (\Add4~7\ $ (GND))) # (!\Add3~12_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\Add3~12_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X51_Y28_N16
\Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\A~combout\(6) & (\Add5~11\ $ (GND))) # (!\A~combout\(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((\A~combout\(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X54_Y28_N30
\Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = \Add3~14_combout\ $ (\Add4~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	cin => \Add4~9\,
	combout => \Add4~10_combout\);

-- Location: LCCOMB_X51_Y29_N16
\Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\A~combout\(2) & ((\Equal0~3_combout\) # ((\B~combout\(0) & \Result[0]~3_combout\)))) # (!\A~combout\(2) & (((\B~combout\(0) & \Result[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Equal0~3_combout\,
	datac => \B~combout\(0),
	datad => \Result[0]~3_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X54_Y28_N10
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Result[0]~2_combout\ & (\Neg~0_combout\ & ((\Add2~0_combout\)))) # (!\Result[0]~2_combout\ & ((\Add4~0_combout\) # ((\Neg~0_combout\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~2_combout\,
	datab => \Neg~0_combout\,
	datac => \Add4~0_combout\,
	datad => \Add2~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X55_Y28_N24
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X50_Y28_N10
\Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\Equal0~3_combout\ & ((\A~combout\(5)) # ((\Result[0]~3_combout\ & \B~combout\(3))))) # (!\Equal0~3_combout\ & (((\Result[0]~3_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \A~combout\(5),
	datac => \Result[0]~3_combout\,
	datad => \B~combout\(3),
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X54_Y28_N6
\Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Add2~4_combout\ & ((\Neg~0_combout\) # ((\Add4~4_combout\ & !\Result[0]~2_combout\)))) # (!\Add2~4_combout\ & (((\Add4~4_combout\ & !\Result[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Neg~0_combout\,
	datac => \Add4~4_combout\,
	datad => \Result[0]~2_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X50_Y28_N12
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\B~combout\(5) & ((\Result[0]~3_combout\) # ((\A~combout\(5) & \Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~3_combout\,
	datab => \A~combout\(5),
	datac => \B~combout\(5),
	datad => \Equal5~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X50_Y28_N6
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\B~combout\(2) & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \B~combout\(2),
	datad => \Equal7~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X55_Y28_N6
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Equal3~1_combout\ & ((\B~combout\(2)) # ((\Equal6~1_combout\ & !\A~combout\(6))))) # (!\Equal3~1_combout\ & (\Equal6~1_combout\ & (!\A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal6~1_combout\,
	datac => \A~combout\(6),
	datad => \B~combout\(2),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X55_Y28_N10
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Result[0]~0_combout\ & ((\A~combout\(6)) # ((\Add5~12_combout\ & \Equal4~1_combout\)))) # (!\Result[0]~0_combout\ & (\Add5~12_combout\ & ((\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Add5~12_combout\,
	datac => \A~combout\(6),
	datad => \Equal4~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X55_Y28_N12
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Add4~10_combout\ & (((\Equal6~1_combout\ & !\A~combout\(7))) # (!\Result[0]~2_combout\))) # (!\Add4~10_combout\ & (((\Equal6~1_combout\ & !\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Result[0]~2_combout\,
	datac => \Equal6~1_combout\,
	datad => \A~combout\(7),
	combout => \Selector0~3_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(8),
	combout => \OP~combout\(8));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(14),
	combout => \OP~combout\(14));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(6),
	combout => \OP~combout\(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(13),
	combout => \OP~combout\(13));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(15),
	combout => \OP~combout\(15));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(12),
	combout => \OP~combout\(12));

-- Location: LCCOMB_X58_Y32_N28
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\OP~combout\(14) & (!\OP~combout\(13) & (!\OP~combout\(15) & !\OP~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(14),
	datab => \OP~combout\(13),
	datac => \OP~combout\(15),
	datad => \OP~combout\(12),
	combout => \Equal0~1_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(4),
	combout => \OP~combout\(4));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(0),
	combout => \OP~combout\(0));

-- Location: LCCOMB_X54_Y32_N0
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\OP~combout\(3) & (!\OP~combout\(4) & !\OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \OP~combout\(4),
	datac => \OP~combout\(0),
	combout => \Equal2~0_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(9),
	combout => \OP~combout\(9));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(10),
	combout => \OP~combout\(10));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(11),
	combout => \OP~combout\(11));

-- Location: LCCOMB_X58_Y32_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\OP~combout\(8) & (!\OP~combout\(9) & (!\OP~combout\(10) & !\OP~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(8),
	datab => \OP~combout\(9),
	datac => \OP~combout\(10),
	datad => \OP~combout\(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X58_Y32_N30
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\OP~combout\(2) & (\Equal0~1_combout\ & (\Equal2~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(2),
	datab => \Equal0~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(7),
	combout => \OP~combout\(7));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(5),
	combout => \OP~combout\(5));

-- Location: LCCOMB_X58_Y32_N8
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\OP~combout\(6) & (!\OP~combout\(7) & !\OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(7),
	datac => \OP~combout\(5),
	combout => \Equal1~1_combout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(1),
	combout => \OP~combout\(1));

-- Location: LCCOMB_X58_Y32_N24
\Neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Neg~0_combout\ = (\LessThan0~14_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \OP~combout\(1),
	combout => \Neg~0_combout\);

-- Location: LCFF_X58_Y32_N25
\Neg~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Neg~reg0_regout\);

-- Location: LCCOMB_X58_Y32_N12
\Result[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result[0]~2_combout\ = (\LessThan0~14_combout\) # (((!\OP~combout\(1)) # (!\Equal1~1_combout\)) # (!\Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \OP~combout\(1),
	combout => \Result[0]~2_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X53_Y29_N16
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\A~combout\(0) & ((GND) # (!\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(0) $ (GND)))
-- \Add3~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X50_Y28_N26
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Add3~0_combout\ & ((\Neg~0_combout\) # (!\Result[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neg~0_combout\,
	datab => \Result[0]~2_combout\,
	datac => \Add3~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X58_Y32_N16
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\OP~combout\(7) & \OP~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(7),
	datac => \OP~combout\(5),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X58_Y32_N10
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\OP~combout\(6) & (\Equal1~0_combout\ & (\Equal5~0_combout\ & !\OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \Equal1~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \OP~combout\(1),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X50_Y28_N24
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\A~combout\(0) & ((\Result[0]~1_combout\) # ((\B~combout\(0) & \Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~1_combout\,
	datab => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \Equal5~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(3),
	combout => \OP~combout\(3));

-- Location: LCCOMB_X54_Y32_N8
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\OP~combout\(4) & !\OP~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(4),
	datac => \OP~combout\(3),
	combout => \Equal4~0_combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(2),
	combout => \OP~combout\(2));

-- Location: LCCOMB_X54_Y32_N26
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal2~1_combout\ & (\Equal4~0_combout\ & (!\OP~combout\(0) & !\OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \OP~combout\(0),
	datad => \OP~combout\(2),
	combout => \Equal4~1_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCCOMB_X58_Y32_N22
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\OP~combout\(7) & !\OP~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(7),
	datac => \OP~combout\(5),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X58_Y32_N0
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (!\OP~combout\(6) & (\Equal1~0_combout\ & (\Equal7~0_combout\ & !\OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \Equal1~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \OP~combout\(1),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X50_Y28_N28
\Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Add5~0_combout\ & ((\Equal4~1_combout\) # ((\B~combout\(5) & \Equal7~1_combout\)))) # (!\Add5~0_combout\ & (((\B~combout\(5) & \Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \B~combout\(5),
	datad => \Equal7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X50_Y28_N8
\Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector7~3_combout\) # ((\Selector7~1_combout\) # ((\Selector7~0_combout\) # (\Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~3_combout\,
	datab => \Selector7~1_combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCFF_X50_Y28_N9
\Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(0));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X53_Y29_N18
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (!\Add3~1\)) # (!\B~combout\(1) & (\Add3~1\ & VCC)))) # (!\A~combout\(1) & ((\B~combout\(1) & ((\Add3~1\) # (GND))) # (!\B~combout\(1) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\Add3~1\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X53_Y28_N16
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(!\Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X53_Y28_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add3~2_combout\ & ((\Add1~1_cout\) # (GND))) # (!\Add3~2_combout\ & (!\Add1~1_cout\))
-- \Add1~3\ = CARRY((\Add3~2_combout\) # (!\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X53_Y28_N0
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Result[0]~2_combout\ & (\Add1~2_combout\ & ((\Neg~0_combout\)))) # (!\Result[0]~2_combout\ & ((\Add3~2_combout\) # ((\Add1~2_combout\ & \Neg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Add3~2_combout\,
	datad => \Neg~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCCOMB_X50_Y28_N16
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Add5~2_combout\ & ((\Equal4~1_combout\) # ((\Equal7~1_combout\ & \B~combout\(6))))) # (!\Add5~2_combout\ & (\Equal7~1_combout\ & ((\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal4~1_combout\,
	datad => \B~combout\(6),
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X50_Y28_N18
\Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~2_combout\) # ((\Selector6~1_combout\) # ((\Result[0]~3_combout\ & \B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~3_combout\,
	datab => \Selector6~2_combout\,
	datac => \B~combout\(1),
	datad => \Selector6~1_combout\,
	combout => \Selector6~3_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X50_Y28_N14
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\A~combout\(1) & ((\Result[0]~1_combout\) # ((\B~combout\(1) & \Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~1_combout\,
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \Equal5~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X50_Y28_N2
\Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\Selector6~3_combout\) # ((\Selector6~0_combout\) # ((\Equal0~3_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Selector6~3_combout\,
	datac => \Selector6~0_combout\,
	datad => \A~combout\(3),
	combout => \Selector6~4_combout\);

-- Location: LCFF_X50_Y28_N3
\Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(1));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X51_Y28_N8
\Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\A~combout\(2) & (\Add5~3\ $ (GND))) # (!\A~combout\(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\A~combout\(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X55_Y28_N18
\Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~2_combout\ & ((\Equal5~1_combout\) # ((\Add5~4_combout\ & \Equal4~1_combout\)))) # (!\Selector5~2_combout\ & (\Add5~4_combout\ & ((\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \Add5~4_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X54_Y32_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\OP~combout\(3) & (!\OP~combout\(4) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \OP~combout\(4),
	datac => \OP~combout\(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X58_Y32_N26
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal1~1_combout\ & !\OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \OP~combout\(1),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X54_Y32_N16
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal2~1_combout\ & !\OP~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \OP~combout\(2),
	combout => \Equal0~3_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X54_Y32_N20
\Result[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result[0]~3_combout\ = (\LessThan1~14_combout\ & (\Equal2~0_combout\ & (\Equal2~1_combout\ & \OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \OP~combout\(2),
	combout => \Result[0]~3_combout\);

-- Location: LCCOMB_X51_Y29_N18
\Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\B~combout\(2) & ((\Result[0]~3_combout\) # ((\Equal0~3_combout\ & \A~combout\(4))))) # (!\B~combout\(2) & (\Equal0~3_combout\ & (\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \Equal0~3_combout\,
	datac => \A~combout\(4),
	datad => \Result[0]~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X58_Y32_N20
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\OP~combout\(6) & (!\OP~combout\(7) & !\OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(7),
	datac => \OP~combout\(5),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X58_Y32_N6
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal1~0_combout\ & (\Equal6~0_combout\ & !\OP~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \OP~combout\(1),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X54_Y32_N2
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\OP~combout\(4) & \OP~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(4),
	datac => \OP~combout\(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X54_Y32_N12
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal2~1_combout\ & (\Equal3~0_combout\ & (!\OP~combout\(0) & !\OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \OP~combout\(0),
	datad => \OP~combout\(2),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X55_Y28_N28
\Result[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result[0]~1_combout\ = (\Result[0]~0_combout\) # ((\Equal6~1_combout\) # (\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal3~1_combout\,
	combout => \Result[0]~1_combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X55_Y28_N30
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal7~1_combout\ & ((\B~combout\(7)) # ((\Result[0]~1_combout\ & \A~combout\(2))))) # (!\Equal7~1_combout\ & (\Result[0]~1_combout\ & ((\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Result[0]~1_combout\,
	datac => \B~combout\(7),
	datad => \A~combout\(2),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X54_Y28_N0
\Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (\Selector5~1_combout\) # ((\Selector5~3_combout\) # ((\Selector5~4_combout\) # (\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector5~3_combout\,
	datac => \Selector5~4_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~5_combout\);

-- Location: LCFF_X54_Y28_N1
\Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(2));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X50_Y28_N30
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\A~combout\(3) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \B~combout\(3),
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X51_Y28_N10
\Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\A~combout\(3) & (!\Add5~5\)) # (!\A~combout\(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X50_Y28_N0
\Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\Equal5~1_combout\ & ((\Selector4~2_combout\) # ((\Add5~6_combout\ & \Equal4~1_combout\)))) # (!\Equal5~1_combout\ & (((\Add5~6_combout\ & \Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Selector4~2_combout\,
	datac => \Add5~6_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X50_Y28_N20
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Result[0]~1_combout\ & ((\A~combout\(3)) # ((\B~combout\(0) & \Equal7~1_combout\)))) # (!\Result[0]~1_combout\ & (((\B~combout\(0) & \Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~1_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(0),
	datad => \Equal7~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X53_Y29_N20
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\B~combout\(2) & (\A~combout\(2) & !\Add3~3\)) # (!\B~combout\(2) & ((\A~combout\(2)) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X54_Y28_N22
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add3~6_combout\ & (!\Add4~1\)) # (!\Add3~6_combout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X53_Y29_N22
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (!\Add3~5\)) # (!\B~combout\(3) & (\Add3~5\ & VCC)))) # (!\A~combout\(3) & ((\B~combout\(3) & ((\Add3~5\) # (GND))) # (!\B~combout\(3) & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\A~combout\(3) & (\B~combout\(3) & !\Add3~5\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X53_Y28_N22
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add3~6_combout\ & ((\Add1~5\) # (GND))) # (!\Add3~6_combout\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((\Add3~6_combout\) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X53_Y28_N6
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~6_combout\ & (\Add2~1\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\Add1~6_combout\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X54_Y28_N12
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Result[0]~2_combout\ & (((\Add2~2_combout\ & \Neg~0_combout\)))) # (!\Result[0]~2_combout\ & ((\Add4~2_combout\) # ((\Add2~2_combout\ & \Neg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~2_combout\,
	datab => \Add4~2_combout\,
	datac => \Add2~2_combout\,
	datad => \Neg~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X50_Y28_N4
\Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\Selector4~4_combout\) # ((\Selector4~3_combout\) # ((\Selector4~0_combout\) # (\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~4_combout\,
	datab => \Selector4~3_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~5_combout\);

-- Location: LCFF_X50_Y28_N5
\Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(3));

-- Location: LCCOMB_X51_Y28_N22
\Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Add5~8_combout\ & ((\Equal4~1_combout\) # ((\Equal3~1_combout\ & \B~combout\(0))))) # (!\Add5~8_combout\ & (\Equal3~1_combout\ & (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Equal3~1_combout\,
	datac => \B~combout\(0),
	datad => \Equal4~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X51_Y28_N0
\Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~3_combout\) # ((\Selector3~2_combout\) # ((!\A~combout\(4) & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~3_combout\,
	datab => \Selector3~2_combout\,
	datac => \A~combout\(4),
	datad => \Equal6~1_combout\,
	combout => \Selector3~4_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X51_Y28_N26
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\B~combout\(4) & ((\Result[0]~3_combout\) # ((\Equal5~1_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Result[0]~3_combout\,
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X51_Y28_N20
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\B~combout\(1) & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \B~combout\(1),
	datad => \Equal7~1_combout\,
	combout => \Selector3~1_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X51_Y28_N2
\Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Result[0]~0_combout\ & ((\A~combout\(4)) # ((\Equal0~3_combout\ & \A~combout\(6))))) # (!\Result[0]~0_combout\ & (\Equal0~3_combout\ & ((\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(6),
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X51_Y28_N24
\Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~4_combout\) # ((\Selector3~1_combout\) # (\Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~4_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~5_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCFF_X51_Y28_N25
\Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(4));

-- Location: LCCOMB_X51_Y28_N28
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Add5~10_combout\ & ((\Equal4~1_combout\) # ((\B~combout\(1) & \Equal3~1_combout\)))) # (!\Add5~10_combout\ & (\B~combout\(1) & (\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \B~combout\(1),
	datac => \Equal3~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X53_Y29_N24
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\A~combout\(4) & ((!\Add3~7\) # (!\B~combout\(4)))) # (!\A~combout\(4) & (!\B~combout\(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X53_Y29_N26
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (!\Add3~9\)) # (!\A~combout\(5) & ((\Add3~9\) # (GND))))) # (!\B~combout\(5) & ((\A~combout\(5) & (\Add3~9\ & VCC)) # (!\A~combout\(5) & (!\Add3~9\))))
-- \Add3~11\ = CARRY((\B~combout\(5) & ((!\Add3~9\) # (!\A~combout\(5)))) # (!\B~combout\(5) & (!\A~combout\(5) & !\Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X54_Y28_N26
\Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~10_combout\ & (!\Add4~5\)) # (!\Add3~10_combout\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X53_Y28_N26
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add3~10_combout\ & ((\Add1~9\) # (GND))) # (!\Add3~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((\Add3~10_combout\) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X53_Y28_N10
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~10_combout\ & (\Add2~5\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\Add1~10_combout\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X54_Y28_N8
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Result[0]~2_combout\ & (((\Add2~6_combout\ & \Neg~0_combout\)))) # (!\Result[0]~2_combout\ & ((\Add4~6_combout\) # ((\Add2~6_combout\ & \Neg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~2_combout\,
	datab => \Add4~6_combout\,
	datac => \Add2~6_combout\,
	datad => \Neg~0_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X51_Y28_N30
\Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~2_combout\) # ((\Selector2~3_combout\) # ((!\A~combout\(5) & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Selector2~2_combout\,
	datac => \Selector2~3_combout\,
	datad => \Equal6~1_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X54_Y32_N14
\Result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result[0]~0_combout\ = (!\LessThan1~14_combout\ & (\Equal2~0_combout\ & (\Equal2~1_combout\ & \OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \OP~combout\(2),
	combout => \Result[0]~0_combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCCOMB_X51_Y29_N30
\Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\A~combout\(5) & ((\Result[0]~0_combout\) # ((\Equal0~3_combout\ & \A~combout\(7))))) # (!\A~combout\(5) & (\Equal0~3_combout\ & ((\A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Equal0~3_combout\,
	datac => \Result[0]~0_combout\,
	datad => \A~combout\(7),
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X50_Y28_N22
\Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\Selector2~1_combout\) # ((\Selector2~4_combout\) # (\Selector2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~4_combout\,
	datad => \Selector2~5_combout\,
	combout => \Selector2~6_combout\);

-- Location: LCFF_X50_Y28_N23
\Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(5));

-- Location: LCCOMB_X53_Y29_N28
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\A~combout\(6) & ((!\Add3~11\) # (!\B~combout\(6)))) # (!\A~combout\(6) & (!\B~combout\(6) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X53_Y28_N28
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add3~12_combout\ & (!\Add1~11\ & VCC)) # (!\Add3~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!\Add3~12_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X53_Y28_N12
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add1~12_combout\ & ((GND) # (!\Add2~7\))) # (!\Add1~12_combout\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\Add1~12_combout\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X55_Y28_N4
\Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~3_combout\) # ((\Add2~8_combout\ & \Neg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datac => \Add2~8_combout\,
	datad => \Neg~0_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X55_Y28_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\B~combout\(6) & ((\Result[0]~3_combout\) # ((\Equal5~1_combout\ & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \Equal5~1_combout\,
	datac => \A~combout\(6),
	datad => \Result[0]~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X55_Y28_N8
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\B~combout\(3) & ((\Equal7~1_combout\) # ((!\Result[0]~2_combout\ & \Add4~8_combout\)))) # (!\B~combout\(3) & (!\Result[0]~2_combout\ & (\Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Result[0]~2_combout\,
	datac => \Add4~8_combout\,
	datad => \Equal7~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X55_Y28_N0
\Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~1_combout\) # ((\Selector1~4_combout\) # ((\Selector1~0_combout\) # (\Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector1~4_combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCFF_X55_Y28_N1
\Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(6));

-- Location: LCCOMB_X51_Y28_N18
\Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \A~combout\(7) $ (\Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X55_Y28_N26
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\B~combout\(3) & ((\Equal3~1_combout\) # ((\Add5~14_combout\ & \Equal4~1_combout\)))) # (!\B~combout\(3) & (\Add5~14_combout\ & ((\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Add5~14_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X53_Y29_N30
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \A~combout\(7) $ (\B~combout\(7) $ (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X53_Y28_N30
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!\Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add3~14_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X53_Y28_N14
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add2~9\ $ (!\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~14_combout\,
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X55_Y28_N22
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\Selector0~3_combout\) # ((\Selector0~2_combout\) # ((\Add2~10_combout\ & \Neg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~2_combout\,
	datac => \Add2~10_combout\,
	datad => \Neg~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X55_Y28_N14
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\B~combout\(7) & ((\Result[0]~3_combout\) # ((\Equal5~1_combout\ & \A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Result[0]~3_combout\,
	datac => \Equal5~1_combout\,
	datad => \A~combout\(7),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X55_Y28_N16
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\B~combout\(4) & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \B~combout\(4),
	datad => \Equal7~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X55_Y28_N2
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~4_combout\) # ((\Selector0~1_combout\) # ((\Result[0]~0_combout\ & \A~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Selector0~4_combout\,
	datac => \Selector0~1_combout\,
	datad => \A~combout\(7),
	combout => \Selector0~5_combout\);

-- Location: LCFF_X55_Y28_N3
\Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_student_id(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_student_id(1));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_student_id(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_student_id(3));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Neg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Neg~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Neg);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Result(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));
END structure;


