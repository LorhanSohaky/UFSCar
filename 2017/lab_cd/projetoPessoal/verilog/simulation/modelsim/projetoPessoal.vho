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

-- DATE "12/19/2017 00:37:59"

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

ENTITY 	projetoPessoal IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLK : IN std_logic
	);
END projetoPessoal;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF projetoPessoal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a|estado~15_combout\ : std_logic;
SIGNAL \a|Selector3~16_combout\ : std_logic;
SIGNAL \a|Selector2~2_combout\ : std_logic;
SIGNAL \a|always0~0_combout\ : std_logic;
SIGNAL \a|Selector4~0_combout\ : std_logic;
SIGNAL \a|Selector4~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \a|Equal5~0_combout\ : std_logic;
SIGNAL \a|Equal5~1_combout\ : std_logic;
SIGNAL \a|estado~14_combout\ : std_logic;
SIGNAL \a|Selector1~1_combout\ : std_logic;
SIGNAL \a|Selector3~15_combout\ : std_logic;
SIGNAL \a|Selector3~17_combout\ : std_logic;
SIGNAL \a|tmpDisplay~1_combout\ : std_logic;
SIGNAL \a|Selector0~0_combout\ : std_logic;
SIGNAL \a|Selector0~1_combout\ : std_logic;
SIGNAL \a|estado.A~regout\ : std_logic;
SIGNAL \a|Selector3~3_combout\ : std_logic;
SIGNAL \a|Selector3~19_combout\ : std_logic;
SIGNAL \a|Selector3~18_combout\ : std_logic;
SIGNAL \a|estado.D~regout\ : std_logic;
SIGNAL \a|Selector1~0_combout\ : std_logic;
SIGNAL \a|Selector1~2_combout\ : std_logic;
SIGNAL \a|Selector1~4_combout\ : std_logic;
SIGNAL \a|Equal5~2_combout\ : std_logic;
SIGNAL \a|Selector1~5_combout\ : std_logic;
SIGNAL \a|Selector1~6_combout\ : std_logic;
SIGNAL \a|tmpDisplay~0_combout\ : std_logic;
SIGNAL \a|Selector1~3_combout\ : std_logic;
SIGNAL \a|Selector1~7_combout\ : std_logic;
SIGNAL \a|Selector4~2_combout\ : std_logic;
SIGNAL \a|estado.E~regout\ : std_logic;
SIGNAL \a|Selector2~0_combout\ : std_logic;
SIGNAL \a|Selector2~1_combout\ : std_logic;
SIGNAL \a|Selector2~3_combout\ : std_logic;
SIGNAL \a|estado.C~regout\ : std_logic;
SIGNAL \a|Selector1~8_combout\ : std_logic;
SIGNAL \a|Selector1~9_combout\ : std_logic;
SIGNAL \a|Selector1~10_combout\ : std_logic;
SIGNAL \a|Selector1~11_combout\ : std_logic;
SIGNAL \a|estado.B~regout\ : std_logic;
SIGNAL \a|tmpDisplay[2]~feeder_combout\ : std_logic;
SIGNAL \a|tmpDisplay[4]~4_combout\ : std_logic;
SIGNAL \a|tmpDisplay[5]~feeder_combout\ : std_logic;
SIGNAL \a|tmpDisplay[6]~5_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a|tmpLedVermelho\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \a|tmpDisplay\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \a|tmpLedVerde\ : std_logic_vector(1 DOWNTO 0);

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

