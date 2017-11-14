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

-- DATE "11/13/2017 17:06:45"

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

ENTITY 	projeto IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \soma|s3|o~combout\ : std_logic;
SIGNAL \soma|s2|o~combout\ : std_logic;
SIGNAL \s|z0~0_combout\ : std_logic;
SIGNAL \soma|s1|soma~combout\ : std_logic;
SIGNAL \soma|s4|m2|soma~combout\ : std_logic;
SIGNAL \s|z0~1_combout\ : std_logic;
SIGNAL \soma|s4|o~combout\ : std_logic;
SIGNAL \soma|s3|m2|soma~combout\ : std_logic;
SIGNAL \dec1|h0~1_combout\ : std_logic;
SIGNAL \s|z2~0_combout\ : std_logic;
SIGNAL \soma|s2|m2|soma~combout\ : std_logic;
SIGNAL \s|z3~0_combout\ : std_logic;
SIGNAL \s|z1~0_combout\ : std_logic;
SIGNAL \dec1|h0~0_combout\ : std_logic;
SIGNAL \dec1|h0~2_combout\ : std_logic;
SIGNAL \dec1|h1~0_combout\ : std_logic;
SIGNAL \dec1|h2~0_combout\ : std_logic;
SIGNAL \dec1|h3~combout\ : std_logic;
SIGNAL \dec1|h4~0_combout\ : std_logic;
SIGNAL \dec1|h5~0_combout\ : std_logic;
SIGNAL \dec1|h5~1_combout\ : std_logic;
SIGNAL \dec1|h5~2_combout\ : std_logic;
SIGNAL \dec1|h6~1_combout\ : std_logic;
SIGNAL \dec1|h6~0_combout\ : std_logic;
SIGNAL \dec1|h6~combout\ : std_logic;
SIGNAL \s|z4~0_combout\ : std_logic;
SIGNAL \s|z4~1_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec1|ALT_INV_h1~0_combout\ : std_logic;
SIGNAL \dec1|ALT_INV_h0~2_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dec1|ALT_INV_h1~0_combout\ <= NOT \dec1|h1~0_combout\;
\dec1|ALT_INV_h0~2_combout\ <= NOT \dec1|h0~2_combout\;

