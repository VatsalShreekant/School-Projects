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

-- DATE "02/14/2019 16:04:39"

-- 
-- Device: Altera EP4CE6E22C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rightshift_32bit IS
    PORT (
	a_in : IN std_logic_vector(31 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0)
	);
END rightshift_32bit;

-- Design Ports Information
-- a_in[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[4]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[8]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[10]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[11]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[12]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[13]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[14]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[15]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[16]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[17]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[18]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[19]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[20]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[21]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[22]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[23]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[24]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[25]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[26]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[27]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[28]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[29]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[30]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[31]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rightshift_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \a_in[0]~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \a_in[1]~input_o\ : std_logic;
SIGNAL \a_in[2]~input_o\ : std_logic;
SIGNAL \a_in[3]~input_o\ : std_logic;
SIGNAL \a_in[4]~input_o\ : std_logic;
SIGNAL \a_in[5]~input_o\ : std_logic;
SIGNAL \a_in[6]~input_o\ : std_logic;
SIGNAL \a_in[7]~input_o\ : std_logic;
SIGNAL \a_in[8]~input_o\ : std_logic;
SIGNAL \a_in[9]~input_o\ : std_logic;
SIGNAL \a_in[10]~input_o\ : std_logic;
SIGNAL \a_in[11]~input_o\ : std_logic;
SIGNAL \a_in[12]~input_o\ : std_logic;
SIGNAL \a_in[13]~input_o\ : std_logic;
SIGNAL \a_in[14]~input_o\ : std_logic;
SIGNAL \a_in[15]~input_o\ : std_logic;
SIGNAL \a_in[16]~input_o\ : std_logic;
SIGNAL \a_in[17]~input_o\ : std_logic;
SIGNAL \a_in[18]~input_o\ : std_logic;
SIGNAL \a_in[19]~input_o\ : std_logic;
SIGNAL \a_in[20]~input_o\ : std_logic;
SIGNAL \a_in[21]~input_o\ : std_logic;
SIGNAL \a_in[22]~input_o\ : std_logic;
SIGNAL \a_in[23]~input_o\ : std_logic;
SIGNAL \a_in[24]~input_o\ : std_logic;
SIGNAL \a_in[25]~input_o\ : std_logic;
SIGNAL \a_in[26]~input_o\ : std_logic;
SIGNAL \a_in[27]~input_o\ : std_logic;
SIGNAL \a_in[28]~input_o\ : std_logic;
SIGNAL \a_in[29]~input_o\ : std_logic;
SIGNAL \a_in[30]~input_o\ : std_logic;
SIGNAL \a_in[31]~input_o\ : std_logic;

BEGIN

ww_a_in <= a_in;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X16_Y0_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[1]~input_o\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[2]~input_o\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[3]~input_o\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[4]~input_o\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[5]~input_o\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[6]~input_o\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[7]~input_o\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[8]~input_o\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[9]~input_o\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[10]~input_o\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[11]~input_o\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[12]~input_o\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[13]~input_o\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[14]~input_o\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[15]~input_o\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[16]~input_o\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[17]~input_o\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[18]~input_o\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[19]~input_o\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[20]~input_o\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[21]~input_o\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[22]~input_o\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[23]~input_o\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[24]~input_o\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[25]~input_o\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[26]~input_o\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[27]~input_o\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[28]~input_o\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[29]~input_o\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[30]~input_o\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_in[31]~input_o\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\a_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(1),
	o => \a_in[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\a_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(2),
	o => \a_in[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\a_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(3),
	o => \a_in[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\a_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(4),
	o => \a_in[4]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\a_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(5),
	o => \a_in[5]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\a_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(6),
	o => \a_in[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\a_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(7),
	o => \a_in[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\a_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(8),
	o => \a_in[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\a_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(9),
	o => \a_in[9]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\a_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(10),
	o => \a_in[10]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\a_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(11),
	o => \a_in[11]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(12),
	o => \a_in[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\a_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(13),
	o => \a_in[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(14),
	o => \a_in[14]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(15),
	o => \a_in[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\a_in[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(16),
	o => \a_in[16]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\a_in[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(17),
	o => \a_in[17]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\a_in[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(18),
	o => \a_in[18]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\a_in[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(19),
	o => \a_in[19]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\a_in[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(20),
	o => \a_in[20]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\a_in[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(21),
	o => \a_in[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\a_in[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(22),
	o => \a_in[22]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\a_in[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(23),
	o => \a_in[23]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\a_in[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(24),
	o => \a_in[24]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\a_in[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(25),
	o => \a_in[25]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\a_in[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(26),
	o => \a_in[26]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\a_in[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(27),
	o => \a_in[27]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\a_in[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(28),
	o => \a_in[28]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\a_in[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(29),
	o => \a_in[29]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\a_in[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(30),
	o => \a_in[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\a_in[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(31),
	o => \a_in[31]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\a_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(0),
	o => \a_in[0]~input_o\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;
END structure;