-- Location: LCCOMB_X47_Y14_N14
\a|estado~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|estado~15_combout\ = (((!\SW~combout\(1) & !\SW~combout\(0))) # (!\SW~combout\(2))) # (!\SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \a|estado~15_combout\);

-- Location: LCCOMB_X47_Y14_N20
\a|Selector3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~16_combout\ = (\SW~combout\(1) & (\SW~combout\(2) & (\SW~combout\(3) & \a|estado.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	datad => \a|estado.B~regout\,
	combout => \a|Selector3~16_combout\);

-- Location: LCCOMB_X48_Y14_N24
\a|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~2_combout\ = (\SW~combout\(3) & (((\SW~combout\(1) & \a|estado.D~regout\)) # (!\a|estado.A~regout\))) # (!\SW~combout\(3) & (\SW~combout\(1) & ((\a|estado.D~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \a|estado.A~regout\,
	datad => \a|estado.D~regout\,
	combout => \a|Selector2~2_combout\);

-- Location: LCCOMB_X48_Y14_N12
\a|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|always0~0_combout\ = (!\SW~combout\(2) & (!\SW~combout\(1) & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \a|always0~0_combout\);

-- Location: LCCOMB_X48_Y14_N20
\a|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector4~0_combout\ = (!\SW~combout\(0) & ((\a|estado.C~regout\) # ((\a|estado.D~regout\) # (!\a|estado.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \a|estado.C~regout\,
	datac => \a|estado.A~regout\,
	datad => \a|estado.D~regout\,
	combout => \a|Selector4~0_combout\);

-- Location: LCCOMB_X49_Y14_N20
\a|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector4~1_combout\ = (!\SW~combout\(2) & (\a|Equal5~2_combout\ & ((\a|Selector4~0_combout\) # (\a|estado.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \a|Equal5~2_combout\,
	datac => \a|Selector4~0_combout\,
	datad => \a|estado.B~regout\,
	combout => \a|Selector4~1_combout\);

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

-- Location: LCCOMB_X49_Y14_N4
\a|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Equal5~0_combout\ = (\SW~combout\(2) & (\SW~combout\(3) & !\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datad => \SW~combout\(1),
	combout => \a|Equal5~0_combout\);

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

-- Location: LCCOMB_X49_Y14_N16
\a|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Equal5~1_combout\ = (!\SW~combout\(1) & (\SW~combout\(0) & (\SW~combout\(2) & \SW~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \a|Equal5~1_combout\);

-- Location: LCCOMB_X47_Y14_N4
\a|estado~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|estado~14_combout\ = (!\SW~combout\(0) & (((\SW~combout\(3)) # (\SW~combout\(2))) # (!\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(2),
	combout => \a|estado~14_combout\);

-- Location: LCCOMB_X49_Y14_N18
\a|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~1_combout\ = (!\SW~combout\(0) & (\a|estado.E~regout\ & (\SW~combout\(1) $ (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \a|estado.E~regout\,
	combout => \a|Selector1~1_combout\);

-- Location: LCCOMB_X48_Y14_N0
\a|Selector3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~15_combout\ = ((\SW~combout\(0)) # (\SW~combout\(1) $ (!\SW~combout\(2)))) # (!\SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \a|Selector3~15_combout\);

-- Location: LCCOMB_X48_Y14_N10
\a|Selector3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~17_combout\ = (\a|estado.D~regout\ & ((\SW~combout\(1) & ((!\SW~combout\(0)) # (!\SW~combout\(2)))) # (!\SW~combout\(1) & ((\SW~combout\(2)) # (\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \a|estado.D~regout\,
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \a|Selector3~17_combout\);

-- Location: LCCOMB_X48_Y14_N2
\a|tmpDisplay~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay~1_combout\ = (!\a|estado.D~regout\ & !\a|estado.E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado.D~regout\,
	datad => \a|estado.E~regout\,
	combout => \a|tmpDisplay~1_combout\);

-- Location: LCCOMB_X48_Y14_N22
\a|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~0_combout\ = (\a|always0~0_combout\ & ((\a|estado.C~regout\) # ((\a|estado.B~regout\) # (!\a|tmpDisplay~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|always0~0_combout\,
	datab => \a|estado.C~regout\,
	datac => \a|estado.B~regout\,
	datad => \a|tmpDisplay~1_combout\,
	combout => \a|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y14_N14
\a|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector0~1_combout\ = (!\a|Selector0~0_combout\ & (((\a|estado.A~regout\) # (!\a|Selector3~15_combout\)) # (!\a|estado~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado~15_combout\,
	datab => \a|Selector3~15_combout\,
	datac => \a|estado.A~regout\,
	datad => \a|Selector0~0_combout\,
	combout => \a|Selector0~1_combout\);

-- Location: LCFF_X48_Y14_N15
\a|estado.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.A~regout\);

-- Location: LCCOMB_X48_Y14_N26
\a|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~3_combout\ = (\a|estado.E~regout\) # ((\a|estado.C~regout\) # ((\SW~combout\(3) & !\a|estado.A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \a|estado.A~regout\,
	datac => \a|estado.E~regout\,
	datad => \a|estado.C~regout\,
	combout => \a|Selector3~3_combout\);

-- Location: LCCOMB_X48_Y14_N30
\a|Selector3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~19_combout\ = (!\SW~combout\(0) & (\SW~combout\(1) & (\SW~combout\(2) & \a|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \a|Selector3~3_combout\,
	combout => \a|Selector3~19_combout\);

-- Location: LCCOMB_X48_Y14_N6
\a|Selector3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector3~18_combout\ = (\a|Selector3~16_combout\) # ((\a|Selector3~19_combout\) # ((\a|Selector3~15_combout\ & \a|Selector3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector3~16_combout\,
	datab => \a|Selector3~15_combout\,
	datac => \a|Selector3~17_combout\,
	datad => \a|Selector3~19_combout\,
	combout => \a|Selector3~18_combout\);

-- Location: LCFF_X48_Y14_N7
\a|estado.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.D~regout\);

-- Location: LCCOMB_X49_Y14_N12
\a|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~0_combout\ = (\a|estado.D~regout\ & ((\SW~combout\(2) & (\SW~combout\(0) & \SW~combout\(1))) # (!\SW~combout\(2) & (!\SW~combout\(0) & !\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(0),
	datac => \a|estado.D~regout\,
	datad => \SW~combout\(1),
	combout => \a|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y14_N8
\a|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~2_combout\ = (\a|Selector1~0_combout\) # ((!\a|Equal5~0_combout\ & \a|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Equal5~0_combout\,
	datab => \a|Selector1~1_combout\,
	datad => \a|Selector1~0_combout\,
	combout => \a|Selector1~2_combout\);

-- Location: LCCOMB_X48_Y14_N18
\a|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~4_combout\ = (\a|estado~15_combout\ & (\a|estado~14_combout\ & ((\a|estado.C~regout\)))) # (!\a|estado~15_combout\ & (((\a|estado~14_combout\ & \a|estado.C~regout\)) # (!\a|estado.A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado~15_combout\,
	datab => \a|estado~14_combout\,
	datac => \a|estado.A~regout\,
	datad => \a|estado.C~regout\,
	combout => \a|Selector1~4_combout\);

-- Location: LCCOMB_X49_Y14_N26
\a|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Equal5~2_combout\ = (\SW~combout\(3) & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(3),
	datad => \SW~combout\(1),
	combout => \a|Equal5~2_combout\);

-- Location: LCCOMB_X49_Y14_N6
\a|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~5_combout\ = (!\SW~combout\(0) & ((\SW~combout\(1) & (\SW~combout\(2) & \a|estado.E~regout\)) # (!\SW~combout\(1) & (!\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \a|estado.E~regout\,
	combout => \a|Selector1~5_combout\);

-- Location: LCCOMB_X49_Y14_N24
\a|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~6_combout\ = (\a|Equal5~2_combout\) # ((\a|Selector1~5_combout\) # ((\a|Equal5~1_combout\ & !\a|estado.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Equal5~1_combout\,
	datab => \a|Equal5~2_combout\,
	datac => \a|estado.E~regout\,
	datad => \a|Selector1~5_combout\,
	combout => \a|Selector1~6_combout\);

-- Location: LCCOMB_X48_Y14_N8
\a|tmpDisplay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay~0_combout\ = (\a|estado.D~regout\) # (!\a|estado.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado.A~regout\,
	datad => \a|estado.D~regout\,
	combout => \a|tmpDisplay~0_combout\);

-- Location: LCCOMB_X49_Y14_N0
\a|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~3_combout\ = (\a|Selector3~15_combout\ & (\a|Equal5~0_combout\ & (\a|estado.E~regout\))) # (!\a|Selector3~15_combout\ & ((\a|tmpDisplay~0_combout\) # ((\a|Equal5~0_combout\ & \a|estado.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector3~15_combout\,
	datab => \a|Equal5~0_combout\,
	datac => \a|estado.E~regout\,
	datad => \a|tmpDisplay~0_combout\,
	combout => \a|Selector1~3_combout\);

-- Location: LCCOMB_X49_Y14_N2
\a|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~7_combout\ = (\a|Selector1~4_combout\) # ((\a|Selector1~3_combout\) # ((\a|estado.B~regout\ & \a|Selector1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado.B~regout\,
	datab => \a|Selector1~4_combout\,
	datac => \a|Selector1~6_combout\,
	datad => \a|Selector1~3_combout\,
	combout => \a|Selector1~7_combout\);

-- Location: LCCOMB_X49_Y14_N28
\a|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector4~2_combout\ = (\a|Selector4~1_combout\) # ((!\a|Selector1~2_combout\ & (\a|estado.E~regout\ & !\a|Selector1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector4~1_combout\,
	datab => \a|Selector1~2_combout\,
	datac => \a|estado.E~regout\,
	datad => \a|Selector1~7_combout\,
	combout => \a|Selector4~2_combout\);

-- Location: LCFF_X49_Y14_N29
\a|estado.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.E~regout\);

-- Location: LCCOMB_X49_Y14_N30
\a|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~0_combout\ = (\a|Equal5~1_combout\ & ((\a|estado.E~regout\) # (\a|estado.B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Equal5~1_combout\,
	datac => \a|estado.E~regout\,
	datad => \a|estado.B~regout\,
	combout => \a|Selector2~0_combout\);

-- Location: LCCOMB_X48_Y14_N4
\a|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~1_combout\ = (\a|Selector2~0_combout\) # ((\a|estado.C~regout\ & !\a|estado~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado.C~regout\,
	datab => \a|estado~14_combout\,
	datad => \a|Selector2~0_combout\,
	combout => \a|Selector2~1_combout\);

-- Location: LCCOMB_X48_Y14_N28
\a|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector2~3_combout\ = (\a|Selector2~1_combout\) # ((\a|Selector2~2_combout\ & (\SW~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Selector2~2_combout\,
	datab => \a|Selector2~1_combout\,
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \a|Selector2~3_combout\);

-- Location: LCFF_X48_Y14_N29
\a|estado.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.C~regout\);

-- Location: LCCOMB_X48_Y14_N16
\a|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~8_combout\ = (\a|estado.C~regout\) # ((\SW~combout\(3) & ((\a|estado.D~regout\) # (!\a|estado.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \a|estado.C~regout\,
	datac => \a|estado.A~regout\,
	datad => \a|estado.D~regout\,
	combout => \a|Selector1~8_combout\);

-- Location: LCCOMB_X49_Y14_N14
\a|Selector1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~9_combout\ = (!\SW~combout\(1) & (!\SW~combout\(0) & (\SW~combout\(2) & \a|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \a|Selector1~8_combout\,
	combout => \a|Selector1~9_combout\);

-- Location: LCCOMB_X49_Y14_N22
\a|Selector1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~10_combout\ = (\a|Selector1~2_combout\ & (((\a|Selector1~9_combout\)))) # (!\a|Selector1~2_combout\ & ((\a|Selector1~7_combout\ & ((\a|Selector1~9_combout\))) # (!\a|Selector1~7_combout\ & (\a|estado.B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado.B~regout\,
	datab => \a|Selector1~9_combout\,
	datac => \a|Selector1~2_combout\,
	datad => \a|Selector1~7_combout\,
	combout => \a|Selector1~10_combout\);

-- Location: LCCOMB_X49_Y14_N10
\a|Selector1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Selector1~11_combout\ = (\a|estado.E~regout\ & ((\a|Equal5~0_combout\ & (!\a|Equal5~1_combout\)) # (!\a|Equal5~0_combout\ & ((\a|Selector1~10_combout\))))) # (!\a|estado.E~regout\ & (((\a|Selector1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|estado.E~regout\,
	datab => \a|Equal5~0_combout\,
	datac => \a|Equal5~1_combout\,
	datad => \a|Selector1~10_combout\,
	combout => \a|Selector1~11_combout\);

-- Location: LCFF_X49_Y14_N11
\a|estado.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Selector1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado.B~regout\);

-- Location: LCFF_X49_Y14_N27
\a|tmpLedVerde[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.B~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVerde\(0));

-- Location: LCFF_X49_Y14_N13
\a|tmpLedVerde[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.D~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVerde\(1));

-- Location: LCFF_X49_Y14_N5
\a|tmpLedVermelho[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.C~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVermelho\(0));

-- Location: LCFF_X49_Y14_N9
\a|tmpLedVermelho[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.D~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVermelho\(1));

-- Location: LCFF_X48_Y14_N5
\a|tmpDisplay[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|tmpDisplay~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(0));

-- Location: LCFF_X48_Y14_N27
\a|tmpDisplay[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|estado.E~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(1));

-- Location: LCCOMB_X47_Y14_N0
\a|tmpDisplay[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[2]~feeder_combout\ = \a|estado.B~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|estado.B~regout\,
	combout => \a|tmpDisplay[2]~feeder_combout\);

-- Location: LCFF_X47_Y14_N1
\a|tmpDisplay[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(2));

-- Location: LCFF_X48_Y14_N13
\a|tmpDisplay[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \a|tmpDisplay~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(3));

-- Location: LCCOMB_X47_Y14_N6
\a|tmpDisplay[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[4]~4_combout\ = !\a|estado.B~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|estado.B~regout\,
	combout => \a|tmpDisplay[4]~4_combout\);

-- Location: LCFF_X47_Y14_N7
\a|tmpDisplay[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(4));

-- Location: LCCOMB_X47_Y14_N16
\a|tmpDisplay[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[5]~feeder_combout\ = \a|tmpDisplay~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|tmpDisplay~1_combout\,
	combout => \a|tmpDisplay[5]~feeder_combout\);

-- Location: LCFF_X47_Y14_N17
\a|tmpDisplay[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpDisplay\(5));

-- Location: LCCOMB_X47_Y14_N10
\a|tmpDisplay[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpDisplay[6]~5_combout\ = !\a|estado.A~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado.A~regout\,
	combout => \a|tmpDisplay[6]~5_combout\);

-- Location: LCFF_X47_Y14_N11
\a|tmpDisplay[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpDisplay[6]~5_combout\,
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
	datain => \a|tmpLedVerde\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \a|tmpLedVerde\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

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
	datain => \a|tmpLedVermelho\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \a|tmpLedVermelho\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

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
	datain => \a|tmpDisplay\(0),
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
	datain => \a|tmpDisplay\(4),
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
	datain => \a|tmpDisplay\(5),
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