-- Location: LCCOMB_X3_Y13_N16
\soma|s3|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s3|o~combout\ = (\SW~combout\(6) & ((\soma|s2|o~combout\) # (\SW~combout\(2)))) # (!\SW~combout\(6) & (\soma|s2|o~combout\ & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \soma|s2|o~combout\,
	datac => \SW~combout\(2),
	combout => \soma|s3|o~combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X3_Y13_N2
\soma|s2|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s2|o~combout\ = (\SW~combout\(5) & ((\SW~combout\(1)) # ((\SW~combout\(0) & \SW~combout\(4))))) # (!\SW~combout\(5) & (\SW~combout\(0) & (\SW~combout\(4) & \SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(0),
	datac => \SW~combout\(4),
	datad => \SW~combout\(1),
	combout => \soma|s2|o~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X3_Y13_N22
\s|z0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z0~0_combout\ = (!\soma|s2|m2|soma~combout\ & (\soma|s2|o~combout\ $ (\SW~combout\(2) $ (!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s2|o~combout\,
	datac => \SW~combout\(2),
	datad => \SW~combout\(6),
	combout => \s|z0~0_combout\);

-- Location: LCCOMB_X3_Y13_N24
\soma|s1|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s1|soma~combout\ = \SW~combout\(4) $ (\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(4),
	datad => \SW~combout\(0),
	combout => \soma|s1|soma~combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X3_Y13_N18
\soma|s4|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s4|m2|soma~combout\ = \soma|s3|o~combout\ $ (\SW~combout\(3) $ (\SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s3|o~combout\,
	datab => \SW~combout\(3),
	datac => \SW~combout\(7),
	combout => \soma|s4|m2|soma~combout\);

-- Location: LCCOMB_X3_Y13_N30
\s|z0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z0~1_combout\ = (\soma|s1|soma~combout\ & (((\s|z0~0_combout\ & !\soma|s4|m2|soma~combout\)) # (!\soma|s4|o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s4|o~combout\,
	datab => \s|z0~0_combout\,
	datac => \soma|s1|soma~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \s|z0~1_combout\);

-- Location: LCCOMB_X3_Y13_N28
\soma|s4|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s4|o~combout\ = (\soma|s3|o~combout\ & ((\SW~combout\(3)) # (\SW~combout\(7)))) # (!\soma|s3|o~combout\ & (\SW~combout\(3) & \SW~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s3|o~combout\,
	datab => \SW~combout\(3),
	datac => \SW~combout\(7),
	combout => \soma|s4|o~combout\);

-- Location: LCCOMB_X3_Y13_N0
\soma|s3|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s3|m2|soma~combout\ = \SW~combout\(6) $ (\soma|s2|o~combout\ $ (\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(6),
	datab => \soma|s2|o~combout\,
	datac => \SW~combout\(2),
	combout => \soma|s3|m2|soma~combout\);

-- Location: LCCOMB_X4_Y13_N18
\dec1|h0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h0~1_combout\ = (\soma|s3|m2|soma~combout\ & ((\soma|s4|o~combout\) # (\soma|s2|m2|soma~combout\ $ (!\soma|s4|m2|soma~combout\)))) # (!\soma|s3|m2|soma~combout\ & ((\soma|s4|m2|soma~combout\) # (\soma|s2|m2|soma~combout\ $ (!\soma|s4|o~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s4|o~combout\,
	datac => \soma|s3|m2|soma~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \dec1|h0~1_combout\);

-- Location: LCCOMB_X4_Y13_N24
\s|z2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z2~0_combout\ = (\soma|s2|m2|soma~combout\ & ((\soma|s4|o~combout\) # ((!\soma|s3|m2|soma~combout\)))) # (!\soma|s2|m2|soma~combout\ & ((\soma|s4|m2|soma~combout\) # (\soma|s4|o~combout\ $ (!\soma|s3|m2|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s4|o~combout\,
	datac => \soma|s3|m2|soma~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \s|z2~0_combout\);

-- Location: LCCOMB_X3_Y13_N12
\soma|s2|m2|soma\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma|s2|m2|soma~combout\ = \SW~combout\(5) $ (\SW~combout\(1) $ (((\SW~combout\(0) & \SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(0),
	datac => \SW~combout\(4),
	datad => \SW~combout\(1),
	combout => \soma|s2|m2|soma~combout\);

-- Location: LCCOMB_X3_Y13_N20
\s|z3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z3~0_combout\ = (!\soma|s2|m2|soma~combout\ & (!\soma|s3|m2|soma~combout\ & (!\soma|s4|o~combout\ & \soma|s4|m2|soma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s3|m2|soma~combout\,
	datac => \soma|s4|o~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \s|z3~0_combout\);

-- Location: LCCOMB_X3_Y13_N10
\s|z1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z1~0_combout\ = (!\soma|s3|m2|soma~combout\ & ((\soma|s3|o~combout\ & (\SW~combout\(3) $ (\SW~combout\(7)))) # (!\soma|s3|o~combout\ & (\SW~combout\(3) & \SW~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s3|o~combout\,
	datab => \soma|s3|m2|soma~combout\,
	datac => \SW~combout\(3),
	datad => \SW~combout\(7),
	combout => \s|z1~0_combout\);

-- Location: LCCOMB_X3_Y13_N14
\dec1|h0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h0~0_combout\ = (!\s|z3~0_combout\ & ((\soma|s1|soma~combout\) # ((!\s|z1~0_combout\) # (!\soma|s2|m2|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s1|soma~combout\,
	datab => \soma|s2|m2|soma~combout\,
	datac => \s|z3~0_combout\,
	datad => \s|z1~0_combout\,
	combout => \dec1|h0~0_combout\);

-- Location: LCCOMB_X4_Y13_N12
\dec1|h0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h0~2_combout\ = ((\s|z0~1_combout\ $ (\s|z2~0_combout\)) # (!\dec1|h0~0_combout\)) # (!\dec1|h0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z0~1_combout\,
	datab => \dec1|h0~1_combout\,
	datac => \s|z2~0_combout\,
	datad => \dec1|h0~0_combout\,
	combout => \dec1|h0~2_combout\);

-- Location: LCCOMB_X4_Y13_N6
\dec1|h1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h1~0_combout\ = (\s|z2~0_combout\) # ((\s|z0~1_combout\ $ (\dec1|h0~1_combout\)) # (!\dec1|h0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z0~1_combout\,
	datab => \dec1|h0~1_combout\,
	datac => \s|z2~0_combout\,
	datad => \dec1|h0~0_combout\,
	combout => \dec1|h1~0_combout\);

-- Location: LCCOMB_X4_Y13_N0
\dec1|h2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h2~0_combout\ = (!\s|z0~1_combout\ & (!\dec1|h0~1_combout\ & (\s|z2~0_combout\ & \dec1|h0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z0~1_combout\,
	datab => \dec1|h0~1_combout\,
	datac => \s|z2~0_combout\,
	datad => \dec1|h0~0_combout\,
	combout => \dec1|h2~0_combout\);

-- Location: LCCOMB_X4_Y13_N10
\dec1|h3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h3~combout\ = (\dec1|h0~0_combout\ & ((\s|z0~1_combout\ & (\dec1|h0~1_combout\ $ (!\s|z2~0_combout\))) # (!\s|z0~1_combout\ & (\dec1|h0~1_combout\ & !\s|z2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z0~1_combout\,
	datab => \dec1|h0~1_combout\,
	datac => \s|z2~0_combout\,
	datad => \dec1|h0~0_combout\,
	combout => \dec1|h3~combout\);

-- Location: LCCOMB_X4_Y13_N4
\dec1|h4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h4~0_combout\ = (\dec1|h0~1_combout\ & ((\s|z2~0_combout\ & (\s|z0~1_combout\)) # (!\s|z2~0_combout\ & ((\dec1|h0~0_combout\))))) # (!\dec1|h0~1_combout\ & (\s|z0~1_combout\ & ((\dec1|h0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z0~1_combout\,
	datab => \dec1|h0~1_combout\,
	datac => \s|z2~0_combout\,
	datad => \dec1|h0~0_combout\,
	combout => \dec1|h4~0_combout\);

-- Location: LCCOMB_X4_Y13_N30
\dec1|h5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h5~0_combout\ = (\soma|s4|o~combout\) # ((\soma|s2|m2|soma~combout\ $ (\soma|s4|m2|soma~combout\)) # (!\soma|s3|m2|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s4|o~combout\,
	datac => \soma|s3|m2|soma~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \dec1|h5~0_combout\);

-- Location: LCCOMB_X4_Y13_N8
\dec1|h5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h5~1_combout\ = (\s|z2~0_combout\ & (((\dec1|h5~0_combout\ & \s|z0~1_combout\)) # (!\dec1|h0~1_combout\))) # (!\s|z2~0_combout\ & (\dec1|h5~0_combout\ & (\s|z0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z2~0_combout\,
	datab => \dec1|h5~0_combout\,
	datac => \s|z0~1_combout\,
	datad => \dec1|h0~1_combout\,
	combout => \dec1|h5~1_combout\);

-- Location: LCCOMB_X4_Y13_N26
\dec1|h5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h5~2_combout\ = (\dec1|h0~0_combout\ & \dec1|h5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec1|h0~0_combout\,
	datac => \dec1|h5~1_combout\,
	combout => \dec1|h5~2_combout\);

-- Location: LCCOMB_X4_Y13_N22
\dec1|h6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h6~1_combout\ = (!\s|z2~0_combout\ & \s|z0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z2~0_combout\,
	datac => \s|z0~1_combout\,
	combout => \dec1|h6~1_combout\);

-- Location: LCCOMB_X4_Y13_N20
\dec1|h6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h6~0_combout\ = (\soma|s4|o~combout\) # (((!\soma|s2|m2|soma~combout\ & \soma|s4|m2|soma~combout\)) # (!\soma|s3|m2|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s2|m2|soma~combout\,
	datab => \soma|s4|o~combout\,
	datac => \soma|s3|m2|soma~combout\,
	datad => \soma|s4|m2|soma~combout\,
	combout => \dec1|h6~0_combout\);

-- Location: LCCOMB_X4_Y13_N16
\dec1|h6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec1|h6~combout\ = (\dec1|h0~0_combout\ & ((\dec1|h0~1_combout\ & ((\dec1|h6~0_combout\))) # (!\dec1|h0~1_combout\ & (\dec1|h6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec1|h0~0_combout\,
	datab => \dec1|h6~1_combout\,
	datac => \dec1|h6~0_combout\,
	datad => \dec1|h0~1_combout\,
	combout => \dec1|h6~combout\);

-- Location: LCCOMB_X3_Y13_N8
\s|z4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z4~0_combout\ = (!\s|z0~0_combout\ & ((\soma|s3|o~combout\ & (!\SW~combout\(3) & !\SW~combout\(7))) # (!\soma|s3|o~combout\ & (\SW~combout\(3) $ (\SW~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma|s3|o~combout\,
	datab => \s|z0~0_combout\,
	datac => \SW~combout\(3),
	datad => \SW~combout\(7),
	combout => \s|z4~0_combout\);

-- Location: LCCOMB_X3_Y13_N26
\s|z4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s|z4~1_combout\ = (\s|z4~0_combout\) # ((\s|z1~0_combout\ & ((!\soma|s2|m2|soma~combout\) # (!\soma|s1|soma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s|z1~0_combout\,
	datab => \s|z4~0_combout\,
	datac => \soma|s1|soma~combout\,
	datad => \soma|s2|m2|soma~combout\,
	combout => \s|z4~1_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \dec1|ALT_INV_h0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \dec1|ALT_INV_h1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \dec1|h2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \dec1|h3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \dec1|h4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \dec1|h5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \dec1|h6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \s|z4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \s|z4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \s|z4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \s|z4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));
END structure;


