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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/10/2017 17:31:44"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Somador4Bits IS
    PORT (
	a1 : IN std_logic;
	a2 : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	c1 : IN std_logic;
	c2 : IN std_logic;
	d1 : IN std_logic;
	d2 : IN std_logic;
	soma1 : OUT std_logic;
	soma2 : OUT std_logic;
	soma3 : OUT std_logic;
	soma4 : OUT std_logic;
	cout : OUT std_logic
	);
END Somador4Bits;

-- Design Ports Information
-- soma1	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma2	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma3	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- soma4	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a1	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- c2	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d1	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d2	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Somador4Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_soma1 : std_logic;
SIGNAL ww_soma2 : std_logic;
SIGNAL ww_soma3 : std_logic;
SIGNAL ww_soma4 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \a2~combout\ : std_logic;
SIGNAL \a1~combout\ : std_logic;
SIGNAL \s1|soma~combout\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \s2|m2|soma~combout\ : std_logic;
SIGNAL \s2|o~combout\ : std_logic;
SIGNAL \c1~combout\ : std_logic;
SIGNAL \c2~combout\ : std_logic;
SIGNAL \s3|m2|soma~combout\ : std_logic;
SIGNAL \s3|o~combout\ : std_logic;
SIGNAL \d1~combout\ : std_logic;
SIGNAL \d2~combout\ : std_logic;
SIGNAL \s4|m2|soma~combout\ : std_logic;
SIGNAL \s4|o~combout\ : std_logic;

BEGIN

ww_a1 <= a1;
ww_a2 <= a2;
ww_b1 <= b1;
ww_b2 <= b2;
ww_c1 <= c1;
ww_c2 <= c2;
ww_d1 <= d1;
ww_d2 <= d2;
soma1 <= ww_soma1;
soma2 <= ww_soma2;
soma3 <= ww_soma3;
soma4 <= ww_soma4;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a2~I\ : cycloneii_io
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
	padio => ww_a2,
	combout => \a2~combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a1~I\ : cycloneii_io
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
	padio => ww_a1,
	combout => \a1~combout\);

-- Location: LCCOMB_X40_Y2_N0
\s1|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \s1|soma~combout\ = \a2~combout\ $ (\a1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2~combout\,
	datad => \a1~combout\,
	combout => \s1|soma~combout\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b1~I\ : cycloneii_io
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
	padio => ww_b1,
	combout => \b1~combout\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b2~I\ : cycloneii_io
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
	padio => ww_b2,
	combout => \b2~combout\);

-- Location: LCCOMB_X40_Y2_N18
\s2|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \s2|m2|soma~combout\ = \b1~combout\ $ (\b2~combout\ $ (((\a2~combout\ & \a1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \a2~combout\,
	datac => \b2~combout\,
	datad => \a1~combout\,
	combout => \s2|m2|soma~combout\);

-- Location: LCCOMB_X40_Y2_N28
\s2|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \s2|o~combout\ = (\b1~combout\ & ((\b2~combout\) # ((\a2~combout\ & \a1~combout\)))) # (!\b1~combout\ & (\a2~combout\ & (\b2~combout\ & \a1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \a2~combout\,
	datac => \b2~combout\,
	datad => \a1~combout\,
	combout => \s2|o~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c1~I\ : cycloneii_io
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
	padio => ww_c1,
	combout => \c1~combout\);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c2~I\ : cycloneii_io
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
	padio => ww_c2,
	combout => \c2~combout\);

-- Location: LCCOMB_X40_Y2_N22
\s3|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \s3|m2|soma~combout\ = \s2|o~combout\ $ (\c1~combout\ $ (\c2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s2|o~combout\,
	datac => \c1~combout\,
	datad => \c2~combout\,
	combout => \s3|m2|soma~combout\);

-- Location: LCCOMB_X40_Y2_N16
\s3|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \s3|o~combout\ = (\s2|o~combout\ & ((\c1~combout\) # (\c2~combout\))) # (!\s2|o~combout\ & (\c1~combout\ & \c2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s2|o~combout\,
	datac => \c1~combout\,
	datad => \c2~combout\,
	combout => \s3|o~combout\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d1~I\ : cycloneii_io
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
	padio => ww_d1,
	combout => \d1~combout\);

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d2~I\ : cycloneii_io
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
	padio => ww_d2,
	combout => \d2~combout\);

-- Location: LCCOMB_X40_Y2_N10
\s4|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \s4|m2|soma~combout\ = \s3|o~combout\ $ (\d1~combout\ $ (\d2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3|o~combout\,
	datac => \d1~combout\,
	datad => \d2~combout\,
	combout => \s4|m2|soma~combout\);

-- Location: LCCOMB_X40_Y2_N4
\s4|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \s4|o~combout\ = (\s3|o~combout\ & ((\d1~combout\) # (\d2~combout\))) # (!\s3|o~combout\ & (\d1~combout\ & \d2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3|o~combout\,
	datac => \d1~combout\,
	datad => \d2~combout\,
	combout => \s4|o~combout\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma1~I\ : cycloneii_io
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
	datain => \s1|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma1);

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma2~I\ : cycloneii_io
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
	datain => \s2|m2|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma2);

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma3~I\ : cycloneii_io
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
	datain => \s3|m2|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma3);

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\soma4~I\ : cycloneii_io
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
	datain => \s4|m2|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_soma4);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
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
	datain => \s4|o~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);
END structure;


