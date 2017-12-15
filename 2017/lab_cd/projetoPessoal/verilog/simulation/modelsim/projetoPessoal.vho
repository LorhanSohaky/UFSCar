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

-- DATE "12/15/2017 00:39:04"

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
	CLK : IN std_logic
	);
END projetoPessoal;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a|Mux0~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \a|Mux1~1_combout\ : std_logic;
SIGNAL \a|Mux0~1_combout\ : std_logic;
SIGNAL \a|Mux0~2_combout\ : std_logic;
SIGNAL \a|Mux1~0_combout\ : std_logic;
SIGNAL \a|Mux1~2_combout\ : std_logic;
SIGNAL \a|Mux1~3_combout\ : std_logic;
SIGNAL \a|Decoder0~0_combout\ : std_logic;
SIGNAL \a|Decoder0~1_combout\ : std_logic;
SIGNAL \a|Decoder0~2_combout\ : std_logic;
SIGNAL \a|tmpLedVermelho[1]~feeder_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a|tmpLedVermelho\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \a|estado\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \a|tmpLedVerde\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCCOMB_X49_Y10_N10
\a|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux0~0_combout\ = (\SW~combout\(2) & (\SW~combout\(3) & ((\SW~combout\(0)) # (\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(3),
	combout => \a|Mux0~0_combout\);

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

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X49_Y10_N14
\a|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux1~1_combout\ = (\SW~combout\(2)) # ((!\SW~combout\(3) & (\SW~combout\(1) & \a|estado\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \a|estado\(0),
	combout => \a|Mux1~1_combout\);

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

-- Location: LCCOMB_X49_Y10_N28
\a|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux0~1_combout\ = (!\SW~combout\(3) & ((\SW~combout\(1)) # ((\SW~combout\(2) & \a|estado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \a|estado\(0),
	combout => \a|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y10_N22
\a|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux0~2_combout\ = (\a|Mux0~0_combout\) # ((\a|estado\(1) & ((\SW~combout\(0)) # (\a|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a|Mux0~0_combout\,
	datab => \SW~combout\(0),
	datac => \a|estado\(1),
	datad => \a|Mux0~1_combout\,
	combout => \a|Mux0~2_combout\);

-- Location: LCFF_X49_Y10_N23
\a|estado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado\(1));

-- Location: LCCOMB_X49_Y10_N24
\a|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux1~0_combout\ = (\a|estado\(1) & (((!\SW~combout\(1))) # (!\SW~combout\(2)))) # (!\a|estado\(1) & ((\SW~combout\(2) $ (!\SW~combout\(1))) # (!\SW~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \a|estado\(1),
	combout => \a|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y10_N0
\a|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux1~2_combout\ = (\a|estado\(0)) # ((!\SW~combout\(0) & ((\SW~combout\(3)) # (\a|estado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \SW~combout\(3),
	datac => \a|estado\(1),
	datad => \a|estado\(0),
	combout => \a|Mux1~2_combout\);

-- Location: LCCOMB_X49_Y10_N12
\a|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Mux1~3_combout\ = (\a|Mux1~2_combout\ & ((\SW~combout\(0) & ((\a|Mux1~0_combout\))) # (!\SW~combout\(0) & (\a|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \a|Mux1~1_combout\,
	datac => \a|Mux1~0_combout\,
	datad => \a|Mux1~2_combout\,
	combout => \a|Mux1~3_combout\);

-- Location: LCFF_X49_Y10_N13
\a|estado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|estado\(0));

-- Location: LCCOMB_X49_Y10_N20
\a|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Decoder0~0_combout\ = (\a|estado\(0) & !\a|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado\(0),
	datad => \a|estado\(1),
	combout => \a|Decoder0~0_combout\);

-- Location: LCFF_X49_Y10_N21
\a|tmpLedVerde[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVerde\(0));

-- Location: LCCOMB_X49_Y10_N30
\a|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Decoder0~1_combout\ = (\a|estado\(1) & \a|estado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a|estado\(1),
	datad => \a|estado\(0),
	combout => \a|Decoder0~1_combout\);

-- Location: LCFF_X49_Y10_N31
\a|tmpLedVerde[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVerde\(1));

-- Location: LCCOMB_X49_Y10_N16
\a|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|Decoder0~2_combout\ = (!\a|estado\(0) & \a|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a|estado\(0),
	datad => \a|estado\(1),
	combout => \a|Decoder0~2_combout\);

-- Location: LCFF_X49_Y10_N17
\a|tmpLedVermelho[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVermelho\(0));

-- Location: LCCOMB_X49_Y10_N26
\a|tmpLedVermelho[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \a|tmpLedVermelho[1]~feeder_combout\ = \a|Decoder0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a|Decoder0~1_combout\,
	combout => \a|tmpLedVermelho[1]~feeder_combout\);

-- Location: LCFF_X49_Y10_N27
\a|tmpLedVermelho[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \a|tmpLedVermelho[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \a|tmpLedVermelho\(1));

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
END structure;


