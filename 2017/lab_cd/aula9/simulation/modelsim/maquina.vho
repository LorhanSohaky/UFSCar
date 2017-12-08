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

-- DATE "12/08/2017 11:48:37"

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

ENTITY 	maquina IS
    PORT (
	SW : IN std_logic_vector(4 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLK : IN std_logic
	);
END maquina;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF maquina IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a|Selector0~2_combout\ : std_logic;
SIGNAL \a|Selector3~2_combout\ : std_logic;
SIGNAL \a|Selector2~0_combout\ : std_logic;
SIGNAL \a|Selector3~4_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \a|Selector0~4_combout\ : std_logic;
SIGNAL \a|Selector2~1_combout\ : std_logic;
SIGNAL \a|estado.Aberto~regout\ : std_logic;
SIGNAL \a|Selector0~3_combout\ : std_logic;
SIGNAL \a|Selector1~0_combout\ : std_logic;
SIGNAL \a|estado.Fechado~0_combout\ : std_logic;
SIGNAL \a|estado.Fechado~regout\ : std_logic;
SIGNAL \a|Selector0~0_combout\ : std_logic;
SIGNAL \a|Selector0~1_combout\ : std_logic;
SIGNAL \a|Selector0~7_combout\ : std_logic;
SIGNAL \a|Selector3~3_combout\ : std_logic;
SIGNAL \a|estado.Fechando~regout\ : std_logic;
SIGNAL \a|Selector0~5_combout\ : std_logic;
SIGNAL \a|Selector0~6_combout\ : std_logic;
SIGNAL \a|Selector1~1_combout\ : std_logic;
SIGNAL \a|estado.Abrindo~regout\ : std_logic;
SIGNAL \a|tmpLedVerde~regout\ : std_logic;
SIGNAL \a|tmpLedVermelho~regout\ : std_logic;
SIGNAL \a|tmpDisplay[1]~1_combout\ : std_logic;
SIGNAL \a|tmpDisplay[2]~2_combout\ : std_logic;
SIGNAL \a|tmpDisplay~0_combout\ : std_logic;
SIGNAL \a|tmpDisplay[6]~3_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a|tmpDisplay\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCCOMB_X27_Y14_N16
\a|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~2_combout\ = (\SW~combout\(1) & (!\SW~combout\(2) & (\SW~combout\(3) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \SW~combout\(0),
	combout => \a|Selector0~2_combout\);

-- Location: LCCOMB_X27_Y14_N12
\a|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~2_combout\ = (\a|Selector0~4_combout\ & (!\SW~combout\(4) & \a|estado.Abrindo~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a|Selector0~4_combout\,
	datac => \SW~combout\(4),
	datad => \a|estado.Abrindo~regout\,
	combout => \a|Selector3~2_combout\);

-- Location: LCCOMB_X27_Y14_N24
\a|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~0_combout\ = (\a|Selector0~4_combout\ & (\SW~combout\(4) & \a|estado.Abrindo~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a|Selector0~4_combout\,
	datac => \SW~combout\(4),
	datad => \a|estado.Abrindo~regout\,
	combout => \a|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y14_N20
\a|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~4_combout\ = (\a|Selector3~2_combout\) # ((\a|Selector0~2_combout\ & (\a|estado.Aberto~regout\ & !\SW~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector0~2_combout\,
	datab => \a|estado.Aberto~regout\,
	datac => \SW~combout\(4),
	datad => \a|Selector3~2_combout\,
	combout => \a|Selector3~4_combout\);

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

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

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

-- Location: LCCOMB_X27_Y14_N18
\a|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~4_combout\ = (\SW~combout\(1) & (!\SW~combout\(2) & (!\SW~combout\(3) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \SW~combout\(0),
	combout => \a|Selector0~4_combout\);

-- Location: LCCOMB_X27_Y14_N0
\a|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~1_combout\ = (\a|Selector0~7_combout\ & (\a|Selector2~0_combout\ & (!\a|Selector0~6_combout\))) # (!\a|Selector0~7_combout\ & (((\a|estado.Aberto~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector2~0_combout\,
	datab => \a|Selector0~6_combout\,
	datac => \a|estado.Aberto~regout\,
	datad => \a|Selector0~7_combout\,
	combout => \a|Selector2~1_combout\);

-- Location: LCFF_X27_Y14_N1
\a|estado.Aberto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.Aberto~regout\);

-- Location: LCCOMB_X27_Y14_N14
\a|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~3_combout\ = (!\SW~combout\(4) & \a|estado.Aberto~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(4),
	datad => \a|estado.Aberto~regout\,
	combout => \a|Selector0~3_combout\);

-- Location: LCCOMB_X27_Y14_N22
\a|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~0_combout\ = (\a|Selector0~2_combout\ & (\a|Selector0~3_combout\ $ (((\a|Selector0~4_combout\ & \a|estado.Abrindo~regout\))))) # (!\a|Selector0~2_combout\ & (\a|Selector0~4_combout\ & ((\a|estado.Abrindo~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector0~2_combout\,
	datab => \a|Selector0~4_combout\,
	datac => \a|Selector0~3_combout\,
	datad => \a|estado.Abrindo~regout\,
	combout => \a|Selector1~0_combout\);

-- Location: LCCOMB_X27_Y14_N10
\a|estado.Fechado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|estado.Fechado~0_combout\ = (\a|Selector0~6_combout\ & (\a|estado.Fechado~regout\ & (\a|Selector0~1_combout\ $ (\a|Selector1~0_combout\)))) # (!\a|Selector0~6_combout\ & ((\a|estado.Fechado~regout\) # (\a|Selector0~1_combout\ $ 
-- (\a|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector0~1_combout\,
	datab => \a|Selector0~6_combout\,
	datac => \a|estado.Fechado~regout\,
	datad => \a|Selector1~0_combout\,
	combout => \a|estado.Fechado~0_combout\);

-- Location: LCFF_X27_Y14_N11
\a|estado.Fechado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|estado.Fechado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.Fechado~regout\);

-- Location: LCCOMB_X27_Y14_N6
\a|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~0_combout\ = (\SW~combout\(0) & (!\SW~combout\(2) & (\a|estado.Fechando~regout\))) # (!\SW~combout\(0) & (\SW~combout\(2) & (!\a|estado.Fechando~regout\ & !\a|estado.Fechado~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(2),
	datac => \a|estado.Fechando~regout\,
	datad => \a|estado.Fechado~regout\,
	combout => \a|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y14_N8
\a|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~1_combout\ = (\SW~combout\(1) & (!\SW~combout\(3) & (\SW~combout\(4) & \a|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(3),
	datac => \SW~combout\(4),
	datad => \a|Selector0~0_combout\,
	combout => \a|Selector0~1_combout\);

-- Location: LCCOMB_X27_Y14_N28
\a|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~7_combout\ = \a|Selector0~6_combout\ $ (\a|Selector0~1_combout\ $ (\a|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a|Selector0~6_combout\,
	datac => \a|Selector0~1_combout\,
	datad => \a|Selector1~0_combout\,
	combout => \a|Selector0~7_combout\);

-- Location: LCCOMB_X27_Y14_N4
\a|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~3_combout\ = (\a|Selector0~7_combout\ & (\a|Selector3~4_combout\ & (!\a|Selector0~6_combout\))) # (!\a|Selector0~7_combout\ & (((\a|estado.Fechando~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector3~4_combout\,
	datab => \a|Selector0~6_combout\,
	datac => \a|estado.Fechando~regout\,
	datad => \a|Selector0~7_combout\,
	combout => \a|Selector3~3_combout\);

-- Location: LCFF_X27_Y14_N5
\a|estado.Fechando\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.Fechando~regout\);

-- Location: LCCOMB_X27_Y14_N30
\a|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~5_combout\ = (\SW~combout\(1) & (!\SW~combout\(2) & (!\SW~combout\(3) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \SW~combout\(0),
	combout => \a|Selector0~5_combout\);

-- Location: LCCOMB_X27_Y14_N26
\a|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~6_combout\ = (!\SW~combout\(4) & (\a|estado.Fechando~regout\ & \a|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \a|estado.Fechando~regout\,
	datad => \a|Selector0~5_combout\,
	combout => \a|Selector0~6_combout\);

-- Location: LCCOMB_X27_Y14_N2
\a|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~1_combout\ = (\a|Selector0~1_combout\ & ((\a|Selector0~6_combout\ & (\a|estado.Abrindo~regout\ & !\a|Selector1~0_combout\)) # (!\a|Selector0~6_combout\ & ((\a|estado.Abrindo~regout\) # (!\a|Selector1~0_combout\))))) # 
-- (!\a|Selector0~1_combout\ & (\a|estado.Abrindo~regout\ & (\a|Selector0~6_combout\ $ (!\a|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector0~1_combout\,
	datab => \a|Selector0~6_combout\,
	datac => \a|estado.Abrindo~regout\,
	datad => \a|Selector1~0_combout\,
	combout => \a|Selector1~1_combout\);

-- Location: LCFF_X27_Y14_N3
\a|estado.Abrindo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.Abrindo~regout\);

-- Location: LCFF_X27_Y14_N27
\a|tmpLedVerde\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.Abrindo~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVerde~regout\);

-- Location: LCFF_X27_Y14_N7
\a|tmpLedVermelho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.Fechando~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVermelho~regout\);

-- Location: LCCOMB_X1_Y18_N16
\a|tmpDisplay[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[1]~1_combout\ = !\a|estado.Fechado~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|estado.Fechado~regout\,
	combout => \a|tmpDisplay[1]~1_combout\);

-- Location: LCFF_X1_Y18_N17
\a|tmpDisplay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(1));

-- Location: LCCOMB_X1_Y18_N6
\a|tmpDisplay[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[2]~2_combout\ = !\a|estado.Fechado~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|estado.Fechado~regout\,
	combout => \a|tmpDisplay[2]~2_combout\);

-- Location: LCFF_X1_Y18_N7
\a|tmpDisplay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(2));

-- Location: LCCOMB_X26_Y14_N0
\a|tmpDisplay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay~0_combout\ = (\a|estado.Aberto~regout\) # (!\a|estado.Fechado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado.Aberto~regout\,
	datad => \a|estado.Fechado~regout\,
	combout => \a|tmpDisplay~0_combout\);

-- Location: LCFF_X26_Y14_N1
\a|tmpDisplay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(3));

-- Location: LCCOMB_X26_Y14_N10
\a|tmpDisplay[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[6]~3_combout\ = !\a|tmpDisplay~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|tmpDisplay~0_combout\,
	combout => \a|tmpDisplay[6]~3_combout\);

-- Location: LCFF_X26_Y14_N11
\a|tmpDisplay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \a|tmpLedVerde~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \a|tmpLedVermelho~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

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
	datain => GND,
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
	datain => \a|tmpDisplay\(1),
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
	datain => \a|tmpDisplay\(2),
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
	datain => \a|tmpDisplay\(3),
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
	datain => GND,
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
	datain => GND,
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
	datain => \a|tmpDisplay\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


