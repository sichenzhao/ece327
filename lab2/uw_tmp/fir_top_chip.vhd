-- Copyright (C) 1991-2011 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

-- DATE "05/31/2015 15:49:21"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fir_top_chip IS
    PORT (
	clock_50 : IN std_logic;
	clock_27 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(17 DOWNTO 0);
	ledg : OUT std_logic_vector(8 DOWNTO 0);
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	aud_xck : OUT std_logic;
	aud_bclk : INOUT std_logic;
	aud_dacdat : OUT std_logic;
	aud_daclrck : OUT std_logic;
	aud_adclrck : OUT std_logic;
	i2c_sdat : INOUT std_logic;
	i2c_sclk : OUT std_logic
	);
END fir_top_chip;

-- Design Ports Information
-- ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_xck	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_dacdat	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_daclrck	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- aud_adclrck	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i2c_sclk	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i2c_sdat	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- aud_bclk	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fir_top_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_27 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_aud_xck : std_logic;
SIGNAL ww_aud_dacdat : std_logic;
SIGNAL ww_aud_daclrck : std_logic;
SIGNAL ww_aud_adclrck : std_logic;
SIGNAL ww_i2c_sclk : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aud_bclk_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aud_adclrck_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL nx38664z2 : std_logic;
SIGNAL nx38664z3 : std_logic;
SIGNAL nx38664z5 : std_logic;
SIGNAL nx38664z6 : std_logic;
SIGNAL nx38664z9 : std_logic;
SIGNAL nx38664z8 : std_logic;
SIGNAL nx4119z1 : std_logic;
SIGNAL nx4119z7 : std_logic;
SIGNAL nx4119z6 : std_logic;
SIGNAL nx4119z8 : std_logic;
SIGNAL nx4119z10 : std_logic;
SIGNAL nx4119z14 : std_logic;
SIGNAL nx4119z15 : std_logic;
SIGNAL nx4119z13 : std_logic;
SIGNAL nx17637z2 : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~clk\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~CLK2\ : std_logic;
SIGNAL \audio_out_4_\ : std_logic;
SIGNAL \audio_out_6_\ : std_logic;
SIGNAL \audio_out_1_\ : std_logic;
SIGNAL \audio_out_0_\ : std_logic;
SIGNAL nx24999z5 : std_logic;
SIGNAL \audio_out_2_\ : std_logic;
SIGNAL \audio_out_3_\ : std_logic;
SIGNAL nx24999z4 : std_logic;
SIGNAL \audio_out_9_\ : std_logic;
SIGNAL \audio_out_11_\ : std_logic;
SIGNAL \audio_out_12_\ : std_logic;
SIGNAL \audio_out_15_\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx43955z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx40964z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_8_\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx45949z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx42958z1\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx41961z3\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx42958z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_2_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_7_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_5__dup_191\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_6__dup_190\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_7__dup_189\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx41961z1\ : std_logic;
SIGNAL \audio_out_1n1ss1_4_\ : std_logic;
SIGNAL \audio_out_1n1ss1_6_\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx43955z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|b_10_\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx43955z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx44952z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z5\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx44952z1\ : std_logic;
SIGNAL \audio_out_1n1ss1_9_\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx45949z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z8\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z6\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z21\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z18\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z21\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z18\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_12_\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z21\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z18\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z4\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx3244z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z15\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z15\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z15\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx62798z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z2\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z2\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx4241z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z12\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z12\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z12\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z8\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx253z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z9\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z9\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z9\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z5\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z4\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ : std_logic;
SIGNAL nx50205z4 : std_logic;
SIGNAL nx50205z3 : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z2\ : std_logic;
SIGNAL \u_sine_address_3_\ : std_logic;
SIGNAL \u_sine_address_2_\ : std_logic;
SIGNAL \u_sine_address_1_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx38970z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx39967z1\ : std_logic;
SIGNAL \u_sine_address_4_\ : std_logic;
SIGNAL \u_sine_address_5_\ : std_logic;
SIGNAL \u_sine_address_7_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_3_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_5_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_6_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_10_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_15_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z18\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z21\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z22\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx57253z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z1\ : std_logic;
SIGNAL \aud_bclk_dup0~clkctrl_outclk\ : std_logic;
SIGNAL \audio_out_15_~feeder_combout\ : std_logic;
SIGNAL \audio_out_12_~feeder_combout\ : std_logic;
SIGNAL nx49625z3 : std_logic;
SIGNAL nx49625z1 : std_logic;
SIGNAL nx55607z1 : std_logic;
SIGNAL nx49625z2 : std_logic;
SIGNAL \display_freq_2_\ : std_logic;
SIGNAL \display_freq_3_\ : std_logic;
SIGNAL nx49625z4 : std_logic;
SIGNAL \display_freq_0_\ : std_logic;
SIGNAL nx55607z2 : std_logic;
SIGNAL \hex4_dup0_0_\ : std_logic;
SIGNAL \display_freq_1_\ : std_logic;
SIGNAL \hex4_dup0_1_\ : std_logic;
SIGNAL \hex4_dup0_2_\ : std_logic;
SIGNAL \hex4_dup0_3_\ : std_logic;
SIGNAL \hex4_dup0_4_\ : std_logic;
SIGNAL \hex4_dup0_5_\ : std_logic;
SIGNAL \hex4_dup0_6_\ : std_logic;
SIGNAL nx38664z4 : std_logic;
SIGNAL \display_freq_6_\ : std_logic;
SIGNAL nx38664z1 : std_logic;
SIGNAL \display_freq_7_\ : std_logic;
SIGNAL \display_freq_4_\ : std_logic;
SIGNAL nx38664z7 : std_logic;
SIGNAL \display_freq_5_\ : std_logic;
SIGNAL \hex5_dup0_0_\ : std_logic;
SIGNAL \hex5_dup0_1_\ : std_logic;
SIGNAL \hex5_dup0_2_\ : std_logic;
SIGNAL \hex5_dup0_3_\ : std_logic;
SIGNAL \hex5_dup0_4_\ : std_logic;
SIGNAL \hex5_dup0_5_\ : std_logic;
SIGNAL \hex5_dup0_6_\ : std_logic;
SIGNAL nx4119z11 : std_logic;
SIGNAL nx4119z9 : std_logic;
SIGNAL \display_freq_9_\ : std_logic;
SIGNAL nx4119z4 : std_logic;
SIGNAL nx4119z3 : std_logic;
SIGNAL nx4119z2 : std_logic;
SIGNAL \display_freq_11_\ : std_logic;
SIGNAL nx4119z5 : std_logic;
SIGNAL \display_freq_10_\ : std_logic;
SIGNAL nx10101z2 : std_logic;
SIGNAL nx10101z1 : std_logic;
SIGNAL \hex6_dup0_0_\ : std_logic;
SIGNAL nx4119z12 : std_logic;
SIGNAL \display_freq_8_\ : std_logic;
SIGNAL \hex6_dup0_1_\ : std_logic;
SIGNAL \hex6_dup0_2_\ : std_logic;
SIGNAL \hex6_dup0_3_\ : std_logic;
SIGNAL \hex6_dup0_4_\ : std_logic;
SIGNAL \hex6_dup0_5_\ : std_logic;
SIGNAL \hex6_dup0_6_\ : std_logic;
SIGNAL nx17637z1 : std_logic;
SIGNAL \hex7_dup0_0_\ : std_logic;
SIGNAL \clock_27~combout\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \NOT_bit_position_0_\ : std_logic;
SIGNAL \bit_position_0_\ : std_logic;
SIGNAL nx50814z1 : std_logic;
SIGNAL \bit_position_1_\ : std_logic;
SIGNAL nx49817z1 : std_logic;
SIGNAL \bit_position_2_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ : std_logic;
SIGNAL nx48238z1 : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ : std_logic;
SIGNAL nx50205z2 : std_logic;
SIGNAL nx50205z1 : std_logic;
SIGNAL aud_adclrck_dup0 : std_logic;
SIGNAL \aud_adclrck_dup0~clkctrl_outclk\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx51271z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_0_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z10\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx52268z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_1_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z9\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx53265z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_2_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z8\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx54262z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_3_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z7\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx55259z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_4_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z6\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx56256z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_5_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z5\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx57253z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_6_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z4\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx58250z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_7_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z3\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx59247z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_8_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z2\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_9_\ : std_logic;
SIGNAL \audio_out_1n1ss1_5_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx37973z1\ : std_logic;
SIGNAL \u_sine_address_0_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z23\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z20\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z17\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx40964z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z14\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx41961z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z11\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx42958z1\ : std_logic;
SIGNAL \u_sine_address_6_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z8\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx43955z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z5\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx44952z1\ : std_logic;
SIGNAL \u_sine_address_8_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z3\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z1\ : std_logic;
SIGNAL \low_pass_in_15_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_15_\ : std_logic;
SIGNAL \low_pass_in_10_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_10_\ : std_logic;
SIGNAL \low_pass_in_8_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_8_\ : std_logic;
SIGNAL \low_pass_in_7_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_7_\ : std_logic;
SIGNAL \low_pass_in_5_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_5_\ : std_logic;
SIGNAL \low_pass_in_4_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_4_\ : std_logic;
SIGNAL \audio_out_1n1ss1_2_\ : std_logic;
SIGNAL \low_pass_in_2_\ : std_logic;
SIGNAL \audio_out_1n1ss1_0_\ : std_logic;
SIGNAL \low_pass_in_0_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z16\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z15\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z14\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z13\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z12\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z11\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z10\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z9\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z8\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z7\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_10_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_9_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_8_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_6_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_5_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_4_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_3_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z26\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z25\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z24\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z23\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z22\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z21\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z20\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z19\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_8__dup_188\ : std_logic;
SIGNAL \low_pass_in_6_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_6_\ : std_logic;
SIGNAL \audio_out_1n1ss1_3_\ : std_logic;
SIGNAL \low_pass_in_3_\ : std_logic;
SIGNAL \audio_out_1n1ss1_1_\ : std_logic;
SIGNAL \low_pass_in_1_\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z30\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z28\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z26\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z24\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z22\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z20\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z18\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx45949z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx44952z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx43955z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_4__dup_192\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx44471z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z49\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx42958z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx42958z1\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx44479z1\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx41961z2\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx41961z5\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx41961z4\ : std_logic;
SIGNAL \low_pass|prod_6__mults19_5|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z35\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z32\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z30\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z26\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx42958z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z30\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z28\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z26\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z24\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z22\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z20\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z18\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx45949z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx44952z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z41\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z38\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z35\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z32\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx41961z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z30\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z28\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z26\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z24\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx44952z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z45\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z42\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z39\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx39967z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z18\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z17\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z16\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z15\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z14\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z13\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_6_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_5_\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z45\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z42\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z39\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx41961z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z12\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_7_\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z41\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z38\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z35\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx38970z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx37973z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx42958z1\ : std_logic;
SIGNAL \audio_out_5_\ : std_logic;
SIGNAL nx24999z3 : std_logic;
SIGNAL \audio_out_1n1ss1_7_\ : std_logic;
SIGNAL \low_pass_in_9_~feeder_combout\ : std_logic;
SIGNAL \low_pass_in_9_\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z16\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z14\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z12\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z29\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z26\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z23\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z24\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx43955z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_3__dup_193\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx40964z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx39967z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z46\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z43\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z40\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx44952z1\ : std_logic;
SIGNAL \audio_out_7_\ : std_logic;
SIGNAL nx24999z2 : std_logic;
SIGNAL nx48820z1 : std_logic;
SIGNAL \bit_position_3_\ : std_logic;
SIGNAL nx24999z1 : std_logic;
SIGNAL \audio_out_1n1ss1_10_\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z16\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z14\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z12\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z10\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z8\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z6\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx1250z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx253z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z20\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z18\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z14\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z10\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx253z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z6\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_11_\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z18\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_9__dup_187\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z22\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z20\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z18\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z16\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z14\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z12\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx5238z10\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx1250z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx64792z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx64792z1\ : std_logic;
SIGNAL \low_pass|prod_0__mults21_0|nx63795z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z45\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z42\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z39\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z36\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z33\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z30\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z27\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx2247z24\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx43955z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx42958z1\ : std_logic;
SIGNAL \low_pass|modgen_add_0|nx41961z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z37\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z34\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx62798z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z8\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z20\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z17\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx46946z1\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z36\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z33\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z30\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z27\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx2247z24\ : std_logic;
SIGNAL \low_pass|modgen_add_11|nx45949z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z11\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z10\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z9\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z8\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z7\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_12_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_11_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_10_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_9_\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z36\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z33\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z30\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z27\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx2247z24\ : std_logic;
SIGNAL \low_pass|modgen_add_12|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx62798z1\ : std_logic;
SIGNAL \audio_out_10_\ : std_logic;
SIGNAL \audio_out_1n1ss1_8_\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx45949z1\ : std_logic;
SIGNAL \audio_out_8_\ : std_logic;
SIGNAL nx24999z7 : std_logic;
SIGNAL nx24999z6 : std_logic;
SIGNAL \audio_out_1n1ss1_11_\ : std_logic;
SIGNAL \audio_out_14_~feeder_combout\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z4\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z2\ : std_logic;
SIGNAL \low_pass|prod_1__mults19_1|nx3244z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z12\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z8\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx1250z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z6\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z4\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z2\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx4241z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx3244z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z17\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z4\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z3\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z2\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|nx3244z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_3|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx1250z1\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z6\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z5\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z4\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|nx6235z3\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_16_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_15_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_14_\ : std_logic;
SIGNAL \low_pass|prod_2__mults20_2|d_13_\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z32\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z29\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z26\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z23\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z20\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z17\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z14\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z11\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z8\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx2247z6\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_1|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_2|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_5|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_6|nx1250z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx63795z1\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_11__dup_185\ : std_logic;
SIGNAL \low_pass|prod_5__mults21_4|d_10__dup_186\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx46946z1\ : std_logic;
SIGNAL \low_pass|modgen_add_4|nx45949z1\ : std_logic;
SIGNAL \low_pass|modgen_add_8|nx44952z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z31\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z28\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z25\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z22\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx253z1\ : std_logic;
SIGNAL \low_pass|prod_4__mults20_3|nx2247z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z15\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_10|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_13|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_9|nx62798z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z19\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx253z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx64792z1\ : std_logic;
SIGNAL \low_pass|modgen_add_14|nx63795z1\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z16\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z13\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z10\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx2247z7\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx1250z1\ : std_logic;
SIGNAL \audio_out_14_\ : std_logic;
SIGNAL \audio_out_13_~feeder_combout\ : std_logic;
SIGNAL \low_pass|modgen_add_15|nx253z1\ : std_logic;
SIGNAL \audio_out_13_\ : std_logic;
SIGNAL nx24999z9 : std_logic;
SIGNAL nx24999z8 : std_logic;
SIGNAL aud_dacdat_dup0 : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_8_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z3\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_0_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_1_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_2_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z13\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_4_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z11\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_7_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_9_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_11_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z5\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx20087z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_13_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx21084z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_14_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_12_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z4\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z1\ : std_logic;
SIGNAL \u_i2c_av_config|reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z1\ : std_logic;
SIGNAL \u_i2c_av_config|m_i2c_ctrl_clk\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|nx23875z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx51161z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|p_i2c_sclk\ : std_logic;
SIGNAL \clock_27~clkctrl_outclk\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z14\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z13\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z17\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z16\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z15\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z12\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z19\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx51857z1\ : std_logic;
SIGNAL nx30102z1 : std_logic;
SIGNAL nx32096z1 : std_logic;
SIGNAL \u_audio_dac_bck_div_0_\ : std_logic;
SIGNAL nx30102z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_2_\ : std_logic;
SIGNAL nx31099z1 : std_logic;
SIGNAL nx31099z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_1_\ : std_logic;
SIGNAL nx15494z1 : std_logic;
SIGNAL aud_bclk_dup0 : std_logic;
SIGNAL \key~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_i2c_av_config|ALT_INV_reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|u0|ALT_INV_nx51857z1\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_clock_27 <= clock_27;
ww_key <= key;
ww_sw <= sw;
ledg <= ww_ledg;
ledr <= ww_ledr;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
aud_xck <= ww_aud_xck;
aud_dacdat <= ww_aud_dacdat;
aud_daclrck <= ww_aud_daclrck;
aud_adclrck <= ww_aud_adclrck;
i2c_sclk <= ww_i2c_sclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_audio_dac_p1_altpll|pll_INCLK_bus\ <= (gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|pll~clk\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(0);
\u_audio_dac_p1_altpll|_clk1\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(1);
\u_audio_dac_p1_altpll|pll~CLK2\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(2);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_noise_modgen_counter_address|q_9_\ & \u_noise_modgen_counter_address|q_8_\ & \u_noise_modgen_counter_address|q_7_\ & \u_noise_modgen_counter_address|q_6_\ & 
\u_noise_modgen_counter_address|q_5_\ & \u_noise_modgen_counter_address|q_4_\ & \u_noise_modgen_counter_address|q_3_\ & \u_noise_modgen_counter_address|q_2_\ & \u_noise_modgen_counter_address|q_1_\ & \u_noise_modgen_counter_address|q_0_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_sine_address_add9_0i1|nx45949z1\ & \u_sine_address_add9_0i1|nx44952z1\ & \u_sine_address_add9_0i1|nx43955z1\ & \u_sine_address_add9_0i1|nx42958z1\ & 
\u_sine_address_add9_0i1|nx41961z1\ & \u_sine_address_add9_0i1|nx40964z1\);

\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u_noise_modgen_counter_address|q_9_\ & \u_noise_modgen_counter_address|q_8_\ & \u_noise_modgen_counter_address|q_7_\ & \u_noise_modgen_counter_address|q_6_\ & 
\u_noise_modgen_counter_address|q_5_\ & \u_noise_modgen_counter_address|q_4_\ & \u_noise_modgen_counter_address|q_3_\ & \u_noise_modgen_counter_address|q_2_\ & \u_noise_modgen_counter_address|q_1_\ & \u_noise_modgen_counter_address|q_0_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\aud_bclk_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_bclk_dup0);

\aud_adclrck_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_adclrck_dup0);

\clock_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u_audio_dac_p1_altpll|_clk1\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);
\u_i2c_av_config|ALT_INV_reset_n\ <= NOT \u_i2c_av_config|reset_n\;
\u_i2c_av_config|u0|ALT_INV_nx51857z1\ <= NOT \u_i2c_av_config|u0|nx51857z1\;

-- Location: LCCOMB_X23_Y17_N24
ix38664z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z2 = (\sw~combout\(2) & (!\sw~combout\(3) & (\sw~combout\(1) & \sw~combout\(0)))) # (!\sw~combout\(2) & (\sw~combout\(3) & (!\sw~combout\(1) & !\sw~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(0),
	combout => nx38664z2);

-- Location: LCCOMB_X23_Y16_N24
ix38664z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z3 = (\sw~combout\(0) & (\sw~combout\(2) $ (((!\sw~combout\(3) & \sw~combout\(1)))))) # (!\sw~combout\(0) & (\sw~combout\(2) & ((\sw~combout\(1)) # (!\sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(1),
	combout => nx38664z3);

-- Location: LCCOMB_X23_Y16_N26
ix38664z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z5 = (!\sw~combout\(2) & (((\sw~combout\(5)) # (!\sw~combout\(6))) # (!\sw~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(2),
	datac => \sw~combout\(6),
	datad => \sw~combout\(5),
	combout => nx38664z5);

-- Location: LCCOMB_X22_Y17_N8
ix38664z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z6 = (\sw~combout\(3) & (\sw~combout\(1) & !\sw~combout\(2))) # (!\sw~combout\(3) & (\sw~combout\(1) $ (!\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx38664z6);

-- Location: LCCOMB_X23_Y17_N16
ix38664z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z9 = (\sw~combout\(2) & (((!\sw~combout\(4))))) # (!\sw~combout\(2) & (\sw~combout\(4) & ((\sw~combout\(5)) # (!\sw~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(5),
	datac => \sw~combout\(2),
	datad => \sw~combout\(4),
	combout => nx38664z9);

-- Location: LCCOMB_X23_Y17_N10
ix38664z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z8 = (\sw~combout\(3) & ((\sw~combout\(1) & (nx38664z9)) # (!\sw~combout\(1) & ((\sw~combout\(4)))))) # (!\sw~combout\(3) & (((\sw~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z9,
	datab => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(4),
	combout => nx38664z8);

-- Location: LCCOMB_X22_Y17_N4
ix4119z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z1 = (\sw~combout\(5) & (!\sw~combout\(4))) # (!\sw~combout\(5) & (\sw~combout\(4) & \sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(5),
	datac => \sw~combout\(4),
	datad => \sw~combout\(2),
	combout => nx4119z1);

-- Location: LCCOMB_X22_Y17_N26
ix4119z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z7 = (\sw~combout\(3) & ((\sw~combout\(1)) # ((\sw~combout\(2)) # (\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(2),
	datac => \sw~combout\(0),
	datad => \sw~combout\(3),
	combout => nx4119z7);

-- Location: LCCOMB_X21_Y17_N20
ix4119z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z6 = (\sw~combout\(5) & (!\sw~combout\(6) & ((\sw~combout\(4)) # (nx4119z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datab => \sw~combout\(5),
	datac => \sw~combout\(6),
	datad => nx4119z7,
	combout => nx4119z6);

-- Location: LCCOMB_X21_Y17_N16
ix4119z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z8 = \sw~combout\(6) $ (((\sw~combout\(4) & ((\sw~combout\(3)) # (\sw~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datab => \sw~combout\(3),
	datac => \sw~combout\(6),
	datad => \sw~combout\(2),
	combout => nx4119z8);

-- Location: LCCOMB_X22_Y17_N12
ix4119z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z10 = (\sw~combout\(3) & (\sw~combout\(4) & ((\sw~combout\(2))))) # (!\sw~combout\(3) & (!\sw~combout\(4) & (!\sw~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(4),
	datac => \sw~combout\(6),
	datad => \sw~combout\(2),
	combout => nx4119z10);

-- Location: LCCOMB_X22_Y17_N20
ix4119z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z14 = \sw~combout\(5) $ (((\sw~combout\(2)) # (!\sw~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(4),
	datac => \sw~combout\(5),
	datad => \sw~combout\(2),
	combout => nx4119z14);

-- Location: LCCOMB_X23_Y16_N2
ix4119z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z15 = \sw~combout\(5) $ (((!\sw~combout\(4) & ((\sw~combout\(0)) # (\sw~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(4),
	datac => \sw~combout\(2),
	datad => \sw~combout\(5),
	combout => nx4119z15);

-- Location: LCCOMB_X22_Y17_N6
ix4119z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z13 = (\sw~combout\(3) & ((\sw~combout\(1) & (nx4119z14)) # (!\sw~combout\(1) & ((nx4119z15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z14,
	datab => nx4119z15,
	datac => \sw~combout\(1),
	datad => \sw~combout\(3),
	combout => nx4119z13);

-- Location: LCCOMB_X23_Y16_N28
ix17637z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx17637z2 = (\sw~combout\(5) & ((\sw~combout\(0)) # ((\sw~combout\(2)) # (\sw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(5),
	datac => \sw~combout\(2),
	datad => \sw~combout\(1),
	combout => nx17637z2);

-- Location: LCFF_X27_Y20_N13
\reg_audio_out_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_4_\,
	sdata => \low_pass|modgen_add_15|nx41961z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_4_\);

-- Location: LCFF_X27_Y20_N15
\reg_audio_out_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_6_\,
	sdata => \low_pass|modgen_add_15|nx43955z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_6_\);

-- Location: LCFF_X27_Y20_N3
\reg_audio_out_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_1_\,
	sdata => \low_pass|modgen_add_15|nx38970z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_1_\);

-- Location: LCFF_X27_Y20_N29
\reg_audio_out_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_0_\,
	sdata => \low_pass|modgen_add_15|nx37973z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_0_\);

-- Location: LCCOMB_X28_Y20_N10
ix24999z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z5 = (\bit_position_0_\ & (((\bit_position_1_\ & \audio_out_0_\)))) # (!\bit_position_0_\ & ((\audio_out_1_\) # ((!\bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_1_\,
	datab => \bit_position_0_\,
	datac => \bit_position_1_\,
	datad => \audio_out_0_\,
	combout => nx24999z5);

-- Location: LCFF_X27_Y20_N23
\reg_audio_out_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_2_\,
	sdata => \low_pass|modgen_add_15|nx39967z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_2_\);

-- Location: LCFF_X29_Y20_N3
\reg_audio_out_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_3_\,
	sdata => \low_pass|modgen_add_15|nx40964z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_3_\);

-- Location: LCCOMB_X28_Y20_N20
ix24999z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z4 = (nx24999z5 & (((\bit_position_1_\) # (\audio_out_3_\)))) # (!nx24999z5 & (\audio_out_2_\ & (!\bit_position_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z5,
	datab => \audio_out_2_\,
	datac => \bit_position_1_\,
	datad => \audio_out_3_\,
	combout => nx24999z4);

-- Location: LCFF_X29_Y20_N5
\reg_audio_out_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_9_\,
	sdata => \low_pass|modgen_add_15|nx46946z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_9_\);

-- Location: LCFF_X27_Y20_N19
\reg_audio_out_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_11_\,
	sdata => \low_pass|modgen_add_15|nx63795z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_11_\);

-- Location: LCFF_X28_Y20_N25
\reg_audio_out_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_12_~feeder_combout\,
	sdata => \low_pass|modgen_add_15|nx64792z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_12_\);

-- Location: LCFF_X27_Y20_N31
\reg_audio_out_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_15_~feeder_combout\,
	sdata => \low_pass|modgen_add_15|nx2247z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_15_\);

-- Location: LCCOMB_X30_Y18_N8
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx43955z1\ = ((\low_pass_in_6_\ $ (\low_pass_in_4_\ $ (!\low_pass|prod_4__mults20_3|nx4241z24\)))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z22\ = CARRY((\low_pass_in_6_\ & ((\low_pass_in_4_\) # (!\low_pass|prod_4__mults20_3|nx4241z24\))) # (!\low_pass_in_6_\ & (\low_pass_in_4_\ & !\low_pass|prod_4__mults20_3|nx4241z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z24\,
	combout => \low_pass|prod_4__mults20_3|nx43955z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z22\);

-- Location: LCCOMB_X30_Y18_N16
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx62798z1\ = ((\low_pass_in_8_\ $ (\low_pass_in_10_\ $ (!\low_pass|prod_4__mults20_3|nx4241z16\)))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z14\ = CARRY((\low_pass_in_8_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_4__mults20_3|nx4241z16\))) # (!\low_pass_in_8_\ & (\low_pass_in_10_\ & !\low_pass|prod_4__mults20_3|nx4241z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z16\,
	combout => \low_pass|prod_4__mults20_3|nx62798z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z14\);

-- Location: LCCOMB_X29_Y19_N2
\low_pass|modgen_add_10|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx38970z1\ = (\low_pass|prod_4__mults20_3|nx43955z1\ & ((\low_pass_in_4_\ & (\low_pass|modgen_add_10|nx2247z41\ & VCC)) # (!\low_pass_in_4_\ & (!\low_pass|modgen_add_10|nx2247z41\)))) # (!\low_pass|prod_4__mults20_3|nx43955z1\ & 
-- ((\low_pass_in_4_\ & (!\low_pass|modgen_add_10|nx2247z41\)) # (!\low_pass_in_4_\ & ((\low_pass|modgen_add_10|nx2247z41\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z38\ = CARRY((\low_pass|prod_4__mults20_3|nx43955z1\ & (!\low_pass_in_4_\ & !\low_pass|modgen_add_10|nx2247z41\)) # (!\low_pass|prod_4__mults20_3|nx43955z1\ & ((!\low_pass|modgen_add_10|nx2247z41\) # (!\low_pass_in_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx43955z1\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z41\,
	combout => \low_pass|modgen_add_10|nx38970z1\,
	cout => \low_pass|modgen_add_10|nx2247z38\);

-- Location: LCCOMB_X29_Y19_N4
\low_pass|modgen_add_10|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx39967z1\ = ((\low_pass_in_5_\ $ (\low_pass|prod_4__mults20_3|nx44952z1\ $ (!\low_pass|modgen_add_10|nx2247z38\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z35\ = CARRY((\low_pass_in_5_\ & ((\low_pass|prod_4__mults20_3|nx44952z1\) # (!\low_pass|modgen_add_10|nx2247z38\))) # (!\low_pass_in_5_\ & (\low_pass|prod_4__mults20_3|nx44952z1\ & !\low_pass|modgen_add_10|nx2247z38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass|prod_4__mults20_3|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z38\,
	combout => \low_pass|modgen_add_10|nx39967z1\,
	cout => \low_pass|modgen_add_10|nx2247z35\);

-- Location: LCCOMB_X29_Y19_N6
\low_pass|modgen_add_10|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx40964z1\ = (\low_pass_in_6_\ & ((\low_pass|prod_4__mults20_3|nx45949z1\ & (\low_pass|modgen_add_10|nx2247z35\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx45949z1\ & (!\low_pass|modgen_add_10|nx2247z35\)))) # (!\low_pass_in_6_\ & 
-- ((\low_pass|prod_4__mults20_3|nx45949z1\ & (!\low_pass|modgen_add_10|nx2247z35\)) # (!\low_pass|prod_4__mults20_3|nx45949z1\ & ((\low_pass|modgen_add_10|nx2247z35\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z32\ = CARRY((\low_pass_in_6_\ & (!\low_pass|prod_4__mults20_3|nx45949z1\ & !\low_pass|modgen_add_10|nx2247z35\)) # (!\low_pass_in_6_\ & ((!\low_pass|modgen_add_10|nx2247z35\) # (!\low_pass|prod_4__mults20_3|nx45949z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass|prod_4__mults20_3|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z35\,
	combout => \low_pass|modgen_add_10|nx40964z1\,
	cout => \low_pass|modgen_add_10|nx2247z32\);

-- Location: LCCOMB_X25_Y18_N30
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_8_\ = ((\low_pass_in_9_\ $ (\low_pass_in_6_\ $ (\low_pass|prod_2__mults20_2|nx6235z11\)))) # (GND)
-- \low_pass|prod_2__mults20_2|nx6235z10\ = CARRY((\low_pass_in_9_\ & (\low_pass_in_6_\ & !\low_pass|prod_2__mults20_2|nx6235z11\)) # (!\low_pass_in_9_\ & ((\low_pass_in_6_\) # (!\low_pass|prod_2__mults20_2|nx6235z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass_in_6_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z11\,
	combout => \low_pass|prod_2__mults20_2|d_8_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z10\);

-- Location: LCCOMB_X24_Y20_N10
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx45949z1\ = (\low_pass_in_5_\ & ((\low_pass_in_8_\ & (\low_pass|prod_0__mults21_0|nx5238z22\ & VCC)) # (!\low_pass_in_8_\ & (!\low_pass|prod_0__mults21_0|nx5238z22\)))) # (!\low_pass_in_5_\ & ((\low_pass_in_8_\ & 
-- (!\low_pass|prod_0__mults21_0|nx5238z22\)) # (!\low_pass_in_8_\ & ((\low_pass|prod_0__mults21_0|nx5238z22\) # (GND)))))
-- \low_pass|prod_0__mults21_0|nx5238z20\ = CARRY((\low_pass_in_5_\ & (!\low_pass_in_8_\ & !\low_pass|prod_0__mults21_0|nx5238z22\)) # (!\low_pass_in_5_\ & ((!\low_pass|prod_0__mults21_0|nx5238z22\) # (!\low_pass_in_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z22\,
	combout => \low_pass|prod_0__mults21_0|nx45949z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z20\);

-- Location: LCCOMB_X24_Y20_N12
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx46946z1\ = ((\low_pass_in_6_\ $ (\low_pass_in_9_\ $ (!\low_pass|prod_0__mults21_0|nx5238z20\)))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z18\ = CARRY((\low_pass_in_6_\ & ((\low_pass_in_9_\) # (!\low_pass|prod_0__mults21_0|nx5238z20\))) # (!\low_pass_in_6_\ & (\low_pass_in_9_\ & !\low_pass|prod_0__mults21_0|nx5238z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z20\,
	combout => \low_pass|prod_0__mults21_0|nx46946z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z18\);

-- Location: LCCOMB_X24_Y20_N14
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx62798z1\ = (\low_pass_in_7_\ & ((\low_pass_in_10_\ & (\low_pass|prod_0__mults21_0|nx5238z18\ & VCC)) # (!\low_pass_in_10_\ & (!\low_pass|prod_0__mults21_0|nx5238z18\)))) # (!\low_pass_in_7_\ & ((\low_pass_in_10_\ & 
-- (!\low_pass|prod_0__mults21_0|nx5238z18\)) # (!\low_pass_in_10_\ & ((\low_pass|prod_0__mults21_0|nx5238z18\) # (GND)))))
-- \low_pass|prod_0__mults21_0|nx5238z16\ = CARRY((\low_pass_in_7_\ & (!\low_pass_in_10_\ & !\low_pass|prod_0__mults21_0|nx5238z18\)) # (!\low_pass_in_7_\ & ((!\low_pass|prod_0__mults21_0|nx5238z18\) # (!\low_pass_in_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z18\,
	combout => \low_pass|prod_0__mults21_0|nx62798z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z16\);

-- Location: LCCOMB_X24_Y19_N0
\low_pass|modgen_add_11|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx37973z1\ = (\low_pass|prod_1__mults19_1|nx42958z1\ & (\low_pass|prod_0__mults21_0|nx43955z1\ $ (VCC))) # (!\low_pass|prod_1__mults19_1|nx42958z1\ & (\low_pass|prod_0__mults21_0|nx43955z1\ & VCC))
-- \low_pass|modgen_add_11|nx2247z45\ = CARRY((\low_pass|prod_1__mults19_1|nx42958z1\ & \low_pass|prod_0__mults21_0|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx42958z1\,
	datab => \low_pass|prod_0__mults21_0|nx43955z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_11|nx37973z1\,
	cout => \low_pass|modgen_add_11|nx2247z45\);

-- Location: LCCOMB_X24_Y19_N2
\low_pass|modgen_add_11|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx38970z1\ = (\low_pass|prod_1__mults19_1|nx43955z1\ & ((\low_pass|prod_0__mults21_0|nx44952z1\ & (\low_pass|modgen_add_11|nx2247z45\ & VCC)) # (!\low_pass|prod_0__mults21_0|nx44952z1\ & (!\low_pass|modgen_add_11|nx2247z45\)))) # 
-- (!\low_pass|prod_1__mults19_1|nx43955z1\ & ((\low_pass|prod_0__mults21_0|nx44952z1\ & (!\low_pass|modgen_add_11|nx2247z45\)) # (!\low_pass|prod_0__mults21_0|nx44952z1\ & ((\low_pass|modgen_add_11|nx2247z45\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z42\ = CARRY((\low_pass|prod_1__mults19_1|nx43955z1\ & (!\low_pass|prod_0__mults21_0|nx44952z1\ & !\low_pass|modgen_add_11|nx2247z45\)) # (!\low_pass|prod_1__mults19_1|nx43955z1\ & ((!\low_pass|modgen_add_11|nx2247z45\) # 
-- (!\low_pass|prod_0__mults21_0|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx43955z1\,
	datab => \low_pass|prod_0__mults21_0|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z45\,
	combout => \low_pass|modgen_add_11|nx38970z1\,
	cout => \low_pass|modgen_add_11|nx2247z42\);

-- Location: LCCOMB_X24_Y19_N8
\low_pass|modgen_add_11|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx41961z1\ = ((\low_pass|prod_0__mults21_0|nx62798z1\ $ (\low_pass|prod_1__mults19_1|nx46946z1\ $ (!\low_pass|modgen_add_11|nx2247z36\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z33\ = CARRY((\low_pass|prod_0__mults21_0|nx62798z1\ & ((\low_pass|prod_1__mults19_1|nx46946z1\) # (!\low_pass|modgen_add_11|nx2247z36\))) # (!\low_pass|prod_0__mults21_0|nx62798z1\ & (\low_pass|prod_1__mults19_1|nx46946z1\ & 
-- !\low_pass|modgen_add_11|nx2247z36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx62798z1\,
	datab => \low_pass|prod_1__mults19_1|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z36\,
	combout => \low_pass|modgen_add_11|nx41961z1\,
	cout => \low_pass|modgen_add_11|nx2247z33\);

-- Location: LCCOMB_X24_Y19_N10
\low_pass|modgen_add_11|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx42958z1\ = (\low_pass|prod_0__mults21_0|nx63795z1\ & ((\low_pass|prod_1__mults19_1|nx62798z1\ & (\low_pass|modgen_add_11|nx2247z33\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx62798z1\ & (!\low_pass|modgen_add_11|nx2247z33\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx63795z1\ & ((\low_pass|prod_1__mults19_1|nx62798z1\ & (!\low_pass|modgen_add_11|nx2247z33\)) # (!\low_pass|prod_1__mults19_1|nx62798z1\ & ((\low_pass|modgen_add_11|nx2247z33\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z30\ = CARRY((\low_pass|prod_0__mults21_0|nx63795z1\ & (!\low_pass|prod_1__mults19_1|nx62798z1\ & !\low_pass|modgen_add_11|nx2247z33\)) # (!\low_pass|prod_0__mults21_0|nx63795z1\ & ((!\low_pass|modgen_add_11|nx2247z33\) # 
-- (!\low_pass|prod_1__mults19_1|nx62798z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx63795z1\,
	datab => \low_pass|prod_1__mults19_1|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z33\,
	combout => \low_pass|modgen_add_11|nx42958z1\,
	cout => \low_pass|modgen_add_11|nx2247z30\);

-- Location: LCCOMB_X25_Y19_N0
\low_pass|modgen_add_12|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx37973z1\ = (\low_pass|modgen_add_11|nx37973z1\ & (\low_pass|prod_2__mults20_2|d_5_\ $ (VCC))) # (!\low_pass|modgen_add_11|nx37973z1\ & (\low_pass|prod_2__mults20_2|d_5_\ & VCC))
-- \low_pass|modgen_add_12|nx2247z45\ = CARRY((\low_pass|modgen_add_11|nx37973z1\ & \low_pass|prod_2__mults20_2|d_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx37973z1\,
	datab => \low_pass|prod_2__mults20_2|d_5_\,
	datad => VCC,
	combout => \low_pass|modgen_add_12|nx37973z1\,
	cout => \low_pass|modgen_add_12|nx2247z45\);

-- Location: LCCOMB_X25_Y19_N8
\low_pass|modgen_add_12|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx41961z1\ = ((\low_pass|modgen_add_11|nx41961z1\ $ (\low_pass|prod_2__mults20_2|d_9_\ $ (!\low_pass|modgen_add_12|nx2247z36\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z33\ = CARRY((\low_pass|modgen_add_11|nx41961z1\ & ((\low_pass|prod_2__mults20_2|d_9_\) # (!\low_pass|modgen_add_12|nx2247z36\))) # (!\low_pass|modgen_add_11|nx41961z1\ & (\low_pass|prod_2__mults20_2|d_9_\ & 
-- !\low_pass|modgen_add_12|nx2247z36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx41961z1\,
	datab => \low_pass|prod_2__mults20_2|d_9_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z36\,
	combout => \low_pass|modgen_add_12|nx41961z1\,
	cout => \low_pass|modgen_add_12|nx2247z33\);

-- Location: LCCOMB_X25_Y19_N10
\low_pass|modgen_add_12|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx42958z1\ = (\low_pass|modgen_add_11|nx42958z1\ & ((\low_pass|prod_2__mults20_2|d_10_\ & (\low_pass|modgen_add_12|nx2247z33\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_10_\ & (!\low_pass|modgen_add_12|nx2247z33\)))) # 
-- (!\low_pass|modgen_add_11|nx42958z1\ & ((\low_pass|prod_2__mults20_2|d_10_\ & (!\low_pass|modgen_add_12|nx2247z33\)) # (!\low_pass|prod_2__mults20_2|d_10_\ & ((\low_pass|modgen_add_12|nx2247z33\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z30\ = CARRY((\low_pass|modgen_add_11|nx42958z1\ & (!\low_pass|prod_2__mults20_2|d_10_\ & !\low_pass|modgen_add_12|nx2247z33\)) # (!\low_pass|modgen_add_11|nx42958z1\ & ((!\low_pass|modgen_add_12|nx2247z33\) # 
-- (!\low_pass|prod_2__mults20_2|d_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx42958z1\,
	datab => \low_pass|prod_2__mults20_2|d_10_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z33\,
	combout => \low_pass|modgen_add_12|nx42958z1\,
	cout => \low_pass|modgen_add_12|nx2247z30\);

-- Location: LCCOMB_X28_Y19_N0
\low_pass|modgen_add_13|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx37973z1\ = (\low_pass|modgen_add_12|nx37973z1\ & (\low_pass|modgen_add_10|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_12|nx37973z1\ & (\low_pass|modgen_add_10|nx37973z1\ & VCC))
-- \low_pass|modgen_add_13|nx2247z46\ = CARRY((\low_pass|modgen_add_12|nx37973z1\ & \low_pass|modgen_add_10|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx37973z1\,
	datab => \low_pass|modgen_add_10|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_13|nx37973z1\,
	cout => \low_pass|modgen_add_13|nx2247z46\);

-- Location: LCCOMB_X28_Y19_N2
\low_pass|modgen_add_13|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx38970z1\ = (\low_pass|modgen_add_10|nx38970z1\ & ((\low_pass|modgen_add_12|nx38970z1\ & (\low_pass|modgen_add_13|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_12|nx38970z1\ & (!\low_pass|modgen_add_13|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_10|nx38970z1\ & ((\low_pass|modgen_add_12|nx38970z1\ & (!\low_pass|modgen_add_13|nx2247z46\)) # (!\low_pass|modgen_add_12|nx38970z1\ & ((\low_pass|modgen_add_13|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z43\ = CARRY((\low_pass|modgen_add_10|nx38970z1\ & (!\low_pass|modgen_add_12|nx38970z1\ & !\low_pass|modgen_add_13|nx2247z46\)) # (!\low_pass|modgen_add_10|nx38970z1\ & ((!\low_pass|modgen_add_13|nx2247z46\) # 
-- (!\low_pass|modgen_add_12|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_10|nx38970z1\,
	datab => \low_pass|modgen_add_12|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z46\,
	combout => \low_pass|modgen_add_13|nx38970z1\,
	cout => \low_pass|modgen_add_13|nx2247z43\);

-- Location: LCCOMB_X28_Y19_N4
\low_pass|modgen_add_13|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx39967z1\ = ((\low_pass|modgen_add_10|nx39967z1\ $ (\low_pass|modgen_add_12|nx39967z1\ $ (!\low_pass|modgen_add_13|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z40\ = CARRY((\low_pass|modgen_add_10|nx39967z1\ & ((\low_pass|modgen_add_12|nx39967z1\) # (!\low_pass|modgen_add_13|nx2247z43\))) # (!\low_pass|modgen_add_10|nx39967z1\ & (\low_pass|modgen_add_12|nx39967z1\ & 
-- !\low_pass|modgen_add_13|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_10|nx39967z1\,
	datab => \low_pass|modgen_add_12|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z43\,
	combout => \low_pass|modgen_add_13|nx39967z1\,
	cout => \low_pass|modgen_add_13|nx2247z40\);

-- Location: LCCOMB_X28_Y19_N10
\low_pass|modgen_add_13|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx42958z1\ = (\low_pass|modgen_add_12|nx42958z1\ & ((\low_pass|modgen_add_10|nx42958z1\ & (\low_pass|modgen_add_13|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_10|nx42958z1\ & (!\low_pass|modgen_add_13|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_12|nx42958z1\ & ((\low_pass|modgen_add_10|nx42958z1\ & (!\low_pass|modgen_add_13|nx2247z34\)) # (!\low_pass|modgen_add_10|nx42958z1\ & ((\low_pass|modgen_add_13|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z31\ = CARRY((\low_pass|modgen_add_12|nx42958z1\ & (!\low_pass|modgen_add_10|nx42958z1\ & !\low_pass|modgen_add_13|nx2247z34\)) # (!\low_pass|modgen_add_12|nx42958z1\ & ((!\low_pass|modgen_add_13|nx2247z34\) # 
-- (!\low_pass|modgen_add_10|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx42958z1\,
	datab => \low_pass|modgen_add_10|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z34\,
	combout => \low_pass|modgen_add_13|nx42958z1\,
	cout => \low_pass|modgen_add_13|nx2247z31\);

-- Location: LCCOMB_X23_Y18_N30
\low_pass|prod_6__mults19_5|ix41961z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx41961z3\ = (\low_pass_in_1_\ & ((\low_pass_in_2_\) # ((\low_pass_in_0_\ & \low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_2_\,
	datac => \low_pass_in_0_\,
	datad => \low_pass_in_3_\,
	combout => \low_pass|prod_6__mults19_5|nx41961z3\);

-- Location: LCCOMB_X24_Y18_N24
\low_pass|modgen_add_4|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx40964z1\ = (((\low_pass|modgen_add_4|nx2247z28\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z26\ = CARRY(\low_pass|prod_1__mults19_1|nx44952z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z28\,
	combout => \low_pass|modgen_add_4|nx40964z1\,
	cout => \low_pass|modgen_add_4|nx2247z26\);

-- Location: LCCOMB_X24_Y18_N28
\low_pass|modgen_add_4|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx42958z1\ = (((\low_pass|modgen_add_4|nx2247z24\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z22\ = CARRY(\low_pass|prod_1__mults19_1|nx46946z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z24\,
	combout => \low_pass|modgen_add_4|nx42958z1\,
	cout => \low_pass|modgen_add_4|nx2247z22\);

-- Location: LCCOMB_X23_Y18_N6
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_2_\ = ((\low_pass_in_3_\ $ (\low_pass_in_2_\ $ (!\low_pass|prod_5__mults21_4|nx3244z15\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z14\ = CARRY((\low_pass_in_3_\ & ((\low_pass_in_2_\) # (!\low_pass|prod_5__mults21_4|nx3244z15\))) # (!\low_pass_in_3_\ & (\low_pass_in_2_\ & !\low_pass|prod_5__mults21_4|nx3244z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_3_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z15\,
	combout => \low_pass|prod_5__mults21_4|d_2_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z14\);

-- Location: LCCOMB_X23_Y18_N16
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_7_\ = (\low_pass_in_7_\ & ((\low_pass_in_8_\ & (\low_pass|prod_5__mults21_4|nx3244z10\ & VCC)) # (!\low_pass_in_8_\ & (!\low_pass|prod_5__mults21_4|nx3244z10\)))) # (!\low_pass_in_7_\ & ((\low_pass_in_8_\ & 
-- (!\low_pass|prod_5__mults21_4|nx3244z10\)) # (!\low_pass_in_8_\ & ((\low_pass|prod_5__mults21_4|nx3244z10\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z9\ = CARRY((\low_pass_in_7_\ & (!\low_pass_in_8_\ & !\low_pass|prod_5__mults21_4|nx3244z10\)) # (!\low_pass_in_7_\ & ((!\low_pass|prod_5__mults21_4|nx3244z10\) # (!\low_pass_in_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z10\,
	combout => \low_pass|prod_5__mults21_4|d_7_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z9\);

-- Location: LCCOMB_X22_Y18_N10
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_5__dup_191\ = (\low_pass|prod_5__mults21_4|d_7_\ & ((\low_pass_in_5_\ & (\low_pass|prod_5__mults21_4|nx3244z22\ & VCC)) # (!\low_pass_in_5_\ & (!\low_pass|prod_5__mults21_4|nx3244z22\)))) # (!\low_pass|prod_5__mults21_4|d_7_\ 
-- & ((\low_pass_in_5_\ & (!\low_pass|prod_5__mults21_4|nx3244z22\)) # (!\low_pass_in_5_\ & ((\low_pass|prod_5__mults21_4|nx3244z22\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z21\ = CARRY((\low_pass|prod_5__mults21_4|d_7_\ & (!\low_pass_in_5_\ & !\low_pass|prod_5__mults21_4|nx3244z22\)) # (!\low_pass|prod_5__mults21_4|d_7_\ & ((!\low_pass|prod_5__mults21_4|nx3244z22\) # (!\low_pass_in_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_7_\,
	datab => \low_pass_in_5_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z22\,
	combout => \low_pass|prod_5__mults21_4|d_5__dup_191\,
	cout => \low_pass|prod_5__mults21_4|nx3244z21\);

-- Location: LCCOMB_X22_Y18_N12
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_6__dup_190\ = ((\low_pass_in_6_\ $ (\low_pass|prod_5__mults21_4|d_8_\ $ (!\low_pass|prod_5__mults21_4|nx3244z21\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z20\ = CARRY((\low_pass_in_6_\ & ((\low_pass|prod_5__mults21_4|d_8_\) # (!\low_pass|prod_5__mults21_4|nx3244z21\))) # (!\low_pass_in_6_\ & (\low_pass|prod_5__mults21_4|d_8_\ & !\low_pass|prod_5__mults21_4|nx3244z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass|prod_5__mults21_4|d_8_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z21\,
	combout => \low_pass|prod_5__mults21_4|d_6__dup_190\,
	cout => \low_pass|prod_5__mults21_4|nx3244z20\);

-- Location: LCCOMB_X22_Y18_N14
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_7__dup_189\ = (\low_pass_in_7_\ & ((\low_pass|prod_5__mults21_4|d_9_\ & (\low_pass|prod_5__mults21_4|nx3244z20\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_9_\ & (!\low_pass|prod_5__mults21_4|nx3244z20\)))) # (!\low_pass_in_7_\ 
-- & ((\low_pass|prod_5__mults21_4|d_9_\ & (!\low_pass|prod_5__mults21_4|nx3244z20\)) # (!\low_pass|prod_5__mults21_4|d_9_\ & ((\low_pass|prod_5__mults21_4|nx3244z20\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z19\ = CARRY((\low_pass_in_7_\ & (!\low_pass|prod_5__mults21_4|d_9_\ & !\low_pass|prod_5__mults21_4|nx3244z20\)) # (!\low_pass_in_7_\ & ((!\low_pass|prod_5__mults21_4|nx3244z20\) # (!\low_pass|prod_5__mults21_4|d_9_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass|prod_5__mults21_4|d_9_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z20\,
	combout => \low_pass|prod_5__mults21_4|d_7__dup_189\,
	cout => \low_pass|prod_5__mults21_4|nx3244z19\);

-- Location: LCCOMB_X22_Y20_N18
\low_pass|modgen_add_8|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx37973z1\ = (\low_pass|modgen_add_8|nx2247z49\ & (\low_pass|prod_6__mults19_5|nx44479z1\ $ ((!\low_pass|prod_6__mults19_5|nx44471z1\)))) # (!\low_pass|modgen_add_8|nx2247z49\ & ((\low_pass|prod_6__mults19_5|nx44479z1\ $ 
-- (\low_pass|prod_6__mults19_5|nx44471z1\)) # (GND)))
-- \low_pass|modgen_add_8|nx2247z46\ = CARRY((\low_pass|prod_6__mults19_5|nx44479z1\ $ (!\low_pass|prod_6__mults19_5|nx44471z1\)) # (!\low_pass|modgen_add_8|nx2247z49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_6__mults19_5|nx44479z1\,
	datab => \low_pass|prod_6__mults19_5|nx44471z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z49\,
	combout => \low_pass|modgen_add_8|nx37973z1\,
	cout => \low_pass|modgen_add_8|nx2247z46\);

-- Location: LCCOMB_X22_Y20_N20
\low_pass|modgen_add_8|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx38970z1\ = ((\low_pass|prod_1__mults19_1|nx42958z1\ $ (\low_pass|prod_5__mults21_4|d_4__dup_192\ $ (!\low_pass|modgen_add_8|nx2247z46\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z43\ = CARRY((\low_pass|prod_1__mults19_1|nx42958z1\ & ((\low_pass|prod_5__mults21_4|d_4__dup_192\) # (!\low_pass|modgen_add_8|nx2247z46\))) # (!\low_pass|prod_1__mults19_1|nx42958z1\ & 
-- (\low_pass|prod_5__mults21_4|d_4__dup_192\ & !\low_pass|modgen_add_8|nx2247z46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx42958z1\,
	datab => \low_pass|prod_5__mults21_4|d_4__dup_192\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z46\,
	combout => \low_pass|modgen_add_8|nx38970z1\,
	cout => \low_pass|modgen_add_8|nx2247z43\);

-- Location: LCCOMB_X22_Y20_N26
\low_pass|modgen_add_8|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx41961z1\ = (\low_pass|prod_5__mults21_4|d_7__dup_189\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (\low_pass|modgen_add_8|nx2247z37\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_8|nx2247z37\)))) # 
-- (!\low_pass|prod_5__mults21_4|d_7__dup_189\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_8|nx2247z37\)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & ((\low_pass|modgen_add_8|nx2247z37\) # (GND)))))
-- \low_pass|modgen_add_8|nx2247z34\ = CARRY((\low_pass|prod_5__mults21_4|d_7__dup_189\ & (!\low_pass|prod_1__mults19_1|nx45949z1\ & !\low_pass|modgen_add_8|nx2247z37\)) # (!\low_pass|prod_5__mults21_4|d_7__dup_189\ & ((!\low_pass|modgen_add_8|nx2247z37\) # 
-- (!\low_pass|prod_1__mults19_1|nx45949z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_7__dup_189\,
	datab => \low_pass|prod_1__mults19_1|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z37\,
	combout => \low_pass|modgen_add_8|nx41961z1\,
	cout => \low_pass|modgen_add_8|nx2247z34\);

-- Location: LCCOMB_X23_Y19_N6
\low_pass|modgen_add_9|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx40964z1\ = (\low_pass|modgen_add_4|nx40964z1\ & ((\low_pass|modgen_add_8|nx40964z1\ & (\low_pass|modgen_add_9|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_8|nx40964z1\ & (!\low_pass|modgen_add_9|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_4|nx40964z1\ & ((\low_pass|modgen_add_8|nx40964z1\ & (!\low_pass|modgen_add_9|nx2247z40\)) # (!\low_pass|modgen_add_8|nx40964z1\ & ((\low_pass|modgen_add_9|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z37\ = CARRY((\low_pass|modgen_add_4|nx40964z1\ & (!\low_pass|modgen_add_8|nx40964z1\ & !\low_pass|modgen_add_9|nx2247z40\)) # (!\low_pass|modgen_add_4|nx40964z1\ & ((!\low_pass|modgen_add_9|nx2247z40\) # 
-- (!\low_pass|modgen_add_8|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx40964z1\,
	datab => \low_pass|modgen_add_8|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z40\,
	combout => \low_pass|modgen_add_9|nx40964z1\,
	cout => \low_pass|modgen_add_9|nx2247z37\);

-- Location: LCCOMB_X23_Y19_N8
\low_pass|modgen_add_9|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx41961z1\ = ((\low_pass|modgen_add_8|nx41961z1\ $ (\low_pass|modgen_add_4|nx41961z1\ $ (!\low_pass|modgen_add_9|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z34\ = CARRY((\low_pass|modgen_add_8|nx41961z1\ & ((\low_pass|modgen_add_4|nx41961z1\) # (!\low_pass|modgen_add_9|nx2247z37\))) # (!\low_pass|modgen_add_8|nx41961z1\ & (\low_pass|modgen_add_4|nx41961z1\ & 
-- !\low_pass|modgen_add_9|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx41961z1\,
	datab => \low_pass|modgen_add_4|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z37\,
	combout => \low_pass|modgen_add_9|nx41961z1\,
	cout => \low_pass|modgen_add_9|nx2247z34\);

-- Location: LCCOMB_X27_Y19_N4
\low_pass|modgen_add_14|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx39967z1\ = ((\low_pass|modgen_add_13|nx39967z1\ $ (\low_pass|modgen_add_9|nx39967z1\ $ (!\low_pass|modgen_add_14|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z40\ = CARRY((\low_pass|modgen_add_13|nx39967z1\ & ((\low_pass|modgen_add_9|nx39967z1\) # (!\low_pass|modgen_add_14|nx2247z43\))) # (!\low_pass|modgen_add_13|nx39967z1\ & (\low_pass|modgen_add_9|nx39967z1\ & 
-- !\low_pass|modgen_add_14|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx39967z1\,
	datab => \low_pass|modgen_add_9|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z43\,
	combout => \low_pass|modgen_add_14|nx39967z1\,
	cout => \low_pass|modgen_add_14|nx2247z40\);

-- Location: LCCOMB_X27_Y19_N6
\low_pass|modgen_add_14|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx40964z1\ = (\low_pass|modgen_add_9|nx40964z1\ & ((\low_pass|modgen_add_13|nx40964z1\ & (\low_pass|modgen_add_14|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_13|nx40964z1\ & (!\low_pass|modgen_add_14|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_9|nx40964z1\ & ((\low_pass|modgen_add_13|nx40964z1\ & (!\low_pass|modgen_add_14|nx2247z40\)) # (!\low_pass|modgen_add_13|nx40964z1\ & ((\low_pass|modgen_add_14|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z37\ = CARRY((\low_pass|modgen_add_9|nx40964z1\ & (!\low_pass|modgen_add_13|nx40964z1\ & !\low_pass|modgen_add_14|nx2247z40\)) # (!\low_pass|modgen_add_9|nx40964z1\ & ((!\low_pass|modgen_add_14|nx2247z40\) # 
-- (!\low_pass|modgen_add_13|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx40964z1\,
	datab => \low_pass|modgen_add_13|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z40\,
	combout => \low_pass|modgen_add_14|nx40964z1\,
	cout => \low_pass|modgen_add_14|nx2247z37\);

-- Location: LCCOMB_X29_Y18_N0
\low_pass|modgen_add_3|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx37973z1\ = (\low_pass|prod_4__mults20_3|nx42958z1\ & (\low_pass|prod_5__mults21_4|d_3__dup_193\ $ (VCC))) # (!\low_pass|prod_4__mults20_3|nx42958z1\ & (\low_pass|prod_5__mults21_4|d_3__dup_193\ & VCC))
-- \low_pass|modgen_add_3|nx2247z46\ = CARRY((\low_pass|prod_4__mults20_3|nx42958z1\ & \low_pass|prod_5__mults21_4|d_3__dup_193\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx42958z1\,
	datab => \low_pass|prod_5__mults21_4|d_3__dup_193\,
	datad => VCC,
	combout => \low_pass|modgen_add_3|nx37973z1\,
	cout => \low_pass|modgen_add_3|nx2247z46\);

-- Location: LCCOMB_X29_Y18_N2
\low_pass|modgen_add_3|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx38970z1\ = (\low_pass|prod_4__mults20_3|nx43955z1\ & ((\low_pass|prod_5__mults21_4|d_4__dup_192\ & (\low_pass|modgen_add_3|nx2247z46\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_4__dup_192\ & (!\low_pass|modgen_add_3|nx2247z46\)))) 
-- # (!\low_pass|prod_4__mults20_3|nx43955z1\ & ((\low_pass|prod_5__mults21_4|d_4__dup_192\ & (!\low_pass|modgen_add_3|nx2247z46\)) # (!\low_pass|prod_5__mults21_4|d_4__dup_192\ & ((\low_pass|modgen_add_3|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z43\ = CARRY((\low_pass|prod_4__mults20_3|nx43955z1\ & (!\low_pass|prod_5__mults21_4|d_4__dup_192\ & !\low_pass|modgen_add_3|nx2247z46\)) # (!\low_pass|prod_4__mults20_3|nx43955z1\ & ((!\low_pass|modgen_add_3|nx2247z46\) # 
-- (!\low_pass|prod_5__mults21_4|d_4__dup_192\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx43955z1\,
	datab => \low_pass|prod_5__mults21_4|d_4__dup_192\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z46\,
	combout => \low_pass|modgen_add_3|nx38970z1\,
	cout => \low_pass|modgen_add_3|nx2247z43\);

-- Location: LCCOMB_X29_Y18_N4
\low_pass|modgen_add_3|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx39967z1\ = ((\low_pass|prod_5__mults21_4|d_5__dup_191\ $ (\low_pass|prod_4__mults20_3|nx44952z1\ $ (!\low_pass|modgen_add_3|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z40\ = CARRY((\low_pass|prod_5__mults21_4|d_5__dup_191\ & ((\low_pass|prod_4__mults20_3|nx44952z1\) # (!\low_pass|modgen_add_3|nx2247z43\))) # (!\low_pass|prod_5__mults21_4|d_5__dup_191\ & 
-- (\low_pass|prod_4__mults20_3|nx44952z1\ & !\low_pass|modgen_add_3|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_5__dup_191\,
	datab => \low_pass|prod_4__mults20_3|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z43\,
	combout => \low_pass|modgen_add_3|nx39967z1\,
	cout => \low_pass|modgen_add_3|nx2247z40\);

-- Location: LCCOMB_X29_Y18_N8
\low_pass|modgen_add_3|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx41961z1\ = ((\low_pass|prod_5__mults21_4|d_7__dup_189\ $ (\low_pass|prod_4__mults20_3|nx46946z1\ $ (!\low_pass|modgen_add_3|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z34\ = CARRY((\low_pass|prod_5__mults21_4|d_7__dup_189\ & ((\low_pass|prod_4__mults20_3|nx46946z1\) # (!\low_pass|modgen_add_3|nx2247z37\))) # (!\low_pass|prod_5__mults21_4|d_7__dup_189\ & 
-- (\low_pass|prod_4__mults20_3|nx46946z1\ & !\low_pass|modgen_add_3|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_7__dup_189\,
	datab => \low_pass|prod_4__mults20_3|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z37\,
	combout => \low_pass|modgen_add_3|nx41961z1\,
	cout => \low_pass|modgen_add_3|nx2247z34\);

-- Location: LCCOMB_X29_Y21_N2
\low_pass|modgen_add_5|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx38970z1\ = (\low_pass|modgen_add_3|nx38970z1\ & ((\low_pass|modgen_add_4|nx38970z1\ & (\low_pass|modgen_add_5|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_4|nx38970z1\ & (!\low_pass|modgen_add_5|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_3|nx38970z1\ & ((\low_pass|modgen_add_4|nx38970z1\ & (!\low_pass|modgen_add_5|nx2247z46\)) # (!\low_pass|modgen_add_4|nx38970z1\ & ((\low_pass|modgen_add_5|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z43\ = CARRY((\low_pass|modgen_add_3|nx38970z1\ & (!\low_pass|modgen_add_4|nx38970z1\ & !\low_pass|modgen_add_5|nx2247z46\)) # (!\low_pass|modgen_add_3|nx38970z1\ & ((!\low_pass|modgen_add_5|nx2247z46\) # 
-- (!\low_pass|modgen_add_4|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx38970z1\,
	datab => \low_pass|modgen_add_4|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z46\,
	combout => \low_pass|modgen_add_5|nx38970z1\,
	cout => \low_pass|modgen_add_5|nx2247z43\);

-- Location: LCCOMB_X29_Y21_N4
\low_pass|modgen_add_5|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx39967z1\ = ((\low_pass|modgen_add_3|nx39967z1\ $ (\low_pass|modgen_add_4|nx39967z1\ $ (!\low_pass|modgen_add_5|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z40\ = CARRY((\low_pass|modgen_add_3|nx39967z1\ & ((\low_pass|modgen_add_4|nx39967z1\) # (!\low_pass|modgen_add_5|nx2247z43\))) # (!\low_pass|modgen_add_3|nx39967z1\ & (\low_pass|modgen_add_4|nx39967z1\ & 
-- !\low_pass|modgen_add_5|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx39967z1\,
	datab => \low_pass|modgen_add_4|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z43\,
	combout => \low_pass|modgen_add_5|nx39967z1\,
	cout => \low_pass|modgen_add_5|nx2247z40\);

-- Location: LCCOMB_X29_Y21_N6
\low_pass|modgen_add_5|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx40964z1\ = (\low_pass|modgen_add_4|nx40964z1\ & ((\low_pass|modgen_add_3|nx40964z1\ & (\low_pass|modgen_add_5|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_3|nx40964z1\ & (!\low_pass|modgen_add_5|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_4|nx40964z1\ & ((\low_pass|modgen_add_3|nx40964z1\ & (!\low_pass|modgen_add_5|nx2247z40\)) # (!\low_pass|modgen_add_3|nx40964z1\ & ((\low_pass|modgen_add_5|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z37\ = CARRY((\low_pass|modgen_add_4|nx40964z1\ & (!\low_pass|modgen_add_3|nx40964z1\ & !\low_pass|modgen_add_5|nx2247z40\)) # (!\low_pass|modgen_add_4|nx40964z1\ & ((!\low_pass|modgen_add_5|nx2247z40\) # 
-- (!\low_pass|modgen_add_3|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx40964z1\,
	datab => \low_pass|modgen_add_3|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z40\,
	combout => \low_pass|modgen_add_5|nx40964z1\,
	cout => \low_pass|modgen_add_5|nx2247z37\);

-- Location: LCCOMB_X25_Y20_N0
\low_pass|modgen_add_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx37973z1\ = (\low_pass|prod_1__mults19_1|nx42958z1\ & (\low_pass|prod_0__mults21_0|nx43955z1\ $ (VCC))) # (!\low_pass|prod_1__mults19_1|nx42958z1\ & (\low_pass|prod_0__mults21_0|nx43955z1\ & VCC))
-- \low_pass|modgen_add_0|nx2247z45\ = CARRY((\low_pass|prod_1__mults19_1|nx42958z1\ & \low_pass|prod_0__mults21_0|nx43955z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx42958z1\,
	datab => \low_pass|prod_0__mults21_0|nx43955z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_0|nx37973z1\,
	cout => \low_pass|modgen_add_0|nx2247z45\);

-- Location: LCCOMB_X25_Y20_N2
\low_pass|modgen_add_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx38970z1\ = (\low_pass|prod_0__mults21_0|nx44952z1\ & ((\low_pass|prod_1__mults19_1|nx43955z1\ & (\low_pass|modgen_add_0|nx2247z45\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx43955z1\ & (!\low_pass|modgen_add_0|nx2247z45\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx44952z1\ & ((\low_pass|prod_1__mults19_1|nx43955z1\ & (!\low_pass|modgen_add_0|nx2247z45\)) # (!\low_pass|prod_1__mults19_1|nx43955z1\ & ((\low_pass|modgen_add_0|nx2247z45\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z42\ = CARRY((\low_pass|prod_0__mults21_0|nx44952z1\ & (!\low_pass|prod_1__mults19_1|nx43955z1\ & !\low_pass|modgen_add_0|nx2247z45\)) # (!\low_pass|prod_0__mults21_0|nx44952z1\ & ((!\low_pass|modgen_add_0|nx2247z45\) # 
-- (!\low_pass|prod_1__mults19_1|nx43955z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx44952z1\,
	datab => \low_pass|prod_1__mults19_1|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z45\,
	combout => \low_pass|modgen_add_0|nx38970z1\,
	cout => \low_pass|modgen_add_0|nx2247z42\);

-- Location: LCCOMB_X25_Y20_N4
\low_pass|modgen_add_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx39967z1\ = ((\low_pass|prod_0__mults21_0|nx45949z1\ $ (\low_pass|prod_1__mults19_1|nx44952z1\ $ (!\low_pass|modgen_add_0|nx2247z42\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z39\ = CARRY((\low_pass|prod_0__mults21_0|nx45949z1\ & ((\low_pass|prod_1__mults19_1|nx44952z1\) # (!\low_pass|modgen_add_0|nx2247z42\))) # (!\low_pass|prod_0__mults21_0|nx45949z1\ & (\low_pass|prod_1__mults19_1|nx44952z1\ & 
-- !\low_pass|modgen_add_0|nx2247z42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx45949z1\,
	datab => \low_pass|prod_1__mults19_1|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z42\,
	combout => \low_pass|modgen_add_0|nx39967z1\,
	cout => \low_pass|modgen_add_0|nx2247z39\);

-- Location: LCCOMB_X25_Y20_N6
\low_pass|modgen_add_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx40964z1\ = (\low_pass|prod_0__mults21_0|nx46946z1\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (\low_pass|modgen_add_0|nx2247z39\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_0|nx2247z39\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx46946z1\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_0|nx2247z39\)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & ((\low_pass|modgen_add_0|nx2247z39\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z36\ = CARRY((\low_pass|prod_0__mults21_0|nx46946z1\ & (!\low_pass|prod_1__mults19_1|nx45949z1\ & !\low_pass|modgen_add_0|nx2247z39\)) # (!\low_pass|prod_0__mults21_0|nx46946z1\ & ((!\low_pass|modgen_add_0|nx2247z39\) # 
-- (!\low_pass|prod_1__mults19_1|nx45949z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx46946z1\,
	datab => \low_pass|prod_1__mults19_1|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z39\,
	combout => \low_pass|modgen_add_0|nx40964z1\,
	cout => \low_pass|modgen_add_0|nx2247z36\);

-- Location: LCCOMB_X27_Y18_N8
\low_pass|modgen_add_1|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx41961z1\ = ((\low_pass_in_7_\ $ (\low_pass|prod_2__mults20_2|d_9_\ $ (!\low_pass|modgen_add_1|nx2247z32\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z29\ = CARRY((\low_pass_in_7_\ & ((\low_pass|prod_2__mults20_2|d_9_\) # (!\low_pass|modgen_add_1|nx2247z32\))) # (!\low_pass_in_7_\ & (\low_pass|prod_2__mults20_2|d_9_\ & !\low_pass|modgen_add_1|nx2247z32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass|prod_2__mults20_2|d_9_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z32\,
	combout => \low_pass|modgen_add_1|nx41961z1\,
	cout => \low_pass|modgen_add_1|nx2247z29\);

-- Location: LCCOMB_X27_Y18_N10
\low_pass|modgen_add_1|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx42958z1\ = (\low_pass_in_8_\ & ((\low_pass|prod_2__mults20_2|d_10_\ & (\low_pass|modgen_add_1|nx2247z29\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_10_\ & (!\low_pass|modgen_add_1|nx2247z29\)))) # (!\low_pass_in_8_\ & 
-- ((\low_pass|prod_2__mults20_2|d_10_\ & (!\low_pass|modgen_add_1|nx2247z29\)) # (!\low_pass|prod_2__mults20_2|d_10_\ & ((\low_pass|modgen_add_1|nx2247z29\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z26\ = CARRY((\low_pass_in_8_\ & (!\low_pass|prod_2__mults20_2|d_10_\ & !\low_pass|modgen_add_1|nx2247z29\)) # (!\low_pass_in_8_\ & ((!\low_pass|modgen_add_1|nx2247z29\) # (!\low_pass|prod_2__mults20_2|d_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass|prod_2__mults20_2|d_10_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z29\,
	combout => \low_pass|modgen_add_1|nx42958z1\,
	cout => \low_pass|modgen_add_1|nx2247z26\);

-- Location: LCCOMB_X28_Y18_N0
\low_pass|modgen_add_2|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx37973z1\ = (\low_pass|modgen_add_0|nx37973z1\ & (\low_pass|modgen_add_1|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_0|nx37973z1\ & (\low_pass|modgen_add_1|nx37973z1\ & VCC))
-- \low_pass|modgen_add_2|nx2247z46\ = CARRY((\low_pass|modgen_add_0|nx37973z1\ & \low_pass|modgen_add_1|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx37973z1\,
	datab => \low_pass|modgen_add_1|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_2|nx37973z1\,
	cout => \low_pass|modgen_add_2|nx2247z46\);

-- Location: LCCOMB_X28_Y18_N8
\low_pass|modgen_add_2|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx41961z1\ = ((\low_pass|modgen_add_1|nx41961z1\ $ (\low_pass|modgen_add_0|nx41961z1\ $ (!\low_pass|modgen_add_2|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z34\ = CARRY((\low_pass|modgen_add_1|nx41961z1\ & ((\low_pass|modgen_add_0|nx41961z1\) # (!\low_pass|modgen_add_2|nx2247z37\))) # (!\low_pass|modgen_add_1|nx41961z1\ & (\low_pass|modgen_add_0|nx41961z1\ & 
-- !\low_pass|modgen_add_2|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_1|nx41961z1\,
	datab => \low_pass|modgen_add_0|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z37\,
	combout => \low_pass|modgen_add_2|nx41961z1\,
	cout => \low_pass|modgen_add_2|nx2247z34\);

-- Location: LCCOMB_X28_Y18_N10
\low_pass|modgen_add_2|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx42958z1\ = (\low_pass|modgen_add_1|nx42958z1\ & ((\low_pass|modgen_add_0|nx42958z1\ & (\low_pass|modgen_add_2|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_0|nx42958z1\ & (!\low_pass|modgen_add_2|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_1|nx42958z1\ & ((\low_pass|modgen_add_0|nx42958z1\ & (!\low_pass|modgen_add_2|nx2247z34\)) # (!\low_pass|modgen_add_0|nx42958z1\ & ((\low_pass|modgen_add_2|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z31\ = CARRY((\low_pass|modgen_add_1|nx42958z1\ & (!\low_pass|modgen_add_0|nx42958z1\ & !\low_pass|modgen_add_2|nx2247z34\)) # (!\low_pass|modgen_add_1|nx42958z1\ & ((!\low_pass|modgen_add_2|nx2247z34\) # 
-- (!\low_pass|modgen_add_0|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_1|nx42958z1\,
	datab => \low_pass|modgen_add_0|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z34\,
	combout => \low_pass|modgen_add_2|nx42958z1\,
	cout => \low_pass|modgen_add_2|nx2247z31\);

-- Location: LCCOMB_X28_Y21_N0
\low_pass|modgen_add_6|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx37973z1\ = (\low_pass|modgen_add_2|nx37973z1\ & (\low_pass|modgen_add_5|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_2|nx37973z1\ & (\low_pass|modgen_add_5|nx37973z1\ & VCC))
-- \low_pass|modgen_add_6|nx2247z46\ = CARRY((\low_pass|modgen_add_2|nx37973z1\ & \low_pass|modgen_add_5|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx37973z1\,
	datab => \low_pass|modgen_add_5|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_6|nx37973z1\,
	cout => \low_pass|modgen_add_6|nx2247z46\);

-- Location: LCCOMB_X28_Y21_N2
\low_pass|modgen_add_6|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx38970z1\ = (\low_pass|modgen_add_5|nx38970z1\ & ((\low_pass|modgen_add_2|nx38970z1\ & (\low_pass|modgen_add_6|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_2|nx38970z1\ & (!\low_pass|modgen_add_6|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_5|nx38970z1\ & ((\low_pass|modgen_add_2|nx38970z1\ & (!\low_pass|modgen_add_6|nx2247z46\)) # (!\low_pass|modgen_add_2|nx38970z1\ & ((\low_pass|modgen_add_6|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z43\ = CARRY((\low_pass|modgen_add_5|nx38970z1\ & (!\low_pass|modgen_add_2|nx38970z1\ & !\low_pass|modgen_add_6|nx2247z46\)) # (!\low_pass|modgen_add_5|nx38970z1\ & ((!\low_pass|modgen_add_6|nx2247z46\) # 
-- (!\low_pass|modgen_add_2|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_5|nx38970z1\,
	datab => \low_pass|modgen_add_2|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z46\,
	combout => \low_pass|modgen_add_6|nx38970z1\,
	cout => \low_pass|modgen_add_6|nx2247z43\);

-- Location: LCCOMB_X28_Y21_N8
\low_pass|modgen_add_6|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx41961z1\ = ((\low_pass|modgen_add_2|nx41961z1\ $ (\low_pass|modgen_add_5|nx41961z1\ $ (!\low_pass|modgen_add_6|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z34\ = CARRY((\low_pass|modgen_add_2|nx41961z1\ & ((\low_pass|modgen_add_5|nx41961z1\) # (!\low_pass|modgen_add_6|nx2247z37\))) # (!\low_pass|modgen_add_2|nx41961z1\ & (\low_pass|modgen_add_5|nx41961z1\ & 
-- !\low_pass|modgen_add_6|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx41961z1\,
	datab => \low_pass|modgen_add_5|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z37\,
	combout => \low_pass|modgen_add_6|nx41961z1\,
	cout => \low_pass|modgen_add_6|nx2247z34\);

-- Location: LCCOMB_X28_Y21_N10
\low_pass|modgen_add_6|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx42958z1\ = (\low_pass|modgen_add_2|nx42958z1\ & ((\low_pass|modgen_add_5|nx42958z1\ & (\low_pass|modgen_add_6|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_5|nx42958z1\ & (!\low_pass|modgen_add_6|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_2|nx42958z1\ & ((\low_pass|modgen_add_5|nx42958z1\ & (!\low_pass|modgen_add_6|nx2247z34\)) # (!\low_pass|modgen_add_5|nx42958z1\ & ((\low_pass|modgen_add_6|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z31\ = CARRY((\low_pass|modgen_add_2|nx42958z1\ & (!\low_pass|modgen_add_5|nx42958z1\ & !\low_pass|modgen_add_6|nx2247z34\)) # (!\low_pass|modgen_add_2|nx42958z1\ & ((!\low_pass|modgen_add_6|nx2247z34\) # 
-- (!\low_pass|modgen_add_5|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx42958z1\,
	datab => \low_pass|modgen_add_5|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z34\,
	combout => \low_pass|modgen_add_6|nx42958z1\,
	cout => \low_pass|modgen_add_6|nx2247z31\);

-- Location: LCCOMB_X27_Y21_N0
\low_pass|modgen_add_15|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx37973z1\ = (\low_pass|modgen_add_6|nx37973z1\ & (\low_pass|modgen_add_14|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_6|nx37973z1\ & (\low_pass|modgen_add_14|nx37973z1\ & VCC))
-- \low_pass|modgen_add_15|nx2247z46\ = CARRY((\low_pass|modgen_add_6|nx37973z1\ & \low_pass|modgen_add_14|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx37973z1\,
	datab => \low_pass|modgen_add_14|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_15|nx37973z1\,
	cout => \low_pass|modgen_add_15|nx2247z46\);

-- Location: LCCOMB_X27_Y21_N2
\low_pass|modgen_add_15|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx38970z1\ = (\low_pass|modgen_add_6|nx38970z1\ & ((\low_pass|modgen_add_14|nx38970z1\ & (\low_pass|modgen_add_15|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_14|nx38970z1\ & (!\low_pass|modgen_add_15|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_6|nx38970z1\ & ((\low_pass|modgen_add_14|nx38970z1\ & (!\low_pass|modgen_add_15|nx2247z46\)) # (!\low_pass|modgen_add_14|nx38970z1\ & ((\low_pass|modgen_add_15|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z43\ = CARRY((\low_pass|modgen_add_6|nx38970z1\ & (!\low_pass|modgen_add_14|nx38970z1\ & !\low_pass|modgen_add_15|nx2247z46\)) # (!\low_pass|modgen_add_6|nx38970z1\ & ((!\low_pass|modgen_add_15|nx2247z46\) # 
-- (!\low_pass|modgen_add_14|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx38970z1\,
	datab => \low_pass|modgen_add_14|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z46\,
	combout => \low_pass|modgen_add_15|nx38970z1\,
	cout => \low_pass|modgen_add_15|nx2247z43\);

-- Location: LCCOMB_X27_Y21_N4
\low_pass|modgen_add_15|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx39967z1\ = ((\low_pass|modgen_add_14|nx39967z1\ $ (\low_pass|modgen_add_6|nx39967z1\ $ (!\low_pass|modgen_add_15|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z40\ = CARRY((\low_pass|modgen_add_14|nx39967z1\ & ((\low_pass|modgen_add_6|nx39967z1\) # (!\low_pass|modgen_add_15|nx2247z43\))) # (!\low_pass|modgen_add_14|nx39967z1\ & (\low_pass|modgen_add_6|nx39967z1\ & 
-- !\low_pass|modgen_add_15|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx39967z1\,
	datab => \low_pass|modgen_add_6|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z43\,
	combout => \low_pass|modgen_add_15|nx39967z1\,
	cout => \low_pass|modgen_add_15|nx2247z40\);

-- Location: LCCOMB_X27_Y21_N6
\low_pass|modgen_add_15|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx40964z1\ = (\low_pass|modgen_add_14|nx40964z1\ & ((\low_pass|modgen_add_6|nx40964z1\ & (\low_pass|modgen_add_15|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_6|nx40964z1\ & (!\low_pass|modgen_add_15|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_14|nx40964z1\ & ((\low_pass|modgen_add_6|nx40964z1\ & (!\low_pass|modgen_add_15|nx2247z40\)) # (!\low_pass|modgen_add_6|nx40964z1\ & ((\low_pass|modgen_add_15|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z37\ = CARRY((\low_pass|modgen_add_14|nx40964z1\ & (!\low_pass|modgen_add_6|nx40964z1\ & !\low_pass|modgen_add_15|nx2247z40\)) # (!\low_pass|modgen_add_14|nx40964z1\ & ((!\low_pass|modgen_add_15|nx2247z40\) # 
-- (!\low_pass|modgen_add_6|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx40964z1\,
	datab => \low_pass|modgen_add_6|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z40\,
	combout => \low_pass|modgen_add_15|nx40964z1\,
	cout => \low_pass|modgen_add_15|nx2247z37\);

-- Location: LCCOMB_X27_Y21_N8
\low_pass|modgen_add_15|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx41961z1\ = ((\low_pass|modgen_add_6|nx41961z1\ $ (\low_pass|modgen_add_14|nx41961z1\ $ (!\low_pass|modgen_add_15|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z34\ = CARRY((\low_pass|modgen_add_6|nx41961z1\ & ((\low_pass|modgen_add_14|nx41961z1\) # (!\low_pass|modgen_add_15|nx2247z37\))) # (!\low_pass|modgen_add_6|nx41961z1\ & (\low_pass|modgen_add_14|nx41961z1\ & 
-- !\low_pass|modgen_add_15|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx41961z1\,
	datab => \low_pass|modgen_add_14|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z37\,
	combout => \low_pass|modgen_add_15|nx41961z1\,
	cout => \low_pass|modgen_add_15|nx2247z34\);

-- Location: LCCOMB_X27_Y20_N12
ix63117z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_4_\ = (\sw~combout\(17) & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0)))) # (!\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4),
	datab => \sw~combout\(17),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0),
	combout => \audio_out_1n1ss1_4_\);

-- Location: LCCOMB_X27_Y20_N14
ix61123z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_6_\ = (\sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2))) # (!\sw~combout\(17) & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2),
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6),
	combout => \audio_out_1n1ss1_6_\);

-- Location: LCCOMB_X30_Y18_N18
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx63795z1\ = (\low_pass_in_15_\ & ((\low_pass_in_9_\ & (\low_pass|prod_4__mults20_3|nx4241z14\ & VCC)) # (!\low_pass_in_9_\ & (!\low_pass|prod_4__mults20_3|nx4241z14\)))) # (!\low_pass_in_15_\ & ((\low_pass_in_9_\ & 
-- (!\low_pass|prod_4__mults20_3|nx4241z14\)) # (!\low_pass_in_9_\ & ((\low_pass|prod_4__mults20_3|nx4241z14\) # (GND)))))
-- \low_pass|prod_4__mults20_3|nx4241z12\ = CARRY((\low_pass_in_15_\ & (!\low_pass_in_9_\ & !\low_pass|prod_4__mults20_3|nx4241z14\)) # (!\low_pass_in_15_\ & ((!\low_pass|prod_4__mults20_3|nx4241z14\) # (!\low_pass_in_9_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z14\,
	combout => \low_pass|prod_4__mults20_3|nx63795z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z12\);

-- Location: LCCOMB_X24_Y19_N12
\low_pass|modgen_add_11|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx43955z1\ = ((\low_pass|prod_1__mults19_1|nx63795z1\ $ (\low_pass|prod_0__mults21_0|nx64792z1\ $ (!\low_pass|modgen_add_11|nx2247z30\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z27\ = CARRY((\low_pass|prod_1__mults19_1|nx63795z1\ & ((\low_pass|prod_0__mults21_0|nx64792z1\) # (!\low_pass|modgen_add_11|nx2247z30\))) # (!\low_pass|prod_1__mults19_1|nx63795z1\ & (\low_pass|prod_0__mults21_0|nx64792z1\ & 
-- !\low_pass|modgen_add_11|nx2247z30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx63795z1\,
	datab => \low_pass|prod_0__mults21_0|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z30\,
	combout => \low_pass|modgen_add_11|nx43955z1\,
	cout => \low_pass|modgen_add_11|nx2247z27\);

-- Location: LCCOMB_X25_Y19_N12
\low_pass|modgen_add_12|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx43955z1\ = ((\low_pass|modgen_add_11|nx43955z1\ $ (\low_pass|prod_2__mults20_2|d_11_\ $ (!\low_pass|modgen_add_12|nx2247z30\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z27\ = CARRY((\low_pass|modgen_add_11|nx43955z1\ & ((\low_pass|prod_2__mults20_2|d_11_\) # (!\low_pass|modgen_add_12|nx2247z30\))) # (!\low_pass|modgen_add_11|nx43955z1\ & (\low_pass|prod_2__mults20_2|d_11_\ & 
-- !\low_pass|modgen_add_12|nx2247z30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx43955z1\,
	datab => \low_pass|prod_2__mults20_2|d_11_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z30\,
	combout => \low_pass|modgen_add_12|nx43955z1\,
	cout => \low_pass|modgen_add_12|nx2247z27\);

-- Location: LCCOMB_X23_Y18_N24
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_11_\ = (((\low_pass|prod_5__mults21_4|nx3244z6\))) # (GND)
-- \low_pass|prod_5__mults21_4|b_10_\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z6\,
	combout => \low_pass|prod_5__mults21_4|d_11_\,
	cout => \low_pass|prod_5__mults21_4|b_10_\);

-- Location: LCCOMB_X22_Y20_N30
\low_pass|modgen_add_8|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx43955z1\ = (\low_pass|prod_1__mults19_1|nx62798z1\ & ((\low_pass|prod_5__mults21_4|d_9__dup_187\ & (\low_pass|modgen_add_8|nx2247z31\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_9__dup_187\ & (!\low_pass|modgen_add_8|nx2247z31\)))) 
-- # (!\low_pass|prod_1__mults19_1|nx62798z1\ & ((\low_pass|prod_5__mults21_4|d_9__dup_187\ & (!\low_pass|modgen_add_8|nx2247z31\)) # (!\low_pass|prod_5__mults21_4|d_9__dup_187\ & ((\low_pass|modgen_add_8|nx2247z31\) # (GND)))))
-- \low_pass|modgen_add_8|nx2247z28\ = CARRY((\low_pass|prod_1__mults19_1|nx62798z1\ & (!\low_pass|prod_5__mults21_4|d_9__dup_187\ & !\low_pass|modgen_add_8|nx2247z31\)) # (!\low_pass|prod_1__mults19_1|nx62798z1\ & ((!\low_pass|modgen_add_8|nx2247z31\) # 
-- (!\low_pass|prod_5__mults21_4|d_9__dup_187\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx62798z1\,
	datab => \low_pass|prod_5__mults21_4|d_9__dup_187\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z31\,
	combout => \low_pass|modgen_add_8|nx43955z1\,
	cout => \low_pass|modgen_add_8|nx2247z28\);

-- Location: LCCOMB_X23_Y19_N12
\low_pass|modgen_add_9|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx43955z1\ = ((\low_pass|modgen_add_8|nx43955z1\ $ (\low_pass|modgen_add_4|nx43955z1\ $ (!\low_pass|modgen_add_9|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z28\ = CARRY((\low_pass|modgen_add_8|nx43955z1\ & ((\low_pass|modgen_add_4|nx43955z1\) # (!\low_pass|modgen_add_9|nx2247z31\))) # (!\low_pass|modgen_add_8|nx43955z1\ & (\low_pass|modgen_add_4|nx43955z1\ & 
-- !\low_pass|modgen_add_9|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx43955z1\,
	datab => \low_pass|modgen_add_4|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z31\,
	combout => \low_pass|modgen_add_9|nx43955z1\,
	cout => \low_pass|modgen_add_9|nx2247z28\);

-- Location: LCCOMB_X27_Y19_N12
\low_pass|modgen_add_14|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx43955z1\ = ((\low_pass|modgen_add_9|nx43955z1\ $ (\low_pass|modgen_add_13|nx43955z1\ $ (!\low_pass|modgen_add_14|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z28\ = CARRY((\low_pass|modgen_add_9|nx43955z1\ & ((\low_pass|modgen_add_13|nx43955z1\) # (!\low_pass|modgen_add_14|nx2247z31\))) # (!\low_pass|modgen_add_9|nx43955z1\ & (\low_pass|modgen_add_13|nx43955z1\ & 
-- !\low_pass|modgen_add_14|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx43955z1\,
	datab => \low_pass|modgen_add_13|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z31\,
	combout => \low_pass|modgen_add_14|nx43955z1\,
	cout => \low_pass|modgen_add_14|nx2247z28\);

-- Location: LCCOMB_X29_Y18_N12
\low_pass|modgen_add_3|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx43955z1\ = ((\low_pass|prod_4__mults20_3|nx63795z1\ $ (\low_pass|prod_5__mults21_4|d_9__dup_187\ $ (!\low_pass|modgen_add_3|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z28\ = CARRY((\low_pass|prod_4__mults20_3|nx63795z1\ & ((\low_pass|prod_5__mults21_4|d_9__dup_187\) # (!\low_pass|modgen_add_3|nx2247z31\))) # (!\low_pass|prod_4__mults20_3|nx63795z1\ & 
-- (\low_pass|prod_5__mults21_4|d_9__dup_187\ & !\low_pass|modgen_add_3|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx63795z1\,
	datab => \low_pass|prod_5__mults21_4|d_9__dup_187\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z31\,
	combout => \low_pass|modgen_add_3|nx43955z1\,
	cout => \low_pass|modgen_add_3|nx2247z28\);

-- Location: LCCOMB_X27_Y18_N12
\low_pass|modgen_add_1|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx43955z1\ = ((\low_pass_in_9_\ $ (\low_pass|prod_2__mults20_2|d_11_\ $ (!\low_pass|modgen_add_1|nx2247z26\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z23\ = CARRY((\low_pass_in_9_\ & ((\low_pass|prod_2__mults20_2|d_11_\) # (!\low_pass|modgen_add_1|nx2247z26\))) # (!\low_pass_in_9_\ & (\low_pass|prod_2__mults20_2|d_11_\ & !\low_pass|modgen_add_1|nx2247z26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass|prod_2__mults20_2|d_11_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z26\,
	combout => \low_pass|modgen_add_1|nx43955z1\,
	cout => \low_pass|modgen_add_1|nx2247z23\);

-- Location: LCCOMB_X28_Y18_N12
\low_pass|modgen_add_2|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx43955z1\ = ((\low_pass|modgen_add_1|nx43955z1\ $ (\low_pass|modgen_add_0|nx43955z1\ $ (!\low_pass|modgen_add_2|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z28\ = CARRY((\low_pass|modgen_add_1|nx43955z1\ & ((\low_pass|modgen_add_0|nx43955z1\) # (!\low_pass|modgen_add_2|nx2247z31\))) # (!\low_pass|modgen_add_1|nx43955z1\ & (\low_pass|modgen_add_0|nx43955z1\ & 
-- !\low_pass|modgen_add_2|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_1|nx43955z1\,
	datab => \low_pass|modgen_add_0|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z31\,
	combout => \low_pass|modgen_add_2|nx43955z1\,
	cout => \low_pass|modgen_add_2|nx2247z28\);

-- Location: LCCOMB_X27_Y21_N12
\low_pass|modgen_add_15|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx43955z1\ = ((\low_pass|modgen_add_14|nx43955z1\ $ (\low_pass|modgen_add_6|nx43955z1\ $ (!\low_pass|modgen_add_15|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z28\ = CARRY((\low_pass|modgen_add_14|nx43955z1\ & ((\low_pass|modgen_add_6|nx43955z1\) # (!\low_pass|modgen_add_15|nx2247z31\))) # (!\low_pass|modgen_add_14|nx43955z1\ & (\low_pass|modgen_add_6|nx43955z1\ & 
-- !\low_pass|modgen_add_15|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx43955z1\,
	datab => \low_pass|modgen_add_6|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z31\,
	combout => \low_pass|modgen_add_15|nx43955z1\,
	cout => \low_pass|modgen_add_15|nx2247z28\);

-- Location: LCCOMB_X24_Y20_N20
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx253z1\ = ((\low_pass_in_15_\ $ (\low_pass_in_10_\ $ (!\low_pass|prod_0__mults21_0|nx5238z12\)))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z10\ = CARRY((\low_pass_in_15_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_0__mults21_0|nx5238z12\))) # (!\low_pass_in_15_\ & (\low_pass_in_10_\ & !\low_pass|prod_0__mults21_0|nx5238z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z12\,
	combout => \low_pass|prod_0__mults21_0|nx253z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z10\);

-- Location: LCCOMB_X24_Y19_N14
\low_pass|modgen_add_11|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx44952z1\ = (\low_pass|prod_0__mults21_0|nx253z1\ & ((\low_pass|prod_1__mults19_1|nx64792z1\ & (\low_pass|modgen_add_11|nx2247z27\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & (!\low_pass|modgen_add_11|nx2247z27\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx253z1\ & ((\low_pass|prod_1__mults19_1|nx64792z1\ & (!\low_pass|modgen_add_11|nx2247z27\)) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & ((\low_pass|modgen_add_11|nx2247z27\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z24\ = CARRY((\low_pass|prod_0__mults21_0|nx253z1\ & (!\low_pass|prod_1__mults19_1|nx64792z1\ & !\low_pass|modgen_add_11|nx2247z27\)) # (!\low_pass|prod_0__mults21_0|nx253z1\ & ((!\low_pass|modgen_add_11|nx2247z27\) # 
-- (!\low_pass|prod_1__mults19_1|nx64792z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx253z1\,
	datab => \low_pass|prod_1__mults19_1|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z27\,
	combout => \low_pass|modgen_add_11|nx44952z1\,
	cout => \low_pass|modgen_add_11|nx2247z24\);

-- Location: LCCOMB_X25_Y19_N14
\low_pass|modgen_add_12|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx44952z1\ = (\low_pass|modgen_add_11|nx44952z1\ & ((\low_pass|prod_2__mults20_2|d_12_\ & (\low_pass|modgen_add_12|nx2247z27\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_12_\ & (!\low_pass|modgen_add_12|nx2247z27\)))) # 
-- (!\low_pass|modgen_add_11|nx44952z1\ & ((\low_pass|prod_2__mults20_2|d_12_\ & (!\low_pass|modgen_add_12|nx2247z27\)) # (!\low_pass|prod_2__mults20_2|d_12_\ & ((\low_pass|modgen_add_12|nx2247z27\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z24\ = CARRY((\low_pass|modgen_add_11|nx44952z1\ & (!\low_pass|prod_2__mults20_2|d_12_\ & !\low_pass|modgen_add_12|nx2247z27\)) # (!\low_pass|modgen_add_11|nx44952z1\ & ((!\low_pass|modgen_add_12|nx2247z27\) # 
-- (!\low_pass|prod_2__mults20_2|d_12_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx44952z1\,
	datab => \low_pass|prod_2__mults20_2|d_12_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z27\,
	combout => \low_pass|modgen_add_12|nx44952z1\,
	cout => \low_pass|modgen_add_12|nx2247z24\);

-- Location: LCCOMB_X24_Y17_N0
\low_pass|modgen_add_4|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx44952z1\ = (((\low_pass|modgen_add_4|nx2247z20\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z18\ = CARRY(\low_pass|prod_1__mults19_1|nx63795z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z20\,
	combout => \low_pass|modgen_add_4|nx44952z1\,
	cout => \low_pass|modgen_add_4|nx2247z18\);

-- Location: LCCOMB_X23_Y18_N26
\low_pass|prod_5__mults21_4|ix3244z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z5\ = \low_pass|prod_5__mults21_4|b_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_5__mults21_4|b_10_\,
	combout => \low_pass|prod_5__mults21_4|nx3244z5\);

-- Location: LCCOMB_X23_Y19_N14
\low_pass|modgen_add_9|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx44952z1\ = (\low_pass|modgen_add_4|nx44952z1\ & ((\low_pass|modgen_add_8|nx44952z1\ & (\low_pass|modgen_add_9|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_8|nx44952z1\ & (!\low_pass|modgen_add_9|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_4|nx44952z1\ & ((\low_pass|modgen_add_8|nx44952z1\ & (!\low_pass|modgen_add_9|nx2247z28\)) # (!\low_pass|modgen_add_8|nx44952z1\ & ((\low_pass|modgen_add_9|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z25\ = CARRY((\low_pass|modgen_add_4|nx44952z1\ & (!\low_pass|modgen_add_8|nx44952z1\ & !\low_pass|modgen_add_9|nx2247z28\)) # (!\low_pass|modgen_add_4|nx44952z1\ & ((!\low_pass|modgen_add_9|nx2247z28\) # 
-- (!\low_pass|modgen_add_8|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx44952z1\,
	datab => \low_pass|modgen_add_8|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z28\,
	combout => \low_pass|modgen_add_9|nx44952z1\,
	cout => \low_pass|modgen_add_9|nx2247z25\);

-- Location: LCCOMB_X27_Y18_N14
\low_pass|modgen_add_1|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx44952z1\ = (\low_pass_in_10_\ & ((\low_pass|prod_2__mults20_2|d_12_\ & (\low_pass|modgen_add_1|nx2247z23\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_12_\ & (!\low_pass|modgen_add_1|nx2247z23\)))) # (!\low_pass_in_10_\ & 
-- ((\low_pass|prod_2__mults20_2|d_12_\ & (!\low_pass|modgen_add_1|nx2247z23\)) # (!\low_pass|prod_2__mults20_2|d_12_\ & ((\low_pass|modgen_add_1|nx2247z23\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z20\ = CARRY((\low_pass_in_10_\ & (!\low_pass|prod_2__mults20_2|d_12_\ & !\low_pass|modgen_add_1|nx2247z23\)) # (!\low_pass_in_10_\ & ((!\low_pass|modgen_add_1|nx2247z23\) # (!\low_pass|prod_2__mults20_2|d_12_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_10_\,
	datab => \low_pass|prod_2__mults20_2|d_12_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z23\,
	combout => \low_pass|modgen_add_1|nx44952z1\,
	cout => \low_pass|modgen_add_1|nx2247z20\);

-- Location: LCCOMB_X28_Y18_N14
\low_pass|modgen_add_2|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx44952z1\ = (\low_pass|modgen_add_1|nx44952z1\ & ((\low_pass|modgen_add_0|nx44952z1\ & (\low_pass|modgen_add_2|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_0|nx44952z1\ & (!\low_pass|modgen_add_2|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_1|nx44952z1\ & ((\low_pass|modgen_add_0|nx44952z1\ & (!\low_pass|modgen_add_2|nx2247z28\)) # (!\low_pass|modgen_add_0|nx44952z1\ & ((\low_pass|modgen_add_2|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z25\ = CARRY((\low_pass|modgen_add_1|nx44952z1\ & (!\low_pass|modgen_add_0|nx44952z1\ & !\low_pass|modgen_add_2|nx2247z28\)) # (!\low_pass|modgen_add_1|nx44952z1\ & ((!\low_pass|modgen_add_2|nx2247z28\) # 
-- (!\low_pass|modgen_add_0|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_1|nx44952z1\,
	datab => \low_pass|modgen_add_0|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z28\,
	combout => \low_pass|modgen_add_2|nx44952z1\,
	cout => \low_pass|modgen_add_2|nx2247z25\);

-- Location: LCCOMB_X28_Y21_N14
\low_pass|modgen_add_6|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx44952z1\ = (\low_pass|modgen_add_2|nx44952z1\ & ((\low_pass|modgen_add_5|nx44952z1\ & (\low_pass|modgen_add_6|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_5|nx44952z1\ & (!\low_pass|modgen_add_6|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_2|nx44952z1\ & ((\low_pass|modgen_add_5|nx44952z1\ & (!\low_pass|modgen_add_6|nx2247z28\)) # (!\low_pass|modgen_add_5|nx44952z1\ & ((\low_pass|modgen_add_6|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z25\ = CARRY((\low_pass|modgen_add_2|nx44952z1\ & (!\low_pass|modgen_add_5|nx44952z1\ & !\low_pass|modgen_add_6|nx2247z28\)) # (!\low_pass|modgen_add_2|nx44952z1\ & ((!\low_pass|modgen_add_6|nx2247z28\) # 
-- (!\low_pass|modgen_add_5|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx44952z1\,
	datab => \low_pass|modgen_add_5|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z28\,
	combout => \low_pass|modgen_add_6|nx44952z1\,
	cout => \low_pass|modgen_add_6|nx2247z25\);

-- Location: M4K_X26_Y20
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"F37E70DADCF0C3AB8EAECA579D09598F189B85882780980080982785889B8F19599D0A57AECB11C3ACF0DADE70F370000C818F25230F3C54715135A862F6A670E7647A77D87F67FF7F67D87A776470E6A662F5A85134713C530F25218F0C8000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_sine_modgen_rom_ix21__ix62120z58996|altsyncram_0bk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 12,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 12,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y20_N4
ix58132z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_9_\ = (\sw~combout\(17) & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5)))) # (!\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9),
	datab => \sw~combout\(17),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5),
	combout => \audio_out_1n1ss1_9_\);

-- Location: LCCOMB_X29_Y19_N16
\low_pass|modgen_add_10|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx45949z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_4__mults20_3|nx253z1\ $ (!\low_pass|modgen_add_10|nx2247z20\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z17\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx253z1\) # (!\low_pass|modgen_add_10|nx2247z20\))) # (!\low_pass_in_15_\ & (\low_pass|prod_4__mults20_3|nx253z1\ & !\low_pass|modgen_add_10|nx2247z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z20\,
	combout => \low_pass|modgen_add_10|nx45949z1\,
	cout => \low_pass|modgen_add_10|nx2247z17\);

-- Location: LCCOMB_X24_Y20_N22
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx1250z1\ = (((\low_pass|prod_0__mults21_0|nx5238z10\))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z8\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z10\,
	combout => \low_pass|prod_0__mults21_0|nx1250z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z8\);

-- Location: LCCOMB_X24_Y20_N24
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx2247z1\ = (((\low_pass|prod_0__mults21_0|nx5238z8\))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z8\,
	combout => \low_pass|prod_0__mults21_0|nx2247z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z6\);

-- Location: LCCOMB_X24_Y19_N16
\low_pass|modgen_add_11|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx45949z1\ = ((\low_pass|prod_1__mults19_1|nx253z1\ $ (\low_pass|prod_0__mults21_0|nx1250z1\ $ (!\low_pass|modgen_add_11|nx2247z24\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z21\ = CARRY((\low_pass|prod_1__mults19_1|nx253z1\ & ((\low_pass|prod_0__mults21_0|nx1250z1\) # (!\low_pass|modgen_add_11|nx2247z24\))) # (!\low_pass|prod_1__mults19_1|nx253z1\ & (\low_pass|prod_0__mults21_0|nx1250z1\ & 
-- !\low_pass|modgen_add_11|nx2247z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx253z1\,
	datab => \low_pass|prod_0__mults21_0|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z24\,
	combout => \low_pass|modgen_add_11|nx45949z1\,
	cout => \low_pass|modgen_add_11|nx2247z21\);

-- Location: LCCOMB_X24_Y19_N18
\low_pass|modgen_add_11|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx46946z1\ = (\low_pass|prod_0__mults21_0|nx2247z1\ & ((\low_pass|prod_1__mults19_1|nx1250z1\ & (\low_pass|modgen_add_11|nx2247z21\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx1250z1\ & (!\low_pass|modgen_add_11|nx2247z21\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx2247z1\ & ((\low_pass|prod_1__mults19_1|nx1250z1\ & (!\low_pass|modgen_add_11|nx2247z21\)) # (!\low_pass|prod_1__mults19_1|nx1250z1\ & ((\low_pass|modgen_add_11|nx2247z21\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z18\ = CARRY((\low_pass|prod_0__mults21_0|nx2247z1\ & (!\low_pass|prod_1__mults19_1|nx1250z1\ & !\low_pass|modgen_add_11|nx2247z21\)) # (!\low_pass|prod_0__mults21_0|nx2247z1\ & ((!\low_pass|modgen_add_11|nx2247z21\) # 
-- (!\low_pass|prod_1__mults19_1|nx1250z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx2247z1\,
	datab => \low_pass|prod_1__mults19_1|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z21\,
	combout => \low_pass|modgen_add_11|nx46946z1\,
	cout => \low_pass|modgen_add_11|nx2247z18\);

-- Location: LCCOMB_X25_Y19_N16
\low_pass|modgen_add_12|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx45949z1\ = ((\low_pass|prod_2__mults20_2|d_13_\ $ (\low_pass|modgen_add_11|nx45949z1\ $ (!\low_pass|modgen_add_12|nx2247z24\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z21\ = CARRY((\low_pass|prod_2__mults20_2|d_13_\ & ((\low_pass|modgen_add_11|nx45949z1\) # (!\low_pass|modgen_add_12|nx2247z24\))) # (!\low_pass|prod_2__mults20_2|d_13_\ & (\low_pass|modgen_add_11|nx45949z1\ & 
-- !\low_pass|modgen_add_12|nx2247z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_13_\,
	datab => \low_pass|modgen_add_11|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z24\,
	combout => \low_pass|modgen_add_12|nx45949z1\,
	cout => \low_pass|modgen_add_12|nx2247z21\);

-- Location: LCCOMB_X25_Y19_N18
\low_pass|modgen_add_12|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx46946z1\ = (\low_pass|prod_2__mults20_2|d_14_\ & ((\low_pass|modgen_add_11|nx46946z1\ & (\low_pass|modgen_add_12|nx2247z21\ & VCC)) # (!\low_pass|modgen_add_11|nx46946z1\ & (!\low_pass|modgen_add_12|nx2247z21\)))) # 
-- (!\low_pass|prod_2__mults20_2|d_14_\ & ((\low_pass|modgen_add_11|nx46946z1\ & (!\low_pass|modgen_add_12|nx2247z21\)) # (!\low_pass|modgen_add_11|nx46946z1\ & ((\low_pass|modgen_add_12|nx2247z21\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z18\ = CARRY((\low_pass|prod_2__mults20_2|d_14_\ & (!\low_pass|modgen_add_11|nx46946z1\ & !\low_pass|modgen_add_12|nx2247z21\)) # (!\low_pass|prod_2__mults20_2|d_14_\ & ((!\low_pass|modgen_add_12|nx2247z21\) # 
-- (!\low_pass|modgen_add_11|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_14_\,
	datab => \low_pass|modgen_add_11|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z21\,
	combout => \low_pass|modgen_add_12|nx46946z1\,
	cout => \low_pass|modgen_add_12|nx2247z18\);

-- Location: LCCOMB_X22_Y18_N24
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_12_\ = (((\low_pass|prod_5__mults21_4|nx3244z3\))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z2\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z3\,
	combout => \low_pass|prod_5__mults21_4|d_12_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z2\);

-- Location: LCCOMB_X22_Y19_N2
\low_pass|modgen_add_8|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx45949z1\ = (\low_pass|prod_1__mults19_1|nx64792z1\ & ((\low_pass|prod_5__mults21_4|d_11__dup_185\ & (\low_pass|modgen_add_8|nx2247z25\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_11__dup_185\ & 
-- (!\low_pass|modgen_add_8|nx2247z25\)))) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & ((\low_pass|prod_5__mults21_4|d_11__dup_185\ & (!\low_pass|modgen_add_8|nx2247z25\)) # (!\low_pass|prod_5__mults21_4|d_11__dup_185\ & ((\low_pass|modgen_add_8|nx2247z25\) 
-- # (GND)))))
-- \low_pass|modgen_add_8|nx2247z22\ = CARRY((\low_pass|prod_1__mults19_1|nx64792z1\ & (!\low_pass|prod_5__mults21_4|d_11__dup_185\ & !\low_pass|modgen_add_8|nx2247z25\)) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & ((!\low_pass|modgen_add_8|nx2247z25\) # 
-- (!\low_pass|prod_5__mults21_4|d_11__dup_185\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx64792z1\,
	datab => \low_pass|prod_5__mults21_4|d_11__dup_185\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z25\,
	combout => \low_pass|modgen_add_8|nx45949z1\,
	cout => \low_pass|modgen_add_8|nx2247z22\);

-- Location: LCCOMB_X22_Y19_N4
\low_pass|modgen_add_8|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx46946z1\ = ((\low_pass|prod_5__mults21_4|d_12_\ $ (\low_pass|prod_1__mults19_1|nx253z1\ $ (!\low_pass|modgen_add_8|nx2247z22\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z19\ = CARRY((\low_pass|prod_5__mults21_4|d_12_\ & ((\low_pass|prod_1__mults19_1|nx253z1\) # (!\low_pass|modgen_add_8|nx2247z22\))) # (!\low_pass|prod_5__mults21_4|d_12_\ & (\low_pass|prod_1__mults19_1|nx253z1\ & 
-- !\low_pass|modgen_add_8|nx2247z22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_12_\,
	datab => \low_pass|prod_1__mults19_1|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z22\,
	combout => \low_pass|modgen_add_8|nx46946z1\,
	cout => \low_pass|modgen_add_8|nx2247z19\);

-- Location: LCCOMB_X23_Y19_N16
\low_pass|modgen_add_9|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx45949z1\ = ((\low_pass|modgen_add_8|nx45949z1\ $ (\low_pass|modgen_add_4|nx45949z1\ $ (!\low_pass|modgen_add_9|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z22\ = CARRY((\low_pass|modgen_add_8|nx45949z1\ & ((\low_pass|modgen_add_4|nx45949z1\) # (!\low_pass|modgen_add_9|nx2247z25\))) # (!\low_pass|modgen_add_8|nx45949z1\ & (\low_pass|modgen_add_4|nx45949z1\ & 
-- !\low_pass|modgen_add_9|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx45949z1\,
	datab => \low_pass|modgen_add_4|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z25\,
	combout => \low_pass|modgen_add_9|nx45949z1\,
	cout => \low_pass|modgen_add_9|nx2247z22\);

-- Location: LCCOMB_X23_Y19_N18
\low_pass|modgen_add_9|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx46946z1\ = (\low_pass|modgen_add_4|nx46946z1\ & ((\low_pass|modgen_add_8|nx46946z1\ & (\low_pass|modgen_add_9|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_8|nx46946z1\ & (!\low_pass|modgen_add_9|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_4|nx46946z1\ & ((\low_pass|modgen_add_8|nx46946z1\ & (!\low_pass|modgen_add_9|nx2247z22\)) # (!\low_pass|modgen_add_8|nx46946z1\ & ((\low_pass|modgen_add_9|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z19\ = CARRY((\low_pass|modgen_add_4|nx46946z1\ & (!\low_pass|modgen_add_8|nx46946z1\ & !\low_pass|modgen_add_9|nx2247z22\)) # (!\low_pass|modgen_add_4|nx46946z1\ & ((!\low_pass|modgen_add_9|nx2247z22\) # 
-- (!\low_pass|modgen_add_8|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx46946z1\,
	datab => \low_pass|modgen_add_8|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z22\,
	combout => \low_pass|modgen_add_9|nx46946z1\,
	cout => \low_pass|modgen_add_9|nx2247z19\);

-- Location: LCCOMB_X27_Y19_N16
\low_pass|modgen_add_14|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx45949z1\ = ((\low_pass|modgen_add_9|nx45949z1\ $ (\low_pass|modgen_add_13|nx45949z1\ $ (!\low_pass|modgen_add_14|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z22\ = CARRY((\low_pass|modgen_add_9|nx45949z1\ & ((\low_pass|modgen_add_13|nx45949z1\) # (!\low_pass|modgen_add_14|nx2247z25\))) # (!\low_pass|modgen_add_9|nx45949z1\ & (\low_pass|modgen_add_13|nx45949z1\ & 
-- !\low_pass|modgen_add_14|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx45949z1\,
	datab => \low_pass|modgen_add_13|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z25\,
	combout => \low_pass|modgen_add_14|nx45949z1\,
	cout => \low_pass|modgen_add_14|nx2247z22\);

-- Location: LCCOMB_X29_Y18_N18
\low_pass|modgen_add_3|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx46946z1\ = (\low_pass|prod_5__mults21_4|d_12_\ & ((\low_pass|prod_4__mults20_3|nx1250z1\ & (\low_pass|modgen_add_3|nx2247z22\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx1250z1\ & (!\low_pass|modgen_add_3|nx2247z22\)))) # 
-- (!\low_pass|prod_5__mults21_4|d_12_\ & ((\low_pass|prod_4__mults20_3|nx1250z1\ & (!\low_pass|modgen_add_3|nx2247z22\)) # (!\low_pass|prod_4__mults20_3|nx1250z1\ & ((\low_pass|modgen_add_3|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z19\ = CARRY((\low_pass|prod_5__mults21_4|d_12_\ & (!\low_pass|prod_4__mults20_3|nx1250z1\ & !\low_pass|modgen_add_3|nx2247z22\)) # (!\low_pass|prod_5__mults21_4|d_12_\ & ((!\low_pass|modgen_add_3|nx2247z22\) # 
-- (!\low_pass|prod_4__mults20_3|nx1250z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_12_\,
	datab => \low_pass|prod_4__mults20_3|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z22\,
	combout => \low_pass|modgen_add_3|nx46946z1\,
	cout => \low_pass|modgen_add_3|nx2247z19\);

-- Location: LCCOMB_X29_Y21_N16
\low_pass|modgen_add_5|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx45949z1\ = ((\low_pass|modgen_add_4|nx45949z1\ $ (\low_pass|modgen_add_3|nx45949z1\ $ (!\low_pass|modgen_add_5|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z22\ = CARRY((\low_pass|modgen_add_4|nx45949z1\ & ((\low_pass|modgen_add_3|nx45949z1\) # (!\low_pass|modgen_add_5|nx2247z25\))) # (!\low_pass|modgen_add_4|nx45949z1\ & (\low_pass|modgen_add_3|nx45949z1\ & 
-- !\low_pass|modgen_add_5|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx45949z1\,
	datab => \low_pass|modgen_add_3|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z25\,
	combout => \low_pass|modgen_add_5|nx45949z1\,
	cout => \low_pass|modgen_add_5|nx2247z22\);

-- Location: LCCOMB_X25_Y20_N16
\low_pass|modgen_add_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx45949z1\ = ((\low_pass|prod_1__mults19_1|nx253z1\ $ (\low_pass|prod_0__mults21_0|nx1250z1\ $ (!\low_pass|modgen_add_0|nx2247z24\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z21\ = CARRY((\low_pass|prod_1__mults19_1|nx253z1\ & ((\low_pass|prod_0__mults21_0|nx1250z1\) # (!\low_pass|modgen_add_0|nx2247z24\))) # (!\low_pass|prod_1__mults19_1|nx253z1\ & (\low_pass|prod_0__mults21_0|nx1250z1\ & 
-- !\low_pass|modgen_add_0|nx2247z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx253z1\,
	datab => \low_pass|prod_0__mults21_0|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z24\,
	combout => \low_pass|modgen_add_0|nx45949z1\,
	cout => \low_pass|modgen_add_0|nx2247z21\);

-- Location: LCCOMB_X25_Y20_N18
\low_pass|modgen_add_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx46946z1\ = (\low_pass|prod_0__mults21_0|nx2247z1\ & ((\low_pass|prod_1__mults19_1|nx1250z1\ & (\low_pass|modgen_add_0|nx2247z21\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx1250z1\ & (!\low_pass|modgen_add_0|nx2247z21\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx2247z1\ & ((\low_pass|prod_1__mults19_1|nx1250z1\ & (!\low_pass|modgen_add_0|nx2247z21\)) # (!\low_pass|prod_1__mults19_1|nx1250z1\ & ((\low_pass|modgen_add_0|nx2247z21\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z18\ = CARRY((\low_pass|prod_0__mults21_0|nx2247z1\ & (!\low_pass|prod_1__mults19_1|nx1250z1\ & !\low_pass|modgen_add_0|nx2247z21\)) # (!\low_pass|prod_0__mults21_0|nx2247z1\ & ((!\low_pass|modgen_add_0|nx2247z21\) # 
-- (!\low_pass|prod_1__mults19_1|nx1250z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx2247z1\,
	datab => \low_pass|prod_1__mults19_1|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z21\,
	combout => \low_pass|modgen_add_0|nx46946z1\,
	cout => \low_pass|modgen_add_0|nx2247z18\);

-- Location: LCCOMB_X27_Y18_N16
\low_pass|modgen_add_1|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx45949z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_2__mults20_2|d_13_\ $ (!\low_pass|modgen_add_1|nx2247z20\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z17\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_2__mults20_2|d_13_\) # (!\low_pass|modgen_add_1|nx2247z20\))) # (!\low_pass_in_15_\ & (\low_pass|prod_2__mults20_2|d_13_\ & !\low_pass|modgen_add_1|nx2247z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_2__mults20_2|d_13_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z20\,
	combout => \low_pass|modgen_add_1|nx45949z1\,
	cout => \low_pass|modgen_add_1|nx2247z17\);

-- Location: LCCOMB_X28_Y18_N18
\low_pass|modgen_add_2|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx46946z1\ = (\low_pass|modgen_add_0|nx46946z1\ & ((\low_pass|modgen_add_1|nx46946z1\ & (\low_pass|modgen_add_2|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_1|nx46946z1\ & (!\low_pass|modgen_add_2|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_0|nx46946z1\ & ((\low_pass|modgen_add_1|nx46946z1\ & (!\low_pass|modgen_add_2|nx2247z22\)) # (!\low_pass|modgen_add_1|nx46946z1\ & ((\low_pass|modgen_add_2|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z19\ = CARRY((\low_pass|modgen_add_0|nx46946z1\ & (!\low_pass|modgen_add_1|nx46946z1\ & !\low_pass|modgen_add_2|nx2247z22\)) # (!\low_pass|modgen_add_0|nx46946z1\ & ((!\low_pass|modgen_add_2|nx2247z22\) # 
-- (!\low_pass|modgen_add_1|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx46946z1\,
	datab => \low_pass|modgen_add_1|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z22\,
	combout => \low_pass|modgen_add_2|nx46946z1\,
	cout => \low_pass|modgen_add_2|nx2247z19\);

-- Location: LCCOMB_X28_Y21_N18
\low_pass|modgen_add_6|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx46946z1\ = (\low_pass|modgen_add_2|nx46946z1\ & ((\low_pass|modgen_add_5|nx46946z1\ & (\low_pass|modgen_add_6|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_5|nx46946z1\ & (!\low_pass|modgen_add_6|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_2|nx46946z1\ & ((\low_pass|modgen_add_5|nx46946z1\ & (!\low_pass|modgen_add_6|nx2247z22\)) # (!\low_pass|modgen_add_5|nx46946z1\ & ((\low_pass|modgen_add_6|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z19\ = CARRY((\low_pass|modgen_add_2|nx46946z1\ & (!\low_pass|modgen_add_5|nx46946z1\ & !\low_pass|modgen_add_6|nx2247z22\)) # (!\low_pass|modgen_add_2|nx46946z1\ & ((!\low_pass|modgen_add_6|nx2247z22\) # 
-- (!\low_pass|modgen_add_5|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx46946z1\,
	datab => \low_pass|modgen_add_5|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z22\,
	combout => \low_pass|modgen_add_6|nx46946z1\,
	cout => \low_pass|modgen_add_6|nx2247z19\);

-- Location: LCCOMB_X27_Y21_N18
\low_pass|modgen_add_15|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx46946z1\ = (\low_pass|modgen_add_6|nx46946z1\ & ((\low_pass|modgen_add_14|nx46946z1\ & (\low_pass|modgen_add_15|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_14|nx46946z1\ & (!\low_pass|modgen_add_15|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_6|nx46946z1\ & ((\low_pass|modgen_add_14|nx46946z1\ & (!\low_pass|modgen_add_15|nx2247z22\)) # (!\low_pass|modgen_add_14|nx46946z1\ & ((\low_pass|modgen_add_15|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z19\ = CARRY((\low_pass|modgen_add_6|nx46946z1\ & (!\low_pass|modgen_add_14|nx46946z1\ & !\low_pass|modgen_add_15|nx2247z22\)) # (!\low_pass|modgen_add_6|nx46946z1\ & ((!\low_pass|modgen_add_15|nx2247z22\) # 
-- (!\low_pass|modgen_add_14|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx46946z1\,
	datab => \low_pass|modgen_add_14|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z22\,
	combout => \low_pass|modgen_add_15|nx46946z1\,
	cout => \low_pass|modgen_add_15|nx2247z19\);

-- Location: LCCOMB_X24_Y20_N26
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx3244z1\ = (((\low_pass|prod_0__mults21_0|nx5238z6\))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z6\,
	combout => \low_pass|prod_0__mults21_0|nx3244z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z4\);

-- Location: LCCOMB_X23_Y20_N28
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx2247z1\ = (((\low_pass|prod_1__mults19_1|nx3244z4\))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z2\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z4\,
	combout => \low_pass|prod_1__mults19_1|nx2247z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z2\);

-- Location: LCCOMB_X24_Y19_N20
\low_pass|modgen_add_11|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx62798z1\ = ((\low_pass|prod_1__mults19_1|nx2247z1\ $ (\low_pass|prod_0__mults21_0|nx3244z1\ $ (!\low_pass|modgen_add_11|nx2247z18\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z15\ = CARRY((\low_pass|prod_1__mults19_1|nx2247z1\ & ((\low_pass|prod_0__mults21_0|nx3244z1\) # (!\low_pass|modgen_add_11|nx2247z18\))) # (!\low_pass|prod_1__mults19_1|nx2247z1\ & (\low_pass|prod_0__mults21_0|nx3244z1\ & 
-- !\low_pass|modgen_add_11|nx2247z18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx2247z1\,
	datab => \low_pass|prod_0__mults21_0|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z18\,
	combout => \low_pass|modgen_add_11|nx62798z1\,
	cout => \low_pass|modgen_add_11|nx2247z15\);

-- Location: LCCOMB_X25_Y19_N20
\low_pass|modgen_add_12|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx62798z1\ = ((\low_pass|modgen_add_11|nx62798z1\ $ (\low_pass|prod_2__mults20_2|d_15_\ $ (!\low_pass|modgen_add_12|nx2247z18\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z15\ = CARRY((\low_pass|modgen_add_11|nx62798z1\ & ((\low_pass|prod_2__mults20_2|d_15_\) # (!\low_pass|modgen_add_12|nx2247z18\))) # (!\low_pass|modgen_add_11|nx62798z1\ & (\low_pass|prod_2__mults20_2|d_15_\ & 
-- !\low_pass|modgen_add_12|nx2247z18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx62798z1\,
	datab => \low_pass|prod_2__mults20_2|d_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z18\,
	combout => \low_pass|modgen_add_12|nx62798z1\,
	cout => \low_pass|modgen_add_12|nx2247z15\);

-- Location: LCCOMB_X28_Y19_N20
\low_pass|modgen_add_13|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx62798z1\ = ((\low_pass|modgen_add_12|nx62798z1\ $ (\low_pass|modgen_add_10|nx62798z1\ $ (!\low_pass|modgen_add_13|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z16\ = CARRY((\low_pass|modgen_add_12|nx62798z1\ & ((\low_pass|modgen_add_10|nx62798z1\) # (!\low_pass|modgen_add_13|nx2247z19\))) # (!\low_pass|modgen_add_12|nx62798z1\ & (\low_pass|modgen_add_10|nx62798z1\ & 
-- !\low_pass|modgen_add_13|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx62798z1\,
	datab => \low_pass|modgen_add_10|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z19\,
	combout => \low_pass|modgen_add_13|nx62798z1\,
	cout => \low_pass|modgen_add_13|nx2247z16\);

-- Location: LCCOMB_X22_Y19_N6
\low_pass|modgen_add_8|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx62798z1\ = (\low_pass|prod_1__mults19_1|nx1250z1\ & ((\low_pass|prod_5__mults21_4|nx3244z1\ & (\low_pass|modgen_add_8|nx2247z19\ & VCC)) # (!\low_pass|prod_5__mults21_4|nx3244z1\ & (!\low_pass|modgen_add_8|nx2247z19\)))) # 
-- (!\low_pass|prod_1__mults19_1|nx1250z1\ & ((\low_pass|prod_5__mults21_4|nx3244z1\ & (!\low_pass|modgen_add_8|nx2247z19\)) # (!\low_pass|prod_5__mults21_4|nx3244z1\ & ((\low_pass|modgen_add_8|nx2247z19\) # (GND)))))
-- \low_pass|modgen_add_8|nx2247z16\ = CARRY((\low_pass|prod_1__mults19_1|nx1250z1\ & (!\low_pass|prod_5__mults21_4|nx3244z1\ & !\low_pass|modgen_add_8|nx2247z19\)) # (!\low_pass|prod_1__mults19_1|nx1250z1\ & ((!\low_pass|modgen_add_8|nx2247z19\) # 
-- (!\low_pass|prod_5__mults21_4|nx3244z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx1250z1\,
	datab => \low_pass|prod_5__mults21_4|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z19\,
	combout => \low_pass|modgen_add_8|nx62798z1\,
	cout => \low_pass|modgen_add_8|nx2247z16\);

-- Location: LCCOMB_X27_Y19_N20
\low_pass|modgen_add_14|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx62798z1\ = ((\low_pass|modgen_add_13|nx62798z1\ $ (\low_pass|modgen_add_9|nx62798z1\ $ (!\low_pass|modgen_add_14|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z16\ = CARRY((\low_pass|modgen_add_13|nx62798z1\ & ((\low_pass|modgen_add_9|nx62798z1\) # (!\low_pass|modgen_add_14|nx2247z19\))) # (!\low_pass|modgen_add_13|nx62798z1\ & (\low_pass|modgen_add_9|nx62798z1\ & 
-- !\low_pass|modgen_add_14|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx62798z1\,
	datab => \low_pass|modgen_add_9|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z19\,
	combout => \low_pass|modgen_add_14|nx62798z1\,
	cout => \low_pass|modgen_add_14|nx2247z16\);

-- Location: LCCOMB_X29_Y18_N20
\low_pass|modgen_add_3|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx62798z1\ = ((\low_pass|prod_4__mults20_3|nx2247z1\ $ (\low_pass|prod_5__mults21_4|nx3244z1\ $ (!\low_pass|modgen_add_3|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z16\ = CARRY((\low_pass|prod_4__mults20_3|nx2247z1\ & ((\low_pass|prod_5__mults21_4|nx3244z1\) # (!\low_pass|modgen_add_3|nx2247z19\))) # (!\low_pass|prod_4__mults20_3|nx2247z1\ & (\low_pass|prod_5__mults21_4|nx3244z1\ & 
-- !\low_pass|modgen_add_3|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx2247z1\,
	datab => \low_pass|prod_5__mults21_4|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z19\,
	combout => \low_pass|modgen_add_3|nx62798z1\,
	cout => \low_pass|modgen_add_3|nx2247z16\);

-- Location: LCCOMB_X25_Y20_N20
\low_pass|modgen_add_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx62798z1\ = ((\low_pass|prod_1__mults19_1|nx2247z1\ $ (\low_pass|prod_0__mults21_0|nx3244z1\ $ (!\low_pass|modgen_add_0|nx2247z18\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z15\ = CARRY((\low_pass|prod_1__mults19_1|nx2247z1\ & ((\low_pass|prod_0__mults21_0|nx3244z1\) # (!\low_pass|modgen_add_0|nx2247z18\))) # (!\low_pass|prod_1__mults19_1|nx2247z1\ & (\low_pass|prod_0__mults21_0|nx3244z1\ & 
-- !\low_pass|modgen_add_0|nx2247z18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx2247z1\,
	datab => \low_pass|prod_0__mults21_0|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z18\,
	combout => \low_pass|modgen_add_0|nx62798z1\,
	cout => \low_pass|modgen_add_0|nx2247z15\);

-- Location: LCCOMB_X28_Y18_N20
\low_pass|modgen_add_2|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx62798z1\ = ((\low_pass|modgen_add_0|nx62798z1\ $ (\low_pass|modgen_add_1|nx62798z1\ $ (!\low_pass|modgen_add_2|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z16\ = CARRY((\low_pass|modgen_add_0|nx62798z1\ & ((\low_pass|modgen_add_1|nx62798z1\) # (!\low_pass|modgen_add_2|nx2247z19\))) # (!\low_pass|modgen_add_0|nx62798z1\ & (\low_pass|modgen_add_1|nx62798z1\ & 
-- !\low_pass|modgen_add_2|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx62798z1\,
	datab => \low_pass|modgen_add_1|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z19\,
	combout => \low_pass|modgen_add_2|nx62798z1\,
	cout => \low_pass|modgen_add_2|nx2247z16\);

-- Location: LCCOMB_X25_Y17_N14
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_16_\ = \low_pass|prod_2__mults20_2|nx6235z3\
-- \low_pass|prod_2__mults20_2|nx6235z2\ = CARRY(\low_pass|prod_2__mults20_2|nx6235z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_2__mults20_2|nx6235z3\,
	combout => \low_pass|prod_2__mults20_2|d_16_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z2\);

-- Location: LCCOMB_X24_Y20_N28
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx4241z1\ = (((\low_pass|prod_0__mults21_0|nx5238z4\))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z2\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z4\,
	combout => \low_pass|prod_0__mults21_0|nx4241z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z2\);

-- Location: LCCOMB_X24_Y19_N22
\low_pass|modgen_add_11|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx63795z1\ = (\low_pass|prod_1__mults19_1|nx3244z1\ & ((\low_pass|prod_0__mults21_0|nx4241z1\ & (\low_pass|modgen_add_11|nx2247z15\ & VCC)) # (!\low_pass|prod_0__mults21_0|nx4241z1\ & (!\low_pass|modgen_add_11|nx2247z15\)))) # 
-- (!\low_pass|prod_1__mults19_1|nx3244z1\ & ((\low_pass|prod_0__mults21_0|nx4241z1\ & (!\low_pass|modgen_add_11|nx2247z15\)) # (!\low_pass|prod_0__mults21_0|nx4241z1\ & ((\low_pass|modgen_add_11|nx2247z15\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z12\ = CARRY((\low_pass|prod_1__mults19_1|nx3244z1\ & (!\low_pass|prod_0__mults21_0|nx4241z1\ & !\low_pass|modgen_add_11|nx2247z15\)) # (!\low_pass|prod_1__mults19_1|nx3244z1\ & ((!\low_pass|modgen_add_11|nx2247z15\) # 
-- (!\low_pass|prod_0__mults21_0|nx4241z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx3244z1\,
	datab => \low_pass|prod_0__mults21_0|nx4241z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z15\,
	combout => \low_pass|modgen_add_11|nx63795z1\,
	cout => \low_pass|modgen_add_11|nx2247z12\);

-- Location: LCCOMB_X25_Y19_N22
\low_pass|modgen_add_12|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx63795z1\ = (\low_pass|prod_2__mults20_2|d_16_\ & ((\low_pass|modgen_add_11|nx63795z1\ & (\low_pass|modgen_add_12|nx2247z15\ & VCC)) # (!\low_pass|modgen_add_11|nx63795z1\ & (!\low_pass|modgen_add_12|nx2247z15\)))) # 
-- (!\low_pass|prod_2__mults20_2|d_16_\ & ((\low_pass|modgen_add_11|nx63795z1\ & (!\low_pass|modgen_add_12|nx2247z15\)) # (!\low_pass|modgen_add_11|nx63795z1\ & ((\low_pass|modgen_add_12|nx2247z15\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z12\ = CARRY((\low_pass|prod_2__mults20_2|d_16_\ & (!\low_pass|modgen_add_11|nx63795z1\ & !\low_pass|modgen_add_12|nx2247z15\)) # (!\low_pass|prod_2__mults20_2|d_16_\ & ((!\low_pass|modgen_add_12|nx2247z15\) # 
-- (!\low_pass|modgen_add_11|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_16_\,
	datab => \low_pass|modgen_add_11|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z15\,
	combout => \low_pass|modgen_add_12|nx63795z1\,
	cout => \low_pass|modgen_add_12|nx2247z12\);

-- Location: LCCOMB_X28_Y19_N22
\low_pass|modgen_add_13|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx63795z1\ = (\low_pass|modgen_add_12|nx63795z1\ & ((\low_pass|modgen_add_10|nx63795z1\ & (\low_pass|modgen_add_13|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_10|nx63795z1\ & (!\low_pass|modgen_add_13|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_12|nx63795z1\ & ((\low_pass|modgen_add_10|nx63795z1\ & (!\low_pass|modgen_add_13|nx2247z16\)) # (!\low_pass|modgen_add_10|nx63795z1\ & ((\low_pass|modgen_add_13|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z13\ = CARRY((\low_pass|modgen_add_12|nx63795z1\ & (!\low_pass|modgen_add_10|nx63795z1\ & !\low_pass|modgen_add_13|nx2247z16\)) # (!\low_pass|modgen_add_12|nx63795z1\ & ((!\low_pass|modgen_add_13|nx2247z16\) # 
-- (!\low_pass|modgen_add_10|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx63795z1\,
	datab => \low_pass|modgen_add_10|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z16\,
	combout => \low_pass|modgen_add_13|nx63795z1\,
	cout => \low_pass|modgen_add_13|nx2247z13\);

-- Location: LCCOMB_X22_Y19_N8
\low_pass|modgen_add_8|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx63795z1\ = ((\low_pass|prod_1__mults19_1|nx2247z1\ $ (\low_pass_in_15_\ $ (!\low_pass|modgen_add_8|nx2247z16\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z13\ = CARRY((\low_pass|prod_1__mults19_1|nx2247z1\ & ((\low_pass_in_15_\) # (!\low_pass|modgen_add_8|nx2247z16\))) # (!\low_pass|prod_1__mults19_1|nx2247z1\ & (\low_pass_in_15_\ & !\low_pass|modgen_add_8|nx2247z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx2247z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z16\,
	combout => \low_pass|modgen_add_8|nx63795z1\,
	cout => \low_pass|modgen_add_8|nx2247z13\);

-- Location: LCCOMB_X25_Y20_N22
\low_pass|modgen_add_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx63795z1\ = (\low_pass|prod_1__mults19_1|nx3244z1\ & ((\low_pass|prod_0__mults21_0|nx4241z1\ & (\low_pass|modgen_add_0|nx2247z15\ & VCC)) # (!\low_pass|prod_0__mults21_0|nx4241z1\ & (!\low_pass|modgen_add_0|nx2247z15\)))) # 
-- (!\low_pass|prod_1__mults19_1|nx3244z1\ & ((\low_pass|prod_0__mults21_0|nx4241z1\ & (!\low_pass|modgen_add_0|nx2247z15\)) # (!\low_pass|prod_0__mults21_0|nx4241z1\ & ((\low_pass|modgen_add_0|nx2247z15\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z12\ = CARRY((\low_pass|prod_1__mults19_1|nx3244z1\ & (!\low_pass|prod_0__mults21_0|nx4241z1\ & !\low_pass|modgen_add_0|nx2247z15\)) # (!\low_pass|prod_1__mults19_1|nx3244z1\ & ((!\low_pass|modgen_add_0|nx2247z15\) # 
-- (!\low_pass|prod_0__mults21_0|nx4241z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx3244z1\,
	datab => \low_pass|prod_0__mults21_0|nx4241z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z15\,
	combout => \low_pass|modgen_add_0|nx63795z1\,
	cout => \low_pass|modgen_add_0|nx2247z12\);

-- Location: LCCOMB_X28_Y18_N22
\low_pass|modgen_add_2|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx63795z1\ = (\low_pass|modgen_add_0|nx63795z1\ & ((\low_pass|modgen_add_1|nx63795z1\ & (\low_pass|modgen_add_2|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_1|nx63795z1\ & (!\low_pass|modgen_add_2|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_0|nx63795z1\ & ((\low_pass|modgen_add_1|nx63795z1\ & (!\low_pass|modgen_add_2|nx2247z16\)) # (!\low_pass|modgen_add_1|nx63795z1\ & ((\low_pass|modgen_add_2|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z13\ = CARRY((\low_pass|modgen_add_0|nx63795z1\ & (!\low_pass|modgen_add_1|nx63795z1\ & !\low_pass|modgen_add_2|nx2247z16\)) # (!\low_pass|modgen_add_0|nx63795z1\ & ((!\low_pass|modgen_add_2|nx2247z16\) # 
-- (!\low_pass|modgen_add_1|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx63795z1\,
	datab => \low_pass|modgen_add_1|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z16\,
	combout => \low_pass|modgen_add_2|nx63795z1\,
	cout => \low_pass|modgen_add_2|nx2247z13\);

-- Location: LCCOMB_X28_Y21_N22
\low_pass|modgen_add_6|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx63795z1\ = (\low_pass|modgen_add_2|nx63795z1\ & ((\low_pass|modgen_add_5|nx63795z1\ & (\low_pass|modgen_add_6|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_5|nx63795z1\ & (!\low_pass|modgen_add_6|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_2|nx63795z1\ & ((\low_pass|modgen_add_5|nx63795z1\ & (!\low_pass|modgen_add_6|nx2247z16\)) # (!\low_pass|modgen_add_5|nx63795z1\ & ((\low_pass|modgen_add_6|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z13\ = CARRY((\low_pass|modgen_add_2|nx63795z1\ & (!\low_pass|modgen_add_5|nx63795z1\ & !\low_pass|modgen_add_6|nx2247z16\)) # (!\low_pass|modgen_add_2|nx63795z1\ & ((!\low_pass|modgen_add_6|nx2247z16\) # 
-- (!\low_pass|modgen_add_5|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx63795z1\,
	datab => \low_pass|modgen_add_5|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z16\,
	combout => \low_pass|modgen_add_6|nx63795z1\,
	cout => \low_pass|modgen_add_6|nx2247z13\);

-- Location: LCCOMB_X27_Y21_N22
\low_pass|modgen_add_15|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx63795z1\ = (\low_pass|modgen_add_6|nx63795z1\ & ((\low_pass|modgen_add_14|nx63795z1\ & (\low_pass|modgen_add_15|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_14|nx63795z1\ & (!\low_pass|modgen_add_15|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_6|nx63795z1\ & ((\low_pass|modgen_add_14|nx63795z1\ & (!\low_pass|modgen_add_15|nx2247z16\)) # (!\low_pass|modgen_add_14|nx63795z1\ & ((\low_pass|modgen_add_15|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z13\ = CARRY((\low_pass|modgen_add_6|nx63795z1\ & (!\low_pass|modgen_add_14|nx63795z1\ & !\low_pass|modgen_add_15|nx2247z16\)) # (!\low_pass|modgen_add_6|nx63795z1\ & ((!\low_pass|modgen_add_15|nx2247z16\) # 
-- (!\low_pass|modgen_add_14|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx63795z1\,
	datab => \low_pass|modgen_add_14|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z16\,
	combout => \low_pass|modgen_add_15|nx63795z1\,
	cout => \low_pass|modgen_add_15|nx2247z13\);

-- Location: LCCOMB_X29_Y19_N24
\low_pass|modgen_add_10|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx64792z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_4__mults20_3|nx4241z1\ $ (!\low_pass|modgen_add_10|nx2247z10\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z8\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx4241z1\) # (!\low_pass|modgen_add_10|nx2247z10\))) # (!\low_pass_in_15_\ & (\low_pass|prod_4__mults20_3|nx4241z1\ & !\low_pass|modgen_add_10|nx2247z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx4241z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z10\,
	combout => \low_pass|modgen_add_10|nx64792z1\,
	cout => \low_pass|modgen_add_10|nx2247z8\);

-- Location: LCCOMB_X29_Y19_N26
\low_pass|modgen_add_10|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx253z1\ = (((\low_pass|modgen_add_10|nx2247z8\))) # (GND)
-- \low_pass|modgen_add_10|nx2247z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z8\,
	combout => \low_pass|modgen_add_10|nx253z1\,
	cout => \low_pass|modgen_add_10|nx2247z6\);

-- Location: LCCOMB_X25_Y17_N16
\low_pass|prod_2__mults20_2|ix6235z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z1\ = \low_pass|prod_2__mults20_2|nx6235z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_2__mults20_2|nx6235z2\,
	combout => \low_pass|prod_2__mults20_2|nx6235z1\);

-- Location: LCCOMB_X24_Y20_N30
\low_pass|prod_0__mults21_0|ix5238z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx5238z1\ = \low_pass|prod_0__mults21_0|nx5238z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_0__mults21_0|nx5238z2\,
	combout => \low_pass|prod_0__mults21_0|nx5238z1\);

-- Location: LCCOMB_X24_Y19_N24
\low_pass|modgen_add_11|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx64792z1\ = ((\low_pass|prod_0__mults21_0|nx5238z1\ $ (\low_pass_in_15_\ $ (!\low_pass|modgen_add_11|nx2247z12\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z9\ = CARRY((\low_pass|prod_0__mults21_0|nx5238z1\ & ((\low_pass_in_15_\) # (!\low_pass|modgen_add_11|nx2247z12\))) # (!\low_pass|prod_0__mults21_0|nx5238z1\ & (\low_pass_in_15_\ & !\low_pass|modgen_add_11|nx2247z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx5238z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z12\,
	combout => \low_pass|modgen_add_11|nx64792z1\,
	cout => \low_pass|modgen_add_11|nx2247z9\);

-- Location: LCCOMB_X24_Y19_N26
\low_pass|modgen_add_11|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx253z1\ = (((\low_pass|modgen_add_11|nx2247z9\))) # (GND)
-- \low_pass|modgen_add_11|nx2247z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z9\,
	combout => \low_pass|modgen_add_11|nx253z1\,
	cout => \low_pass|modgen_add_11|nx2247z6\);

-- Location: LCCOMB_X25_Y19_N24
\low_pass|modgen_add_12|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx64792z1\ = ((\low_pass|prod_2__mults20_2|nx6235z1\ $ (\low_pass|modgen_add_11|nx64792z1\ $ (!\low_pass|modgen_add_12|nx2247z12\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z9\ = CARRY((\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass|modgen_add_11|nx64792z1\) # (!\low_pass|modgen_add_12|nx2247z12\))) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & (\low_pass|modgen_add_11|nx64792z1\ & 
-- !\low_pass|modgen_add_12|nx2247z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass|modgen_add_11|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z12\,
	combout => \low_pass|modgen_add_12|nx64792z1\,
	cout => \low_pass|modgen_add_12|nx2247z9\);

-- Location: LCCOMB_X25_Y19_N26
\low_pass|modgen_add_12|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx253z1\ = (\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass|modgen_add_11|nx253z1\ & (\low_pass|modgen_add_12|nx2247z9\ & VCC)) # (!\low_pass|modgen_add_11|nx253z1\ & (!\low_pass|modgen_add_12|nx2247z9\)))) # 
-- (!\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass|modgen_add_11|nx253z1\ & (!\low_pass|modgen_add_12|nx2247z9\)) # (!\low_pass|modgen_add_11|nx253z1\ & ((\low_pass|modgen_add_12|nx2247z9\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z6\ = CARRY((\low_pass|prod_2__mults20_2|nx6235z1\ & (!\low_pass|modgen_add_11|nx253z1\ & !\low_pass|modgen_add_12|nx2247z9\)) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & ((!\low_pass|modgen_add_12|nx2247z9\) # 
-- (!\low_pass|modgen_add_11|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass|modgen_add_11|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z9\,
	combout => \low_pass|modgen_add_12|nx253z1\,
	cout => \low_pass|modgen_add_12|nx2247z6\);

-- Location: LCCOMB_X28_Y19_N24
\low_pass|modgen_add_13|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx64792z1\ = ((\low_pass|modgen_add_12|nx64792z1\ $ (\low_pass|modgen_add_10|nx64792z1\ $ (!\low_pass|modgen_add_13|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z10\ = CARRY((\low_pass|modgen_add_12|nx64792z1\ & ((\low_pass|modgen_add_10|nx64792z1\) # (!\low_pass|modgen_add_13|nx2247z13\))) # (!\low_pass|modgen_add_12|nx64792z1\ & (\low_pass|modgen_add_10|nx64792z1\ & 
-- !\low_pass|modgen_add_13|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx64792z1\,
	datab => \low_pass|modgen_add_10|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z13\,
	combout => \low_pass|modgen_add_13|nx64792z1\,
	cout => \low_pass|modgen_add_13|nx2247z10\);

-- Location: LCCOMB_X28_Y19_N26
\low_pass|modgen_add_13|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx253z1\ = (\low_pass|modgen_add_10|nx253z1\ & ((\low_pass|modgen_add_12|nx253z1\ & (\low_pass|modgen_add_13|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_12|nx253z1\ & (!\low_pass|modgen_add_13|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_10|nx253z1\ & ((\low_pass|modgen_add_12|nx253z1\ & (!\low_pass|modgen_add_13|nx2247z10\)) # (!\low_pass|modgen_add_12|nx253z1\ & ((\low_pass|modgen_add_13|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z7\ = CARRY((\low_pass|modgen_add_10|nx253z1\ & (!\low_pass|modgen_add_12|nx253z1\ & !\low_pass|modgen_add_13|nx2247z10\)) # (!\low_pass|modgen_add_10|nx253z1\ & ((!\low_pass|modgen_add_13|nx2247z10\) # 
-- (!\low_pass|modgen_add_12|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_10|nx253z1\,
	datab => \low_pass|modgen_add_12|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z10\,
	combout => \low_pass|modgen_add_13|nx253z1\,
	cout => \low_pass|modgen_add_13|nx2247z7\);

-- Location: LCCOMB_X22_Y19_N10
\low_pass|modgen_add_8|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx64792z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_1__mults19_1|nx3244z1\ & (\low_pass|modgen_add_8|nx2247z13\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx3244z1\ & (!\low_pass|modgen_add_8|nx2247z13\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_1__mults19_1|nx3244z1\ & (!\low_pass|modgen_add_8|nx2247z13\)) # (!\low_pass|prod_1__mults19_1|nx3244z1\ & ((\low_pass|modgen_add_8|nx2247z13\) # (GND)))))
-- \low_pass|modgen_add_8|nx2247z10\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_1__mults19_1|nx3244z1\ & !\low_pass|modgen_add_8|nx2247z13\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_8|nx2247z13\) # (!\low_pass|prod_1__mults19_1|nx3244z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_1__mults19_1|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z13\,
	combout => \low_pass|modgen_add_8|nx64792z1\,
	cout => \low_pass|modgen_add_8|nx2247z10\);

-- Location: LCCOMB_X22_Y19_N12
\low_pass|modgen_add_8|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx253z1\ = (((!\low_pass|modgen_add_8|nx2247z10\))) # (GND)
-- \low_pass|modgen_add_8|nx2247z7\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z10\,
	combout => \low_pass|modgen_add_8|nx253z1\,
	cout => \low_pass|modgen_add_8|nx2247z7\);

-- Location: LCCOMB_X23_Y19_N24
\low_pass|modgen_add_9|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx64792z1\ = ((\low_pass|modgen_add_8|nx64792z1\ $ (\low_pass|modgen_add_4|nx64792z1\ $ (!\low_pass|modgen_add_9|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z10\ = CARRY((\low_pass|modgen_add_8|nx64792z1\ & ((\low_pass|modgen_add_4|nx64792z1\) # (!\low_pass|modgen_add_9|nx2247z13\))) # (!\low_pass|modgen_add_8|nx64792z1\ & (\low_pass|modgen_add_4|nx64792z1\ & 
-- !\low_pass|modgen_add_9|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx64792z1\,
	datab => \low_pass|modgen_add_4|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z13\,
	combout => \low_pass|modgen_add_9|nx64792z1\,
	cout => \low_pass|modgen_add_9|nx2247z10\);

-- Location: LCCOMB_X23_Y19_N26
\low_pass|modgen_add_9|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx253z1\ = (\low_pass|modgen_add_8|nx253z1\ & ((\low_pass|modgen_add_4|nx253z1\ & (\low_pass|modgen_add_9|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_4|nx253z1\ & (!\low_pass|modgen_add_9|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_8|nx253z1\ & ((\low_pass|modgen_add_4|nx253z1\ & (!\low_pass|modgen_add_9|nx2247z10\)) # (!\low_pass|modgen_add_4|nx253z1\ & ((\low_pass|modgen_add_9|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z7\ = CARRY((\low_pass|modgen_add_8|nx253z1\ & (!\low_pass|modgen_add_4|nx253z1\ & !\low_pass|modgen_add_9|nx2247z10\)) # (!\low_pass|modgen_add_8|nx253z1\ & ((!\low_pass|modgen_add_9|nx2247z10\) # 
-- (!\low_pass|modgen_add_4|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx253z1\,
	datab => \low_pass|modgen_add_4|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z10\,
	combout => \low_pass|modgen_add_9|nx253z1\,
	cout => \low_pass|modgen_add_9|nx2247z7\);

-- Location: LCCOMB_X27_Y19_N26
\low_pass|modgen_add_14|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx253z1\ = (\low_pass|modgen_add_13|nx253z1\ & ((\low_pass|modgen_add_9|nx253z1\ & (\low_pass|modgen_add_14|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_9|nx253z1\ & (!\low_pass|modgen_add_14|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_13|nx253z1\ & ((\low_pass|modgen_add_9|nx253z1\ & (!\low_pass|modgen_add_14|nx2247z10\)) # (!\low_pass|modgen_add_9|nx253z1\ & ((\low_pass|modgen_add_14|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z7\ = CARRY((\low_pass|modgen_add_13|nx253z1\ & (!\low_pass|modgen_add_9|nx253z1\ & !\low_pass|modgen_add_14|nx2247z10\)) # (!\low_pass|modgen_add_13|nx253z1\ & ((!\low_pass|modgen_add_14|nx2247z10\) # 
-- (!\low_pass|modgen_add_9|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx253z1\,
	datab => \low_pass|modgen_add_9|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z10\,
	combout => \low_pass|modgen_add_14|nx253z1\,
	cout => \low_pass|modgen_add_14|nx2247z7\);

-- Location: LCCOMB_X29_Y18_N26
\low_pass|modgen_add_3|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx253z1\ = (((\low_pass|modgen_add_3|nx2247z10\))) # (GND)
-- \low_pass|modgen_add_3|nx2247z7\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z10\,
	combout => \low_pass|modgen_add_3|nx253z1\,
	cout => \low_pass|modgen_add_3|nx2247z7\);

-- Location: LCCOMB_X29_Y21_N26
\low_pass|modgen_add_5|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx253z1\ = (\low_pass|modgen_add_4|nx253z1\ & ((\low_pass|modgen_add_3|nx253z1\ & (\low_pass|modgen_add_5|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_3|nx253z1\ & (!\low_pass|modgen_add_5|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_4|nx253z1\ & ((\low_pass|modgen_add_3|nx253z1\ & (!\low_pass|modgen_add_5|nx2247z10\)) # (!\low_pass|modgen_add_3|nx253z1\ & ((\low_pass|modgen_add_5|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z7\ = CARRY((\low_pass|modgen_add_4|nx253z1\ & (!\low_pass|modgen_add_3|nx253z1\ & !\low_pass|modgen_add_5|nx2247z10\)) # (!\low_pass|modgen_add_4|nx253z1\ & ((!\low_pass|modgen_add_5|nx2247z10\) # 
-- (!\low_pass|modgen_add_3|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx253z1\,
	datab => \low_pass|modgen_add_3|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z10\,
	combout => \low_pass|modgen_add_5|nx253z1\,
	cout => \low_pass|modgen_add_5|nx2247z7\);

-- Location: LCCOMB_X25_Y20_N24
\low_pass|modgen_add_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx64792z1\ = ((\low_pass|prod_0__mults21_0|nx5238z1\ $ (\low_pass_in_15_\ $ (!\low_pass|modgen_add_0|nx2247z12\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z9\ = CARRY((\low_pass|prod_0__mults21_0|nx5238z1\ & ((\low_pass_in_15_\) # (!\low_pass|modgen_add_0|nx2247z12\))) # (!\low_pass|prod_0__mults21_0|nx5238z1\ & (\low_pass_in_15_\ & !\low_pass|modgen_add_0|nx2247z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx5238z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z12\,
	combout => \low_pass|modgen_add_0|nx64792z1\,
	cout => \low_pass|modgen_add_0|nx2247z9\);

-- Location: LCCOMB_X25_Y20_N26
\low_pass|modgen_add_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx253z1\ = (((\low_pass|modgen_add_0|nx2247z9\))) # (GND)
-- \low_pass|modgen_add_0|nx2247z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z9\,
	combout => \low_pass|modgen_add_0|nx253z1\,
	cout => \low_pass|modgen_add_0|nx2247z6\);

-- Location: LCCOMB_X27_Y18_N26
\low_pass|modgen_add_1|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx253z1\ = (\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass_in_15_\ & (\low_pass|modgen_add_1|nx2247z6\ & VCC)) # (!\low_pass_in_15_\ & (!\low_pass|modgen_add_1|nx2247z6\)))) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & 
-- ((\low_pass_in_15_\ & (!\low_pass|modgen_add_1|nx2247z6\)) # (!\low_pass_in_15_\ & ((\low_pass|modgen_add_1|nx2247z6\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z5\ = CARRY((\low_pass|prod_2__mults20_2|nx6235z1\ & (!\low_pass_in_15_\ & !\low_pass|modgen_add_1|nx2247z6\)) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & ((!\low_pass|modgen_add_1|nx2247z6\) # (!\low_pass_in_15_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z6\,
	combout => \low_pass|modgen_add_1|nx253z1\,
	cout => \low_pass|modgen_add_1|nx2247z5\);

-- Location: LCCOMB_X28_Y18_N24
\low_pass|modgen_add_2|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx64792z1\ = ((\low_pass|modgen_add_0|nx64792z1\ $ (\low_pass|modgen_add_1|nx64792z1\ $ (!\low_pass|modgen_add_2|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z10\ = CARRY((\low_pass|modgen_add_0|nx64792z1\ & ((\low_pass|modgen_add_1|nx64792z1\) # (!\low_pass|modgen_add_2|nx2247z13\))) # (!\low_pass|modgen_add_0|nx64792z1\ & (\low_pass|modgen_add_1|nx64792z1\ & 
-- !\low_pass|modgen_add_2|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx64792z1\,
	datab => \low_pass|modgen_add_1|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z13\,
	combout => \low_pass|modgen_add_2|nx64792z1\,
	cout => \low_pass|modgen_add_2|nx2247z10\);

-- Location: LCCOMB_X28_Y18_N26
\low_pass|modgen_add_2|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx253z1\ = (\low_pass|modgen_add_0|nx253z1\ & ((\low_pass|modgen_add_1|nx253z1\ & (\low_pass|modgen_add_2|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_1|nx253z1\ & (!\low_pass|modgen_add_2|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_0|nx253z1\ & ((\low_pass|modgen_add_1|nx253z1\ & (!\low_pass|modgen_add_2|nx2247z10\)) # (!\low_pass|modgen_add_1|nx253z1\ & ((\low_pass|modgen_add_2|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z7\ = CARRY((\low_pass|modgen_add_0|nx253z1\ & (!\low_pass|modgen_add_1|nx253z1\ & !\low_pass|modgen_add_2|nx2247z10\)) # (!\low_pass|modgen_add_0|nx253z1\ & ((!\low_pass|modgen_add_2|nx2247z10\) # 
-- (!\low_pass|modgen_add_1|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx253z1\,
	datab => \low_pass|modgen_add_1|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z10\,
	combout => \low_pass|modgen_add_2|nx253z1\,
	cout => \low_pass|modgen_add_2|nx2247z7\);

-- Location: LCCOMB_X28_Y21_N24
\low_pass|modgen_add_6|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx64792z1\ = ((\low_pass|modgen_add_2|nx64792z1\ $ (\low_pass|modgen_add_5|nx64792z1\ $ (!\low_pass|modgen_add_6|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z10\ = CARRY((\low_pass|modgen_add_2|nx64792z1\ & ((\low_pass|modgen_add_5|nx64792z1\) # (!\low_pass|modgen_add_6|nx2247z13\))) # (!\low_pass|modgen_add_2|nx64792z1\ & (\low_pass|modgen_add_5|nx64792z1\ & 
-- !\low_pass|modgen_add_6|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx64792z1\,
	datab => \low_pass|modgen_add_5|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z13\,
	combout => \low_pass|modgen_add_6|nx64792z1\,
	cout => \low_pass|modgen_add_6|nx2247z10\);

-- Location: LCCOMB_X28_Y21_N26
\low_pass|modgen_add_6|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx253z1\ = (\low_pass|modgen_add_5|nx253z1\ & ((\low_pass|modgen_add_2|nx253z1\ & (\low_pass|modgen_add_6|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_2|nx253z1\ & (!\low_pass|modgen_add_6|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_5|nx253z1\ & ((\low_pass|modgen_add_2|nx253z1\ & (!\low_pass|modgen_add_6|nx2247z10\)) # (!\low_pass|modgen_add_2|nx253z1\ & ((\low_pass|modgen_add_6|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z7\ = CARRY((\low_pass|modgen_add_5|nx253z1\ & (!\low_pass|modgen_add_2|nx253z1\ & !\low_pass|modgen_add_6|nx2247z10\)) # (!\low_pass|modgen_add_5|nx253z1\ & ((!\low_pass|modgen_add_6|nx2247z10\) # 
-- (!\low_pass|modgen_add_2|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_5|nx253z1\,
	datab => \low_pass|modgen_add_2|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z10\,
	combout => \low_pass|modgen_add_6|nx253z1\,
	cout => \low_pass|modgen_add_6|nx2247z7\);

-- Location: LCCOMB_X27_Y21_N24
\low_pass|modgen_add_15|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx64792z1\ = ((\low_pass|modgen_add_6|nx64792z1\ $ (\low_pass|modgen_add_14|nx64792z1\ $ (!\low_pass|modgen_add_15|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z10\ = CARRY((\low_pass|modgen_add_6|nx64792z1\ & ((\low_pass|modgen_add_14|nx64792z1\) # (!\low_pass|modgen_add_15|nx2247z13\))) # (!\low_pass|modgen_add_6|nx64792z1\ & (\low_pass|modgen_add_14|nx64792z1\ & 
-- !\low_pass|modgen_add_15|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx64792z1\,
	datab => \low_pass|modgen_add_14|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z13\,
	combout => \low_pass|modgen_add_15|nx64792z1\,
	cout => \low_pass|modgen_add_15|nx2247z10\);

-- Location: LCCOMB_X29_Y19_N28
\low_pass|modgen_add_10|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx1250z1\ = (((\low_pass|modgen_add_10|nx2247z6\))) # (GND)
-- \low_pass|modgen_add_10|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z6\,
	combout => \low_pass|modgen_add_10|nx1250z1\,
	cout => \low_pass|modgen_add_10|nx2247z4\);

-- Location: LCCOMB_X24_Y19_N28
\low_pass|modgen_add_11|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx1250z1\ = (((\low_pass|modgen_add_11|nx2247z6\))) # (GND)
-- \low_pass|modgen_add_11|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z6\,
	combout => \low_pass|modgen_add_11|nx1250z1\,
	cout => \low_pass|modgen_add_11|nx2247z4\);

-- Location: LCCOMB_X25_Y19_N28
\low_pass|modgen_add_12|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx1250z1\ = ((\low_pass|modgen_add_11|nx1250z1\ $ (\low_pass|prod_2__mults20_2|nx6235z1\ $ (!\low_pass|modgen_add_12|nx2247z6\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z4\ = CARRY((\low_pass|modgen_add_11|nx1250z1\ & ((\low_pass|prod_2__mults20_2|nx6235z1\) # (!\low_pass|modgen_add_12|nx2247z6\))) # (!\low_pass|modgen_add_11|nx1250z1\ & (\low_pass|prod_2__mults20_2|nx6235z1\ & 
-- !\low_pass|modgen_add_12|nx2247z6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx1250z1\,
	datab => \low_pass|prod_2__mults20_2|nx6235z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z6\,
	combout => \low_pass|modgen_add_12|nx1250z1\,
	cout => \low_pass|modgen_add_12|nx2247z4\);

-- Location: LCCOMB_X28_Y19_N28
\low_pass|modgen_add_13|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx1250z1\ = ((\low_pass|modgen_add_12|nx1250z1\ $ (\low_pass|modgen_add_10|nx1250z1\ $ (!\low_pass|modgen_add_13|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z4\ = CARRY((\low_pass|modgen_add_12|nx1250z1\ & ((\low_pass|modgen_add_10|nx1250z1\) # (!\low_pass|modgen_add_13|nx2247z7\))) # (!\low_pass|modgen_add_12|nx1250z1\ & (\low_pass|modgen_add_10|nx1250z1\ & 
-- !\low_pass|modgen_add_13|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx1250z1\,
	datab => \low_pass|modgen_add_10|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z7\,
	combout => \low_pass|modgen_add_13|nx1250z1\,
	cout => \low_pass|modgen_add_13|nx2247z4\);

-- Location: LCCOMB_X24_Y17_N14
\low_pass|modgen_add_4|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx1250z1\ = (((\low_pass|modgen_add_4|nx2247z6\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z6\,
	combout => \low_pass|modgen_add_4|nx1250z1\,
	cout => \low_pass|modgen_add_4|nx2247z4\);

-- Location: LCCOMB_X22_Y19_N14
\low_pass|modgen_add_8|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx1250z1\ = (((\low_pass|modgen_add_8|nx2247z7\))) # (GND)
-- \low_pass|modgen_add_8|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z7\,
	combout => \low_pass|modgen_add_8|nx1250z1\,
	cout => \low_pass|modgen_add_8|nx2247z4\);

-- Location: LCCOMB_X23_Y19_N28
\low_pass|modgen_add_9|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx1250z1\ = ((\low_pass|modgen_add_8|nx1250z1\ $ (\low_pass|modgen_add_4|nx1250z1\ $ (!\low_pass|modgen_add_9|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z4\ = CARRY((\low_pass|modgen_add_8|nx1250z1\ & ((\low_pass|modgen_add_4|nx1250z1\) # (!\low_pass|modgen_add_9|nx2247z7\))) # (!\low_pass|modgen_add_8|nx1250z1\ & (\low_pass|modgen_add_4|nx1250z1\ & 
-- !\low_pass|modgen_add_9|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx1250z1\,
	datab => \low_pass|modgen_add_4|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z7\,
	combout => \low_pass|modgen_add_9|nx1250z1\,
	cout => \low_pass|modgen_add_9|nx2247z4\);

-- Location: LCCOMB_X27_Y19_N28
\low_pass|modgen_add_14|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx1250z1\ = ((\low_pass|modgen_add_9|nx1250z1\ $ (\low_pass|modgen_add_13|nx1250z1\ $ (!\low_pass|modgen_add_14|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z4\ = CARRY((\low_pass|modgen_add_9|nx1250z1\ & ((\low_pass|modgen_add_13|nx1250z1\) # (!\low_pass|modgen_add_14|nx2247z7\))) # (!\low_pass|modgen_add_9|nx1250z1\ & (\low_pass|modgen_add_13|nx1250z1\ & 
-- !\low_pass|modgen_add_14|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx1250z1\,
	datab => \low_pass|modgen_add_13|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z7\,
	combout => \low_pass|modgen_add_14|nx1250z1\,
	cout => \low_pass|modgen_add_14|nx2247z4\);

-- Location: LCCOMB_X29_Y18_N28
\low_pass|modgen_add_3|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx1250z1\ = (((\low_pass|modgen_add_3|nx2247z7\))) # (GND)
-- \low_pass|modgen_add_3|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z7\,
	combout => \low_pass|modgen_add_3|nx1250z1\,
	cout => \low_pass|modgen_add_3|nx2247z4\);

-- Location: LCCOMB_X29_Y21_N28
\low_pass|modgen_add_5|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx1250z1\ = ((\low_pass|modgen_add_3|nx1250z1\ $ (\low_pass|modgen_add_4|nx1250z1\ $ (!\low_pass|modgen_add_5|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z4\ = CARRY((\low_pass|modgen_add_3|nx1250z1\ & ((\low_pass|modgen_add_4|nx1250z1\) # (!\low_pass|modgen_add_5|nx2247z7\))) # (!\low_pass|modgen_add_3|nx1250z1\ & (\low_pass|modgen_add_4|nx1250z1\ & 
-- !\low_pass|modgen_add_5|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx1250z1\,
	datab => \low_pass|modgen_add_4|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z7\,
	combout => \low_pass|modgen_add_5|nx1250z1\,
	cout => \low_pass|modgen_add_5|nx2247z4\);

-- Location: LCCOMB_X25_Y20_N28
\low_pass|modgen_add_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx1250z1\ = (((\low_pass|modgen_add_0|nx2247z6\))) # (GND)
-- \low_pass|modgen_add_0|nx2247z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z6\,
	combout => \low_pass|modgen_add_0|nx1250z1\,
	cout => \low_pass|modgen_add_0|nx2247z4\);

-- Location: LCCOMB_X27_Y18_N28
\low_pass|modgen_add_1|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx1250z1\ = ((\low_pass|prod_2__mults20_2|nx6235z1\ $ (\low_pass_in_15_\ $ (!\low_pass|modgen_add_1|nx2247z5\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z4\ = CARRY((\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass_in_15_\) # (!\low_pass|modgen_add_1|nx2247z5\))) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & (\low_pass_in_15_\ & !\low_pass|modgen_add_1|nx2247z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z5\,
	combout => \low_pass|modgen_add_1|nx1250z1\,
	cout => \low_pass|modgen_add_1|nx2247z4\);

-- Location: LCCOMB_X28_Y18_N28
\low_pass|modgen_add_2|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx1250z1\ = ((\low_pass|modgen_add_0|nx1250z1\ $ (\low_pass|modgen_add_1|nx1250z1\ $ (!\low_pass|modgen_add_2|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z4\ = CARRY((\low_pass|modgen_add_0|nx1250z1\ & ((\low_pass|modgen_add_1|nx1250z1\) # (!\low_pass|modgen_add_2|nx2247z7\))) # (!\low_pass|modgen_add_0|nx1250z1\ & (\low_pass|modgen_add_1|nx1250z1\ & 
-- !\low_pass|modgen_add_2|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx1250z1\,
	datab => \low_pass|modgen_add_1|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z7\,
	combout => \low_pass|modgen_add_2|nx1250z1\,
	cout => \low_pass|modgen_add_2|nx2247z4\);

-- Location: LCCOMB_X28_Y21_N28
\low_pass|modgen_add_6|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx1250z1\ = ((\low_pass|modgen_add_2|nx1250z1\ $ (\low_pass|modgen_add_5|nx1250z1\ $ (!\low_pass|modgen_add_6|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z4\ = CARRY((\low_pass|modgen_add_2|nx1250z1\ & ((\low_pass|modgen_add_5|nx1250z1\) # (!\low_pass|modgen_add_6|nx2247z7\))) # (!\low_pass|modgen_add_2|nx1250z1\ & (\low_pass|modgen_add_5|nx1250z1\ & 
-- !\low_pass|modgen_add_6|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx1250z1\,
	datab => \low_pass|modgen_add_5|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z7\,
	combout => \low_pass|modgen_add_6|nx1250z1\,
	cout => \low_pass|modgen_add_6|nx2247z4\);

-- Location: LCCOMB_X27_Y21_N28
\low_pass|modgen_add_15|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx1250z1\ = ((\low_pass|modgen_add_14|nx1250z1\ $ (\low_pass|modgen_add_6|nx1250z1\ $ (!\low_pass|modgen_add_15|nx2247z7\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z4\ = CARRY((\low_pass|modgen_add_14|nx1250z1\ & ((\low_pass|modgen_add_6|nx1250z1\) # (!\low_pass|modgen_add_15|nx2247z7\))) # (!\low_pass|modgen_add_14|nx1250z1\ & (\low_pass|modgen_add_6|nx1250z1\ & 
-- !\low_pass|modgen_add_15|nx2247z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx1250z1\,
	datab => \low_pass|modgen_add_6|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z7\,
	combout => \low_pass|modgen_add_15|nx1250z1\,
	cout => \low_pass|modgen_add_15|nx2247z4\);

-- Location: LCCOMB_X29_Y19_N30
\low_pass|modgen_add_10|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx2247z1\ = \low_pass|modgen_add_10|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_10|nx2247z4\,
	combout => \low_pass|modgen_add_10|nx2247z1\);

-- Location: LCCOMB_X24_Y19_N30
\low_pass|modgen_add_11|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx2247z1\ = \low_pass|modgen_add_11|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_11|nx2247z4\,
	combout => \low_pass|modgen_add_11|nx2247z1\);

-- Location: LCCOMB_X25_Y19_N30
\low_pass|modgen_add_12|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx2247z1\ = \low_pass|modgen_add_11|nx2247z1\ $ (\low_pass|prod_2__mults20_2|nx6235z1\ $ (\low_pass|modgen_add_12|nx2247z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx2247z1\,
	datab => \low_pass|prod_2__mults20_2|nx6235z1\,
	cin => \low_pass|modgen_add_12|nx2247z4\,
	combout => \low_pass|modgen_add_12|nx2247z1\);

-- Location: LCCOMB_X28_Y19_N30
\low_pass|modgen_add_13|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx2247z1\ = \low_pass|modgen_add_10|nx2247z1\ $ (\low_pass|modgen_add_13|nx2247z4\ $ (\low_pass|modgen_add_12|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|modgen_add_10|nx2247z1\,
	datad => \low_pass|modgen_add_12|nx2247z1\,
	cin => \low_pass|modgen_add_13|nx2247z4\,
	combout => \low_pass|modgen_add_13|nx2247z1\);

-- Location: LCCOMB_X24_Y17_N16
\low_pass|modgen_add_4|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx2247z1\ = \low_pass|modgen_add_4|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_4|nx2247z4\,
	combout => \low_pass|modgen_add_4|nx2247z1\);

-- Location: LCCOMB_X22_Y19_N16
\low_pass|modgen_add_8|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx2247z1\ = \low_pass|modgen_add_8|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_8|nx2247z4\,
	combout => \low_pass|modgen_add_8|nx2247z1\);

-- Location: LCCOMB_X23_Y19_N30
\low_pass|modgen_add_9|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx2247z1\ = \low_pass|modgen_add_8|nx2247z1\ $ (\low_pass|modgen_add_9|nx2247z4\ $ (\low_pass|modgen_add_4|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|modgen_add_8|nx2247z1\,
	datad => \low_pass|modgen_add_4|nx2247z1\,
	cin => \low_pass|modgen_add_9|nx2247z4\,
	combout => \low_pass|modgen_add_9|nx2247z1\);

-- Location: LCCOMB_X27_Y19_N30
\low_pass|modgen_add_14|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx2247z1\ = \low_pass|modgen_add_13|nx2247z1\ $ (\low_pass|modgen_add_14|nx2247z4\ $ (\low_pass|modgen_add_9|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|modgen_add_13|nx2247z1\,
	datad => \low_pass|modgen_add_9|nx2247z1\,
	cin => \low_pass|modgen_add_14|nx2247z4\,
	combout => \low_pass|modgen_add_14|nx2247z1\);

-- Location: LCCOMB_X29_Y18_N30
\low_pass|modgen_add_3|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx2247z1\ = \low_pass|modgen_add_3|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_3|nx2247z4\,
	combout => \low_pass|modgen_add_3|nx2247z1\);

-- Location: LCCOMB_X29_Y21_N30
\low_pass|modgen_add_5|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx2247z1\ = \low_pass|modgen_add_3|nx2247z1\ $ (\low_pass|modgen_add_5|nx2247z4\ $ (\low_pass|modgen_add_4|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx2247z1\,
	datad => \low_pass|modgen_add_4|nx2247z1\,
	cin => \low_pass|modgen_add_5|nx2247z4\,
	combout => \low_pass|modgen_add_5|nx2247z1\);

-- Location: LCCOMB_X25_Y20_N30
\low_pass|modgen_add_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx2247z1\ = \low_pass|modgen_add_0|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|modgen_add_0|nx2247z4\,
	combout => \low_pass|modgen_add_0|nx2247z1\);

-- Location: LCCOMB_X27_Y18_N30
\low_pass|modgen_add_1|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx2247z1\ = \low_pass|prod_2__mults20_2|nx6235z1\ $ (\low_pass_in_15_\ $ (\low_pass|modgen_add_1|nx2247z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass_in_15_\,
	cin => \low_pass|modgen_add_1|nx2247z4\,
	combout => \low_pass|modgen_add_1|nx2247z1\);

-- Location: LCCOMB_X28_Y18_N30
\low_pass|modgen_add_2|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx2247z1\ = \low_pass|modgen_add_0|nx2247z1\ $ (\low_pass|modgen_add_2|nx2247z4\ $ (\low_pass|modgen_add_1|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx2247z1\,
	datad => \low_pass|modgen_add_1|nx2247z1\,
	cin => \low_pass|modgen_add_2|nx2247z4\,
	combout => \low_pass|modgen_add_2|nx2247z1\);

-- Location: LCCOMB_X28_Y21_N30
\low_pass|modgen_add_6|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx2247z1\ = \low_pass|modgen_add_2|nx2247z1\ $ (\low_pass|modgen_add_6|nx2247z4\ $ (\low_pass|modgen_add_5|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx2247z1\,
	datad => \low_pass|modgen_add_5|nx2247z1\,
	cin => \low_pass|modgen_add_6|nx2247z4\,
	combout => \low_pass|modgen_add_6|nx2247z1\);

-- Location: LCCOMB_X27_Y21_N30
\low_pass|modgen_add_15|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx2247z1\ = \low_pass|modgen_add_14|nx2247z1\ $ (\low_pass|modgen_add_15|nx2247z4\ $ (\low_pass|modgen_add_6|nx2247z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx2247z1\,
	datad => \low_pass|modgen_add_6|nx2247z1\,
	cin => \low_pass|modgen_add_15|nx2247z4\,
	combout => \low_pass|modgen_add_15|nx2247z1\);

-- Location: LCFF_X34_Y27_N13
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\);

-- Location: LCFF_X34_Y27_N21
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\);

-- Location: LCFF_X34_Y27_N17
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\);

-- Location: LCCOMB_X35_Y27_N26
ix50205z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z4 = (((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	combout => nx50205z4);

-- Location: LCCOMB_X35_Y27_N18
ix50205z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z3 = ((nx50205z4) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datab => nx50205z4,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	combout => nx50205z3);

-- Location: LCFF_X37_Y35_N13
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\);

-- Location: LCFF_X37_Y35_N17
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\);

-- Location: LCFF_X37_Y35_N25
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\);

-- Location: LCCOMB_X36_Y35_N28
\u_i2c_av_config|ix2692z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z5\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\) # (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	combout => \u_i2c_av_config|nx2692z5\);

-- Location: LCCOMB_X36_Y35_N6
\u_i2c_av_config|u0|ix7286z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z2\ = (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx7286z2\);

-- Location: LCFF_X23_Y16_N13
\u_sine_reg_address_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_3_\);

-- Location: LCFF_X23_Y16_N11
\u_sine_reg_address_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_2_\);

-- Location: LCFF_X23_Y16_N9
\u_sine_reg_address_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_1_\);

-- Location: LCCOMB_X23_Y16_N8
\u_sine_address_add9_0i1|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx38970z1\ = (\u_sine_address_1_\ & ((\sw~combout\(1) & (\u_sine_address_add9_0i1|nx45949z23\ & VCC)) # (!\sw~combout\(1) & (!\u_sine_address_add9_0i1|nx45949z23\)))) # (!\u_sine_address_1_\ & ((\sw~combout\(1) & 
-- (!\u_sine_address_add9_0i1|nx45949z23\)) # (!\sw~combout\(1) & ((\u_sine_address_add9_0i1|nx45949z23\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z20\ = CARRY((\u_sine_address_1_\ & (!\sw~combout\(1) & !\u_sine_address_add9_0i1|nx45949z23\)) # (!\u_sine_address_1_\ & ((!\u_sine_address_add9_0i1|nx45949z23\) # (!\sw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_1_\,
	datab => \sw~combout\(1),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z23\,
	combout => \u_sine_address_add9_0i1|nx38970z1\,
	cout => \u_sine_address_add9_0i1|nx45949z20\);

-- Location: LCCOMB_X23_Y16_N10
\u_sine_address_add9_0i1|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx39967z1\ = ((\u_sine_address_2_\ $ (\sw~combout\(2) $ (!\u_sine_address_add9_0i1|nx45949z20\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z17\ = CARRY((\u_sine_address_2_\ & ((\sw~combout\(2)) # (!\u_sine_address_add9_0i1|nx45949z20\))) # (!\u_sine_address_2_\ & (\sw~combout\(2) & !\u_sine_address_add9_0i1|nx45949z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_2_\,
	datab => \sw~combout\(2),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z20\,
	combout => \u_sine_address_add9_0i1|nx39967z1\,
	cout => \u_sine_address_add9_0i1|nx45949z17\);

-- Location: LCFF_X23_Y16_N15
\u_sine_reg_address_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_4_\);

-- Location: LCFF_X23_Y16_N17
\u_sine_reg_address_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_5_\);

-- Location: LCFF_X23_Y16_N21
\u_sine_reg_address_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_7_\);

-- Location: LCCOMB_X34_Y27_N12
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ $ (VCC)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datad => VCC,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\);

-- Location: LCCOMB_X34_Y27_N16
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\);

-- Location: LCCOMB_X34_Y27_N20
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\);

-- Location: LCFF_X37_Y35_N7
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\);

-- Location: LCCOMB_X37_Y35_N6
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\);

-- Location: LCCOMB_X37_Y35_N12
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\);

-- Location: LCCOMB_X37_Y35_N16
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\);

-- Location: LCCOMB_X37_Y35_N24
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\);

-- Location: LCFF_X37_Y33_N7
\u_i2c_av_config|modgen_counter_cont|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_3_\);

-- Location: LCFF_X37_Y33_N11
\u_i2c_av_config|modgen_counter_cont|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_5_\);

-- Location: LCFF_X37_Y33_N13
\u_i2c_av_config|modgen_counter_cont|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_6_\);

-- Location: LCCOMB_X36_Y33_N6
\u_i2c_av_config|ix35560z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z2\ = (\u_i2c_av_config|modgen_counter_cont|q_5_\ & (\u_i2c_av_config|modgen_counter_cont|q_6_\ & (\u_i2c_av_config|modgen_counter_cont|q_4_\ & \u_i2c_av_config|modgen_counter_cont|q_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	combout => \u_i2c_av_config|nx35560z2\);

-- Location: LCFF_X37_Y33_N21
\u_i2c_av_config|modgen_counter_cont|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_10_\);

-- Location: LCFF_X37_Y33_N31
\u_i2c_av_config|modgen_counter_cont|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx22081z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_15_\);

-- Location: LCCOMB_X35_Y35_N12
\u_i2c_av_config|u0|ix22137z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\);

-- Location: LCCOMB_X35_Y35_N30
\u_i2c_av_config|u0|ix22137z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z2\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & 
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx22137z2\);

-- Location: LCCOMB_X35_Y35_N8
\u_i2c_av_config|u0|ix22137z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (!\u_i2c_av_config|u0|nx44942z5\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ 
-- & ((\u_i2c_av_config|u0|nx22137z2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|nx22137z2\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\);

-- Location: LCCOMB_X34_Y35_N6
\u_i2c_av_config|u0|ix41315z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z5\ = (\u_i2c_av_config|u0|nx43379z4\) # ((\u_i2c_av_config|u0|nx44942z4\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datab => \u_i2c_av_config|u0|nx43379z4\,
	datac => \u_i2c_av_config|u0|nx44942z4\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx41315z5\);

-- Location: LCCOMB_X35_Y35_N28
\u_i2c_av_config|u0|ix41315z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z9\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z9\);

-- Location: LCCOMB_X35_Y35_N24
\u_i2c_av_config|u0|ix41315z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z8\ = (\u_i2c_av_config|u0|nx41315z3\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ & \u_i2c_av_config|u0|nx41315z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx41315z3\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	datad => \u_i2c_av_config|u0|nx41315z9\,
	combout => \u_i2c_av_config|u0|nx41315z8\);

-- Location: LCCOMB_X35_Y35_N6
\u_i2c_av_config|u0|ix41315z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z18\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z18\);

-- Location: LCCOMB_X34_Y35_N8
\u_i2c_av_config|u0|ix41315z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z21\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (!\u_i2c_av_config|u0|nx44942z5\ & (!\u_i2c_av_config|u0|nx44942z4\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|nx44942z4\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z21\);

-- Location: LCCOMB_X34_Y35_N2
\u_i2c_av_config|u0|ix41315z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z22\ = (\u_i2c_av_config|u0|nx41315z15\) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (\u_i2c_av_config|u0|nx41315z14\ & !\u_i2c_av_config|u0|nx44942z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|nx41315z15\,
	datad => \u_i2c_av_config|u0|nx44942z7\,
	combout => \u_i2c_av_config|u0|nx41315z22\);

-- Location: LCCOMB_X34_Y35_N12
\u_i2c_av_config|u0|ix41315z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z20\ = ((!\u_i2c_av_config|u0|nx41315z21\ & ((\u_i2c_av_config|u0|nx41315z22\) # (!\u_i2c_av_config|u0|nx41315z4\)))) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|u0|nx41315z4\,
	datac => \u_i2c_av_config|u0|nx41315z21\,
	datad => \u_i2c_av_config|u0|nx41315z22\,
	combout => \u_i2c_av_config|u0|nx41315z20\);

-- Location: LCCOMB_X37_Y33_N6
\u_i2c_av_config|modgen_counter_cont|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx54262z1\ = (\u_i2c_av_config|modgen_counter_cont|q_3_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z14\)) # (!\u_i2c_av_config|modgen_counter_cont|q_3_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z14\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z13\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z14\) # (!\u_i2c_av_config|modgen_counter_cont|q_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z14\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z13\);

-- Location: LCCOMB_X37_Y33_N10
\u_i2c_av_config|modgen_counter_cont|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx56256z1\ = (\u_i2c_av_config|modgen_counter_cont|q_5_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z12\)) # (!\u_i2c_av_config|modgen_counter_cont|q_5_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z12\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z11\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z12\) # (!\u_i2c_av_config|modgen_counter_cont|q_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z12\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z11\);

-- Location: LCCOMB_X37_Y33_N12
\u_i2c_av_config|modgen_counter_cont|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx57253z1\ = (\u_i2c_av_config|modgen_counter_cont|q_6_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z11\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_6_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z11\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z10\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_6_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z11\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z10\);

-- Location: LCCOMB_X37_Y33_N20
\u_i2c_av_config|modgen_counter_cont|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx17096z1\ = (\u_i2c_av_config|modgen_counter_cont|q_10_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z7\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_10_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z7\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z6\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_10_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z7\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z6\);

-- Location: LCCOMB_X37_Y33_N28
\u_i2c_av_config|modgen_counter_cont|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx21084z1\ = (\u_i2c_av_config|modgen_counter_cont|q_14_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z3\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_14_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z3\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z2\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_14_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z3\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z2\);

-- Location: LCCOMB_X37_Y33_N30
\u_i2c_av_config|modgen_counter_cont|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx22081z1\ = \u_i2c_av_config|modgen_counter_cont|nx22081z2\ $ (\u_i2c_av_config|modgen_counter_cont|q_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z2\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx22081z1\);

-- Location: CLKCTRL_G10
\aud_bclk_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aud_bclk_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_bclk_dup0~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y20_N30
\audio_out_15_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_15_~feeder_combout\ = \audio_out_1n1ss1_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_out_1n1ss1_11_\,
	combout => \audio_out_15_~feeder_combout\);

-- Location: LCCOMB_X28_Y20_N24
\audio_out_12_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_12_~feeder_combout\ = \audio_out_1n1ss1_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_out_1n1ss1_11_\,
	combout => \audio_out_12_~feeder_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_17_\ : cycloneii_io
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
	padio => ww_sw(17),
	combout => \sw~combout\(17));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_2_\ : cycloneii_io
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_0_\ : cycloneii_io
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_3_\ : cycloneii_io
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
	padio => ww_sw(3),
	combout => \sw~combout\(3));

-- Location: LCCOMB_X22_Y17_N28
ix49625z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z3 = (\sw~combout\(1) & (!\sw~combout\(2) & ((\sw~combout\(0)) # (\sw~combout\(3))))) # (!\sw~combout\(1) & ((\sw~combout\(2) & ((!\sw~combout\(3)))) # (!\sw~combout\(2) & (\sw~combout\(0) & \sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(2),
	datac => \sw~combout\(0),
	datad => \sw~combout\(3),
	combout => nx49625z3);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_1_\ : cycloneii_io
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: LCCOMB_X29_Y20_N26
ix49625z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z1 = (\sw~combout\(3) & (\sw~combout\(0) & (\sw~combout\(1) & \sw~combout\(2)))) # (!\sw~combout\(3) & (!\sw~combout\(2) & ((!\sw~combout\(1)) # (!\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx49625z1);

-- Location: LCCOMB_X29_Y20_N12
ix55607z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx55607z1 = (nx49625z2 & (!\sw~combout\(17) & (!nx49625z3 & !nx49625z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z2,
	datab => \sw~combout\(17),
	datac => nx49625z3,
	datad => nx49625z1,
	combout => nx55607z1);

-- Location: LCCOMB_X22_Y17_N24
ix49625z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z2 = (\sw~combout\(2) & (((!\sw~combout\(3))))) # (!\sw~combout\(2) & ((\sw~combout\(1) & (\sw~combout\(0) & !\sw~combout\(3))) # (!\sw~combout\(1) & (!\sw~combout\(0) & \sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(2),
	datac => \sw~combout\(0),
	datad => \sw~combout\(3),
	combout => nx49625z2);

-- Location: LCCOMB_X27_Y20_N24
ix49625z52926 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_2_\ = (\sw~combout\(17)) # (nx49625z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datac => nx49625z2,
	combout => \display_freq_2_\);

-- Location: LCCOMB_X29_Y20_N14
ix49625z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_3_\ = (\sw~combout\(17)) # (nx49625z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => nx49625z1,
	combout => \display_freq_3_\);

-- Location: LCCOMB_X22_Y17_N2
ix49625z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z4 = \sw~combout\(3) $ (((\sw~combout\(1) & (\sw~combout\(2) $ (\sw~combout\(0)))) # (!\sw~combout\(1) & (!\sw~combout\(2) & !\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(2),
	datac => \sw~combout\(0),
	datad => \sw~combout\(3),
	combout => nx49625z4);

-- Location: LCCOMB_X29_Y20_N0
ix49625z52930 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_0_\ = (!\sw~combout\(17) & nx49625z4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => nx49625z4,
	combout => \display_freq_0_\);

-- Location: LCCOMB_X29_Y20_N10
ix55607z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx55607z2 = (\display_freq_0_\ & ((\display_freq_1_\ & (!\display_freq_2_\ & \display_freq_3_\)) # (!\display_freq_1_\ & (\display_freq_2_\ $ (!\display_freq_3_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => nx55607z2);

-- Location: LCCOMB_X29_Y20_N28
ix55607z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_0_\ = (nx55607z2) # ((nx55607z1 & (\display_freq_2_\ & !\display_freq_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx55607z1,
	datab => \display_freq_2_\,
	datac => nx55607z2,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_0_\);

-- Location: LCCOMB_X29_Y20_N24
ix49625z52928 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_1_\ = (\sw~combout\(17)) # (nx49625z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datac => nx49625z3,
	combout => \display_freq_1_\);

-- Location: LCCOMB_X29_Y20_N6
ix54610z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_1_\ = (\display_freq_1_\ & ((\display_freq_0_\ & ((\display_freq_3_\))) # (!\display_freq_0_\ & (\display_freq_2_\)))) # (!\display_freq_1_\ & (\display_freq_2_\ & (\display_freq_3_\ $ (\display_freq_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_1_\);

-- Location: LCCOMB_X29_Y20_N16
ix53613z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_2_\ = (\display_freq_2_\ & (\display_freq_3_\ & ((\display_freq_1_\) # (!\display_freq_0_\)))) # (!\display_freq_2_\ & (\display_freq_1_\ & (!\display_freq_3_\ & !\display_freq_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_2_\);

-- Location: LCCOMB_X29_Y20_N18
ix52616z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_3_\ = (\display_freq_0_\ & (\display_freq_1_\ $ ((!\display_freq_2_\)))) # (!\display_freq_0_\ & ((\display_freq_1_\ & (!\display_freq_2_\ & \display_freq_3_\)) # (!\display_freq_1_\ & (\display_freq_2_\ & !\display_freq_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_3_\);

-- Location: LCCOMB_X29_Y20_N20
ix51619z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_4_\ = (\display_freq_1_\ & (((!\display_freq_3_\ & \display_freq_0_\)))) # (!\display_freq_1_\ & ((\display_freq_2_\ & (!\display_freq_3_\)) # (!\display_freq_2_\ & ((\display_freq_0_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_4_\);

-- Location: LCCOMB_X29_Y20_N22
ix50622z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_5_\ = (\display_freq_1_\ & (!\display_freq_3_\ & ((\display_freq_0_\) # (!\display_freq_2_\)))) # (!\display_freq_1_\ & (\display_freq_0_\ & (\display_freq_2_\ $ (!\display_freq_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_5_\);

-- Location: LCCOMB_X29_Y20_N8
ix49625z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_6_\ = (\display_freq_0_\ & (!\display_freq_3_\ & (\display_freq_1_\ $ (!\display_freq_2_\)))) # (!\display_freq_0_\ & (!\display_freq_1_\ & (\display_freq_2_\ $ (!\display_freq_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_1_\,
	datab => \display_freq_2_\,
	datac => \display_freq_3_\,
	datad => \display_freq_0_\,
	combout => \hex4_dup0_6_\);

-- Location: LCCOMB_X23_Y16_N4
ix38664z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z4 = (\sw~combout\(1) & (nx38664z5 & (\sw~combout\(3)))) # (!\sw~combout\(1) & (((!\sw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z5,
	datab => \sw~combout\(3),
	datac => \sw~combout\(2),
	datad => \sw~combout\(1),
	combout => nx38664z4);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_4_\ : cycloneii_io
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
	padio => ww_sw(4),
	combout => \sw~combout\(4));

-- Location: LCCOMB_X23_Y17_N20
ix38664z52927 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_6_\ = (\sw~combout\(17)) # ((\sw~combout\(4) & ((nx38664z4))) # (!\sw~combout\(4) & (nx38664z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z3,
	datab => \sw~combout\(17),
	datac => nx38664z4,
	datad => \sw~combout\(4),
	combout => \display_freq_6_\);

-- Location: LCCOMB_X22_Y17_N14
ix38664z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z1 = (\sw~combout\(3) & (!\sw~combout\(1) & \sw~combout\(2))) # (!\sw~combout\(3) & (\sw~combout\(1) & !\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx38664z1);

-- Location: LCCOMB_X23_Y17_N26
ix38664z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_7_\ = (!\sw~combout\(17) & ((\sw~combout\(4) & ((nx38664z1))) # (!\sw~combout\(4) & (nx38664z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z2,
	datab => \sw~combout\(17),
	datac => nx38664z1,
	datad => \sw~combout\(4),
	combout => \display_freq_7_\);

-- Location: LCCOMB_X23_Y17_N4
ix38664z52934 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_4_\ = (\sw~combout\(17)) # ((\sw~combout\(0) & (nx38664z8)) # (!\sw~combout\(0) & ((!\sw~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z8,
	datab => \sw~combout\(4),
	datac => \sw~combout\(17),
	datad => \sw~combout\(0),
	combout => \display_freq_4_\);

-- Location: LCCOMB_X22_Y17_N18
ix38664z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z7 = (\sw~combout\(3) & ((\sw~combout\(1) & (!\sw~combout\(2) & \sw~combout\(0))) # (!\sw~combout\(1) & (\sw~combout\(2) & !\sw~combout\(0))))) # (!\sw~combout\(3) & (\sw~combout\(1) $ (((\sw~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(2),
	datac => \sw~combout\(0),
	datad => \sw~combout\(3),
	combout => nx38664z7);

-- Location: LCCOMB_X23_Y17_N6
ix38664z52931 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_5_\ = (!\sw~combout\(17) & ((\sw~combout\(4) & (nx38664z6)) # (!\sw~combout\(4) & ((nx38664z7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z6,
	datab => \sw~combout\(17),
	datac => nx38664z7,
	datad => \sw~combout\(4),
	combout => \display_freq_5_\);

-- Location: LCCOMB_X23_Y17_N30
ix32682z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_0_\ = (\display_freq_6_\ & (!\display_freq_5_\ & (\display_freq_7_\ $ (!\display_freq_4_\)))) # (!\display_freq_6_\ & (\display_freq_4_\ & (\display_freq_7_\ $ (!\display_freq_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_0_\);

-- Location: LCCOMB_X23_Y17_N0
ix33679z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_1_\ = (\display_freq_7_\ & ((\display_freq_4_\ & ((\display_freq_5_\))) # (!\display_freq_4_\ & (\display_freq_6_\)))) # (!\display_freq_7_\ & (\display_freq_6_\ & (\display_freq_4_\ $ (\display_freq_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_1_\);

-- Location: LCCOMB_X23_Y17_N2
ix34676z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_2_\ = (\display_freq_6_\ & (\display_freq_7_\ & ((\display_freq_5_\) # (!\display_freq_4_\)))) # (!\display_freq_6_\ & (!\display_freq_7_\ & (!\display_freq_4_\ & \display_freq_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_2_\);

-- Location: LCCOMB_X23_Y17_N12
ix35673z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_3_\ = (\display_freq_4_\ & (\display_freq_6_\ $ (((!\display_freq_5_\))))) # (!\display_freq_4_\ & ((\display_freq_6_\ & (!\display_freq_7_\ & !\display_freq_5_\)) # (!\display_freq_6_\ & (\display_freq_7_\ & \display_freq_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_3_\);

-- Location: LCCOMB_X23_Y17_N14
ix36670z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_4_\ = (\display_freq_5_\ & (((!\display_freq_7_\ & \display_freq_4_\)))) # (!\display_freq_5_\ & ((\display_freq_6_\ & (!\display_freq_7_\)) # (!\display_freq_6_\ & ((\display_freq_4_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_4_\);

-- Location: LCCOMB_X23_Y17_N8
ix37667z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_5_\ = (\display_freq_6_\ & (\display_freq_4_\ & (\display_freq_7_\ $ (\display_freq_5_\)))) # (!\display_freq_6_\ & (!\display_freq_7_\ & ((\display_freq_4_\) # (\display_freq_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_5_\);

-- Location: LCCOMB_X23_Y17_N18
ix38664z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_6_\ = (\display_freq_4_\ & (!\display_freq_7_\ & (\display_freq_6_\ $ (!\display_freq_5_\)))) # (!\display_freq_4_\ & (!\display_freq_5_\ & (\display_freq_6_\ $ (!\display_freq_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_6_\,
	datab => \display_freq_7_\,
	datac => \display_freq_4_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_6_\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_6_\ : cycloneii_io
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
	padio => ww_sw(6),
	combout => \sw~combout\(6));

-- Location: LCCOMB_X22_Y17_N22
ix4119z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z11 = (!\sw~combout\(4) & (((!\sw~combout\(0) & !\sw~combout\(2))) # (!\sw~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(4),
	datac => \sw~combout\(0),
	datad => \sw~combout\(2),
	combout => nx4119z11);

-- Location: LCCOMB_X22_Y17_N0
ix4119z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z9 = (\sw~combout\(1) & (nx4119z10)) # (!\sw~combout\(1) & (((!\sw~combout\(6) & nx4119z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z10,
	datab => \sw~combout\(6),
	datac => \sw~combout\(1),
	datad => nx4119z11,
	combout => nx4119z9);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_5_\ : cycloneii_io
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
	padio => ww_sw(5),
	combout => \sw~combout\(5));

-- Location: LCCOMB_X21_Y17_N18
ix4119z52933 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_9_\ = (!\sw~combout\(17) & ((\sw~combout\(5) & ((nx4119z9))) # (!\sw~combout\(5) & (nx4119z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z8,
	datab => nx4119z9,
	datac => \sw~combout\(5),
	datad => \sw~combout\(17),
	combout => \display_freq_9_\);

-- Location: LCCOMB_X22_Y17_N16
ix4119z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z4 = (\sw~combout\(6) & !\sw~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(6),
	datad => \sw~combout\(17),
	combout => nx4119z4);

-- Location: LCCOMB_X23_Y16_N0
ix4119z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z3 = (!\sw~combout\(0) & (\sw~combout\(5) & (!\sw~combout\(2) & !\sw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(5),
	datac => \sw~combout\(2),
	datad => \sw~combout\(1),
	combout => nx4119z3);

-- Location: LCCOMB_X22_Y17_N30
ix4119z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z2 = (\sw~combout\(4) & (!\sw~combout\(5))) # (!\sw~combout\(4) & ((nx4119z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(4),
	datac => \sw~combout\(5),
	datad => nx4119z3,
	combout => nx4119z2);

-- Location: LCCOMB_X21_Y17_N24
ix4119z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_11_\ = (nx4119z4 & ((\sw~combout\(3) & ((nx4119z2))) # (!\sw~combout\(3) & (nx4119z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z1,
	datab => nx4119z4,
	datac => \sw~combout\(3),
	datad => nx4119z2,
	combout => \display_freq_11_\);

-- Location: LCCOMB_X21_Y17_N26
ix4119z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z5 = (!\sw~combout\(5) & (((!\sw~combout\(3) & !\sw~combout\(2))) # (!\sw~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datab => \sw~combout\(3),
	datac => \sw~combout\(5),
	datad => \sw~combout\(2),
	combout => nx4119z5);

-- Location: LCCOMB_X21_Y17_N22
ix4119z52929 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_10_\ = (!\sw~combout\(17) & ((nx4119z6) # ((\sw~combout\(6) & nx4119z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z6,
	datab => \sw~combout\(17),
	datac => \sw~combout\(6),
	datad => nx4119z5,
	combout => \display_freq_10_\);

-- Location: LCCOMB_X21_Y17_N8
ix10101z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx10101z2 = (\display_freq_8_\ & (\display_freq_9_\ & (\display_freq_11_\ & !\display_freq_10_\))) # (!\display_freq_8_\ & (!\display_freq_9_\ & (!\display_freq_11_\ & \display_freq_10_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => nx10101z2);

-- Location: LCCOMB_X21_Y17_N30
ix10101z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx10101z1 = (\display_freq_8_\ & (!\display_freq_9_\ & (\display_freq_11_\ $ (!\display_freq_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => nx10101z1);

-- Location: LCCOMB_X21_Y17_N10
ix10101z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_0_\ = (nx10101z2) # (nx10101z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx10101z2,
	datad => nx10101z1,
	combout => \hex6_dup0_0_\);

-- Location: LCCOMB_X22_Y17_N10
ix4119z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z12 = \sw~combout\(5) $ (((\sw~combout\(4) & !\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(5),
	datac => \sw~combout\(4),
	datad => \sw~combout\(2),
	combout => nx4119z12);

-- Location: LCCOMB_X21_Y17_N12
ix4119z52938 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_8_\ = (nx4119z13) # ((\sw~combout\(17)) # ((nx4119z12 & !\sw~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z13,
	datab => nx4119z12,
	datac => \sw~combout\(3),
	datad => \sw~combout\(17),
	combout => \display_freq_8_\);

-- Location: LCCOMB_X21_Y17_N28
ix9104z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_1_\ = (\display_freq_9_\ & ((\display_freq_8_\ & (\display_freq_11_\)) # (!\display_freq_8_\ & ((\display_freq_10_\))))) # (!\display_freq_9_\ & (\display_freq_10_\ & (\display_freq_8_\ $ (\display_freq_11_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_1_\);

-- Location: LCCOMB_X21_Y17_N6
ix8107z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_2_\ = (\display_freq_11_\ & (\display_freq_10_\ & ((\display_freq_9_\) # (!\display_freq_8_\)))) # (!\display_freq_11_\ & (!\display_freq_8_\ & (\display_freq_9_\ & !\display_freq_10_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_2_\);

-- Location: LCCOMB_X21_Y17_N0
ix7110z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_3_\ = (\display_freq_8_\ & (\display_freq_9_\ $ (((!\display_freq_10_\))))) # (!\display_freq_8_\ & ((\display_freq_9_\ & (\display_freq_11_\ & !\display_freq_10_\)) # (!\display_freq_9_\ & (!\display_freq_11_\ & \display_freq_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_3_\);

-- Location: LCCOMB_X21_Y17_N2
ix6113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_4_\ = (\display_freq_9_\ & (\display_freq_8_\ & (!\display_freq_11_\))) # (!\display_freq_9_\ & ((\display_freq_10_\ & ((!\display_freq_11_\))) # (!\display_freq_10_\ & (\display_freq_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_4_\);

-- Location: LCCOMB_X21_Y17_N4
ix5116z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_5_\ = (\display_freq_8_\ & (\display_freq_11_\ $ (((\display_freq_9_\) # (!\display_freq_10_\))))) # (!\display_freq_8_\ & (\display_freq_9_\ & (!\display_freq_11_\ & !\display_freq_10_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_5_\);

-- Location: LCCOMB_X21_Y17_N14
ix4119z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_6_\ = (\display_freq_8_\ & (!\display_freq_11_\ & (\display_freq_9_\ $ (!\display_freq_10_\)))) # (!\display_freq_8_\ & (!\display_freq_9_\ & (\display_freq_11_\ $ (!\display_freq_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_8_\,
	datab => \display_freq_9_\,
	datac => \display_freq_11_\,
	datad => \display_freq_10_\,
	combout => \hex6_dup0_6_\);

-- Location: LCCOMB_X23_Y16_N30
ix17637z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx17637z1 = (\sw~combout\(4) & (((\sw~combout\(5))))) # (!\sw~combout\(4) & (nx17637z2 & (\sw~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17637z2,
	datab => \sw~combout\(3),
	datac => \sw~combout\(4),
	datad => \sw~combout\(5),
	combout => nx17637z1);

-- Location: LCCOMB_X22_Y16_N16
ix17637z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex7_dup0_0_\ = (!\sw~combout\(17) & (\sw~combout\(6) & nx17637z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datac => \sw~combout\(6),
	datad => nx17637z1,
	combout => \hex7_dup0_0_\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clock_27_ibuf : cycloneii_io
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
	padio => ww_clock_27,
	combout => \clock_27~combout\);

-- Location: PLL_3
\u_audio_dac_p1_altpll|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 15,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 3,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 20,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5840,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|pll_INCLK_bus\,
	clk => \u_audio_dac_p1_altpll|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\u_audio_dac_p1_altpll|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y20_N12
ix51811z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \NOT_bit_position_0_\ = !\bit_position_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_0_\,
	combout => \NOT_bit_position_0_\);

-- Location: LCFF_X28_Y20_N13
\modgen_counter_bit_position_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => \NOT_bit_position_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_0_\);

-- Location: LCCOMB_X28_Y20_N18
ix50814z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50814z1 = \bit_position_1_\ $ (\bit_position_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_1_\,
	datad => \bit_position_0_\,
	combout => nx50814z1);

-- Location: LCFF_X28_Y20_N19
\modgen_counter_bit_position_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx50814z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_1_\);

-- Location: LCCOMB_X28_Y20_N6
ix49817z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx49817z1 = \bit_position_2_\ $ (((\bit_position_1_\ & \bit_position_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_position_1_\,
	datac => \bit_position_2_\,
	datad => \bit_position_0_\,
	combout => nx49817z1);

-- Location: LCFF_X28_Y20_N7
\modgen_counter_bit_position_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx49817z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_2_\);

-- Location: LCCOMB_X34_Y27_N14
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_ibuf_0_\ : cycloneii_io
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
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCCOMB_X35_Y27_N14
ix48238z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48238z1 = (!\key~combout\(0)) # (!nx50205z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx50205z2,
	datad => \key~combout\(0),
	combout => nx48238z1);

-- Location: LCFF_X34_Y27_N15
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\);

-- Location: LCCOMB_X34_Y27_N18
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\);

-- Location: LCFF_X34_Y27_N19
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\);

-- Location: LCCOMB_X34_Y27_N22
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\);

-- Location: LCFF_X34_Y27_N23
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\);

-- Location: LCCOMB_X34_Y27_N24
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & 
-- (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ & VCC))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\);

-- Location: LCCOMB_X34_Y27_N26
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & 
-- ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\) # (GND)))
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\);

-- Location: LCFF_X34_Y27_N27
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\);

-- Location: LCFF_X34_Y27_N25
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\);

-- Location: LCCOMB_X34_Y27_N28
\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ $ (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\);

-- Location: LCFF_X34_Y27_N29
\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\);

-- Location: LCCOMB_X35_Y27_N22
ix50205z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z2 = (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ & (((nx50205z3 & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\)) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx50205z3,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	combout => nx50205z2);

-- Location: LCCOMB_X35_Y27_N0
ix50205z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z1 = aud_adclrck_dup0 $ (!nx50205z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aud_adclrck_dup0,
	datad => nx50205z2,
	combout => nx50205z1);

-- Location: LCFF_X35_Y27_N1
u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx50205z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_adclrck_dup0);

-- Location: CLKCTRL_G8
\aud_adclrck_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aud_adclrck_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_adclrck_dup0~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y17_N10
\u_noise_modgen_counter_address|ix60244z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx51271z1\ = \u_noise_modgen_counter_address|q_0_\ $ (VCC)
-- \u_noise_modgen_counter_address|nx60244z10\ = CARRY(\u_noise_modgen_counter_address|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_0_\,
	datad => VCC,
	combout => \u_noise_modgen_counter_address|nx51271z1\,
	cout => \u_noise_modgen_counter_address|nx60244z10\);

-- Location: LCFF_X27_Y17_N11
\u_noise_modgen_counter_address|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_0_\);

-- Location: LCCOMB_X27_Y17_N12
\u_noise_modgen_counter_address|ix60244z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx52268z1\ = (\u_noise_modgen_counter_address|q_1_\ & (!\u_noise_modgen_counter_address|nx60244z10\)) # (!\u_noise_modgen_counter_address|q_1_\ & ((\u_noise_modgen_counter_address|nx60244z10\) # (GND)))
-- \u_noise_modgen_counter_address|nx60244z9\ = CARRY((!\u_noise_modgen_counter_address|nx60244z10\) # (!\u_noise_modgen_counter_address|q_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_1_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z10\,
	combout => \u_noise_modgen_counter_address|nx52268z1\,
	cout => \u_noise_modgen_counter_address|nx60244z9\);

-- Location: LCFF_X27_Y17_N13
\u_noise_modgen_counter_address|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx52268z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_1_\);

-- Location: LCCOMB_X27_Y17_N14
\u_noise_modgen_counter_address|ix60244z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx53265z1\ = (\u_noise_modgen_counter_address|q_2_\ & (\u_noise_modgen_counter_address|nx60244z9\ $ (GND))) # (!\u_noise_modgen_counter_address|q_2_\ & (!\u_noise_modgen_counter_address|nx60244z9\ & VCC))
-- \u_noise_modgen_counter_address|nx60244z8\ = CARRY((\u_noise_modgen_counter_address|q_2_\ & !\u_noise_modgen_counter_address|nx60244z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_2_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z9\,
	combout => \u_noise_modgen_counter_address|nx53265z1\,
	cout => \u_noise_modgen_counter_address|nx60244z8\);

-- Location: LCFF_X27_Y17_N15
\u_noise_modgen_counter_address|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_2_\);

-- Location: LCCOMB_X27_Y17_N16
\u_noise_modgen_counter_address|ix60244z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx54262z1\ = (\u_noise_modgen_counter_address|q_3_\ & (!\u_noise_modgen_counter_address|nx60244z8\)) # (!\u_noise_modgen_counter_address|q_3_\ & ((\u_noise_modgen_counter_address|nx60244z8\) # (GND)))
-- \u_noise_modgen_counter_address|nx60244z7\ = CARRY((!\u_noise_modgen_counter_address|nx60244z8\) # (!\u_noise_modgen_counter_address|q_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_3_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z8\,
	combout => \u_noise_modgen_counter_address|nx54262z1\,
	cout => \u_noise_modgen_counter_address|nx60244z7\);

-- Location: LCFF_X27_Y17_N17
\u_noise_modgen_counter_address|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx54262z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_3_\);

-- Location: LCCOMB_X27_Y17_N18
\u_noise_modgen_counter_address|ix60244z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx55259z1\ = (\u_noise_modgen_counter_address|q_4_\ & (\u_noise_modgen_counter_address|nx60244z7\ $ (GND))) # (!\u_noise_modgen_counter_address|q_4_\ & (!\u_noise_modgen_counter_address|nx60244z7\ & VCC))
-- \u_noise_modgen_counter_address|nx60244z6\ = CARRY((\u_noise_modgen_counter_address|q_4_\ & !\u_noise_modgen_counter_address|nx60244z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_4_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z7\,
	combout => \u_noise_modgen_counter_address|nx55259z1\,
	cout => \u_noise_modgen_counter_address|nx60244z6\);

-- Location: LCFF_X27_Y17_N19
\u_noise_modgen_counter_address|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx55259z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_4_\);

-- Location: LCCOMB_X27_Y17_N20
\u_noise_modgen_counter_address|ix60244z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx56256z1\ = (\u_noise_modgen_counter_address|q_5_\ & (!\u_noise_modgen_counter_address|nx60244z6\)) # (!\u_noise_modgen_counter_address|q_5_\ & ((\u_noise_modgen_counter_address|nx60244z6\) # (GND)))
-- \u_noise_modgen_counter_address|nx60244z5\ = CARRY((!\u_noise_modgen_counter_address|nx60244z6\) # (!\u_noise_modgen_counter_address|q_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_5_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z6\,
	combout => \u_noise_modgen_counter_address|nx56256z1\,
	cout => \u_noise_modgen_counter_address|nx60244z5\);

-- Location: LCFF_X27_Y17_N21
\u_noise_modgen_counter_address|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx56256z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_5_\);

-- Location: LCCOMB_X27_Y17_N22
\u_noise_modgen_counter_address|ix60244z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx57253z1\ = (\u_noise_modgen_counter_address|q_6_\ & (\u_noise_modgen_counter_address|nx60244z5\ $ (GND))) # (!\u_noise_modgen_counter_address|q_6_\ & (!\u_noise_modgen_counter_address|nx60244z5\ & VCC))
-- \u_noise_modgen_counter_address|nx60244z4\ = CARRY((\u_noise_modgen_counter_address|q_6_\ & !\u_noise_modgen_counter_address|nx60244z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_6_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z5\,
	combout => \u_noise_modgen_counter_address|nx57253z1\,
	cout => \u_noise_modgen_counter_address|nx60244z4\);

-- Location: LCFF_X27_Y17_N23
\u_noise_modgen_counter_address|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx57253z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_6_\);

-- Location: LCCOMB_X27_Y17_N24
\u_noise_modgen_counter_address|ix60244z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx58250z1\ = (\u_noise_modgen_counter_address|q_7_\ & (!\u_noise_modgen_counter_address|nx60244z4\)) # (!\u_noise_modgen_counter_address|q_7_\ & ((\u_noise_modgen_counter_address|nx60244z4\) # (GND)))
-- \u_noise_modgen_counter_address|nx60244z3\ = CARRY((!\u_noise_modgen_counter_address|nx60244z4\) # (!\u_noise_modgen_counter_address|q_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_7_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z4\,
	combout => \u_noise_modgen_counter_address|nx58250z1\,
	cout => \u_noise_modgen_counter_address|nx60244z3\);

-- Location: LCFF_X27_Y17_N25
\u_noise_modgen_counter_address|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx58250z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_7_\);

-- Location: LCCOMB_X27_Y17_N26
\u_noise_modgen_counter_address|ix60244z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx59247z1\ = (\u_noise_modgen_counter_address|q_8_\ & (\u_noise_modgen_counter_address|nx60244z3\ $ (GND))) # (!\u_noise_modgen_counter_address|q_8_\ & (!\u_noise_modgen_counter_address|nx60244z3\ & VCC))
-- \u_noise_modgen_counter_address|nx60244z2\ = CARRY((\u_noise_modgen_counter_address|q_8_\ & !\u_noise_modgen_counter_address|nx60244z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_8_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z3\,
	combout => \u_noise_modgen_counter_address|nx59247z1\,
	cout => \u_noise_modgen_counter_address|nx60244z2\);

-- Location: LCFF_X27_Y17_N27
\u_noise_modgen_counter_address|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx59247z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_8_\);

-- Location: LCCOMB_X27_Y17_N28
\u_noise_modgen_counter_address|ix60244z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx60244z1\ = \u_noise_modgen_counter_address|nx60244z2\ $ (\u_noise_modgen_counter_address|q_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_noise_modgen_counter_address|q_9_\,
	cin => \u_noise_modgen_counter_address|nx60244z2\,
	combout => \u_noise_modgen_counter_address|nx60244z1\);

-- Location: LCFF_X27_Y17_N29
\u_noise_modgen_counter_address|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx60244z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_9_\);

-- Location: M4K_X26_Y18
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"1CCEF41A1BE47B8EC04C69D25338F89DDDA04462E827F38DF7D87736B3517F37C3BD4EEDBC309969D6847E3A8D9E0546A6700407E03FE015782194605E54BF10A4F01C8753EB30F760E7C2D24A7EDA6FA4B976DC7F532C2087A84E230F6D5D48D4C1CAAA053DEDF862AEE36B900FC597EC9508728DBB2580FAA9F43FABC5E761295AD818B8612D2FD3F34DA7548C5291536D48CA1E8177D5E75C234648A6DA3CA9E3C16061B05E2CA80E6F469B2EFF2EE04A8257181E62E221EB472AEB49A47B49A61466F543FDB1D62BB60B4B1039E0888665FA817D9179C09FE07C6AE7B3C0FEED2EDA7B5488906381A0965AA97FB8404A5E545D076319B8A259FDCAAA84FC",
	mem_init0 => X"CEB17C5FD83D7C7B444BC9ABCDF44E371EC0BA3773F455A6F03E3250F1DC94A09F7C8DB510F647126FC270098A4B0210E7421635F860E4C07CABE65604A560AD6538DD9E1BFA6628CA10415295D63B13B1E9E22EC1A27E393203E5B0DA4157A7275CCBCBEC41476D599E9C69E6E044F3710F98C4D4E691B32891AA1F76F7F75DEBF5E3FF7A4677932355ECDD8081CC602CBCB9A92763BAFF43ADA446CFF2AB71845993CABA02645D0CB0BF724914112CC94B90AF9E5446AE795051F5CB6BF2B50AA4581EA2EF8B6A1BC774E848C2BEE93DE4DB7640E2C482DFE54DDF6E9B5ADB87A47F137504B2AD332F5F692F00C5B8C4552DBAF9A05C9ADD576576D9B200FE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y20_N26
ix62120z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_5_\ = (\sw~combout\(17) & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1)))) # (!\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5),
	datab => \sw~combout\(17),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1),
	combout => \audio_out_1n1ss1_5_\);

-- Location: LCCOMB_X23_Y16_N6
\u_sine_address_add9_0i1|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx37973z1\ = (\sw~combout\(0) & ((\u_sine_address_0_\) # (GND))) # (!\sw~combout\(0) & (\u_sine_address_0_\ $ (VCC)))
-- \u_sine_address_add9_0i1|nx45949z23\ = CARRY((\sw~combout\(0)) # (\u_sine_address_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \u_sine_address_0_\,
	datad => VCC,
	combout => \u_sine_address_add9_0i1|nx37973z1\,
	cout => \u_sine_address_add9_0i1|nx45949z23\);

-- Location: LCFF_X23_Y16_N7
\u_sine_reg_address_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_0_\);

-- Location: LCCOMB_X23_Y16_N12
\u_sine_address_add9_0i1|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx40964z1\ = (\u_sine_address_3_\ & ((\sw~combout\(3) & (\u_sine_address_add9_0i1|nx45949z17\ & VCC)) # (!\sw~combout\(3) & (!\u_sine_address_add9_0i1|nx45949z17\)))) # (!\u_sine_address_3_\ & ((\sw~combout\(3) & 
-- (!\u_sine_address_add9_0i1|nx45949z17\)) # (!\sw~combout\(3) & ((\u_sine_address_add9_0i1|nx45949z17\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z14\ = CARRY((\u_sine_address_3_\ & (!\sw~combout\(3) & !\u_sine_address_add9_0i1|nx45949z17\)) # (!\u_sine_address_3_\ & ((!\u_sine_address_add9_0i1|nx45949z17\) # (!\sw~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_3_\,
	datab => \sw~combout\(3),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z17\,
	combout => \u_sine_address_add9_0i1|nx40964z1\,
	cout => \u_sine_address_add9_0i1|nx45949z14\);

-- Location: LCCOMB_X23_Y16_N14
\u_sine_address_add9_0i1|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx41961z1\ = ((\u_sine_address_4_\ $ (\sw~combout\(4) $ (!\u_sine_address_add9_0i1|nx45949z14\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z11\ = CARRY((\u_sine_address_4_\ & ((\sw~combout\(4)) # (!\u_sine_address_add9_0i1|nx45949z14\))) # (!\u_sine_address_4_\ & (\sw~combout\(4) & !\u_sine_address_add9_0i1|nx45949z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_4_\,
	datab => \sw~combout\(4),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z14\,
	combout => \u_sine_address_add9_0i1|nx41961z1\,
	cout => \u_sine_address_add9_0i1|nx45949z11\);

-- Location: LCCOMB_X23_Y16_N16
\u_sine_address_add9_0i1|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx42958z1\ = (\u_sine_address_5_\ & ((\sw~combout\(5) & (\u_sine_address_add9_0i1|nx45949z11\ & VCC)) # (!\sw~combout\(5) & (!\u_sine_address_add9_0i1|nx45949z11\)))) # (!\u_sine_address_5_\ & ((\sw~combout\(5) & 
-- (!\u_sine_address_add9_0i1|nx45949z11\)) # (!\sw~combout\(5) & ((\u_sine_address_add9_0i1|nx45949z11\) # (GND)))))
-- \u_sine_address_add9_0i1|nx45949z8\ = CARRY((\u_sine_address_5_\ & (!\sw~combout\(5) & !\u_sine_address_add9_0i1|nx45949z11\)) # (!\u_sine_address_5_\ & ((!\u_sine_address_add9_0i1|nx45949z11\) # (!\sw~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_5_\,
	datab => \sw~combout\(5),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z11\,
	combout => \u_sine_address_add9_0i1|nx42958z1\,
	cout => \u_sine_address_add9_0i1|nx45949z8\);

-- Location: LCFF_X23_Y16_N19
\u_sine_reg_address_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_6_\);

-- Location: LCCOMB_X23_Y16_N18
\u_sine_address_add9_0i1|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx43955z1\ = ((\sw~combout\(6) $ (\u_sine_address_6_\ $ (!\u_sine_address_add9_0i1|nx45949z8\)))) # (GND)
-- \u_sine_address_add9_0i1|nx45949z5\ = CARRY((\sw~combout\(6) & ((\u_sine_address_6_\) # (!\u_sine_address_add9_0i1|nx45949z8\))) # (!\sw~combout\(6) & (\u_sine_address_6_\ & !\u_sine_address_add9_0i1|nx45949z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \u_sine_address_6_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z8\,
	combout => \u_sine_address_add9_0i1|nx43955z1\,
	cout => \u_sine_address_add9_0i1|nx45949z5\);

-- Location: LCCOMB_X23_Y16_N20
\u_sine_address_add9_0i1|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx44952z1\ = (\u_sine_address_7_\ & (!\u_sine_address_add9_0i1|nx45949z5\)) # (!\u_sine_address_7_\ & ((\u_sine_address_add9_0i1|nx45949z5\) # (GND)))
-- \u_sine_address_add9_0i1|nx45949z3\ = CARRY((!\u_sine_address_add9_0i1|nx45949z5\) # (!\u_sine_address_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_7_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z5\,
	combout => \u_sine_address_add9_0i1|nx44952z1\,
	cout => \u_sine_address_add9_0i1|nx45949z3\);

-- Location: LCFF_X23_Y16_N23
\u_sine_reg_address_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_8_\);

-- Location: LCCOMB_X23_Y16_N22
\u_sine_address_add9_0i1|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx45949z1\ = \u_sine_address_add9_0i1|nx45949z3\ $ (!\u_sine_address_8_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_address_8_\,
	cin => \u_sine_address_add9_0i1|nx45949z3\,
	combout => \u_sine_address_add9_0i1|nx45949z1\);

-- Location: LCCOMB_X23_Y17_N22
\low_pass_in_15_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_15_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11),
	combout => \low_pass_in_15_~feeder_combout\);

-- Location: M4K_X26_Y17
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"6441071CC8DE5D70761D40307C107E752202FA68CEC0B138C8C693A73757EDF69A8A86C176B00B9787DCC0627C1F65A7319C05622E092119B1D5452D8906942F7F92155731A79E4E36F3F5B6AB61A527BBB5C112CD5F072CD4462D220F3618913DAC993A0242AB7B5D496579A515B87F2DD7786AEC61308B4035E909993CE60AA55580806C67938C40FE2034BDA36E9E9ED1AC81607B3DD8BD24FBBFCFE232BCE1B3C0B68A82FC38FAE6AF35704AFF0B6A1D875A883C0A3E4A0EFFA5619C9A55D281C6E0DDA905EDBF32F21323736EA9B67BCA0D1AC0194E7E753AB70806122991D4589C802A95807AB8A0FE624BE21DF1638F8C73F865138865965874A357E2",
	mem_init0 => X"005AE5EF060ACA6F8EB5B89C615C6D492EB7690F6CDD613F016E49843E3F6ED75825624789A85C62C6E2B42DEDC438A5BDEEA158314108DC266D0D9C451EE4A14BE43DD77A1879D597ACA2380A0C2230C2B9C9CFCA5DDC9B7104377DE21BED9711BA4C1EE5C9E89FEB990A0B74439663CAB11A1754C3BA781F2D92A83679F7637C35FD108C9FD80F061AED3E7010535EBA9727A7C6DD2223A96A63FB8825464BC6A8356B49090009D2D4D201A983D46801E32A314E2C21C84DC875D7DA7158F9BF816213CFFBAEEDB425DA093514C783D366B31FC4EA19E993B70B47932A50B2459CB6FAA2F809FF22B24DAE9F1DD6F2A6FBFA0D3A4912743C2528C459AC1311",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_ibuf_16_\ : cycloneii_io
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
	padio => ww_sw(16),
	combout => \sw~combout\(16));

-- Location: LCFF_X23_Y17_N23
\reg_low_pass_in_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_15_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_15_\);

-- Location: LCCOMB_X23_Y17_N28
\low_pass_in_10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_10_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10),
	combout => \low_pass_in_10_~feeder_combout\);

-- Location: LCFF_X23_Y17_N29
\reg_low_pass_in_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_10_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_10_\);

-- Location: LCCOMB_X24_Y18_N8
\low_pass_in_8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_8_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8),
	combout => \low_pass_in_8_~feeder_combout\);

-- Location: LCFF_X24_Y18_N9
\reg_low_pass_in_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_8_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_8_\);

-- Location: LCCOMB_X24_Y18_N12
\low_pass_in_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_7_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7),
	combout => \low_pass_in_7_~feeder_combout\);

-- Location: LCFF_X24_Y18_N13
\reg_low_pass_in_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_7_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_7_\);

-- Location: LCCOMB_X24_Y18_N0
\low_pass_in_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_5_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5),
	combout => \low_pass_in_5_~feeder_combout\);

-- Location: LCFF_X24_Y18_N1
\reg_low_pass_in_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_5_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_5_\);

-- Location: LCCOMB_X24_Y18_N10
\low_pass_in_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_4_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4),
	combout => \low_pass_in_4_~feeder_combout\);

-- Location: LCFF_X24_Y18_N11
\reg_low_pass_in_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_4_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_4_\);

-- Location: LCCOMB_X27_Y20_N22
ix37222z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_2_\ = (!\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2),
	combout => \audio_out_1n1ss1_2_\);

-- Location: LCFF_X23_Y18_N5
\reg_low_pass_in_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \audio_out_1n1ss1_2_\,
	sload => VCC,
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_2_\);

-- Location: LCCOMB_X27_Y20_N28
ix35228z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_0_\ = (!\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0),
	combout => \audio_out_1n1ss1_0_\);

-- Location: LCFF_X23_Y20_N1
\reg_low_pass_in_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \audio_out_1n1ss1_0_\,
	sload => VCC,
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_0_\);

-- Location: LCCOMB_X23_Y18_N2
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z16\ = CARRY((\low_pass_in_1_\ & \low_pass_in_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_0_\,
	datad => VCC,
	cout => \low_pass|prod_5__mults21_4|nx3244z16\);

-- Location: LCCOMB_X23_Y18_N4
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z15\ = CARRY((\low_pass_in_1_\ & (!\low_pass_in_2_\ & !\low_pass|prod_5__mults21_4|nx3244z16\)) # (!\low_pass_in_1_\ & ((!\low_pass|prod_5__mults21_4|nx3244z16\) # (!\low_pass_in_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z16\,
	cout => \low_pass|prod_5__mults21_4|nx3244z15\);

-- Location: LCCOMB_X23_Y18_N8
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_3_\ = (\low_pass_in_3_\ & ((\low_pass_in_4_\ & (\low_pass|prod_5__mults21_4|nx3244z14\ & VCC)) # (!\low_pass_in_4_\ & (!\low_pass|prod_5__mults21_4|nx3244z14\)))) # (!\low_pass_in_3_\ & ((\low_pass_in_4_\ & 
-- (!\low_pass|prod_5__mults21_4|nx3244z14\)) # (!\low_pass_in_4_\ & ((\low_pass|prod_5__mults21_4|nx3244z14\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z13\ = CARRY((\low_pass_in_3_\ & (!\low_pass_in_4_\ & !\low_pass|prod_5__mults21_4|nx3244z14\)) # (!\low_pass_in_3_\ & ((!\low_pass|prod_5__mults21_4|nx3244z14\) # (!\low_pass_in_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_3_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z14\,
	combout => \low_pass|prod_5__mults21_4|d_3_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z13\);

-- Location: LCCOMB_X23_Y18_N10
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_4_\ = ((\low_pass_in_4_\ $ (\low_pass_in_5_\ $ (!\low_pass|prod_5__mults21_4|nx3244z13\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z12\ = CARRY((\low_pass_in_4_\ & ((\low_pass_in_5_\) # (!\low_pass|prod_5__mults21_4|nx3244z13\))) # (!\low_pass_in_4_\ & (\low_pass_in_5_\ & !\low_pass|prod_5__mults21_4|nx3244z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass_in_5_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z13\,
	combout => \low_pass|prod_5__mults21_4|d_4_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z12\);

-- Location: LCCOMB_X23_Y18_N12
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_5_\ = (\low_pass_in_6_\ & ((\low_pass_in_5_\ & (\low_pass|prod_5__mults21_4|nx3244z12\ & VCC)) # (!\low_pass_in_5_\ & (!\low_pass|prod_5__mults21_4|nx3244z12\)))) # (!\low_pass_in_6_\ & ((\low_pass_in_5_\ & 
-- (!\low_pass|prod_5__mults21_4|nx3244z12\)) # (!\low_pass_in_5_\ & ((\low_pass|prod_5__mults21_4|nx3244z12\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z11\ = CARRY((\low_pass_in_6_\ & (!\low_pass_in_5_\ & !\low_pass|prod_5__mults21_4|nx3244z12\)) # (!\low_pass_in_6_\ & ((!\low_pass|prod_5__mults21_4|nx3244z12\) # (!\low_pass_in_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_5_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z12\,
	combout => \low_pass|prod_5__mults21_4|d_5_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z11\);

-- Location: LCCOMB_X23_Y18_N14
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_6_\ = ((\low_pass_in_6_\ $ (\low_pass_in_7_\ $ (!\low_pass|prod_5__mults21_4|nx3244z11\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z10\ = CARRY((\low_pass_in_6_\ & ((\low_pass_in_7_\) # (!\low_pass|prod_5__mults21_4|nx3244z11\))) # (!\low_pass_in_6_\ & (\low_pass_in_7_\ & !\low_pass|prod_5__mults21_4|nx3244z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_7_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z11\,
	combout => \low_pass|prod_5__mults21_4|d_6_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z10\);

-- Location: LCCOMB_X23_Y18_N18
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_8_\ = ((\low_pass_in_9_\ $ (\low_pass_in_8_\ $ (!\low_pass|prod_5__mults21_4|nx3244z9\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z8\ = CARRY((\low_pass_in_9_\ & ((\low_pass_in_8_\) # (!\low_pass|prod_5__mults21_4|nx3244z9\))) # (!\low_pass_in_9_\ & (\low_pass_in_8_\ & !\low_pass|prod_5__mults21_4|nx3244z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z9\,
	combout => \low_pass|prod_5__mults21_4|d_8_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z8\);

-- Location: LCCOMB_X23_Y18_N20
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_9_\ = (\low_pass_in_9_\ & ((\low_pass_in_10_\ & (\low_pass|prod_5__mults21_4|nx3244z8\ & VCC)) # (!\low_pass_in_10_\ & (!\low_pass|prod_5__mults21_4|nx3244z8\)))) # (!\low_pass_in_9_\ & ((\low_pass_in_10_\ & 
-- (!\low_pass|prod_5__mults21_4|nx3244z8\)) # (!\low_pass_in_10_\ & ((\low_pass|prod_5__mults21_4|nx3244z8\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z7\ = CARRY((\low_pass_in_9_\ & (!\low_pass_in_10_\ & !\low_pass|prod_5__mults21_4|nx3244z8\)) # (!\low_pass_in_9_\ & ((!\low_pass|prod_5__mults21_4|nx3244z8\) # (!\low_pass_in_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z8\,
	combout => \low_pass|prod_5__mults21_4|d_9_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z7\);

-- Location: LCCOMB_X23_Y18_N22
\low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_10_\ = ((\low_pass_in_10_\ $ (\low_pass_in_15_\ $ (!\low_pass|prod_5__mults21_4|nx3244z7\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z6\ = CARRY((\low_pass_in_10_\ & ((\low_pass_in_15_\) # (!\low_pass|prod_5__mults21_4|nx3244z7\))) # (!\low_pass_in_10_\ & (\low_pass_in_15_\ & !\low_pass|prod_5__mults21_4|nx3244z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_10_\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z7\,
	combout => \low_pass|prod_5__mults21_4|d_10_\,
	cout => \low_pass|prod_5__mults21_4|nx3244z6\);

-- Location: LCCOMB_X22_Y18_N0
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z26\ = CARRY((\low_pass|prod_5__mults21_4|d_2_\ & \low_pass_in_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_2_\,
	datab => \low_pass_in_0_\,
	datad => VCC,
	cout => \low_pass|prod_5__mults21_4|nx3244z26\);

-- Location: LCCOMB_X22_Y18_N2
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z25\ = CARRY((\low_pass_in_1_\ & (!\low_pass|prod_5__mults21_4|d_3_\ & !\low_pass|prod_5__mults21_4|nx3244z26\)) # (!\low_pass_in_1_\ & ((!\low_pass|prod_5__mults21_4|nx3244z26\) # (!\low_pass|prod_5__mults21_4|d_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass|prod_5__mults21_4|d_3_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z26\,
	cout => \low_pass|prod_5__mults21_4|nx3244z25\);

-- Location: LCCOMB_X22_Y18_N4
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z24\ = CARRY((\low_pass_in_2_\ & ((\low_pass|prod_5__mults21_4|d_4_\) # (!\low_pass|prod_5__mults21_4|nx3244z25\))) # (!\low_pass_in_2_\ & (\low_pass|prod_5__mults21_4|d_4_\ & !\low_pass|prod_5__mults21_4|nx3244z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_2_\,
	datab => \low_pass|prod_5__mults21_4|d_4_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z25\,
	cout => \low_pass|prod_5__mults21_4|nx3244z24\);

-- Location: LCCOMB_X22_Y18_N6
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_3__dup_193\ = (\low_pass_in_3_\ & ((\low_pass|prod_5__mults21_4|d_5_\ & (\low_pass|prod_5__mults21_4|nx3244z24\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_5_\ & (!\low_pass|prod_5__mults21_4|nx3244z24\)))) # (!\low_pass_in_3_\ 
-- & ((\low_pass|prod_5__mults21_4|d_5_\ & (!\low_pass|prod_5__mults21_4|nx3244z24\)) # (!\low_pass|prod_5__mults21_4|d_5_\ & ((\low_pass|prod_5__mults21_4|nx3244z24\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z23\ = CARRY((\low_pass_in_3_\ & (!\low_pass|prod_5__mults21_4|d_5_\ & !\low_pass|prod_5__mults21_4|nx3244z24\)) # (!\low_pass_in_3_\ & ((!\low_pass|prod_5__mults21_4|nx3244z24\) # (!\low_pass|prod_5__mults21_4|d_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_3_\,
	datab => \low_pass|prod_5__mults21_4|d_5_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z24\,
	combout => \low_pass|prod_5__mults21_4|d_3__dup_193\,
	cout => \low_pass|prod_5__mults21_4|nx3244z23\);

-- Location: LCCOMB_X22_Y18_N8
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_4__dup_192\ = ((\low_pass_in_4_\ $ (\low_pass|prod_5__mults21_4|d_6_\ $ (!\low_pass|prod_5__mults21_4|nx3244z23\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z22\ = CARRY((\low_pass_in_4_\ & ((\low_pass|prod_5__mults21_4|d_6_\) # (!\low_pass|prod_5__mults21_4|nx3244z23\))) # (!\low_pass_in_4_\ & (\low_pass|prod_5__mults21_4|d_6_\ & !\low_pass|prod_5__mults21_4|nx3244z23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass|prod_5__mults21_4|d_6_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z23\,
	combout => \low_pass|prod_5__mults21_4|d_4__dup_192\,
	cout => \low_pass|prod_5__mults21_4|nx3244z22\);

-- Location: LCCOMB_X22_Y18_N16
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_8__dup_188\ = ((\low_pass_in_8_\ $ (\low_pass|prod_5__mults21_4|d_10_\ $ (!\low_pass|prod_5__mults21_4|nx3244z19\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z18\ = CARRY((\low_pass_in_8_\ & ((\low_pass|prod_5__mults21_4|d_10_\) # (!\low_pass|prod_5__mults21_4|nx3244z19\))) # (!\low_pass_in_8_\ & (\low_pass|prod_5__mults21_4|d_10_\ & !\low_pass|prod_5__mults21_4|nx3244z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass|prod_5__mults21_4|d_10_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z19\,
	combout => \low_pass|prod_5__mults21_4|d_8__dup_188\,
	cout => \low_pass|prod_5__mults21_4|nx3244z18\);

-- Location: LCCOMB_X24_Y18_N6
\low_pass_in_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_6_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6),
	combout => \low_pass_in_6_~feeder_combout\);

-- Location: LCFF_X24_Y18_N7
\reg_low_pass_in_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_6_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_6_\);

-- Location: LCCOMB_X29_Y20_N2
ix38219z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_3_\ = (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3) & !\sw~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3),
	datad => \sw~combout\(17),
	combout => \audio_out_1n1ss1_3_\);

-- Location: LCFF_X23_Y18_N7
\reg_low_pass_in_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \audio_out_1n1ss1_3_\,
	sload => VCC,
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_3_\);

-- Location: LCCOMB_X27_Y20_N2
ix36225z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_1_\ = (!\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1),
	combout => \audio_out_1n1ss1_1_\);

-- Location: LCFF_X23_Y18_N3
\reg_low_pass_in_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \audio_out_1n1ss1_1_\,
	sload => VCC,
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_1_\);

-- Location: LCCOMB_X23_Y20_N0
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx3244z30\ = CARRY((\low_pass_in_1_\ & \low_pass_in_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_0_\,
	datad => VCC,
	cout => \low_pass|prod_1__mults19_1|nx3244z30\);

-- Location: LCCOMB_X23_Y20_N2
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx3244z28\ = CARRY((\low_pass_in_2_\ & (!\low_pass_in_1_\ & !\low_pass|prod_1__mults19_1|nx3244z30\)) # (!\low_pass_in_2_\ & ((!\low_pass|prod_1__mults19_1|nx3244z30\) # (!\low_pass_in_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_2_\,
	datab => \low_pass_in_1_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z30\,
	cout => \low_pass|prod_1__mults19_1|nx3244z28\);

-- Location: LCCOMB_X23_Y20_N4
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx3244z26\ = CARRY((\low_pass_in_2_\ & ((\low_pass_in_3_\) # (!\low_pass|prod_1__mults19_1|nx3244z28\))) # (!\low_pass_in_2_\ & (\low_pass_in_3_\ & !\low_pass|prod_1__mults19_1|nx3244z28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_2_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z28\,
	cout => \low_pass|prod_1__mults19_1|nx3244z26\);

-- Location: LCCOMB_X23_Y20_N6
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx3244z24\ = CARRY((\low_pass_in_4_\ & (!\low_pass_in_3_\ & !\low_pass|prod_1__mults19_1|nx3244z26\)) # (!\low_pass_in_4_\ & ((!\low_pass|prod_1__mults19_1|nx3244z26\) # (!\low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z26\,
	cout => \low_pass|prod_1__mults19_1|nx3244z24\);

-- Location: LCCOMB_X23_Y20_N8
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx42958z1\ = ((\low_pass_in_5_\ $ (\low_pass_in_4_\ $ (!\low_pass|prod_1__mults19_1|nx3244z24\)))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z22\ = CARRY((\low_pass_in_5_\ & ((\low_pass_in_4_\) # (!\low_pass|prod_1__mults19_1|nx3244z24\))) # (!\low_pass_in_5_\ & (\low_pass_in_4_\ & !\low_pass|prod_1__mults19_1|nx3244z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z24\,
	combout => \low_pass|prod_1__mults19_1|nx42958z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z22\);

-- Location: LCCOMB_X23_Y20_N10
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx43955z1\ = (\low_pass_in_5_\ & ((\low_pass_in_6_\ & (\low_pass|prod_1__mults19_1|nx3244z22\ & VCC)) # (!\low_pass_in_6_\ & (!\low_pass|prod_1__mults19_1|nx3244z22\)))) # (!\low_pass_in_5_\ & ((\low_pass_in_6_\ & 
-- (!\low_pass|prod_1__mults19_1|nx3244z22\)) # (!\low_pass_in_6_\ & ((\low_pass|prod_1__mults19_1|nx3244z22\) # (GND)))))
-- \low_pass|prod_1__mults19_1|nx3244z20\ = CARRY((\low_pass_in_5_\ & (!\low_pass_in_6_\ & !\low_pass|prod_1__mults19_1|nx3244z22\)) # (!\low_pass_in_5_\ & ((!\low_pass|prod_1__mults19_1|nx3244z22\) # (!\low_pass_in_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_6_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z22\,
	combout => \low_pass|prod_1__mults19_1|nx43955z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z20\);

-- Location: LCCOMB_X23_Y20_N12
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx44952z1\ = ((\low_pass_in_7_\ $ (\low_pass_in_6_\ $ (!\low_pass|prod_1__mults19_1|nx3244z20\)))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z18\ = CARRY((\low_pass_in_7_\ & ((\low_pass_in_6_\) # (!\low_pass|prod_1__mults19_1|nx3244z20\))) # (!\low_pass_in_7_\ & (\low_pass_in_6_\ & !\low_pass|prod_1__mults19_1|nx3244z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_6_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z20\,
	combout => \low_pass|prod_1__mults19_1|nx44952z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z18\);

-- Location: LCCOMB_X23_Y20_N14
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx45949z1\ = (\low_pass_in_7_\ & ((\low_pass_in_8_\ & (\low_pass|prod_1__mults19_1|nx3244z18\ & VCC)) # (!\low_pass_in_8_\ & (!\low_pass|prod_1__mults19_1|nx3244z18\)))) # (!\low_pass_in_7_\ & ((\low_pass_in_8_\ & 
-- (!\low_pass|prod_1__mults19_1|nx3244z18\)) # (!\low_pass_in_8_\ & ((\low_pass|prod_1__mults19_1|nx3244z18\) # (GND)))))
-- \low_pass|prod_1__mults19_1|nx3244z16\ = CARRY((\low_pass_in_7_\ & (!\low_pass_in_8_\ & !\low_pass|prod_1__mults19_1|nx3244z18\)) # (!\low_pass_in_7_\ & ((!\low_pass|prod_1__mults19_1|nx3244z18\) # (!\low_pass_in_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z18\,
	combout => \low_pass|prod_1__mults19_1|nx45949z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z16\);

-- Location: LCCOMB_X23_Y18_N0
\low_pass|prod_6__mults19_5|ix44471z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx44471z1\ = (\low_pass_in_1_\ & ((\low_pass_in_2_\) # ((\low_pass_in_0_\ & \low_pass_in_3_\)))) # (!\low_pass_in_1_\ & (\low_pass_in_2_\ & ((\low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_2_\,
	datac => \low_pass_in_0_\,
	datad => \low_pass_in_3_\,
	combout => \low_pass|prod_6__mults19_5|nx44471z1\);

-- Location: LCCOMB_X22_Y20_N16
\low_pass|modgen_add_8|ix2247z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx2247z49\ = CARRY(\low_pass|prod_5__mults21_4|d_3__dup_193\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_3__dup_193\,
	datad => VCC,
	cout => \low_pass|modgen_add_8|nx2247z49\);

-- Location: LCCOMB_X22_Y20_N22
\low_pass|modgen_add_8|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx39967z1\ = (\low_pass|prod_5__mults21_4|d_5__dup_191\ & ((\low_pass|prod_1__mults19_1|nx43955z1\ & (\low_pass|modgen_add_8|nx2247z43\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx43955z1\ & (!\low_pass|modgen_add_8|nx2247z43\)))) # 
-- (!\low_pass|prod_5__mults21_4|d_5__dup_191\ & ((\low_pass|prod_1__mults19_1|nx43955z1\ & (!\low_pass|modgen_add_8|nx2247z43\)) # (!\low_pass|prod_1__mults19_1|nx43955z1\ & ((\low_pass|modgen_add_8|nx2247z43\) # (GND)))))
-- \low_pass|modgen_add_8|nx2247z40\ = CARRY((\low_pass|prod_5__mults21_4|d_5__dup_191\ & (!\low_pass|prod_1__mults19_1|nx43955z1\ & !\low_pass|modgen_add_8|nx2247z43\)) # (!\low_pass|prod_5__mults21_4|d_5__dup_191\ & ((!\low_pass|modgen_add_8|nx2247z43\) # 
-- (!\low_pass|prod_1__mults19_1|nx43955z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_5__dup_191\,
	datab => \low_pass|prod_1__mults19_1|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z43\,
	combout => \low_pass|modgen_add_8|nx39967z1\,
	cout => \low_pass|modgen_add_8|nx2247z40\);

-- Location: LCCOMB_X22_Y20_N24
\low_pass|modgen_add_8|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx40964z1\ = ((\low_pass|prod_5__mults21_4|d_6__dup_190\ $ (\low_pass|prod_1__mults19_1|nx44952z1\ $ (!\low_pass|modgen_add_8|nx2247z40\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z37\ = CARRY((\low_pass|prod_5__mults21_4|d_6__dup_190\ & ((\low_pass|prod_1__mults19_1|nx44952z1\) # (!\low_pass|modgen_add_8|nx2247z40\))) # (!\low_pass|prod_5__mults21_4|d_6__dup_190\ & 
-- (\low_pass|prod_1__mults19_1|nx44952z1\ & !\low_pass|modgen_add_8|nx2247z40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_6__dup_190\,
	datab => \low_pass|prod_1__mults19_1|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z40\,
	combout => \low_pass|modgen_add_8|nx40964z1\,
	cout => \low_pass|modgen_add_8|nx2247z37\);

-- Location: LCCOMB_X22_Y20_N28
\low_pass|modgen_add_8|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx42958z1\ = ((\low_pass|prod_1__mults19_1|nx46946z1\ $ (\low_pass|prod_5__mults21_4|d_8__dup_188\ $ (!\low_pass|modgen_add_8|nx2247z34\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z31\ = CARRY((\low_pass|prod_1__mults19_1|nx46946z1\ & ((\low_pass|prod_5__mults21_4|d_8__dup_188\) # (!\low_pass|modgen_add_8|nx2247z34\))) # (!\low_pass|prod_1__mults19_1|nx46946z1\ & 
-- (\low_pass|prod_5__mults21_4|d_8__dup_188\ & !\low_pass|modgen_add_8|nx2247z34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx46946z1\,
	datab => \low_pass|prod_5__mults21_4|d_8__dup_188\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z34\,
	combout => \low_pass|modgen_add_8|nx42958z1\,
	cout => \low_pass|modgen_add_8|nx2247z31\);

-- Location: LCCOMB_X22_Y18_N28
\low_pass|prod_6__mults19_5|ix44479z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx44479z1\ = \low_pass_in_3_\ $ (\low_pass_in_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \low_pass_in_3_\,
	datad => \low_pass_in_4_\,
	combout => \low_pass|prod_6__mults19_5|nx44479z1\);

-- Location: LCCOMB_X23_Y18_N28
\low_pass|prod_6__mults19_5|ix41961z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx41961z2\ = (\low_pass_in_2_\ & \low_pass_in_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \low_pass_in_2_\,
	datad => \low_pass_in_3_\,
	combout => \low_pass|prod_6__mults19_5|nx41961z2\);

-- Location: LCCOMB_X24_Y18_N4
\low_pass|prod_6__mults19_5|ix41961z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx41961z5\ = (\low_pass_in_3_\ & \low_pass_in_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \low_pass_in_3_\,
	datad => \low_pass_in_4_\,
	combout => \low_pass|prod_6__mults19_5|nx41961z5\);

-- Location: LCCOMB_X22_Y18_N30
\low_pass|prod_6__mults19_5|ix41961z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx41961z4\ = (\low_pass_in_3_\) # (\low_pass_in_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \low_pass_in_3_\,
	datad => \low_pass_in_4_\,
	combout => \low_pass|prod_6__mults19_5|nx41961z4\);

-- Location: LCCOMB_X24_Y18_N14
\low_pass|prod_6__mults19_5|ix41961z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_6__mults19_5|nx41961z1\ = (\low_pass|prod_6__mults19_5|nx41961z3\ & (((\low_pass|prod_6__mults19_5|nx41961z5\) # (!\low_pass|prod_6__mults19_5|nx41961z4\)))) # (!\low_pass|prod_6__mults19_5|nx41961z3\ & 
-- (\low_pass|prod_6__mults19_5|nx41961z2\ $ (((!\low_pass|prod_6__mults19_5|nx41961z5\ & \low_pass|prod_6__mults19_5|nx41961z4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_6__mults19_5|nx41961z3\,
	datab => \low_pass|prod_6__mults19_5|nx41961z2\,
	datac => \low_pass|prod_6__mults19_5|nx41961z5\,
	datad => \low_pass|prod_6__mults19_5|nx41961z4\,
	combout => \low_pass|prod_6__mults19_5|nx41961z1\);

-- Location: LCCOMB_X24_Y18_N16
\low_pass|modgen_add_4|ix2247z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx2247z35\ = CARRY(\low_pass|prod_6__mults19_5|nx41961z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_6__mults19_5|nx41961z1\,
	datad => VCC,
	cout => \low_pass|modgen_add_4|nx2247z35\);

-- Location: LCCOMB_X24_Y18_N18
\low_pass|modgen_add_4|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx37973z1\ = (\low_pass|modgen_add_4|nx2247z35\ & (\low_pass|prod_6__mults19_5|nx44471z1\ $ ((!\low_pass|prod_6__mults19_5|nx44479z1\)))) # (!\low_pass|modgen_add_4|nx2247z35\ & ((\low_pass|prod_6__mults19_5|nx44471z1\ $ 
-- (\low_pass|prod_6__mults19_5|nx44479z1\)) # (GND)))
-- \low_pass|modgen_add_4|nx2247z32\ = CARRY((\low_pass|prod_6__mults19_5|nx44471z1\ $ (!\low_pass|prod_6__mults19_5|nx44479z1\)) # (!\low_pass|modgen_add_4|nx2247z35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_6__mults19_5|nx44471z1\,
	datab => \low_pass|prod_6__mults19_5|nx44479z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z35\,
	combout => \low_pass|modgen_add_4|nx37973z1\,
	cout => \low_pass|modgen_add_4|nx2247z32\);

-- Location: LCCOMB_X24_Y18_N20
\low_pass|modgen_add_4|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx38970z1\ = (((!\low_pass|modgen_add_4|nx2247z32\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z30\ = CARRY(\low_pass|prod_1__mults19_1|nx42958z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z32\,
	combout => \low_pass|modgen_add_4|nx38970z1\,
	cout => \low_pass|modgen_add_4|nx2247z30\);

-- Location: LCCOMB_X24_Y18_N22
\low_pass|modgen_add_4|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx39967z1\ = (((\low_pass|modgen_add_4|nx2247z30\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z28\ = CARRY(\low_pass|prod_1__mults19_1|nx43955z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z30\,
	combout => \low_pass|modgen_add_4|nx39967z1\,
	cout => \low_pass|modgen_add_4|nx2247z28\);

-- Location: LCCOMB_X24_Y18_N26
\low_pass|modgen_add_4|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx41961z1\ = (((\low_pass|modgen_add_4|nx2247z26\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z24\ = CARRY(\low_pass|prod_1__mults19_1|nx45949z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z26\,
	combout => \low_pass|modgen_add_4|nx41961z1\,
	cout => \low_pass|modgen_add_4|nx2247z24\);

-- Location: LCCOMB_X23_Y19_N0
\low_pass|modgen_add_9|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx37973z1\ = (\low_pass|modgen_add_8|nx37973z1\ & (\low_pass|modgen_add_4|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_8|nx37973z1\ & (\low_pass|modgen_add_4|nx37973z1\ & VCC))
-- \low_pass|modgen_add_9|nx2247z46\ = CARRY((\low_pass|modgen_add_8|nx37973z1\ & \low_pass|modgen_add_4|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx37973z1\,
	datab => \low_pass|modgen_add_4|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_9|nx37973z1\,
	cout => \low_pass|modgen_add_9|nx2247z46\);

-- Location: LCCOMB_X23_Y19_N2
\low_pass|modgen_add_9|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx38970z1\ = (\low_pass|modgen_add_8|nx38970z1\ & ((\low_pass|modgen_add_4|nx38970z1\ & (\low_pass|modgen_add_9|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_4|nx38970z1\ & (!\low_pass|modgen_add_9|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_8|nx38970z1\ & ((\low_pass|modgen_add_4|nx38970z1\ & (!\low_pass|modgen_add_9|nx2247z46\)) # (!\low_pass|modgen_add_4|nx38970z1\ & ((\low_pass|modgen_add_9|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z43\ = CARRY((\low_pass|modgen_add_8|nx38970z1\ & (!\low_pass|modgen_add_4|nx38970z1\ & !\low_pass|modgen_add_9|nx2247z46\)) # (!\low_pass|modgen_add_8|nx38970z1\ & ((!\low_pass|modgen_add_9|nx2247z46\) # 
-- (!\low_pass|modgen_add_4|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx38970z1\,
	datab => \low_pass|modgen_add_4|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z46\,
	combout => \low_pass|modgen_add_9|nx38970z1\,
	cout => \low_pass|modgen_add_9|nx2247z43\);

-- Location: LCCOMB_X23_Y19_N4
\low_pass|modgen_add_9|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx39967z1\ = ((\low_pass|modgen_add_4|nx39967z1\ $ (\low_pass|modgen_add_8|nx39967z1\ $ (!\low_pass|modgen_add_9|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z40\ = CARRY((\low_pass|modgen_add_4|nx39967z1\ & ((\low_pass|modgen_add_8|nx39967z1\) # (!\low_pass|modgen_add_9|nx2247z43\))) # (!\low_pass|modgen_add_4|nx39967z1\ & (\low_pass|modgen_add_8|nx39967z1\ & 
-- !\low_pass|modgen_add_9|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx39967z1\,
	datab => \low_pass|modgen_add_8|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z43\,
	combout => \low_pass|modgen_add_9|nx39967z1\,
	cout => \low_pass|modgen_add_9|nx2247z40\);

-- Location: LCCOMB_X23_Y19_N10
\low_pass|modgen_add_9|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx42958z1\ = (\low_pass|modgen_add_4|nx42958z1\ & ((\low_pass|modgen_add_8|nx42958z1\ & (\low_pass|modgen_add_9|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_8|nx42958z1\ & (!\low_pass|modgen_add_9|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_4|nx42958z1\ & ((\low_pass|modgen_add_8|nx42958z1\ & (!\low_pass|modgen_add_9|nx2247z34\)) # (!\low_pass|modgen_add_8|nx42958z1\ & ((\low_pass|modgen_add_9|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z31\ = CARRY((\low_pass|modgen_add_4|nx42958z1\ & (!\low_pass|modgen_add_8|nx42958z1\ & !\low_pass|modgen_add_9|nx2247z34\)) # (!\low_pass|modgen_add_4|nx42958z1\ & ((!\low_pass|modgen_add_9|nx2247z34\) # 
-- (!\low_pass|modgen_add_8|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx42958z1\,
	datab => \low_pass|modgen_add_8|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z34\,
	combout => \low_pass|modgen_add_9|nx42958z1\,
	cout => \low_pass|modgen_add_9|nx2247z31\);

-- Location: LCCOMB_X30_Y18_N0
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx4241z30\ = CARRY((\low_pass_in_0_\ & \low_pass_in_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_0_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cout => \low_pass|prod_4__mults20_3|nx4241z30\);

-- Location: LCCOMB_X30_Y18_N2
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx4241z28\ = CARRY((\low_pass_in_1_\ & (!\low_pass_in_3_\ & !\low_pass|prod_4__mults20_3|nx4241z30\)) # (!\low_pass_in_1_\ & ((!\low_pass|prod_4__mults20_3|nx4241z30\) # (!\low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z30\,
	cout => \low_pass|prod_4__mults20_3|nx4241z28\);

-- Location: LCCOMB_X30_Y18_N4
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx4241z26\ = CARRY((\low_pass_in_4_\ & ((\low_pass_in_2_\) # (!\low_pass|prod_4__mults20_3|nx4241z28\))) # (!\low_pass_in_4_\ & (\low_pass_in_2_\ & !\low_pass|prod_4__mults20_3|nx4241z28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z28\,
	cout => \low_pass|prod_4__mults20_3|nx4241z26\);

-- Location: LCCOMB_X30_Y18_N6
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx42958z1\ = (\low_pass_in_5_\ & ((\low_pass_in_3_\ & (\low_pass|prod_4__mults20_3|nx4241z26\ & VCC)) # (!\low_pass_in_3_\ & (!\low_pass|prod_4__mults20_3|nx4241z26\)))) # (!\low_pass_in_5_\ & ((\low_pass_in_3_\ & 
-- (!\low_pass|prod_4__mults20_3|nx4241z26\)) # (!\low_pass_in_3_\ & ((\low_pass|prod_4__mults20_3|nx4241z26\) # (GND)))))
-- \low_pass|prod_4__mults20_3|nx4241z24\ = CARRY((\low_pass_in_5_\ & (!\low_pass_in_3_\ & !\low_pass|prod_4__mults20_3|nx4241z26\)) # (!\low_pass_in_5_\ & ((!\low_pass|prod_4__mults20_3|nx4241z26\) # (!\low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z26\,
	combout => \low_pass|prod_4__mults20_3|nx42958z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z24\);

-- Location: LCCOMB_X30_Y18_N10
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx44952z1\ = (\low_pass_in_5_\ & ((\low_pass_in_7_\ & (\low_pass|prod_4__mults20_3|nx4241z22\ & VCC)) # (!\low_pass_in_7_\ & (!\low_pass|prod_4__mults20_3|nx4241z22\)))) # (!\low_pass_in_5_\ & ((\low_pass_in_7_\ & 
-- (!\low_pass|prod_4__mults20_3|nx4241z22\)) # (!\low_pass_in_7_\ & ((\low_pass|prod_4__mults20_3|nx4241z22\) # (GND)))))
-- \low_pass|prod_4__mults20_3|nx4241z20\ = CARRY((\low_pass_in_5_\ & (!\low_pass_in_7_\ & !\low_pass|prod_4__mults20_3|nx4241z22\)) # (!\low_pass_in_5_\ & ((!\low_pass|prod_4__mults20_3|nx4241z22\) # (!\low_pass_in_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_7_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z22\,
	combout => \low_pass|prod_4__mults20_3|nx44952z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z20\);

-- Location: LCCOMB_X30_Y18_N12
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx45949z1\ = ((\low_pass_in_8_\ $ (\low_pass_in_6_\ $ (!\low_pass|prod_4__mults20_3|nx4241z20\)))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z18\ = CARRY((\low_pass_in_8_\ & ((\low_pass_in_6_\) # (!\low_pass|prod_4__mults20_3|nx4241z20\))) # (!\low_pass_in_8_\ & (\low_pass_in_6_\ & !\low_pass|prod_4__mults20_3|nx4241z20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass_in_6_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z20\,
	combout => \low_pass|prod_4__mults20_3|nx45949z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z18\);

-- Location: LCCOMB_X30_Y18_N14
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx46946z1\ = (\low_pass_in_9_\ & ((\low_pass_in_7_\ & (\low_pass|prod_4__mults20_3|nx4241z18\ & VCC)) # (!\low_pass_in_7_\ & (!\low_pass|prod_4__mults20_3|nx4241z18\)))) # (!\low_pass_in_9_\ & ((\low_pass_in_7_\ & 
-- (!\low_pass|prod_4__mults20_3|nx4241z18\)) # (!\low_pass_in_7_\ & ((\low_pass|prod_4__mults20_3|nx4241z18\) # (GND)))))
-- \low_pass|prod_4__mults20_3|nx4241z16\ = CARRY((\low_pass_in_9_\ & (!\low_pass_in_7_\ & !\low_pass|prod_4__mults20_3|nx4241z18\)) # (!\low_pass_in_9_\ & ((!\low_pass|prod_4__mults20_3|nx4241z18\) # (!\low_pass_in_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass_in_7_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z18\,
	combout => \low_pass|prod_4__mults20_3|nx46946z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z16\);

-- Location: LCCOMB_X29_Y19_N0
\low_pass|modgen_add_10|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx37973z1\ = (\low_pass_in_3_\ & (\low_pass|prod_4__mults20_3|nx42958z1\ $ (VCC))) # (!\low_pass_in_3_\ & (\low_pass|prod_4__mults20_3|nx42958z1\ & VCC))
-- \low_pass|modgen_add_10|nx2247z41\ = CARRY((\low_pass_in_3_\ & \low_pass|prod_4__mults20_3|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_3_\,
	datab => \low_pass|prod_4__mults20_3|nx42958z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_10|nx37973z1\,
	cout => \low_pass|modgen_add_10|nx2247z41\);

-- Location: LCCOMB_X29_Y19_N8
\low_pass|modgen_add_10|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx41961z1\ = ((\low_pass_in_7_\ $ (\low_pass|prod_4__mults20_3|nx46946z1\ $ (!\low_pass|modgen_add_10|nx2247z32\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z29\ = CARRY((\low_pass_in_7_\ & ((\low_pass|prod_4__mults20_3|nx46946z1\) # (!\low_pass|modgen_add_10|nx2247z32\))) # (!\low_pass_in_7_\ & (\low_pass|prod_4__mults20_3|nx46946z1\ & !\low_pass|modgen_add_10|nx2247z32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass|prod_4__mults20_3|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z32\,
	combout => \low_pass|modgen_add_10|nx41961z1\,
	cout => \low_pass|modgen_add_10|nx2247z29\);

-- Location: LCCOMB_X24_Y20_N0
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx5238z30\ = CARRY((\low_pass_in_0_\ & \low_pass_in_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_0_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cout => \low_pass|prod_0__mults21_0|nx5238z30\);

-- Location: LCCOMB_X24_Y20_N2
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx5238z28\ = CARRY((\low_pass_in_1_\ & (!\low_pass_in_4_\ & !\low_pass|prod_0__mults21_0|nx5238z30\)) # (!\low_pass_in_1_\ & ((!\low_pass|prod_0__mults21_0|nx5238z30\) # (!\low_pass_in_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_1_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z30\,
	cout => \low_pass|prod_0__mults21_0|nx5238z28\);

-- Location: LCCOMB_X24_Y20_N4
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx5238z26\ = CARRY((\low_pass_in_5_\ & ((\low_pass_in_2_\) # (!\low_pass|prod_0__mults21_0|nx5238z28\))) # (!\low_pass_in_5_\ & (\low_pass_in_2_\ & !\low_pass|prod_0__mults21_0|nx5238z28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z28\,
	cout => \low_pass|prod_0__mults21_0|nx5238z26\);

-- Location: LCCOMB_X24_Y20_N6
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx43955z1\ = (\low_pass_in_6_\ & ((\low_pass_in_3_\ & (\low_pass|prod_0__mults21_0|nx5238z26\ & VCC)) # (!\low_pass_in_3_\ & (!\low_pass|prod_0__mults21_0|nx5238z26\)))) # (!\low_pass_in_6_\ & ((\low_pass_in_3_\ & 
-- (!\low_pass|prod_0__mults21_0|nx5238z26\)) # (!\low_pass_in_3_\ & ((\low_pass|prod_0__mults21_0|nx5238z26\) # (GND)))))
-- \low_pass|prod_0__mults21_0|nx5238z24\ = CARRY((\low_pass_in_6_\ & (!\low_pass_in_3_\ & !\low_pass|prod_0__mults21_0|nx5238z26\)) # (!\low_pass_in_6_\ & ((!\low_pass|prod_0__mults21_0|nx5238z26\) # (!\low_pass_in_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z26\,
	combout => \low_pass|prod_0__mults21_0|nx43955z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z24\);

-- Location: LCCOMB_X24_Y20_N8
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx44952z1\ = ((\low_pass_in_7_\ $ (\low_pass_in_4_\ $ (!\low_pass|prod_0__mults21_0|nx5238z24\)))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z22\ = CARRY((\low_pass_in_7_\ & ((\low_pass_in_4_\) # (!\low_pass|prod_0__mults21_0|nx5238z24\))) # (!\low_pass_in_7_\ & (\low_pass_in_4_\ & !\low_pass|prod_0__mults21_0|nx5238z24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z24\,
	combout => \low_pass|prod_0__mults21_0|nx44952z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z22\);

-- Location: LCCOMB_X24_Y19_N4
\low_pass|modgen_add_11|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx39967z1\ = ((\low_pass|prod_0__mults21_0|nx45949z1\ $ (\low_pass|prod_1__mults19_1|nx44952z1\ $ (!\low_pass|modgen_add_11|nx2247z42\)))) # (GND)
-- \low_pass|modgen_add_11|nx2247z39\ = CARRY((\low_pass|prod_0__mults21_0|nx45949z1\ & ((\low_pass|prod_1__mults19_1|nx44952z1\) # (!\low_pass|modgen_add_11|nx2247z42\))) # (!\low_pass|prod_0__mults21_0|nx45949z1\ & (\low_pass|prod_1__mults19_1|nx44952z1\ & 
-- !\low_pass|modgen_add_11|nx2247z42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx45949z1\,
	datab => \low_pass|prod_1__mults19_1|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z42\,
	combout => \low_pass|modgen_add_11|nx39967z1\,
	cout => \low_pass|modgen_add_11|nx2247z39\);

-- Location: LCCOMB_X24_Y19_N6
\low_pass|modgen_add_11|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_11|nx40964z1\ = (\low_pass|prod_0__mults21_0|nx46946z1\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (\low_pass|modgen_add_11|nx2247z39\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_11|nx2247z39\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx46946z1\ & ((\low_pass|prod_1__mults19_1|nx45949z1\ & (!\low_pass|modgen_add_11|nx2247z39\)) # (!\low_pass|prod_1__mults19_1|nx45949z1\ & ((\low_pass|modgen_add_11|nx2247z39\) # (GND)))))
-- \low_pass|modgen_add_11|nx2247z36\ = CARRY((\low_pass|prod_0__mults21_0|nx46946z1\ & (!\low_pass|prod_1__mults19_1|nx45949z1\ & !\low_pass|modgen_add_11|nx2247z39\)) # (!\low_pass|prod_0__mults21_0|nx46946z1\ & ((!\low_pass|modgen_add_11|nx2247z39\) # 
-- (!\low_pass|prod_1__mults19_1|nx45949z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx46946z1\,
	datab => \low_pass|prod_1__mults19_1|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_11|nx2247z39\,
	combout => \low_pass|modgen_add_11|nx40964z1\,
	cout => \low_pass|modgen_add_11|nx2247z36\);

-- Location: LCCOMB_X25_Y18_N14
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z18\ = CARRY((!\low_pass_in_0_\ & !\low_pass_in_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_0_\,
	datab => \low_pass_in_1_\,
	datad => VCC,
	cout => \low_pass|prod_2__mults20_2|nx6235z18\);

-- Location: LCCOMB_X25_Y18_N16
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z17\ = CARRY((\low_pass_in_2_\) # (!\low_pass|prod_2__mults20_2|nx6235z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z18\,
	cout => \low_pass|prod_2__mults20_2|nx6235z17\);

-- Location: LCCOMB_X25_Y18_N18
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z16\ = CARRY((\low_pass_in_0_\ & ((!\low_pass|prod_2__mults20_2|nx6235z17\) # (!\low_pass_in_3_\))) # (!\low_pass_in_0_\ & (!\low_pass_in_3_\ & !\low_pass|prod_2__mults20_2|nx6235z17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_0_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z17\,
	cout => \low_pass|prod_2__mults20_2|nx6235z16\);

-- Location: LCCOMB_X25_Y18_N20
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z15\ = CARRY((\low_pass_in_4_\ & ((!\low_pass|prod_2__mults20_2|nx6235z16\) # (!\low_pass_in_1_\))) # (!\low_pass_in_4_\ & (!\low_pass_in_1_\ & !\low_pass|prod_2__mults20_2|nx6235z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass_in_1_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z16\,
	cout => \low_pass|prod_2__mults20_2|nx6235z15\);

-- Location: LCCOMB_X25_Y18_N22
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|nx6235z14\ = CARRY((\low_pass_in_5_\ & (\low_pass_in_2_\ & !\low_pass|prod_2__mults20_2|nx6235z15\)) # (!\low_pass_in_5_\ & ((\low_pass_in_2_\) # (!\low_pass|prod_2__mults20_2|nx6235z15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass_in_2_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z15\,
	cout => \low_pass|prod_2__mults20_2|nx6235z14\);

-- Location: LCCOMB_X25_Y18_N24
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_5_\ = (\low_pass_in_6_\ & ((\low_pass_in_3_\ & (!\low_pass|prod_2__mults20_2|nx6235z14\)) # (!\low_pass_in_3_\ & ((\low_pass|prod_2__mults20_2|nx6235z14\) # (GND))))) # (!\low_pass_in_6_\ & ((\low_pass_in_3_\ & 
-- (\low_pass|prod_2__mults20_2|nx6235z14\ & VCC)) # (!\low_pass_in_3_\ & (!\low_pass|prod_2__mults20_2|nx6235z14\))))
-- \low_pass|prod_2__mults20_2|nx6235z13\ = CARRY((\low_pass_in_6_\ & ((!\low_pass|prod_2__mults20_2|nx6235z14\) # (!\low_pass_in_3_\))) # (!\low_pass_in_6_\ & (!\low_pass_in_3_\ & !\low_pass|prod_2__mults20_2|nx6235z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_6_\,
	datab => \low_pass_in_3_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z14\,
	combout => \low_pass|prod_2__mults20_2|d_5_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z13\);

-- Location: LCCOMB_X25_Y18_N26
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_6_\ = ((\low_pass_in_4_\ $ (\low_pass_in_7_\ $ (\low_pass|prod_2__mults20_2|nx6235z13\)))) # (GND)
-- \low_pass|prod_2__mults20_2|nx6235z12\ = CARRY((\low_pass_in_4_\ & ((!\low_pass|prod_2__mults20_2|nx6235z13\) # (!\low_pass_in_7_\))) # (!\low_pass_in_4_\ & (!\low_pass_in_7_\ & !\low_pass|prod_2__mults20_2|nx6235z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_4_\,
	datab => \low_pass_in_7_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z13\,
	combout => \low_pass|prod_2__mults20_2|d_6_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z12\);

-- Location: LCCOMB_X25_Y19_N2
\low_pass|modgen_add_12|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx38970z1\ = (\low_pass|modgen_add_11|nx38970z1\ & ((\low_pass|prod_2__mults20_2|d_6_\ & (\low_pass|modgen_add_12|nx2247z45\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_6_\ & (!\low_pass|modgen_add_12|nx2247z45\)))) # 
-- (!\low_pass|modgen_add_11|nx38970z1\ & ((\low_pass|prod_2__mults20_2|d_6_\ & (!\low_pass|modgen_add_12|nx2247z45\)) # (!\low_pass|prod_2__mults20_2|d_6_\ & ((\low_pass|modgen_add_12|nx2247z45\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z42\ = CARRY((\low_pass|modgen_add_11|nx38970z1\ & (!\low_pass|prod_2__mults20_2|d_6_\ & !\low_pass|modgen_add_12|nx2247z45\)) # (!\low_pass|modgen_add_11|nx38970z1\ & ((!\low_pass|modgen_add_12|nx2247z45\) # 
-- (!\low_pass|prod_2__mults20_2|d_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_11|nx38970z1\,
	datab => \low_pass|prod_2__mults20_2|d_6_\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z45\,
	combout => \low_pass|modgen_add_12|nx38970z1\,
	cout => \low_pass|modgen_add_12|nx2247z42\);

-- Location: LCCOMB_X25_Y19_N4
\low_pass|modgen_add_12|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx39967z1\ = ((\low_pass|prod_2__mults20_2|d_7_\ $ (\low_pass|modgen_add_11|nx39967z1\ $ (!\low_pass|modgen_add_12|nx2247z42\)))) # (GND)
-- \low_pass|modgen_add_12|nx2247z39\ = CARRY((\low_pass|prod_2__mults20_2|d_7_\ & ((\low_pass|modgen_add_11|nx39967z1\) # (!\low_pass|modgen_add_12|nx2247z42\))) # (!\low_pass|prod_2__mults20_2|d_7_\ & (\low_pass|modgen_add_11|nx39967z1\ & 
-- !\low_pass|modgen_add_12|nx2247z42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_7_\,
	datab => \low_pass|modgen_add_11|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z42\,
	combout => \low_pass|modgen_add_12|nx39967z1\,
	cout => \low_pass|modgen_add_12|nx2247z39\);

-- Location: LCCOMB_X25_Y19_N6
\low_pass|modgen_add_12|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_12|nx40964z1\ = (\low_pass|prod_2__mults20_2|d_8_\ & ((\low_pass|modgen_add_11|nx40964z1\ & (\low_pass|modgen_add_12|nx2247z39\ & VCC)) # (!\low_pass|modgen_add_11|nx40964z1\ & (!\low_pass|modgen_add_12|nx2247z39\)))) # 
-- (!\low_pass|prod_2__mults20_2|d_8_\ & ((\low_pass|modgen_add_11|nx40964z1\ & (!\low_pass|modgen_add_12|nx2247z39\)) # (!\low_pass|modgen_add_11|nx40964z1\ & ((\low_pass|modgen_add_12|nx2247z39\) # (GND)))))
-- \low_pass|modgen_add_12|nx2247z36\ = CARRY((\low_pass|prod_2__mults20_2|d_8_\ & (!\low_pass|modgen_add_11|nx40964z1\ & !\low_pass|modgen_add_12|nx2247z39\)) # (!\low_pass|prod_2__mults20_2|d_8_\ & ((!\low_pass|modgen_add_12|nx2247z39\) # 
-- (!\low_pass|modgen_add_11|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_8_\,
	datab => \low_pass|modgen_add_11|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_12|nx2247z39\,
	combout => \low_pass|modgen_add_12|nx40964z1\,
	cout => \low_pass|modgen_add_12|nx2247z36\);

-- Location: LCCOMB_X28_Y19_N6
\low_pass|modgen_add_13|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx40964z1\ = (\low_pass|modgen_add_10|nx40964z1\ & ((\low_pass|modgen_add_12|nx40964z1\ & (\low_pass|modgen_add_13|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_12|nx40964z1\ & (!\low_pass|modgen_add_13|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_10|nx40964z1\ & ((\low_pass|modgen_add_12|nx40964z1\ & (!\low_pass|modgen_add_13|nx2247z40\)) # (!\low_pass|modgen_add_12|nx40964z1\ & ((\low_pass|modgen_add_13|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z37\ = CARRY((\low_pass|modgen_add_10|nx40964z1\ & (!\low_pass|modgen_add_12|nx40964z1\ & !\low_pass|modgen_add_13|nx2247z40\)) # (!\low_pass|modgen_add_10|nx40964z1\ & ((!\low_pass|modgen_add_13|nx2247z40\) # 
-- (!\low_pass|modgen_add_12|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_10|nx40964z1\,
	datab => \low_pass|modgen_add_12|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z40\,
	combout => \low_pass|modgen_add_13|nx40964z1\,
	cout => \low_pass|modgen_add_13|nx2247z37\);

-- Location: LCCOMB_X28_Y19_N8
\low_pass|modgen_add_13|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx41961z1\ = ((\low_pass|modgen_add_12|nx41961z1\ $ (\low_pass|modgen_add_10|nx41961z1\ $ (!\low_pass|modgen_add_13|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z34\ = CARRY((\low_pass|modgen_add_12|nx41961z1\ & ((\low_pass|modgen_add_10|nx41961z1\) # (!\low_pass|modgen_add_13|nx2247z37\))) # (!\low_pass|modgen_add_12|nx41961z1\ & (\low_pass|modgen_add_10|nx41961z1\ & 
-- !\low_pass|modgen_add_13|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx41961z1\,
	datab => \low_pass|modgen_add_10|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z37\,
	combout => \low_pass|modgen_add_13|nx41961z1\,
	cout => \low_pass|modgen_add_13|nx2247z34\);

-- Location: LCCOMB_X27_Y19_N0
\low_pass|modgen_add_14|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx37973z1\ = (\low_pass|modgen_add_13|nx37973z1\ & (\low_pass|modgen_add_9|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_13|nx37973z1\ & (\low_pass|modgen_add_9|nx37973z1\ & VCC))
-- \low_pass|modgen_add_14|nx2247z46\ = CARRY((\low_pass|modgen_add_13|nx37973z1\ & \low_pass|modgen_add_9|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx37973z1\,
	datab => \low_pass|modgen_add_9|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_14|nx37973z1\,
	cout => \low_pass|modgen_add_14|nx2247z46\);

-- Location: LCCOMB_X27_Y19_N2
\low_pass|modgen_add_14|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx38970z1\ = (\low_pass|modgen_add_13|nx38970z1\ & ((\low_pass|modgen_add_9|nx38970z1\ & (\low_pass|modgen_add_14|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_9|nx38970z1\ & (!\low_pass|modgen_add_14|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_13|nx38970z1\ & ((\low_pass|modgen_add_9|nx38970z1\ & (!\low_pass|modgen_add_14|nx2247z46\)) # (!\low_pass|modgen_add_9|nx38970z1\ & ((\low_pass|modgen_add_14|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z43\ = CARRY((\low_pass|modgen_add_13|nx38970z1\ & (!\low_pass|modgen_add_9|nx38970z1\ & !\low_pass|modgen_add_14|nx2247z46\)) # (!\low_pass|modgen_add_13|nx38970z1\ & ((!\low_pass|modgen_add_14|nx2247z46\) # 
-- (!\low_pass|modgen_add_9|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx38970z1\,
	datab => \low_pass|modgen_add_9|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z46\,
	combout => \low_pass|modgen_add_14|nx38970z1\,
	cout => \low_pass|modgen_add_14|nx2247z43\);

-- Location: LCCOMB_X27_Y19_N8
\low_pass|modgen_add_14|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx41961z1\ = ((\low_pass|modgen_add_9|nx41961z1\ $ (\low_pass|modgen_add_13|nx41961z1\ $ (!\low_pass|modgen_add_14|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z34\ = CARRY((\low_pass|modgen_add_9|nx41961z1\ & ((\low_pass|modgen_add_13|nx41961z1\) # (!\low_pass|modgen_add_14|nx2247z37\))) # (!\low_pass|modgen_add_9|nx41961z1\ & (\low_pass|modgen_add_13|nx41961z1\ & 
-- !\low_pass|modgen_add_14|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx41961z1\,
	datab => \low_pass|modgen_add_13|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z37\,
	combout => \low_pass|modgen_add_14|nx41961z1\,
	cout => \low_pass|modgen_add_14|nx2247z34\);

-- Location: LCCOMB_X27_Y19_N10
\low_pass|modgen_add_14|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx42958z1\ = (\low_pass|modgen_add_13|nx42958z1\ & ((\low_pass|modgen_add_9|nx42958z1\ & (\low_pass|modgen_add_14|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_9|nx42958z1\ & (!\low_pass|modgen_add_14|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_13|nx42958z1\ & ((\low_pass|modgen_add_9|nx42958z1\ & (!\low_pass|modgen_add_14|nx2247z34\)) # (!\low_pass|modgen_add_9|nx42958z1\ & ((\low_pass|modgen_add_14|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z31\ = CARRY((\low_pass|modgen_add_13|nx42958z1\ & (!\low_pass|modgen_add_9|nx42958z1\ & !\low_pass|modgen_add_14|nx2247z34\)) # (!\low_pass|modgen_add_13|nx42958z1\ & ((!\low_pass|modgen_add_14|nx2247z34\) # 
-- (!\low_pass|modgen_add_9|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx42958z1\,
	datab => \low_pass|modgen_add_9|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z34\,
	combout => \low_pass|modgen_add_14|nx42958z1\,
	cout => \low_pass|modgen_add_14|nx2247z31\);

-- Location: LCCOMB_X25_Y18_N28
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_7_\ = (\low_pass_in_8_\ & ((\low_pass_in_5_\ & (!\low_pass|prod_2__mults20_2|nx6235z12\)) # (!\low_pass_in_5_\ & ((\low_pass|prod_2__mults20_2|nx6235z12\) # (GND))))) # (!\low_pass_in_8_\ & ((\low_pass_in_5_\ & 
-- (\low_pass|prod_2__mults20_2|nx6235z12\ & VCC)) # (!\low_pass_in_5_\ & (!\low_pass|prod_2__mults20_2|nx6235z12\))))
-- \low_pass|prod_2__mults20_2|nx6235z11\ = CARRY((\low_pass_in_8_\ & ((!\low_pass|prod_2__mults20_2|nx6235z12\) # (!\low_pass_in_5_\))) # (!\low_pass_in_8_\ & (!\low_pass_in_5_\ & !\low_pass|prod_2__mults20_2|nx6235z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass_in_5_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z12\,
	combout => \low_pass|prod_2__mults20_2|d_7_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z11\);

-- Location: LCCOMB_X27_Y18_N0
\low_pass|modgen_add_1|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx37973z1\ = (\low_pass_in_3_\ & (\low_pass|prod_2__mults20_2|d_5_\ $ (VCC))) # (!\low_pass_in_3_\ & (\low_pass|prod_2__mults20_2|d_5_\ & VCC))
-- \low_pass|modgen_add_1|nx2247z41\ = CARRY((\low_pass_in_3_\ & \low_pass|prod_2__mults20_2|d_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_3_\,
	datab => \low_pass|prod_2__mults20_2|d_5_\,
	datad => VCC,
	combout => \low_pass|modgen_add_1|nx37973z1\,
	cout => \low_pass|modgen_add_1|nx2247z41\);

-- Location: LCCOMB_X27_Y18_N2
\low_pass|modgen_add_1|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx38970z1\ = (\low_pass|prod_2__mults20_2|d_6_\ & ((\low_pass_in_4_\ & (\low_pass|modgen_add_1|nx2247z41\ & VCC)) # (!\low_pass_in_4_\ & (!\low_pass|modgen_add_1|nx2247z41\)))) # (!\low_pass|prod_2__mults20_2|d_6_\ & 
-- ((\low_pass_in_4_\ & (!\low_pass|modgen_add_1|nx2247z41\)) # (!\low_pass_in_4_\ & ((\low_pass|modgen_add_1|nx2247z41\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z38\ = CARRY((\low_pass|prod_2__mults20_2|d_6_\ & (!\low_pass_in_4_\ & !\low_pass|modgen_add_1|nx2247z41\)) # (!\low_pass|prod_2__mults20_2|d_6_\ & ((!\low_pass|modgen_add_1|nx2247z41\) # (!\low_pass_in_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_6_\,
	datab => \low_pass_in_4_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z41\,
	combout => \low_pass|modgen_add_1|nx38970z1\,
	cout => \low_pass|modgen_add_1|nx2247z38\);

-- Location: LCCOMB_X27_Y18_N4
\low_pass|modgen_add_1|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx39967z1\ = ((\low_pass_in_5_\ $ (\low_pass|prod_2__mults20_2|d_7_\ $ (!\low_pass|modgen_add_1|nx2247z38\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z35\ = CARRY((\low_pass_in_5_\ & ((\low_pass|prod_2__mults20_2|d_7_\) # (!\low_pass|modgen_add_1|nx2247z38\))) # (!\low_pass_in_5_\ & (\low_pass|prod_2__mults20_2|d_7_\ & !\low_pass|modgen_add_1|nx2247z38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_5_\,
	datab => \low_pass|prod_2__mults20_2|d_7_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z38\,
	combout => \low_pass|modgen_add_1|nx39967z1\,
	cout => \low_pass|modgen_add_1|nx2247z35\);

-- Location: LCCOMB_X27_Y18_N6
\low_pass|modgen_add_1|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx40964z1\ = (\low_pass|prod_2__mults20_2|d_8_\ & ((\low_pass_in_6_\ & (\low_pass|modgen_add_1|nx2247z35\ & VCC)) # (!\low_pass_in_6_\ & (!\low_pass|modgen_add_1|nx2247z35\)))) # (!\low_pass|prod_2__mults20_2|d_8_\ & 
-- ((\low_pass_in_6_\ & (!\low_pass|modgen_add_1|nx2247z35\)) # (!\low_pass_in_6_\ & ((\low_pass|modgen_add_1|nx2247z35\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z32\ = CARRY((\low_pass|prod_2__mults20_2|d_8_\ & (!\low_pass_in_6_\ & !\low_pass|modgen_add_1|nx2247z35\)) # (!\low_pass|prod_2__mults20_2|d_8_\ & ((!\low_pass|modgen_add_1|nx2247z35\) # (!\low_pass_in_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|d_8_\,
	datab => \low_pass_in_6_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z35\,
	combout => \low_pass|modgen_add_1|nx40964z1\,
	cout => \low_pass|modgen_add_1|nx2247z32\);

-- Location: LCCOMB_X28_Y18_N2
\low_pass|modgen_add_2|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx38970z1\ = (\low_pass|modgen_add_0|nx38970z1\ & ((\low_pass|modgen_add_1|nx38970z1\ & (\low_pass|modgen_add_2|nx2247z46\ & VCC)) # (!\low_pass|modgen_add_1|nx38970z1\ & (!\low_pass|modgen_add_2|nx2247z46\)))) # 
-- (!\low_pass|modgen_add_0|nx38970z1\ & ((\low_pass|modgen_add_1|nx38970z1\ & (!\low_pass|modgen_add_2|nx2247z46\)) # (!\low_pass|modgen_add_1|nx38970z1\ & ((\low_pass|modgen_add_2|nx2247z46\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z43\ = CARRY((\low_pass|modgen_add_0|nx38970z1\ & (!\low_pass|modgen_add_1|nx38970z1\ & !\low_pass|modgen_add_2|nx2247z46\)) # (!\low_pass|modgen_add_0|nx38970z1\ & ((!\low_pass|modgen_add_2|nx2247z46\) # 
-- (!\low_pass|modgen_add_1|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx38970z1\,
	datab => \low_pass|modgen_add_1|nx38970z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z46\,
	combout => \low_pass|modgen_add_2|nx38970z1\,
	cout => \low_pass|modgen_add_2|nx2247z43\);

-- Location: LCCOMB_X28_Y18_N4
\low_pass|modgen_add_2|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx39967z1\ = ((\low_pass|modgen_add_0|nx39967z1\ $ (\low_pass|modgen_add_1|nx39967z1\ $ (!\low_pass|modgen_add_2|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z40\ = CARRY((\low_pass|modgen_add_0|nx39967z1\ & ((\low_pass|modgen_add_1|nx39967z1\) # (!\low_pass|modgen_add_2|nx2247z43\))) # (!\low_pass|modgen_add_0|nx39967z1\ & (\low_pass|modgen_add_1|nx39967z1\ & 
-- !\low_pass|modgen_add_2|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx39967z1\,
	datab => \low_pass|modgen_add_1|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z43\,
	combout => \low_pass|modgen_add_2|nx39967z1\,
	cout => \low_pass|modgen_add_2|nx2247z40\);

-- Location: LCCOMB_X28_Y18_N6
\low_pass|modgen_add_2|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx40964z1\ = (\low_pass|modgen_add_0|nx40964z1\ & ((\low_pass|modgen_add_1|nx40964z1\ & (\low_pass|modgen_add_2|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_1|nx40964z1\ & (!\low_pass|modgen_add_2|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_0|nx40964z1\ & ((\low_pass|modgen_add_1|nx40964z1\ & (!\low_pass|modgen_add_2|nx2247z40\)) # (!\low_pass|modgen_add_1|nx40964z1\ & ((\low_pass|modgen_add_2|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_2|nx2247z37\ = CARRY((\low_pass|modgen_add_0|nx40964z1\ & (!\low_pass|modgen_add_1|nx40964z1\ & !\low_pass|modgen_add_2|nx2247z40\)) # (!\low_pass|modgen_add_0|nx40964z1\ & ((!\low_pass|modgen_add_2|nx2247z40\) # 
-- (!\low_pass|modgen_add_1|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_0|nx40964z1\,
	datab => \low_pass|modgen_add_1|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z40\,
	combout => \low_pass|modgen_add_2|nx40964z1\,
	cout => \low_pass|modgen_add_2|nx2247z37\);

-- Location: LCCOMB_X29_Y21_N0
\low_pass|modgen_add_5|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx37973z1\ = (\low_pass|modgen_add_3|nx37973z1\ & (\low_pass|modgen_add_4|nx37973z1\ $ (VCC))) # (!\low_pass|modgen_add_3|nx37973z1\ & (\low_pass|modgen_add_4|nx37973z1\ & VCC))
-- \low_pass|modgen_add_5|nx2247z46\ = CARRY((\low_pass|modgen_add_3|nx37973z1\ & \low_pass|modgen_add_4|nx37973z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx37973z1\,
	datab => \low_pass|modgen_add_4|nx37973z1\,
	datad => VCC,
	combout => \low_pass|modgen_add_5|nx37973z1\,
	cout => \low_pass|modgen_add_5|nx2247z46\);

-- Location: LCCOMB_X28_Y21_N4
\low_pass|modgen_add_6|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx39967z1\ = ((\low_pass|modgen_add_5|nx39967z1\ $ (\low_pass|modgen_add_2|nx39967z1\ $ (!\low_pass|modgen_add_6|nx2247z43\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z40\ = CARRY((\low_pass|modgen_add_5|nx39967z1\ & ((\low_pass|modgen_add_2|nx39967z1\) # (!\low_pass|modgen_add_6|nx2247z43\))) # (!\low_pass|modgen_add_5|nx39967z1\ & (\low_pass|modgen_add_2|nx39967z1\ & 
-- !\low_pass|modgen_add_6|nx2247z43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_5|nx39967z1\,
	datab => \low_pass|modgen_add_2|nx39967z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z43\,
	combout => \low_pass|modgen_add_6|nx39967z1\,
	cout => \low_pass|modgen_add_6|nx2247z40\);

-- Location: LCCOMB_X28_Y21_N6
\low_pass|modgen_add_6|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx40964z1\ = (\low_pass|modgen_add_5|nx40964z1\ & ((\low_pass|modgen_add_2|nx40964z1\ & (\low_pass|modgen_add_6|nx2247z40\ & VCC)) # (!\low_pass|modgen_add_2|nx40964z1\ & (!\low_pass|modgen_add_6|nx2247z40\)))) # 
-- (!\low_pass|modgen_add_5|nx40964z1\ & ((\low_pass|modgen_add_2|nx40964z1\ & (!\low_pass|modgen_add_6|nx2247z40\)) # (!\low_pass|modgen_add_2|nx40964z1\ & ((\low_pass|modgen_add_6|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_6|nx2247z37\ = CARRY((\low_pass|modgen_add_5|nx40964z1\ & (!\low_pass|modgen_add_2|nx40964z1\ & !\low_pass|modgen_add_6|nx2247z40\)) # (!\low_pass|modgen_add_5|nx40964z1\ & ((!\low_pass|modgen_add_6|nx2247z40\) # 
-- (!\low_pass|modgen_add_2|nx40964z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_5|nx40964z1\,
	datab => \low_pass|modgen_add_2|nx40964z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z40\,
	combout => \low_pass|modgen_add_6|nx40964z1\,
	cout => \low_pass|modgen_add_6|nx2247z37\);

-- Location: LCCOMB_X27_Y21_N10
\low_pass|modgen_add_15|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx42958z1\ = (\low_pass|modgen_add_6|nx42958z1\ & ((\low_pass|modgen_add_14|nx42958z1\ & (\low_pass|modgen_add_15|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_14|nx42958z1\ & (!\low_pass|modgen_add_15|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_6|nx42958z1\ & ((\low_pass|modgen_add_14|nx42958z1\ & (!\low_pass|modgen_add_15|nx2247z34\)) # (!\low_pass|modgen_add_14|nx42958z1\ & ((\low_pass|modgen_add_15|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z31\ = CARRY((\low_pass|modgen_add_6|nx42958z1\ & (!\low_pass|modgen_add_14|nx42958z1\ & !\low_pass|modgen_add_15|nx2247z34\)) # (!\low_pass|modgen_add_6|nx42958z1\ & ((!\low_pass|modgen_add_15|nx2247z34\) # 
-- (!\low_pass|modgen_add_14|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx42958z1\,
	datab => \low_pass|modgen_add_14|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z34\,
	combout => \low_pass|modgen_add_15|nx42958z1\,
	cout => \low_pass|modgen_add_15|nx2247z31\);

-- Location: LCFF_X27_Y20_N27
\reg_audio_out_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_5_\,
	sdata => \low_pass|modgen_add_15|nx42958z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_5_\);

-- Location: LCCOMB_X28_Y20_N14
ix24999z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z3 = (\bit_position_0_\ & (\audio_out_4_\ & (\bit_position_1_\))) # (!\bit_position_0_\ & (((\audio_out_5_\) # (!\bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_4_\,
	datab => \bit_position_0_\,
	datac => \bit_position_1_\,
	datad => \audio_out_5_\,
	combout => nx24999z3);

-- Location: LCCOMB_X27_Y20_N8
ix60126z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_7_\ = (\sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3))) # (!\sw~combout\(17) & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3),
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7),
	combout => \audio_out_1n1ss1_7_\);

-- Location: LCCOMB_X24_Y18_N2
\low_pass_in_9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass_in_9_~feeder_combout\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9),
	combout => \low_pass_in_9_~feeder_combout\);

-- Location: LCFF_X24_Y18_N3
\reg_low_pass_in_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \low_pass_in_9_~feeder_combout\,
	sdata => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5),
	sload => \sw~combout\(17),
	ena => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \low_pass_in_9_\);

-- Location: LCCOMB_X30_Y18_N20
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx64792z1\ = ((\low_pass_in_15_\ $ (\low_pass_in_10_\ $ (!\low_pass|prod_4__mults20_3|nx4241z12\)))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z10\ = CARRY((\low_pass_in_15_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_4__mults20_3|nx4241z12\))) # (!\low_pass_in_15_\ & (\low_pass_in_10_\ & !\low_pass|prod_4__mults20_3|nx4241z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z12\,
	combout => \low_pass|prod_4__mults20_3|nx64792z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z10\);

-- Location: LCCOMB_X29_Y19_N10
\low_pass|modgen_add_10|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx42958z1\ = (\low_pass|prod_4__mults20_3|nx62798z1\ & ((\low_pass_in_8_\ & (\low_pass|modgen_add_10|nx2247z29\ & VCC)) # (!\low_pass_in_8_\ & (!\low_pass|modgen_add_10|nx2247z29\)))) # (!\low_pass|prod_4__mults20_3|nx62798z1\ & 
-- ((\low_pass_in_8_\ & (!\low_pass|modgen_add_10|nx2247z29\)) # (!\low_pass_in_8_\ & ((\low_pass|modgen_add_10|nx2247z29\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z26\ = CARRY((\low_pass|prod_4__mults20_3|nx62798z1\ & (!\low_pass_in_8_\ & !\low_pass|modgen_add_10|nx2247z29\)) # (!\low_pass|prod_4__mults20_3|nx62798z1\ & ((!\low_pass|modgen_add_10|nx2247z29\) # (!\low_pass_in_8_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx62798z1\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z29\,
	combout => \low_pass|modgen_add_10|nx42958z1\,
	cout => \low_pass|modgen_add_10|nx2247z26\);

-- Location: LCCOMB_X29_Y19_N12
\low_pass|modgen_add_10|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx43955z1\ = ((\low_pass|prod_4__mults20_3|nx63795z1\ $ (\low_pass_in_9_\ $ (!\low_pass|modgen_add_10|nx2247z26\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z23\ = CARRY((\low_pass|prod_4__mults20_3|nx63795z1\ & ((\low_pass_in_9_\) # (!\low_pass|modgen_add_10|nx2247z26\))) # (!\low_pass|prod_4__mults20_3|nx63795z1\ & (\low_pass_in_9_\ & !\low_pass|modgen_add_10|nx2247z26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx63795z1\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z26\,
	combout => \low_pass|modgen_add_10|nx43955z1\,
	cout => \low_pass|modgen_add_10|nx2247z23\);

-- Location: LCCOMB_X29_Y19_N14
\low_pass|modgen_add_10|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx44952z1\ = (\low_pass_in_10_\ & ((\low_pass|prod_4__mults20_3|nx64792z1\ & (\low_pass|modgen_add_10|nx2247z23\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx64792z1\ & (!\low_pass|modgen_add_10|nx2247z23\)))) # (!\low_pass_in_10_\ & 
-- ((\low_pass|prod_4__mults20_3|nx64792z1\ & (!\low_pass|modgen_add_10|nx2247z23\)) # (!\low_pass|prod_4__mults20_3|nx64792z1\ & ((\low_pass|modgen_add_10|nx2247z23\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z20\ = CARRY((\low_pass_in_10_\ & (!\low_pass|prod_4__mults20_3|nx64792z1\ & !\low_pass|modgen_add_10|nx2247z23\)) # (!\low_pass_in_10_\ & ((!\low_pass|modgen_add_10|nx2247z23\) # (!\low_pass|prod_4__mults20_3|nx64792z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_10_\,
	datab => \low_pass|prod_4__mults20_3|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z23\,
	combout => \low_pass|modgen_add_10|nx44952z1\,
	cout => \low_pass|modgen_add_10|nx2247z20\);

-- Location: LCCOMB_X28_Y19_N12
\low_pass|modgen_add_13|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx43955z1\ = ((\low_pass|modgen_add_12|nx43955z1\ $ (\low_pass|modgen_add_10|nx43955z1\ $ (!\low_pass|modgen_add_13|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z28\ = CARRY((\low_pass|modgen_add_12|nx43955z1\ & ((\low_pass|modgen_add_10|nx43955z1\) # (!\low_pass|modgen_add_13|nx2247z31\))) # (!\low_pass|modgen_add_12|nx43955z1\ & (\low_pass|modgen_add_10|nx43955z1\ & 
-- !\low_pass|modgen_add_13|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx43955z1\,
	datab => \low_pass|modgen_add_10|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z31\,
	combout => \low_pass|modgen_add_13|nx43955z1\,
	cout => \low_pass|modgen_add_13|nx2247z28\);

-- Location: LCCOMB_X28_Y19_N14
\low_pass|modgen_add_13|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx44952z1\ = (\low_pass|modgen_add_12|nx44952z1\ & ((\low_pass|modgen_add_10|nx44952z1\ & (\low_pass|modgen_add_13|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_10|nx44952z1\ & (!\low_pass|modgen_add_13|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_12|nx44952z1\ & ((\low_pass|modgen_add_10|nx44952z1\ & (!\low_pass|modgen_add_13|nx2247z28\)) # (!\low_pass|modgen_add_10|nx44952z1\ & ((\low_pass|modgen_add_13|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z25\ = CARRY((\low_pass|modgen_add_12|nx44952z1\ & (!\low_pass|modgen_add_10|nx44952z1\ & !\low_pass|modgen_add_13|nx2247z28\)) # (!\low_pass|modgen_add_12|nx44952z1\ & ((!\low_pass|modgen_add_13|nx2247z28\) # 
-- (!\low_pass|modgen_add_10|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx44952z1\,
	datab => \low_pass|modgen_add_10|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z28\,
	combout => \low_pass|modgen_add_13|nx44952z1\,
	cout => \low_pass|modgen_add_13|nx2247z25\);

-- Location: LCCOMB_X27_Y19_N14
\low_pass|modgen_add_14|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx44952z1\ = (\low_pass|modgen_add_9|nx44952z1\ & ((\low_pass|modgen_add_13|nx44952z1\ & (\low_pass|modgen_add_14|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_13|nx44952z1\ & (!\low_pass|modgen_add_14|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_9|nx44952z1\ & ((\low_pass|modgen_add_13|nx44952z1\ & (!\low_pass|modgen_add_14|nx2247z28\)) # (!\low_pass|modgen_add_13|nx44952z1\ & ((\low_pass|modgen_add_14|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z25\ = CARRY((\low_pass|modgen_add_9|nx44952z1\ & (!\low_pass|modgen_add_13|nx44952z1\ & !\low_pass|modgen_add_14|nx2247z28\)) # (!\low_pass|modgen_add_9|nx44952z1\ & ((!\low_pass|modgen_add_14|nx2247z28\) # 
-- (!\low_pass|modgen_add_13|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx44952z1\,
	datab => \low_pass|modgen_add_13|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z28\,
	combout => \low_pass|modgen_add_14|nx44952z1\,
	cout => \low_pass|modgen_add_14|nx2247z25\);

-- Location: LCCOMB_X24_Y18_N30
\low_pass|modgen_add_4|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx43955z1\ = (((\low_pass|modgen_add_4|nx2247z22\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z20\ = CARRY(\low_pass|prod_1__mults19_1|nx62798z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z22\,
	combout => \low_pass|modgen_add_4|nx43955z1\,
	cout => \low_pass|modgen_add_4|nx2247z20\);

-- Location: LCCOMB_X29_Y18_N6
\low_pass|modgen_add_3|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx40964z1\ = (\low_pass|prod_5__mults21_4|d_6__dup_190\ & ((\low_pass|prod_4__mults20_3|nx45949z1\ & (\low_pass|modgen_add_3|nx2247z40\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx45949z1\ & (!\low_pass|modgen_add_3|nx2247z40\)))) # 
-- (!\low_pass|prod_5__mults21_4|d_6__dup_190\ & ((\low_pass|prod_4__mults20_3|nx45949z1\ & (!\low_pass|modgen_add_3|nx2247z40\)) # (!\low_pass|prod_4__mults20_3|nx45949z1\ & ((\low_pass|modgen_add_3|nx2247z40\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z37\ = CARRY((\low_pass|prod_5__mults21_4|d_6__dup_190\ & (!\low_pass|prod_4__mults20_3|nx45949z1\ & !\low_pass|modgen_add_3|nx2247z40\)) # (!\low_pass|prod_5__mults21_4|d_6__dup_190\ & ((!\low_pass|modgen_add_3|nx2247z40\) # 
-- (!\low_pass|prod_4__mults20_3|nx45949z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_6__dup_190\,
	datab => \low_pass|prod_4__mults20_3|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z40\,
	combout => \low_pass|modgen_add_3|nx40964z1\,
	cout => \low_pass|modgen_add_3|nx2247z37\);

-- Location: LCCOMB_X29_Y18_N10
\low_pass|modgen_add_3|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx42958z1\ = (\low_pass|prod_4__mults20_3|nx62798z1\ & ((\low_pass|prod_5__mults21_4|d_8__dup_188\ & (\low_pass|modgen_add_3|nx2247z34\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_8__dup_188\ & (!\low_pass|modgen_add_3|nx2247z34\)))) 
-- # (!\low_pass|prod_4__mults20_3|nx62798z1\ & ((\low_pass|prod_5__mults21_4|d_8__dup_188\ & (!\low_pass|modgen_add_3|nx2247z34\)) # (!\low_pass|prod_5__mults21_4|d_8__dup_188\ & ((\low_pass|modgen_add_3|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z31\ = CARRY((\low_pass|prod_4__mults20_3|nx62798z1\ & (!\low_pass|prod_5__mults21_4|d_8__dup_188\ & !\low_pass|modgen_add_3|nx2247z34\)) # (!\low_pass|prod_4__mults20_3|nx62798z1\ & ((!\low_pass|modgen_add_3|nx2247z34\) # 
-- (!\low_pass|prod_5__mults21_4|d_8__dup_188\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_4__mults20_3|nx62798z1\,
	datab => \low_pass|prod_5__mults21_4|d_8__dup_188\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z34\,
	combout => \low_pass|modgen_add_3|nx42958z1\,
	cout => \low_pass|modgen_add_3|nx2247z31\);

-- Location: LCCOMB_X29_Y21_N8
\low_pass|modgen_add_5|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx41961z1\ = ((\low_pass|modgen_add_3|nx41961z1\ $ (\low_pass|modgen_add_4|nx41961z1\ $ (!\low_pass|modgen_add_5|nx2247z37\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z34\ = CARRY((\low_pass|modgen_add_3|nx41961z1\ & ((\low_pass|modgen_add_4|nx41961z1\) # (!\low_pass|modgen_add_5|nx2247z37\))) # (!\low_pass|modgen_add_3|nx41961z1\ & (\low_pass|modgen_add_4|nx41961z1\ & 
-- !\low_pass|modgen_add_5|nx2247z37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx41961z1\,
	datab => \low_pass|modgen_add_4|nx41961z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z37\,
	combout => \low_pass|modgen_add_5|nx41961z1\,
	cout => \low_pass|modgen_add_5|nx2247z34\);

-- Location: LCCOMB_X29_Y21_N10
\low_pass|modgen_add_5|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx42958z1\ = (\low_pass|modgen_add_4|nx42958z1\ & ((\low_pass|modgen_add_3|nx42958z1\ & (\low_pass|modgen_add_5|nx2247z34\ & VCC)) # (!\low_pass|modgen_add_3|nx42958z1\ & (!\low_pass|modgen_add_5|nx2247z34\)))) # 
-- (!\low_pass|modgen_add_4|nx42958z1\ & ((\low_pass|modgen_add_3|nx42958z1\ & (!\low_pass|modgen_add_5|nx2247z34\)) # (!\low_pass|modgen_add_3|nx42958z1\ & ((\low_pass|modgen_add_5|nx2247z34\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z31\ = CARRY((\low_pass|modgen_add_4|nx42958z1\ & (!\low_pass|modgen_add_3|nx42958z1\ & !\low_pass|modgen_add_5|nx2247z34\)) # (!\low_pass|modgen_add_4|nx42958z1\ & ((!\low_pass|modgen_add_5|nx2247z34\) # 
-- (!\low_pass|modgen_add_3|nx42958z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx42958z1\,
	datab => \low_pass|modgen_add_3|nx42958z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z34\,
	combout => \low_pass|modgen_add_5|nx42958z1\,
	cout => \low_pass|modgen_add_5|nx2247z31\);

-- Location: LCCOMB_X29_Y21_N12
\low_pass|modgen_add_5|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx43955z1\ = ((\low_pass|modgen_add_3|nx43955z1\ $ (\low_pass|modgen_add_4|nx43955z1\ $ (!\low_pass|modgen_add_5|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z28\ = CARRY((\low_pass|modgen_add_3|nx43955z1\ & ((\low_pass|modgen_add_4|nx43955z1\) # (!\low_pass|modgen_add_5|nx2247z31\))) # (!\low_pass|modgen_add_3|nx43955z1\ & (\low_pass|modgen_add_4|nx43955z1\ & 
-- !\low_pass|modgen_add_5|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx43955z1\,
	datab => \low_pass|modgen_add_4|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z31\,
	combout => \low_pass|modgen_add_5|nx43955z1\,
	cout => \low_pass|modgen_add_5|nx2247z28\);

-- Location: LCCOMB_X28_Y21_N12
\low_pass|modgen_add_6|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx43955z1\ = ((\low_pass|modgen_add_2|nx43955z1\ $ (\low_pass|modgen_add_5|nx43955z1\ $ (!\low_pass|modgen_add_6|nx2247z31\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z28\ = CARRY((\low_pass|modgen_add_2|nx43955z1\ & ((\low_pass|modgen_add_5|nx43955z1\) # (!\low_pass|modgen_add_6|nx2247z31\))) # (!\low_pass|modgen_add_2|nx43955z1\ & (\low_pass|modgen_add_5|nx43955z1\ & 
-- !\low_pass|modgen_add_6|nx2247z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx43955z1\,
	datab => \low_pass|modgen_add_5|nx43955z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z31\,
	combout => \low_pass|modgen_add_6|nx43955z1\,
	cout => \low_pass|modgen_add_6|nx2247z28\);

-- Location: LCCOMB_X27_Y21_N14
\low_pass|modgen_add_15|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx44952z1\ = (\low_pass|modgen_add_6|nx44952z1\ & ((\low_pass|modgen_add_14|nx44952z1\ & (\low_pass|modgen_add_15|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_14|nx44952z1\ & (!\low_pass|modgen_add_15|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_6|nx44952z1\ & ((\low_pass|modgen_add_14|nx44952z1\ & (!\low_pass|modgen_add_15|nx2247z28\)) # (!\low_pass|modgen_add_14|nx44952z1\ & ((\low_pass|modgen_add_15|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z25\ = CARRY((\low_pass|modgen_add_6|nx44952z1\ & (!\low_pass|modgen_add_14|nx44952z1\ & !\low_pass|modgen_add_15|nx2247z28\)) # (!\low_pass|modgen_add_6|nx44952z1\ & ((!\low_pass|modgen_add_15|nx2247z28\) # 
-- (!\low_pass|modgen_add_14|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx44952z1\,
	datab => \low_pass|modgen_add_14|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z28\,
	combout => \low_pass|modgen_add_15|nx44952z1\,
	cout => \low_pass|modgen_add_15|nx2247z25\);

-- Location: LCFF_X27_Y20_N9
\reg_audio_out_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_7_\,
	sdata => \low_pass|modgen_add_15|nx44952z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_7_\);

-- Location: LCCOMB_X28_Y20_N8
ix24999z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z2 = (\bit_position_1_\ & (((nx24999z3)))) # (!\bit_position_1_\ & ((nx24999z3 & ((\audio_out_7_\))) # (!nx24999z3 & (\audio_out_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_6_\,
	datab => \bit_position_1_\,
	datac => nx24999z3,
	datad => \audio_out_7_\,
	combout => nx24999z2);

-- Location: LCCOMB_X28_Y20_N0
ix48820z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48820z1 = \bit_position_3_\ $ (((\bit_position_2_\ & (\bit_position_1_\ & \bit_position_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_2_\,
	datab => \bit_position_1_\,
	datac => \bit_position_3_\,
	datad => \bit_position_0_\,
	combout => nx48820z1);

-- Location: LCFF_X28_Y20_N1
\modgen_counter_bit_position_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx48820z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_3_\);

-- Location: LCCOMB_X28_Y20_N16
ix24999z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z1 = (\bit_position_2_\ & (nx24999z4 & ((\bit_position_3_\)))) # (!\bit_position_2_\ & (((nx24999z2) # (!\bit_position_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z4,
	datab => \bit_position_2_\,
	datac => nx24999z2,
	datad => \bit_position_3_\,
	combout => nx24999z1);

-- Location: LCCOMB_X27_Y20_N0
ix26560z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_10_\ = (\sw~combout\(17) & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6)))) # (!\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10),
	datab => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6),
	datad => \sw~combout\(17),
	combout => \audio_out_1n1ss1_10_\);

-- Location: LCCOMB_X23_Y20_N16
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx46946z1\ = ((\low_pass_in_8_\ $ (\low_pass_in_9_\ $ (!\low_pass|prod_1__mults19_1|nx3244z16\)))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z14\ = CARRY((\low_pass_in_8_\ & ((\low_pass_in_9_\) # (!\low_pass|prod_1__mults19_1|nx3244z16\))) # (!\low_pass_in_8_\ & (\low_pass_in_9_\ & !\low_pass|prod_1__mults19_1|nx3244z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_8_\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z16\,
	combout => \low_pass|prod_1__mults19_1|nx46946z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z14\);

-- Location: LCCOMB_X23_Y20_N18
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx62798z1\ = (\low_pass_in_9_\ & ((\low_pass_in_10_\ & (\low_pass|prod_1__mults19_1|nx3244z14\ & VCC)) # (!\low_pass_in_10_\ & (!\low_pass|prod_1__mults19_1|nx3244z14\)))) # (!\low_pass_in_9_\ & ((\low_pass_in_10_\ & 
-- (!\low_pass|prod_1__mults19_1|nx3244z14\)) # (!\low_pass_in_10_\ & ((\low_pass|prod_1__mults19_1|nx3244z14\) # (GND)))))
-- \low_pass|prod_1__mults19_1|nx3244z12\ = CARRY((\low_pass_in_9_\ & (!\low_pass_in_10_\ & !\low_pass|prod_1__mults19_1|nx3244z14\)) # (!\low_pass_in_9_\ & ((!\low_pass|prod_1__mults19_1|nx3244z14\) # (!\low_pass_in_10_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z14\,
	combout => \low_pass|prod_1__mults19_1|nx62798z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z12\);

-- Location: LCCOMB_X23_Y20_N20
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx63795z1\ = ((\low_pass_in_15_\ $ (\low_pass_in_10_\ $ (!\low_pass|prod_1__mults19_1|nx3244z12\)))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z10\ = CARRY((\low_pass_in_15_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_1__mults19_1|nx3244z12\))) # (!\low_pass_in_15_\ & (\low_pass_in_10_\ & !\low_pass|prod_1__mults19_1|nx3244z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z12\,
	combout => \low_pass|prod_1__mults19_1|nx63795z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z10\);

-- Location: LCCOMB_X23_Y20_N22
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx64792z1\ = (((\low_pass|prod_1__mults19_1|nx3244z10\))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z8\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z10\,
	combout => \low_pass|prod_1__mults19_1|nx64792z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z8\);

-- Location: LCCOMB_X23_Y20_N24
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx253z1\ = (((\low_pass|prod_1__mults19_1|nx3244z8\))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z8\,
	combout => \low_pass|prod_1__mults19_1|nx253z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z6\);

-- Location: LCCOMB_X23_Y20_N26
\low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx1250z1\ = (((\low_pass|prod_1__mults19_1|nx3244z6\))) # (GND)
-- \low_pass|prod_1__mults19_1|nx3244z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_1__mults19_1|nx3244z6\,
	combout => \low_pass|prod_1__mults19_1|nx1250z1\,
	cout => \low_pass|prod_1__mults19_1|nx3244z4\);

-- Location: LCCOMB_X24_Y17_N2
\low_pass|modgen_add_4|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx45949z1\ = (((\low_pass|modgen_add_4|nx2247z18\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z16\ = CARRY(\low_pass|prod_1__mults19_1|nx64792z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z18\,
	combout => \low_pass|modgen_add_4|nx45949z1\,
	cout => \low_pass|modgen_add_4|nx2247z16\);

-- Location: LCCOMB_X24_Y17_N4
\low_pass|modgen_add_4|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx46946z1\ = (((\low_pass|modgen_add_4|nx2247z16\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z14\ = CARRY(\low_pass|prod_1__mults19_1|nx253z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z16\,
	combout => \low_pass|modgen_add_4|nx46946z1\,
	cout => \low_pass|modgen_add_4|nx2247z14\);

-- Location: LCCOMB_X24_Y17_N6
\low_pass|modgen_add_4|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx62798z1\ = (((\low_pass|modgen_add_4|nx2247z14\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z12\ = CARRY(\low_pass|prod_1__mults19_1|nx1250z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z14\,
	combout => \low_pass|modgen_add_4|nx62798z1\,
	cout => \low_pass|modgen_add_4|nx2247z12\);

-- Location: LCCOMB_X30_Y18_N22
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx253z1\ = (((\low_pass|prod_4__mults20_3|nx4241z10\))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z8\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z10\,
	combout => \low_pass|prod_4__mults20_3|nx253z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z8\);

-- Location: LCCOMB_X22_Y18_N18
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_9__dup_187\ = (\low_pass_in_9_\ & ((\low_pass|prod_5__mults21_4|d_11_\ & (\low_pass|prod_5__mults21_4|nx3244z18\ & VCC)) # (!\low_pass|prod_5__mults21_4|d_11_\ & (!\low_pass|prod_5__mults21_4|nx3244z18\)))) # 
-- (!\low_pass_in_9_\ & ((\low_pass|prod_5__mults21_4|d_11_\ & (!\low_pass|prod_5__mults21_4|nx3244z18\)) # (!\low_pass|prod_5__mults21_4|d_11_\ & ((\low_pass|prod_5__mults21_4|nx3244z18\) # (GND)))))
-- \low_pass|prod_5__mults21_4|nx3244z17\ = CARRY((\low_pass_in_9_\ & (!\low_pass|prod_5__mults21_4|d_11_\ & !\low_pass|prod_5__mults21_4|nx3244z18\)) # (!\low_pass_in_9_\ & ((!\low_pass|prod_5__mults21_4|nx3244z18\) # 
-- (!\low_pass|prod_5__mults21_4|d_11_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_9_\,
	datab => \low_pass|prod_5__mults21_4|d_11_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z18\,
	combout => \low_pass|prod_5__mults21_4|d_9__dup_187\,
	cout => \low_pass|prod_5__mults21_4|nx3244z17\);

-- Location: LCCOMB_X29_Y18_N14
\low_pass|modgen_add_3|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx44952z1\ = (\low_pass|prod_5__mults21_4|d_10__dup_186\ & ((\low_pass|prod_4__mults20_3|nx64792z1\ & (\low_pass|modgen_add_3|nx2247z28\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx64792z1\ & (!\low_pass|modgen_add_3|nx2247z28\)))) # 
-- (!\low_pass|prod_5__mults21_4|d_10__dup_186\ & ((\low_pass|prod_4__mults20_3|nx64792z1\ & (!\low_pass|modgen_add_3|nx2247z28\)) # (!\low_pass|prod_4__mults20_3|nx64792z1\ & ((\low_pass|modgen_add_3|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z25\ = CARRY((\low_pass|prod_5__mults21_4|d_10__dup_186\ & (!\low_pass|prod_4__mults20_3|nx64792z1\ & !\low_pass|modgen_add_3|nx2247z28\)) # (!\low_pass|prod_5__mults21_4|d_10__dup_186\ & ((!\low_pass|modgen_add_3|nx2247z28\) 
-- # (!\low_pass|prod_4__mults20_3|nx64792z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_10__dup_186\,
	datab => \low_pass|prod_4__mults20_3|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z28\,
	combout => \low_pass|modgen_add_3|nx44952z1\,
	cout => \low_pass|modgen_add_3|nx2247z25\);

-- Location: LCCOMB_X29_Y18_N16
\low_pass|modgen_add_3|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx45949z1\ = ((\low_pass|prod_5__mults21_4|d_11__dup_185\ $ (\low_pass|prod_4__mults20_3|nx253z1\ $ (!\low_pass|modgen_add_3|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z22\ = CARRY((\low_pass|prod_5__mults21_4|d_11__dup_185\ & ((\low_pass|prod_4__mults20_3|nx253z1\) # (!\low_pass|modgen_add_3|nx2247z25\))) # (!\low_pass|prod_5__mults21_4|d_11__dup_185\ & (\low_pass|prod_4__mults20_3|nx253z1\ 
-- & !\low_pass|modgen_add_3|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|d_11__dup_185\,
	datab => \low_pass|prod_4__mults20_3|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z25\,
	combout => \low_pass|modgen_add_3|nx45949z1\,
	cout => \low_pass|modgen_add_3|nx2247z22\);

-- Location: LCCOMB_X29_Y21_N14
\low_pass|modgen_add_5|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx44952z1\ = (\low_pass|modgen_add_4|nx44952z1\ & ((\low_pass|modgen_add_3|nx44952z1\ & (\low_pass|modgen_add_5|nx2247z28\ & VCC)) # (!\low_pass|modgen_add_3|nx44952z1\ & (!\low_pass|modgen_add_5|nx2247z28\)))) # 
-- (!\low_pass|modgen_add_4|nx44952z1\ & ((\low_pass|modgen_add_3|nx44952z1\ & (!\low_pass|modgen_add_5|nx2247z28\)) # (!\low_pass|modgen_add_3|nx44952z1\ & ((\low_pass|modgen_add_5|nx2247z28\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z25\ = CARRY((\low_pass|modgen_add_4|nx44952z1\ & (!\low_pass|modgen_add_3|nx44952z1\ & !\low_pass|modgen_add_5|nx2247z28\)) # (!\low_pass|modgen_add_4|nx44952z1\ & ((!\low_pass|modgen_add_5|nx2247z28\) # 
-- (!\low_pass|modgen_add_3|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx44952z1\,
	datab => \low_pass|modgen_add_3|nx44952z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z28\,
	combout => \low_pass|modgen_add_5|nx44952z1\,
	cout => \low_pass|modgen_add_5|nx2247z25\);

-- Location: LCCOMB_X29_Y21_N18
\low_pass|modgen_add_5|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx46946z1\ = (\low_pass|modgen_add_3|nx46946z1\ & ((\low_pass|modgen_add_4|nx46946z1\ & (\low_pass|modgen_add_5|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_4|nx46946z1\ & (!\low_pass|modgen_add_5|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_3|nx46946z1\ & ((\low_pass|modgen_add_4|nx46946z1\ & (!\low_pass|modgen_add_5|nx2247z22\)) # (!\low_pass|modgen_add_4|nx46946z1\ & ((\low_pass|modgen_add_5|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z19\ = CARRY((\low_pass|modgen_add_3|nx46946z1\ & (!\low_pass|modgen_add_4|nx46946z1\ & !\low_pass|modgen_add_5|nx2247z22\)) # (!\low_pass|modgen_add_3|nx46946z1\ & ((!\low_pass|modgen_add_5|nx2247z22\) # 
-- (!\low_pass|modgen_add_4|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx46946z1\,
	datab => \low_pass|modgen_add_4|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z22\,
	combout => \low_pass|modgen_add_5|nx46946z1\,
	cout => \low_pass|modgen_add_5|nx2247z19\);

-- Location: LCCOMB_X29_Y21_N20
\low_pass|modgen_add_5|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx62798z1\ = ((\low_pass|modgen_add_3|nx62798z1\ $ (\low_pass|modgen_add_4|nx62798z1\ $ (!\low_pass|modgen_add_5|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z16\ = CARRY((\low_pass|modgen_add_3|nx62798z1\ & ((\low_pass|modgen_add_4|nx62798z1\) # (!\low_pass|modgen_add_5|nx2247z19\))) # (!\low_pass|modgen_add_3|nx62798z1\ & (\low_pass|modgen_add_4|nx62798z1\ & 
-- !\low_pass|modgen_add_5|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_3|nx62798z1\,
	datab => \low_pass|modgen_add_4|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z19\,
	combout => \low_pass|modgen_add_5|nx62798z1\,
	cout => \low_pass|modgen_add_5|nx2247z16\);

-- Location: LCCOMB_X24_Y20_N16
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx63795z1\ = ((\low_pass_in_15_\ $ (\low_pass_in_8_\ $ (!\low_pass|prod_0__mults21_0|nx5238z16\)))) # (GND)
-- \low_pass|prod_0__mults21_0|nx5238z14\ = CARRY((\low_pass_in_15_\ & ((\low_pass_in_8_\) # (!\low_pass|prod_0__mults21_0|nx5238z16\))) # (!\low_pass_in_15_\ & (\low_pass_in_8_\ & !\low_pass|prod_0__mults21_0|nx5238z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z16\,
	combout => \low_pass|prod_0__mults21_0|nx63795z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z14\);

-- Location: LCCOMB_X24_Y20_N18
\low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_0__mults21_0|nx64792z1\ = (\low_pass_in_15_\ & ((\low_pass_in_9_\ & (\low_pass|prod_0__mults21_0|nx5238z14\ & VCC)) # (!\low_pass_in_9_\ & (!\low_pass|prod_0__mults21_0|nx5238z14\)))) # (!\low_pass_in_15_\ & ((\low_pass_in_9_\ & 
-- (!\low_pass|prod_0__mults21_0|nx5238z14\)) # (!\low_pass_in_9_\ & ((\low_pass|prod_0__mults21_0|nx5238z14\) # (GND)))))
-- \low_pass|prod_0__mults21_0|nx5238z12\ = CARRY((\low_pass_in_15_\ & (!\low_pass_in_9_\ & !\low_pass|prod_0__mults21_0|nx5238z14\)) # (!\low_pass_in_15_\ & ((!\low_pass|prod_0__mults21_0|nx5238z14\) # (!\low_pass_in_9_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|prod_0__mults21_0|nx5238z14\,
	combout => \low_pass|prod_0__mults21_0|nx64792z1\,
	cout => \low_pass|prod_0__mults21_0|nx5238z12\);

-- Location: LCCOMB_X25_Y20_N8
\low_pass|modgen_add_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx41961z1\ = ((\low_pass|prod_0__mults21_0|nx62798z1\ $ (\low_pass|prod_1__mults19_1|nx46946z1\ $ (!\low_pass|modgen_add_0|nx2247z36\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z33\ = CARRY((\low_pass|prod_0__mults21_0|nx62798z1\ & ((\low_pass|prod_1__mults19_1|nx46946z1\) # (!\low_pass|modgen_add_0|nx2247z36\))) # (!\low_pass|prod_0__mults21_0|nx62798z1\ & (\low_pass|prod_1__mults19_1|nx46946z1\ & 
-- !\low_pass|modgen_add_0|nx2247z36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx62798z1\,
	datab => \low_pass|prod_1__mults19_1|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z36\,
	combout => \low_pass|modgen_add_0|nx41961z1\,
	cout => \low_pass|modgen_add_0|nx2247z33\);

-- Location: LCCOMB_X25_Y20_N10
\low_pass|modgen_add_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx42958z1\ = (\low_pass|prod_1__mults19_1|nx62798z1\ & ((\low_pass|prod_0__mults21_0|nx63795z1\ & (\low_pass|modgen_add_0|nx2247z33\ & VCC)) # (!\low_pass|prod_0__mults21_0|nx63795z1\ & (!\low_pass|modgen_add_0|nx2247z33\)))) # 
-- (!\low_pass|prod_1__mults19_1|nx62798z1\ & ((\low_pass|prod_0__mults21_0|nx63795z1\ & (!\low_pass|modgen_add_0|nx2247z33\)) # (!\low_pass|prod_0__mults21_0|nx63795z1\ & ((\low_pass|modgen_add_0|nx2247z33\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z30\ = CARRY((\low_pass|prod_1__mults19_1|nx62798z1\ & (!\low_pass|prod_0__mults21_0|nx63795z1\ & !\low_pass|modgen_add_0|nx2247z33\)) # (!\low_pass|prod_1__mults19_1|nx62798z1\ & ((!\low_pass|modgen_add_0|nx2247z33\) # 
-- (!\low_pass|prod_0__mults21_0|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx62798z1\,
	datab => \low_pass|prod_0__mults21_0|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z33\,
	combout => \low_pass|modgen_add_0|nx42958z1\,
	cout => \low_pass|modgen_add_0|nx2247z30\);

-- Location: LCCOMB_X25_Y20_N12
\low_pass|modgen_add_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx43955z1\ = ((\low_pass|prod_1__mults19_1|nx63795z1\ $ (\low_pass|prod_0__mults21_0|nx64792z1\ $ (!\low_pass|modgen_add_0|nx2247z30\)))) # (GND)
-- \low_pass|modgen_add_0|nx2247z27\ = CARRY((\low_pass|prod_1__mults19_1|nx63795z1\ & ((\low_pass|prod_0__mults21_0|nx64792z1\) # (!\low_pass|modgen_add_0|nx2247z30\))) # (!\low_pass|prod_1__mults19_1|nx63795z1\ & (\low_pass|prod_0__mults21_0|nx64792z1\ & 
-- !\low_pass|modgen_add_0|nx2247z30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx63795z1\,
	datab => \low_pass|prod_0__mults21_0|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z30\,
	combout => \low_pass|modgen_add_0|nx43955z1\,
	cout => \low_pass|modgen_add_0|nx2247z27\);

-- Location: LCCOMB_X25_Y20_N14
\low_pass|modgen_add_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_0|nx44952z1\ = (\low_pass|prod_0__mults21_0|nx253z1\ & ((\low_pass|prod_1__mults19_1|nx64792z1\ & (\low_pass|modgen_add_0|nx2247z27\ & VCC)) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & (!\low_pass|modgen_add_0|nx2247z27\)))) # 
-- (!\low_pass|prod_0__mults21_0|nx253z1\ & ((\low_pass|prod_1__mults19_1|nx64792z1\ & (!\low_pass|modgen_add_0|nx2247z27\)) # (!\low_pass|prod_1__mults19_1|nx64792z1\ & ((\low_pass|modgen_add_0|nx2247z27\) # (GND)))))
-- \low_pass|modgen_add_0|nx2247z24\ = CARRY((\low_pass|prod_0__mults21_0|nx253z1\ & (!\low_pass|prod_1__mults19_1|nx64792z1\ & !\low_pass|modgen_add_0|nx2247z27\)) # (!\low_pass|prod_0__mults21_0|nx253z1\ & ((!\low_pass|modgen_add_0|nx2247z27\) # 
-- (!\low_pass|prod_1__mults19_1|nx64792z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_0__mults21_0|nx253z1\,
	datab => \low_pass|prod_1__mults19_1|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_0|nx2247z27\,
	combout => \low_pass|modgen_add_0|nx44952z1\,
	cout => \low_pass|modgen_add_0|nx2247z24\);

-- Location: LCCOMB_X28_Y18_N16
\low_pass|modgen_add_2|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_2|nx45949z1\ = ((\low_pass|modgen_add_1|nx45949z1\ $ (\low_pass|modgen_add_0|nx45949z1\ $ (!\low_pass|modgen_add_2|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_2|nx2247z22\ = CARRY((\low_pass|modgen_add_1|nx45949z1\ & ((\low_pass|modgen_add_0|nx45949z1\) # (!\low_pass|modgen_add_2|nx2247z25\))) # (!\low_pass|modgen_add_1|nx45949z1\ & (\low_pass|modgen_add_0|nx45949z1\ & 
-- !\low_pass|modgen_add_2|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_1|nx45949z1\,
	datab => \low_pass|modgen_add_0|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_2|nx2247z25\,
	combout => \low_pass|modgen_add_2|nx45949z1\,
	cout => \low_pass|modgen_add_2|nx2247z22\);

-- Location: LCCOMB_X28_Y21_N16
\low_pass|modgen_add_6|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx45949z1\ = ((\low_pass|modgen_add_5|nx45949z1\ $ (\low_pass|modgen_add_2|nx45949z1\ $ (!\low_pass|modgen_add_6|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z22\ = CARRY((\low_pass|modgen_add_5|nx45949z1\ & ((\low_pass|modgen_add_2|nx45949z1\) # (!\low_pass|modgen_add_6|nx2247z25\))) # (!\low_pass|modgen_add_5|nx45949z1\ & (\low_pass|modgen_add_2|nx45949z1\ & 
-- !\low_pass|modgen_add_6|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_5|nx45949z1\,
	datab => \low_pass|modgen_add_2|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z25\,
	combout => \low_pass|modgen_add_6|nx45949z1\,
	cout => \low_pass|modgen_add_6|nx2247z22\);

-- Location: LCCOMB_X28_Y21_N20
\low_pass|modgen_add_6|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_6|nx62798z1\ = ((\low_pass|modgen_add_2|nx62798z1\ $ (\low_pass|modgen_add_5|nx62798z1\ $ (!\low_pass|modgen_add_6|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_6|nx2247z16\ = CARRY((\low_pass|modgen_add_2|nx62798z1\ & ((\low_pass|modgen_add_5|nx62798z1\) # (!\low_pass|modgen_add_6|nx2247z19\))) # (!\low_pass|modgen_add_2|nx62798z1\ & (\low_pass|modgen_add_5|nx62798z1\ & 
-- !\low_pass|modgen_add_6|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_2|nx62798z1\,
	datab => \low_pass|modgen_add_5|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_6|nx2247z19\,
	combout => \low_pass|modgen_add_6|nx62798z1\,
	cout => \low_pass|modgen_add_6|nx2247z16\);

-- Location: LCCOMB_X30_Y18_N24
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx1250z1\ = (((\low_pass|prod_4__mults20_3|nx4241z8\))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z8\,
	combout => \low_pass|prod_4__mults20_3|nx1250z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z6\);

-- Location: LCCOMB_X29_Y19_N18
\low_pass|modgen_add_10|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx46946z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx1250z1\ & (\low_pass|modgen_add_10|nx2247z17\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx1250z1\ & (!\low_pass|modgen_add_10|nx2247z17\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_4__mults20_3|nx1250z1\ & (!\low_pass|modgen_add_10|nx2247z17\)) # (!\low_pass|prod_4__mults20_3|nx1250z1\ & ((\low_pass|modgen_add_10|nx2247z17\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z15\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_4__mults20_3|nx1250z1\ & !\low_pass|modgen_add_10|nx2247z17\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_10|nx2247z17\) # (!\low_pass|prod_4__mults20_3|nx1250z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx1250z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z17\,
	combout => \low_pass|modgen_add_10|nx46946z1\,
	cout => \low_pass|modgen_add_10|nx2247z15\);

-- Location: LCCOMB_X25_Y17_N0
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_9_\ = (\low_pass_in_7_\ & ((\low_pass_in_10_\ & (!\low_pass|prod_2__mults20_2|nx6235z10\)) # (!\low_pass_in_10_\ & (\low_pass|prod_2__mults20_2|nx6235z10\ & VCC)))) # (!\low_pass_in_7_\ & ((\low_pass_in_10_\ & 
-- ((\low_pass|prod_2__mults20_2|nx6235z10\) # (GND))) # (!\low_pass_in_10_\ & (!\low_pass|prod_2__mults20_2|nx6235z10\))))
-- \low_pass|prod_2__mults20_2|nx6235z9\ = CARRY((\low_pass_in_7_\ & (\low_pass_in_10_\ & !\low_pass|prod_2__mults20_2|nx6235z10\)) # (!\low_pass_in_7_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_2__mults20_2|nx6235z10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_7_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z10\,
	combout => \low_pass|prod_2__mults20_2|d_9_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z9\);

-- Location: LCCOMB_X25_Y17_N2
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_10_\ = ((\low_pass_in_15_\ $ (\low_pass_in_8_\ $ (\low_pass|prod_2__mults20_2|nx6235z9\)))) # (GND)
-- \low_pass|prod_2__mults20_2|nx6235z8\ = CARRY((\low_pass_in_15_\ & (\low_pass_in_8_\ & !\low_pass|prod_2__mults20_2|nx6235z9\)) # (!\low_pass_in_15_\ & ((\low_pass_in_8_\) # (!\low_pass|prod_2__mults20_2|nx6235z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_8_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z9\,
	combout => \low_pass|prod_2__mults20_2|d_10_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z8\);

-- Location: LCCOMB_X25_Y17_N4
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_11_\ = (\low_pass_in_15_\ & ((\low_pass_in_9_\ & (!\low_pass|prod_2__mults20_2|nx6235z8\)) # (!\low_pass_in_9_\ & ((\low_pass|prod_2__mults20_2|nx6235z8\) # (GND))))) # (!\low_pass_in_15_\ & ((\low_pass_in_9_\ & 
-- (\low_pass|prod_2__mults20_2|nx6235z8\ & VCC)) # (!\low_pass_in_9_\ & (!\low_pass|prod_2__mults20_2|nx6235z8\))))
-- \low_pass|prod_2__mults20_2|nx6235z7\ = CARRY((\low_pass_in_15_\ & ((!\low_pass|prod_2__mults20_2|nx6235z8\) # (!\low_pass_in_9_\))) # (!\low_pass_in_15_\ & (!\low_pass_in_9_\ & !\low_pass|prod_2__mults20_2|nx6235z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_9_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z8\,
	combout => \low_pass|prod_2__mults20_2|d_11_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z7\);

-- Location: LCCOMB_X25_Y17_N6
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_12_\ = ((\low_pass_in_15_\ $ (\low_pass_in_10_\ $ (\low_pass|prod_2__mults20_2|nx6235z7\)))) # (GND)
-- \low_pass|prod_2__mults20_2|nx6235z6\ = CARRY((\low_pass_in_15_\ & (\low_pass_in_10_\ & !\low_pass|prod_2__mults20_2|nx6235z7\)) # (!\low_pass_in_15_\ & ((\low_pass_in_10_\) # (!\low_pass|prod_2__mults20_2|nx6235z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z7\,
	combout => \low_pass|prod_2__mults20_2|d_12_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z6\);

-- Location: LCCOMB_X28_Y19_N16
\low_pass|modgen_add_13|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx45949z1\ = ((\low_pass|modgen_add_10|nx45949z1\ $ (\low_pass|modgen_add_12|nx45949z1\ $ (!\low_pass|modgen_add_13|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_13|nx2247z22\ = CARRY((\low_pass|modgen_add_10|nx45949z1\ & ((\low_pass|modgen_add_12|nx45949z1\) # (!\low_pass|modgen_add_13|nx2247z25\))) # (!\low_pass|modgen_add_10|nx45949z1\ & (\low_pass|modgen_add_12|nx45949z1\ & 
-- !\low_pass|modgen_add_13|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_10|nx45949z1\,
	datab => \low_pass|modgen_add_12|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z25\,
	combout => \low_pass|modgen_add_13|nx45949z1\,
	cout => \low_pass|modgen_add_13|nx2247z22\);

-- Location: LCCOMB_X28_Y19_N18
\low_pass|modgen_add_13|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_13|nx46946z1\ = (\low_pass|modgen_add_12|nx46946z1\ & ((\low_pass|modgen_add_10|nx46946z1\ & (\low_pass|modgen_add_13|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_10|nx46946z1\ & (!\low_pass|modgen_add_13|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_12|nx46946z1\ & ((\low_pass|modgen_add_10|nx46946z1\ & (!\low_pass|modgen_add_13|nx2247z22\)) # (!\low_pass|modgen_add_10|nx46946z1\ & ((\low_pass|modgen_add_13|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_13|nx2247z19\ = CARRY((\low_pass|modgen_add_12|nx46946z1\ & (!\low_pass|modgen_add_10|nx46946z1\ & !\low_pass|modgen_add_13|nx2247z22\)) # (!\low_pass|modgen_add_12|nx46946z1\ & ((!\low_pass|modgen_add_13|nx2247z22\) # 
-- (!\low_pass|modgen_add_10|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_12|nx46946z1\,
	datab => \low_pass|modgen_add_10|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_13|nx2247z22\,
	combout => \low_pass|modgen_add_13|nx46946z1\,
	cout => \low_pass|modgen_add_13|nx2247z19\);

-- Location: LCCOMB_X27_Y19_N18
\low_pass|modgen_add_14|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx46946z1\ = (\low_pass|modgen_add_9|nx46946z1\ & ((\low_pass|modgen_add_13|nx46946z1\ & (\low_pass|modgen_add_14|nx2247z22\ & VCC)) # (!\low_pass|modgen_add_13|nx46946z1\ & (!\low_pass|modgen_add_14|nx2247z22\)))) # 
-- (!\low_pass|modgen_add_9|nx46946z1\ & ((\low_pass|modgen_add_13|nx46946z1\ & (!\low_pass|modgen_add_14|nx2247z22\)) # (!\low_pass|modgen_add_13|nx46946z1\ & ((\low_pass|modgen_add_14|nx2247z22\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z19\ = CARRY((\low_pass|modgen_add_9|nx46946z1\ & (!\low_pass|modgen_add_13|nx46946z1\ & !\low_pass|modgen_add_14|nx2247z22\)) # (!\low_pass|modgen_add_9|nx46946z1\ & ((!\low_pass|modgen_add_14|nx2247z22\) # 
-- (!\low_pass|modgen_add_13|nx46946z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx46946z1\,
	datab => \low_pass|modgen_add_13|nx46946z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z22\,
	combout => \low_pass|modgen_add_14|nx46946z1\,
	cout => \low_pass|modgen_add_14|nx2247z19\);

-- Location: LCCOMB_X27_Y21_N16
\low_pass|modgen_add_15|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx45949z1\ = ((\low_pass|modgen_add_14|nx45949z1\ $ (\low_pass|modgen_add_6|nx45949z1\ $ (!\low_pass|modgen_add_15|nx2247z25\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z22\ = CARRY((\low_pass|modgen_add_14|nx45949z1\ & ((\low_pass|modgen_add_6|nx45949z1\) # (!\low_pass|modgen_add_15|nx2247z25\))) # (!\low_pass|modgen_add_14|nx45949z1\ & (\low_pass|modgen_add_6|nx45949z1\ & 
-- !\low_pass|modgen_add_15|nx2247z25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx45949z1\,
	datab => \low_pass|modgen_add_6|nx45949z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z25\,
	combout => \low_pass|modgen_add_15|nx45949z1\,
	cout => \low_pass|modgen_add_15|nx2247z22\);

-- Location: LCCOMB_X27_Y21_N20
\low_pass|modgen_add_15|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx62798z1\ = ((\low_pass|modgen_add_14|nx62798z1\ $ (\low_pass|modgen_add_6|nx62798z1\ $ (!\low_pass|modgen_add_15|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_15|nx2247z16\ = CARRY((\low_pass|modgen_add_14|nx62798z1\ & ((\low_pass|modgen_add_6|nx62798z1\) # (!\low_pass|modgen_add_15|nx2247z19\))) # (!\low_pass|modgen_add_14|nx62798z1\ & (\low_pass|modgen_add_6|nx62798z1\ & 
-- !\low_pass|modgen_add_15|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_14|nx62798z1\,
	datab => \low_pass|modgen_add_6|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z19\,
	combout => \low_pass|modgen_add_15|nx62798z1\,
	cout => \low_pass|modgen_add_15|nx2247z16\);

-- Location: LCFF_X27_Y20_N1
\reg_audio_out_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_10_\,
	sdata => \low_pass|modgen_add_15|nx62798z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_10_\);

-- Location: LCCOMB_X29_Y20_N30
ix59129z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_8_\ = (\sw~combout\(17) & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4)))) # (!\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8),
	datab => \sw~combout\(17),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4),
	combout => \audio_out_1n1ss1_8_\);

-- Location: LCFF_X29_Y20_N31
\reg_audio_out_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_1n1ss1_8_\,
	sdata => \low_pass|modgen_add_15|nx45949z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_8_\);

-- Location: LCCOMB_X28_Y20_N26
ix24999z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z7 = (\bit_position_1_\ & ((\bit_position_0_\ & ((\audio_out_8_\))) # (!\bit_position_0_\ & (\audio_out_9_\)))) # (!\bit_position_1_\ & (((!\bit_position_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_9_\,
	datab => \bit_position_1_\,
	datac => \bit_position_0_\,
	datad => \audio_out_8_\,
	combout => nx24999z7);

-- Location: LCCOMB_X28_Y20_N28
ix24999z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z6 = (\bit_position_1_\ & (((nx24999z7)))) # (!\bit_position_1_\ & ((nx24999z7 & (\audio_out_11_\)) # (!nx24999z7 & ((\audio_out_10_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_11_\,
	datab => \bit_position_1_\,
	datac => \audio_out_10_\,
	datad => nx24999z7,
	combout => nx24999z6);

-- Location: LCCOMB_X27_Y20_N18
ix27557z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_1n1ss1_11_\ = (\sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7))) # (!\sw~combout\(17) & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7),
	datab => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11),
	combout => \audio_out_1n1ss1_11_\);

-- Location: LCCOMB_X27_Y20_N4
\audio_out_14_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_14_~feeder_combout\ = \audio_out_1n1ss1_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_out_1n1ss1_11_\,
	combout => \audio_out_14_~feeder_combout\);

-- Location: LCCOMB_X23_Y20_N30
\low_pass|prod_1__mults19_1|ix3244z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_1__mults19_1|nx3244z1\ = \low_pass|prod_1__mults19_1|nx3244z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_1__mults19_1|nx3244z2\,
	combout => \low_pass|prod_1__mults19_1|nx3244z1\);

-- Location: LCCOMB_X24_Y17_N8
\low_pass|modgen_add_4|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx63795z1\ = (((\low_pass|modgen_add_4|nx2247z12\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z10\ = CARRY(\low_pass|prod_1__mults19_1|nx2247z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx2247z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z12\,
	combout => \low_pass|modgen_add_4|nx63795z1\,
	cout => \low_pass|modgen_add_4|nx2247z10\);

-- Location: LCCOMB_X24_Y17_N10
\low_pass|modgen_add_4|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx64792z1\ = (((\low_pass|modgen_add_4|nx2247z10\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z8\ = CARRY(\low_pass|prod_1__mults19_1|nx3244z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \low_pass|prod_1__mults19_1|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z10\,
	combout => \low_pass|modgen_add_4|nx64792z1\,
	cout => \low_pass|modgen_add_4|nx2247z8\);

-- Location: LCCOMB_X24_Y17_N12
\low_pass|modgen_add_4|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_4|nx253z1\ = (((\low_pass|modgen_add_4|nx2247z8\))) # (GND)
-- \low_pass|modgen_add_4|nx2247z6\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_4|nx2247z8\,
	combout => \low_pass|modgen_add_4|nx253z1\,
	cout => \low_pass|modgen_add_4|nx2247z6\);

-- Location: LCCOMB_X30_Y18_N26
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx2247z1\ = (((\low_pass|prod_4__mults20_3|nx4241z6\))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z4\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z6\,
	combout => \low_pass|prod_4__mults20_3|nx2247z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z4\);

-- Location: LCCOMB_X30_Y18_N28
\low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx3244z1\ = (((\low_pass|prod_4__mults20_3|nx4241z4\))) # (GND)
-- \low_pass|prod_4__mults20_3|nx4241z2\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_4__mults20_3|nx4241z4\,
	combout => \low_pass|prod_4__mults20_3|nx3244z1\,
	cout => \low_pass|prod_4__mults20_3|nx4241z2\);

-- Location: LCCOMB_X30_Y18_N30
\low_pass|prod_4__mults20_3|ix4241z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_4__mults20_3|nx4241z1\ = \low_pass|prod_4__mults20_3|nx4241z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_4__mults20_3|nx4241z2\,
	combout => \low_pass|prod_4__mults20_3|nx4241z1\);

-- Location: LCCOMB_X22_Y18_N20
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_10__dup_186\ = ((\low_pass|prod_5__mults21_4|nx3244z5\ $ (\low_pass_in_10_\ $ (!\low_pass|prod_5__mults21_4|nx3244z17\)))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z4\ = CARRY((\low_pass|prod_5__mults21_4|nx3244z5\ & ((\low_pass_in_10_\) # (!\low_pass|prod_5__mults21_4|nx3244z17\))) # (!\low_pass|prod_5__mults21_4|nx3244z5\ & (\low_pass_in_10_\ & 
-- !\low_pass|prod_5__mults21_4|nx3244z17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_5__mults21_4|nx3244z5\,
	datab => \low_pass_in_10_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z17\,
	combout => \low_pass|prod_5__mults21_4|d_10__dup_186\,
	cout => \low_pass|prod_5__mults21_4|nx3244z4\);

-- Location: LCCOMB_X22_Y18_N22
\low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|d_11__dup_185\ = (((\low_pass|prod_5__mults21_4|nx3244z4\))) # (GND)
-- \low_pass|prod_5__mults21_4|nx3244z3\ = CARRY(\low_pass_in_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|prod_5__mults21_4|nx3244z4\,
	combout => \low_pass|prod_5__mults21_4|d_11__dup_185\,
	cout => \low_pass|prod_5__mults21_4|nx3244z3\);

-- Location: LCCOMB_X22_Y18_N26
\low_pass|prod_5__mults21_4|ix3244z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_5__mults21_4|nx3244z1\ = \low_pass|prod_5__mults21_4|nx3244z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \low_pass|prod_5__mults21_4|nx3244z2\,
	combout => \low_pass|prod_5__mults21_4|nx3244z1\);

-- Location: LCCOMB_X29_Y18_N22
\low_pass|modgen_add_3|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx63795z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx3244z1\ & (\low_pass|modgen_add_3|nx2247z16\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx3244z1\ & (!\low_pass|modgen_add_3|nx2247z16\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_4__mults20_3|nx3244z1\ & (!\low_pass|modgen_add_3|nx2247z16\)) # (!\low_pass|prod_4__mults20_3|nx3244z1\ & ((\low_pass|modgen_add_3|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_3|nx2247z13\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_4__mults20_3|nx3244z1\ & !\low_pass|modgen_add_3|nx2247z16\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_3|nx2247z16\) # (!\low_pass|prod_4__mults20_3|nx3244z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z16\,
	combout => \low_pass|modgen_add_3|nx63795z1\,
	cout => \low_pass|modgen_add_3|nx2247z13\);

-- Location: LCCOMB_X29_Y18_N24
\low_pass|modgen_add_3|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_3|nx64792z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_4__mults20_3|nx4241z1\ $ (!\low_pass|modgen_add_3|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_3|nx2247z10\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx4241z1\) # (!\low_pass|modgen_add_3|nx2247z13\))) # (!\low_pass_in_15_\ & (\low_pass|prod_4__mults20_3|nx4241z1\ & !\low_pass|modgen_add_3|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx4241z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_3|nx2247z13\,
	combout => \low_pass|modgen_add_3|nx64792z1\,
	cout => \low_pass|modgen_add_3|nx2247z10\);

-- Location: LCCOMB_X29_Y21_N22
\low_pass|modgen_add_5|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx63795z1\ = (\low_pass|modgen_add_4|nx63795z1\ & ((\low_pass|modgen_add_3|nx63795z1\ & (\low_pass|modgen_add_5|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_3|nx63795z1\ & (!\low_pass|modgen_add_5|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_4|nx63795z1\ & ((\low_pass|modgen_add_3|nx63795z1\ & (!\low_pass|modgen_add_5|nx2247z16\)) # (!\low_pass|modgen_add_3|nx63795z1\ & ((\low_pass|modgen_add_5|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_5|nx2247z13\ = CARRY((\low_pass|modgen_add_4|nx63795z1\ & (!\low_pass|modgen_add_3|nx63795z1\ & !\low_pass|modgen_add_5|nx2247z16\)) # (!\low_pass|modgen_add_4|nx63795z1\ & ((!\low_pass|modgen_add_5|nx2247z16\) # 
-- (!\low_pass|modgen_add_3|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx63795z1\,
	datab => \low_pass|modgen_add_3|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z16\,
	combout => \low_pass|modgen_add_5|nx63795z1\,
	cout => \low_pass|modgen_add_5|nx2247z13\);

-- Location: LCCOMB_X29_Y21_N24
\low_pass|modgen_add_5|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_5|nx64792z1\ = ((\low_pass|modgen_add_4|nx64792z1\ $ (\low_pass|modgen_add_3|nx64792z1\ $ (!\low_pass|modgen_add_5|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_5|nx2247z10\ = CARRY((\low_pass|modgen_add_4|nx64792z1\ & ((\low_pass|modgen_add_3|nx64792z1\) # (!\low_pass|modgen_add_5|nx2247z13\))) # (!\low_pass|modgen_add_4|nx64792z1\ & (\low_pass|modgen_add_3|nx64792z1\ & 
-- !\low_pass|modgen_add_5|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_4|nx64792z1\,
	datab => \low_pass|modgen_add_3|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_5|nx2247z13\,
	combout => \low_pass|modgen_add_5|nx64792z1\,
	cout => \low_pass|modgen_add_5|nx2247z10\);

-- Location: LCCOMB_X25_Y17_N8
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_13_\ = !\low_pass|prod_2__mults20_2|nx6235z6\
-- \low_pass|prod_2__mults20_2|nx6235z5\ = CARRY(!\low_pass|prod_2__mults20_2|nx6235z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z6\,
	combout => \low_pass|prod_2__mults20_2|d_13_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z5\);

-- Location: LCCOMB_X25_Y17_N10
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_14_\ = \low_pass|prod_2__mults20_2|nx6235z5\ $ (GND)
-- \low_pass|prod_2__mults20_2|nx6235z4\ = CARRY(!\low_pass|prod_2__mults20_2|nx6235z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z5\,
	combout => \low_pass|prod_2__mults20_2|d_14_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z4\);

-- Location: LCCOMB_X25_Y17_N12
\low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|prod_2__mults20_2|d_15_\ = !\low_pass|prod_2__mults20_2|nx6235z4\
-- \low_pass|prod_2__mults20_2|nx6235z3\ = CARRY(!\low_pass|prod_2__mults20_2|nx6235z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \low_pass|prod_2__mults20_2|nx6235z4\,
	combout => \low_pass|prod_2__mults20_2|d_15_\,
	cout => \low_pass|prod_2__mults20_2|nx6235z3\);

-- Location: LCCOMB_X27_Y18_N18
\low_pass|modgen_add_1|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx46946z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_2__mults20_2|d_14_\ & (\low_pass|modgen_add_1|nx2247z17\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_14_\ & (!\low_pass|modgen_add_1|nx2247z17\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_2__mults20_2|d_14_\ & (!\low_pass|modgen_add_1|nx2247z17\)) # (!\low_pass|prod_2__mults20_2|d_14_\ & ((\low_pass|modgen_add_1|nx2247z17\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z14\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_2__mults20_2|d_14_\ & !\low_pass|modgen_add_1|nx2247z17\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_1|nx2247z17\) # (!\low_pass|prod_2__mults20_2|d_14_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_2__mults20_2|d_14_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z17\,
	combout => \low_pass|modgen_add_1|nx46946z1\,
	cout => \low_pass|modgen_add_1|nx2247z14\);

-- Location: LCCOMB_X27_Y18_N20
\low_pass|modgen_add_1|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx62798z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_2__mults20_2|d_15_\ $ (!\low_pass|modgen_add_1|nx2247z14\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z11\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_2__mults20_2|d_15_\) # (!\low_pass|modgen_add_1|nx2247z14\))) # (!\low_pass_in_15_\ & (\low_pass|prod_2__mults20_2|d_15_\ & !\low_pass|modgen_add_1|nx2247z14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_2__mults20_2|d_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z14\,
	combout => \low_pass|modgen_add_1|nx62798z1\,
	cout => \low_pass|modgen_add_1|nx2247z11\);

-- Location: LCCOMB_X27_Y18_N22
\low_pass|modgen_add_1|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx63795z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_2__mults20_2|d_16_\ & (\low_pass|modgen_add_1|nx2247z11\ & VCC)) # (!\low_pass|prod_2__mults20_2|d_16_\ & (!\low_pass|modgen_add_1|nx2247z11\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_2__mults20_2|d_16_\ & (!\low_pass|modgen_add_1|nx2247z11\)) # (!\low_pass|prod_2__mults20_2|d_16_\ & ((\low_pass|modgen_add_1|nx2247z11\) # (GND)))))
-- \low_pass|modgen_add_1|nx2247z8\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_2__mults20_2|d_16_\ & !\low_pass|modgen_add_1|nx2247z11\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_1|nx2247z11\) # (!\low_pass|prod_2__mults20_2|d_16_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_2__mults20_2|d_16_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z11\,
	combout => \low_pass|modgen_add_1|nx63795z1\,
	cout => \low_pass|modgen_add_1|nx2247z8\);

-- Location: LCCOMB_X27_Y18_N24
\low_pass|modgen_add_1|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_1|nx64792z1\ = ((\low_pass|prod_2__mults20_2|nx6235z1\ $ (\low_pass_in_15_\ $ (!\low_pass|modgen_add_1|nx2247z8\)))) # (GND)
-- \low_pass|modgen_add_1|nx2247z6\ = CARRY((\low_pass|prod_2__mults20_2|nx6235z1\ & ((\low_pass_in_15_\) # (!\low_pass|modgen_add_1|nx2247z8\))) # (!\low_pass|prod_2__mults20_2|nx6235z1\ & (\low_pass_in_15_\ & !\low_pass|modgen_add_1|nx2247z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_2__mults20_2|nx6235z1\,
	datab => \low_pass_in_15_\,
	datad => VCC,
	cin => \low_pass|modgen_add_1|nx2247z8\,
	combout => \low_pass|modgen_add_1|nx64792z1\,
	cout => \low_pass|modgen_add_1|nx2247z6\);

-- Location: LCCOMB_X22_Y19_N0
\low_pass|modgen_add_8|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_8|nx44952z1\ = ((\low_pass|prod_1__mults19_1|nx63795z1\ $ (\low_pass|prod_5__mults21_4|d_10__dup_186\ $ (!\low_pass|modgen_add_8|nx2247z28\)))) # (GND)
-- \low_pass|modgen_add_8|nx2247z25\ = CARRY((\low_pass|prod_1__mults19_1|nx63795z1\ & ((\low_pass|prod_5__mults21_4|d_10__dup_186\) # (!\low_pass|modgen_add_8|nx2247z28\))) # (!\low_pass|prod_1__mults19_1|nx63795z1\ & 
-- (\low_pass|prod_5__mults21_4|d_10__dup_186\ & !\low_pass|modgen_add_8|nx2247z28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|prod_1__mults19_1|nx63795z1\,
	datab => \low_pass|prod_5__mults21_4|d_10__dup_186\,
	datad => VCC,
	cin => \low_pass|modgen_add_8|nx2247z28\,
	combout => \low_pass|modgen_add_8|nx44952z1\,
	cout => \low_pass|modgen_add_8|nx2247z25\);

-- Location: LCCOMB_X23_Y19_N20
\low_pass|modgen_add_9|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx62798z1\ = ((\low_pass|modgen_add_8|nx62798z1\ $ (\low_pass|modgen_add_4|nx62798z1\ $ (!\low_pass|modgen_add_9|nx2247z19\)))) # (GND)
-- \low_pass|modgen_add_9|nx2247z16\ = CARRY((\low_pass|modgen_add_8|nx62798z1\ & ((\low_pass|modgen_add_4|nx62798z1\) # (!\low_pass|modgen_add_9|nx2247z19\))) # (!\low_pass|modgen_add_8|nx62798z1\ & (\low_pass|modgen_add_4|nx62798z1\ & 
-- !\low_pass|modgen_add_9|nx2247z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx62798z1\,
	datab => \low_pass|modgen_add_4|nx62798z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z19\,
	combout => \low_pass|modgen_add_9|nx62798z1\,
	cout => \low_pass|modgen_add_9|nx2247z16\);

-- Location: LCCOMB_X23_Y19_N22
\low_pass|modgen_add_9|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_9|nx63795z1\ = (\low_pass|modgen_add_8|nx63795z1\ & ((\low_pass|modgen_add_4|nx63795z1\ & (\low_pass|modgen_add_9|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_4|nx63795z1\ & (!\low_pass|modgen_add_9|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_8|nx63795z1\ & ((\low_pass|modgen_add_4|nx63795z1\ & (!\low_pass|modgen_add_9|nx2247z16\)) # (!\low_pass|modgen_add_4|nx63795z1\ & ((\low_pass|modgen_add_9|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_9|nx2247z13\ = CARRY((\low_pass|modgen_add_8|nx63795z1\ & (!\low_pass|modgen_add_4|nx63795z1\ & !\low_pass|modgen_add_9|nx2247z16\)) # (!\low_pass|modgen_add_8|nx63795z1\ & ((!\low_pass|modgen_add_9|nx2247z16\) # 
-- (!\low_pass|modgen_add_4|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_8|nx63795z1\,
	datab => \low_pass|modgen_add_4|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_9|nx2247z16\,
	combout => \low_pass|modgen_add_9|nx63795z1\,
	cout => \low_pass|modgen_add_9|nx2247z13\);

-- Location: LCCOMB_X29_Y19_N20
\low_pass|modgen_add_10|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx62798z1\ = ((\low_pass_in_15_\ $ (\low_pass|prod_4__mults20_3|nx2247z1\ $ (!\low_pass|modgen_add_10|nx2247z15\)))) # (GND)
-- \low_pass|modgen_add_10|nx2247z13\ = CARRY((\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx2247z1\) # (!\low_pass|modgen_add_10|nx2247z15\))) # (!\low_pass_in_15_\ & (\low_pass|prod_4__mults20_3|nx2247z1\ & !\low_pass|modgen_add_10|nx2247z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx2247z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z15\,
	combout => \low_pass|modgen_add_10|nx62798z1\,
	cout => \low_pass|modgen_add_10|nx2247z13\);

-- Location: LCCOMB_X29_Y19_N22
\low_pass|modgen_add_10|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_10|nx63795z1\ = (\low_pass_in_15_\ & ((\low_pass|prod_4__mults20_3|nx3244z1\ & (\low_pass|modgen_add_10|nx2247z13\ & VCC)) # (!\low_pass|prod_4__mults20_3|nx3244z1\ & (!\low_pass|modgen_add_10|nx2247z13\)))) # (!\low_pass_in_15_\ & 
-- ((\low_pass|prod_4__mults20_3|nx3244z1\ & (!\low_pass|modgen_add_10|nx2247z13\)) # (!\low_pass|prod_4__mults20_3|nx3244z1\ & ((\low_pass|modgen_add_10|nx2247z13\) # (GND)))))
-- \low_pass|modgen_add_10|nx2247z10\ = CARRY((\low_pass_in_15_\ & (!\low_pass|prod_4__mults20_3|nx3244z1\ & !\low_pass|modgen_add_10|nx2247z13\)) # (!\low_pass_in_15_\ & ((!\low_pass|modgen_add_10|nx2247z13\) # (!\low_pass|prod_4__mults20_3|nx3244z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass_in_15_\,
	datab => \low_pass|prod_4__mults20_3|nx3244z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_10|nx2247z13\,
	combout => \low_pass|modgen_add_10|nx63795z1\,
	cout => \low_pass|modgen_add_10|nx2247z10\);

-- Location: LCCOMB_X27_Y19_N22
\low_pass|modgen_add_14|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx63795z1\ = (\low_pass|modgen_add_13|nx63795z1\ & ((\low_pass|modgen_add_9|nx63795z1\ & (\low_pass|modgen_add_14|nx2247z16\ & VCC)) # (!\low_pass|modgen_add_9|nx63795z1\ & (!\low_pass|modgen_add_14|nx2247z16\)))) # 
-- (!\low_pass|modgen_add_13|nx63795z1\ & ((\low_pass|modgen_add_9|nx63795z1\ & (!\low_pass|modgen_add_14|nx2247z16\)) # (!\low_pass|modgen_add_9|nx63795z1\ & ((\low_pass|modgen_add_14|nx2247z16\) # (GND)))))
-- \low_pass|modgen_add_14|nx2247z13\ = CARRY((\low_pass|modgen_add_13|nx63795z1\ & (!\low_pass|modgen_add_9|nx63795z1\ & !\low_pass|modgen_add_14|nx2247z16\)) # (!\low_pass|modgen_add_13|nx63795z1\ & ((!\low_pass|modgen_add_14|nx2247z16\) # 
-- (!\low_pass|modgen_add_9|nx63795z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_13|nx63795z1\,
	datab => \low_pass|modgen_add_9|nx63795z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z16\,
	combout => \low_pass|modgen_add_14|nx63795z1\,
	cout => \low_pass|modgen_add_14|nx2247z13\);

-- Location: LCCOMB_X27_Y19_N24
\low_pass|modgen_add_14|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_14|nx64792z1\ = ((\low_pass|modgen_add_9|nx64792z1\ $ (\low_pass|modgen_add_13|nx64792z1\ $ (!\low_pass|modgen_add_14|nx2247z13\)))) # (GND)
-- \low_pass|modgen_add_14|nx2247z10\ = CARRY((\low_pass|modgen_add_9|nx64792z1\ & ((\low_pass|modgen_add_13|nx64792z1\) # (!\low_pass|modgen_add_14|nx2247z13\))) # (!\low_pass|modgen_add_9|nx64792z1\ & (\low_pass|modgen_add_13|nx64792z1\ & 
-- !\low_pass|modgen_add_14|nx2247z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_9|nx64792z1\,
	datab => \low_pass|modgen_add_13|nx64792z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_14|nx2247z13\,
	combout => \low_pass|modgen_add_14|nx64792z1\,
	cout => \low_pass|modgen_add_14|nx2247z10\);

-- Location: LCCOMB_X27_Y21_N26
\low_pass|modgen_add_15|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \low_pass|modgen_add_15|nx253z1\ = (\low_pass|modgen_add_6|nx253z1\ & ((\low_pass|modgen_add_14|nx253z1\ & (\low_pass|modgen_add_15|nx2247z10\ & VCC)) # (!\low_pass|modgen_add_14|nx253z1\ & (!\low_pass|modgen_add_15|nx2247z10\)))) # 
-- (!\low_pass|modgen_add_6|nx253z1\ & ((\low_pass|modgen_add_14|nx253z1\ & (!\low_pass|modgen_add_15|nx2247z10\)) # (!\low_pass|modgen_add_14|nx253z1\ & ((\low_pass|modgen_add_15|nx2247z10\) # (GND)))))
-- \low_pass|modgen_add_15|nx2247z7\ = CARRY((\low_pass|modgen_add_6|nx253z1\ & (!\low_pass|modgen_add_14|nx253z1\ & !\low_pass|modgen_add_15|nx2247z10\)) # (!\low_pass|modgen_add_6|nx253z1\ & ((!\low_pass|modgen_add_15|nx2247z10\) # 
-- (!\low_pass|modgen_add_14|nx253z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \low_pass|modgen_add_6|nx253z1\,
	datab => \low_pass|modgen_add_14|nx253z1\,
	datad => VCC,
	cin => \low_pass|modgen_add_15|nx2247z10\,
	combout => \low_pass|modgen_add_15|nx253z1\,
	cout => \low_pass|modgen_add_15|nx2247z7\);

-- Location: LCFF_X27_Y20_N5
\reg_audio_out_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_14_~feeder_combout\,
	sdata => \low_pass|modgen_add_15|nx1250z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_14_\);

-- Location: LCCOMB_X28_Y20_N30
\audio_out_13_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_13_~feeder_combout\ = \audio_out_1n1ss1_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio_out_1n1ss1_11_\,
	combout => \audio_out_13_~feeder_combout\);

-- Location: LCFF_X28_Y20_N31
\reg_audio_out_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_13_~feeder_combout\,
	sdata => \low_pass|modgen_add_15|nx253z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_13_\);

-- Location: LCCOMB_X28_Y20_N2
ix24999z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z9 = (\bit_position_0_\ & (\audio_out_12_\ & (\bit_position_1_\))) # (!\bit_position_0_\ & (((\audio_out_13_\) # (!\bit_position_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_12_\,
	datab => \bit_position_0_\,
	datac => \bit_position_1_\,
	datad => \audio_out_13_\,
	combout => nx24999z9);

-- Location: LCCOMB_X28_Y20_N4
ix24999z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z8 = (\bit_position_1_\ & (((nx24999z9)))) # (!\bit_position_1_\ & ((nx24999z9 & (\audio_out_15_\)) # (!nx24999z9 & ((\audio_out_14_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_15_\,
	datab => \bit_position_1_\,
	datac => \audio_out_14_\,
	datad => nx24999z9,
	combout => nx24999z8);

-- Location: LCCOMB_X28_Y20_N22
ix24999z52923 : cycloneii_lcell_comb
-- Equation(s):
-- aud_dacdat_dup0 = (nx24999z1 & (((nx24999z8) # (\bit_position_3_\)))) # (!nx24999z1 & (nx24999z6 & ((!\bit_position_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z1,
	datab => nx24999z6,
	datac => nx24999z8,
	datad => \bit_position_3_\,
	combout => aud_dacdat_dup0);

-- Location: LCCOMB_X36_Y35_N10
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ (VCC)
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\);

-- Location: LCCOMB_X36_Y35_N12
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\) # (GND)))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\);

-- Location: LCCOMB_X36_Y35_N14
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ & VCC))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\);

-- Location: LCCOMB_X37_Y33_N0
\u_i2c_av_config|modgen_counter_cont|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx51271z1\ = \u_i2c_av_config|modgen_counter_cont|q_0_\ $ (VCC)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z16\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z16\);

-- Location: LCCOMB_X37_Y33_N16
\u_i2c_av_config|modgen_counter_cont|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx59247z1\ = (\u_i2c_av_config|modgen_counter_cont|q_8_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z9\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_8_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z9\ & 
-- VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z8\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_8_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z9\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z8\);

-- Location: LCFF_X37_Y33_N17
\u_i2c_av_config|modgen_counter_cont|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_8_\);

-- Location: LCCOMB_X36_Y33_N24
\u_i2c_av_config|ix35560z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z3\ = (\u_i2c_av_config|modgen_counter_cont|q_10_\ & (\u_i2c_av_config|modgen_counter_cont|q_11_\ & (\u_i2c_av_config|modgen_counter_cont|q_8_\ & \u_i2c_av_config|modgen_counter_cont|q_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	combout => \u_i2c_av_config|nx35560z3\);

-- Location: LCCOMB_X36_Y33_N12
\u_i2c_av_config|ix17807z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z2\ = (\u_i2c_av_config|modgen_counter_cont|q_3_\ & (\u_i2c_av_config|modgen_counter_cont|q_1_\ & (\u_i2c_av_config|modgen_counter_cont|q_0_\ & \u_i2c_av_config|modgen_counter_cont|q_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	combout => \u_i2c_av_config|nx17807z2\);

-- Location: LCCOMB_X36_Y33_N20
\u_i2c_av_config|ix35560z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z1\ = (((!\u_i2c_av_config|nx17807z2\) # (!\u_i2c_av_config|nx35560z3\)) # (!\u_i2c_av_config|nx35560z4\)) # (!\u_i2c_av_config|nx35560z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx35560z1\);

-- Location: LCFF_X37_Y33_N1
\u_i2c_av_config|modgen_counter_cont|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_0_\);

-- Location: LCCOMB_X37_Y33_N2
\u_i2c_av_config|modgen_counter_cont|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx52268z1\ = (\u_i2c_av_config|modgen_counter_cont|q_1_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z16\)) # (!\u_i2c_av_config|modgen_counter_cont|q_1_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z16\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z15\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z16\) # (!\u_i2c_av_config|modgen_counter_cont|q_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z16\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z15\);

-- Location: LCFF_X37_Y33_N3
\u_i2c_av_config|modgen_counter_cont|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_1_\);

-- Location: LCCOMB_X37_Y33_N4
\u_i2c_av_config|modgen_counter_cont|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx53265z1\ = (\u_i2c_av_config|modgen_counter_cont|q_2_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z15\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_2_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z15\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z14\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_2_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z15\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z14\);

-- Location: LCFF_X37_Y33_N5
\u_i2c_av_config|modgen_counter_cont|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_2_\);

-- Location: LCCOMB_X37_Y33_N8
\u_i2c_av_config|modgen_counter_cont|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx55259z1\ = (\u_i2c_av_config|modgen_counter_cont|q_4_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z13\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_4_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z13\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z12\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_4_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z13\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z12\);

-- Location: LCFF_X37_Y33_N9
\u_i2c_av_config|modgen_counter_cont|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_4_\);

-- Location: LCCOMB_X37_Y33_N14
\u_i2c_av_config|modgen_counter_cont|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx58250z1\ = (\u_i2c_av_config|modgen_counter_cont|q_7_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z10\)) # (!\u_i2c_av_config|modgen_counter_cont|q_7_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z10\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z9\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z10\) # (!\u_i2c_av_config|modgen_counter_cont|q_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z10\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z9\);

-- Location: LCFF_X37_Y33_N15
\u_i2c_av_config|modgen_counter_cont|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_7_\);

-- Location: LCCOMB_X37_Y33_N18
\u_i2c_av_config|modgen_counter_cont|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx60244z1\ = (\u_i2c_av_config|modgen_counter_cont|q_9_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z8\)) # (!\u_i2c_av_config|modgen_counter_cont|q_9_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z8\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z7\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z8\) # (!\u_i2c_av_config|modgen_counter_cont|q_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z8\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z7\);

-- Location: LCFF_X37_Y33_N19
\u_i2c_av_config|modgen_counter_cont|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_9_\);

-- Location: LCCOMB_X37_Y33_N22
\u_i2c_av_config|modgen_counter_cont|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx18093z1\ = (\u_i2c_av_config|modgen_counter_cont|q_11_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z6\)) # (!\u_i2c_av_config|modgen_counter_cont|q_11_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z6\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z5\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z6\) # (!\u_i2c_av_config|modgen_counter_cont|q_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z6\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z5\);

-- Location: LCFF_X37_Y33_N23
\u_i2c_av_config|modgen_counter_cont|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_11_\);

-- Location: LCCOMB_X37_Y33_N24
\u_i2c_av_config|modgen_counter_cont|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx19090z1\ = (\u_i2c_av_config|modgen_counter_cont|q_12_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z5\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_12_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z5\ 
-- & VCC))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z4\ = CARRY((\u_i2c_av_config|modgen_counter_cont|q_12_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z5\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z4\);

-- Location: LCCOMB_X37_Y33_N26
\u_i2c_av_config|modgen_counter_cont|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx20087z1\ = (\u_i2c_av_config|modgen_counter_cont|q_13_\ & (!\u_i2c_av_config|modgen_counter_cont|nx22081z4\)) # (!\u_i2c_av_config|modgen_counter_cont|q_13_\ & ((\u_i2c_av_config|modgen_counter_cont|nx22081z4\) # 
-- (GND)))
-- \u_i2c_av_config|modgen_counter_cont|nx22081z3\ = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z4\) # (!\u_i2c_av_config|modgen_counter_cont|q_13_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z4\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z3\);

-- Location: LCFF_X37_Y33_N27
\u_i2c_av_config|modgen_counter_cont|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_13_\);

-- Location: LCFF_X37_Y33_N29
\u_i2c_av_config|modgen_counter_cont|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_14_\);

-- Location: LCFF_X37_Y33_N25
\u_i2c_av_config|modgen_counter_cont|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_12_\);

-- Location: LCCOMB_X36_Y33_N2
\u_i2c_av_config|ix35560z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z4\ = (\u_i2c_av_config|modgen_counter_cont|q_15_\ & (\u_i2c_av_config|modgen_counter_cont|q_14_\ & (\u_i2c_av_config|modgen_counter_cont|q_13_\ & \u_i2c_av_config|modgen_counter_cont|q_12_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	combout => \u_i2c_av_config|nx35560z4\);

-- Location: LCCOMB_X36_Y33_N18
\u_i2c_av_config|ix17807z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z1\ = (\u_i2c_av_config|nx35560z2\ & (\u_i2c_av_config|nx35560z4\ & (\u_i2c_av_config|nx35560z3\ & \u_i2c_av_config|nx17807z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx17807z1\);

-- Location: LCFF_X36_Y33_N19
\u_i2c_av_config|reg_reset_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx17807z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|reset_n\);

-- Location: LCCOMB_X36_Y33_N0
\u_i2c_av_config|ix2692z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z1\ = \u_i2c_av_config|nx2692z2\ $ (\u_i2c_av_config|m_i2c_ctrl_clk\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx2692z2\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	combout => \u_i2c_av_config|nx2692z1\);

-- Location: LCFF_X36_Y33_N1
\u_i2c_av_config|reg_m_i2c_ctrl_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx2692z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|m_i2c_ctrl_clk\);

-- Location: LCFF_X36_Y35_N11
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\);

-- Location: LCCOMB_X36_Y35_N24
\u_i2c_av_config|u0|ix7286z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z1\ = (\u_i2c_av_config|u0|nx7286z2\) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx7286z2\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	combout => \u_i2c_av_config|u0|nx7286z1\);

-- Location: LCCOMB_X37_Y35_N4
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ $ (VCC)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\);

-- Location: LCCOMB_X36_Y35_N4
\u_i2c_av_config|ix23875z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx23875z1\ = (\u_i2c_av_config|nx2692z2\) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx23875z1\);

-- Location: LCFF_X37_Y35_N5
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\);

-- Location: LCCOMB_X37_Y35_N8
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\);

-- Location: LCFF_X37_Y35_N9
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\);

-- Location: LCCOMB_X37_Y35_N10
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\);

-- Location: LCCOMB_X37_Y35_N14
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\);

-- Location: LCFF_X37_Y35_N15
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\);

-- Location: LCCOMB_X37_Y35_N18
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\);

-- Location: LCFF_X37_Y35_N19
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\);

-- Location: LCCOMB_X37_Y35_N20
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & 
-- (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ & VCC))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\);

-- Location: LCFF_X37_Y35_N21
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\);

-- Location: LCCOMB_X37_Y35_N22
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\);

-- Location: LCFF_X37_Y35_N23
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\);

-- Location: LCCOMB_X37_Y35_N26
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\)) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & 
-- ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\) # (GND)))
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\);

-- Location: LCFF_X37_Y35_N27
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\);

-- Location: LCCOMB_X36_Y35_N2
\u_i2c_av_config|ix2692z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z4\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & 
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	combout => \u_i2c_av_config|nx2692z4\);

-- Location: LCFF_X37_Y35_N11
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\);

-- Location: LCCOMB_X36_Y35_N8
\u_i2c_av_config|ix2692z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z3\ = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\) # 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	combout => \u_i2c_av_config|nx2692z3\);

-- Location: LCCOMB_X37_Y35_N28
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ $ (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\);

-- Location: LCFF_X37_Y35_N29
\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\);

-- Location: LCCOMB_X36_Y35_N30
\u_i2c_av_config|ix2692z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z2\ = (\u_i2c_av_config|nx2692z5\) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\) # ((\u_i2c_av_config|nx2692z4\ & \u_i2c_av_config|nx2692z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx2692z5\,
	datab => \u_i2c_av_config|nx2692z4\,
	datac => \u_i2c_av_config|nx2692z3\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	combout => \u_i2c_av_config|nx2692z2\);

-- Location: LCCOMB_X36_Y35_N0
\u_i2c_av_config|ix51161z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx51161z1\ = (\u_i2c_av_config|reset_n\ & (\u_i2c_av_config|m_i2c_ctrl_clk\ $ (\u_i2c_av_config|nx2692z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx51161z1\);

-- Location: LCCOMB_X36_Y35_N26
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ = (!\u_i2c_av_config|m_i2c_ctrl_clk\ & (\u_i2c_av_config|nx51161z1\ & ((\u_i2c_av_config|u0|nx7286z1\) # (!\u_i2c_av_config|reset_n\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datac => \u_i2c_av_config|u0|nx7286z1\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\);

-- Location: LCFF_X36_Y35_N15
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\);

-- Location: LCCOMB_X36_Y35_N16
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\) # (GND)))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\);

-- Location: LCCOMB_X36_Y35_N18
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ & VCC))
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\);

-- Location: LCFF_X36_Y35_N19
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\);

-- Location: LCCOMB_X36_Y35_N20
\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ $ (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\);

-- Location: LCFF_X36_Y35_N21
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\);

-- Location: LCFF_X36_Y35_N17
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\);

-- Location: LCFF_X36_Y35_N13
\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\);

-- Location: LCCOMB_X34_Y35_N0
\u_i2c_av_config|u0|ix43379z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx43379z4\);

-- Location: LCCOMB_X33_Y35_N12
\u_i2c_av_config|u0|ix43379z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z3\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\) # (!\u_i2c_av_config|u0|nx43379z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|nx43379z4\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx43379z3\);

-- Location: LCCOMB_X33_Y35_N8
\u_i2c_av_config|u0|ix44942z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z1\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx44942z1\);

-- Location: LCCOMB_X33_Y35_N0
\u_i2c_av_config|u0|ix44942z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx44942z4\);

-- Location: LCCOMB_X35_Y35_N0
\u_i2c_av_config|u0|ix44942z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z5\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx44942z5\);

-- Location: LCCOMB_X33_Y35_N2
\u_i2c_av_config|u0|ix44942z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z8\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx44942z8\);

-- Location: LCCOMB_X33_Y35_N28
\u_i2c_av_config|u0|ix44942z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z6\ = ((!\u_i2c_av_config|u0|nx44942z7\ & (!\u_i2c_av_config|u0|nx44942z8\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\))) # (!\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z7\,
	datab => \u_i2c_av_config|u0|nx44942z8\,
	datac => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	combout => \u_i2c_av_config|u0|nx44942z6\);

-- Location: LCCOMB_X33_Y35_N30
\u_i2c_av_config|u0|ix44942z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z3\ = (\u_i2c_av_config|u0|nx44942z6\) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (!\u_i2c_av_config|u0|nx44942z4\ & !\u_i2c_av_config|u0|nx44942z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx44942z4\,
	datac => \u_i2c_av_config|u0|nx44942z5\,
	datad => \u_i2c_av_config|u0|nx44942z6\,
	combout => \u_i2c_av_config|u0|nx44942z3\);

-- Location: LCCOMB_X33_Y35_N16
\u_i2c_av_config|u0|ix44942z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z2\ = (\u_i2c_av_config|u0|nx44942z3\ & (!\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx44942z3\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|nx44942z2\);

-- Location: LCFF_X33_Y35_N9
\u_i2c_av_config|u0|reg_sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx44942z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx44942z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx43379z1\);

-- Location: LCCOMB_X33_Y35_N26
\u_i2c_av_config|u0|ix43379z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z2\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\) # 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx43379z2\);

-- Location: LCCOMB_X33_Y35_N22
\u_i2c_av_config|u0|ix43379z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|p_i2c_sclk\ = ((!\u_i2c_av_config|m_i2c_ctrl_clk\ & ((\u_i2c_av_config|u0|nx43379z3\) # (\u_i2c_av_config|u0|nx43379z2\)))) # (!\u_i2c_av_config|u0|nx43379z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx43379z3\,
	datab => \u_i2c_av_config|u0|nx43379z1\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|u0|nx43379z2\,
	combout => \u_i2c_av_config|u0|p_i2c_sclk\);

-- Location: CLKCTRL_G9
\clock_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_27~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y35_N22
\u_i2c_av_config|u0|ix22137z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\) # 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx22137z1\);

-- Location: LCCOMB_X35_Y35_N14
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ = (\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & ((GND) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ (GND)))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_0_\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\);

-- Location: LCCOMB_X35_Y35_N16
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ = (\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ 
-- & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ & VCC)))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\) # (GND))) # 
-- (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\))))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & 
-- ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\);

-- Location: LCCOMB_X35_Y35_N18
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ = ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ $ (\u_i2c_av_config|u0|nx22137z1\ $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\)))) # (GND)
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|nx22137z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & 
-- ((\u_i2c_av_config|u0|nx22137z1\) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx22137z1\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\);

-- Location: LCCOMB_X35_Y35_N20
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\)) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & 
-- (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ & VCC))
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\);

-- Location: LCCOMB_X35_Y35_N22
\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ = \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ $ (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\);

-- Location: LCCOMB_X35_Y35_N2
\u_i2c_av_config|u0|ix41315z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z10\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	combout => \u_i2c_av_config|u0|nx41315z10\);

-- Location: LCCOMB_X33_Y35_N18
\u_i2c_av_config|u0|ix41315z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z6\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (\u_i2c_av_config|u0|nx44942z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|nx44942z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z6\);

-- Location: LCCOMB_X34_Y35_N4
\u_i2c_av_config|u0|ix41315z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z4\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\) # (!\u_i2c_av_config|u0|nx7286z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx7286z2\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	combout => \u_i2c_av_config|u0|nx41315z4\);

-- Location: LCCOMB_X34_Y35_N24
\u_i2c_av_config|u0|ix41315z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z3\ = (\u_i2c_av_config|u0|nx41315z6\) # ((\u_i2c_av_config|u0|nx22137z1\ & ((!\u_i2c_av_config|u0|nx41315z4\))) # (!\u_i2c_av_config|u0|nx22137z1\ & (\u_i2c_av_config|u0|nx41315z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z5\,
	datab => \u_i2c_av_config|u0|nx41315z6\,
	datac => \u_i2c_av_config|u0|nx41315z4\,
	datad => \u_i2c_av_config|u0|nx22137z1\,
	combout => \u_i2c_av_config|u0|nx41315z3\);

-- Location: LCCOMB_X35_Y35_N10
\u_i2c_av_config|u0|ix41315z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z2\ = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ & \u_i2c_av_config|u0|nx41315z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	datad => \u_i2c_av_config|u0|nx41315z3\,
	combout => \u_i2c_av_config|u0|nx41315z2\);

-- Location: LCCOMB_X35_Y35_N4
\u_i2c_av_config|u0|ix41315z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z7\ = (\u_i2c_av_config|u0|nx41315z8\) # ((\u_i2c_av_config|u0|nx41315z10\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & \u_i2c_av_config|u0|nx41315z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z8\,
	datab => \u_i2c_av_config|u0|nx41315z10\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datad => \u_i2c_av_config|u0|nx41315z2\,
	combout => \u_i2c_av_config|u0|nx41315z7\);

-- Location: LCCOMB_X34_Y35_N28
\u_i2c_av_config|u0|ix41315z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z14\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z14\);

-- Location: LCCOMB_X34_Y35_N22
\u_i2c_av_config|u0|ix41315z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z13\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (\u_i2c_av_config|u0|nx41315z14\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z13\);

-- Location: LCCOMB_X34_Y35_N18
\u_i2c_av_config|u0|ix41315z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z17\ = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (\u_i2c_av_config|u0|nx41315z14\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z17\);

-- Location: LCCOMB_X34_Y35_N16
\u_i2c_av_config|u0|ix41315z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z16\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z16\);

-- Location: LCCOMB_X34_Y35_N20
\u_i2c_av_config|u0|ix41315z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z15\ = (\u_i2c_av_config|u0|nx41315z17\) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & (\u_i2c_av_config|u0|nx41315z16\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datab => \u_i2c_av_config|u0|nx41315z17\,
	datac => \u_i2c_av_config|u0|nx41315z16\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z15\);

-- Location: LCCOMB_X34_Y35_N26
\u_i2c_av_config|u0|ix44942z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z7\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx44942z7\);

-- Location: LCCOMB_X34_Y35_N10
\u_i2c_av_config|u0|ix41315z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z12\ = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (!\u_i2c_av_config|u0|nx44942z7\ & (!\u_i2c_av_config|u0|nx44942z4\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx44942z7\,
	datac => \u_i2c_av_config|u0|nx44942z4\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	combout => \u_i2c_av_config|u0|nx41315z12\);

-- Location: LCCOMB_X34_Y35_N14
\u_i2c_av_config|u0|ix41315z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z11\ = (\u_i2c_av_config|u0|nx41315z13\) # ((\u_i2c_av_config|u0|nx41315z15\) # (\u_i2c_av_config|u0|nx41315z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx41315z13\,
	datac => \u_i2c_av_config|u0|nx41315z15\,
	datad => \u_i2c_av_config|u0|nx41315z12\,
	combout => \u_i2c_av_config|u0|nx41315z11\);

-- Location: LCCOMB_X35_Y35_N26
\u_i2c_av_config|u0|ix41315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z1\ = (!\u_i2c_av_config|u0|nx41315z7\ & (!\u_i2c_av_config|u0|nx41315z11\ & ((!\u_i2c_av_config|u0|nx41315z2\) # (!\u_i2c_av_config|u0|nx41315z18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z18\,
	datab => \u_i2c_av_config|u0|nx41315z7\,
	datac => \u_i2c_av_config|u0|nx41315z11\,
	datad => \u_i2c_av_config|u0|nx41315z2\,
	combout => \u_i2c_av_config|u0|nx41315z1\);

-- Location: LCCOMB_X34_Y35_N30
\u_i2c_av_config|u0|ix41315z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z19\ = (\u_i2c_av_config|u0|nx41315z20\ & (!\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z20\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|nx41315z19\);

-- Location: LCFF_X35_Y35_N27
\u_i2c_av_config|u0|reg_sdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx41315z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx41315z19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx51857z1\);

-- Location: LCCOMB_X36_Y27_N24
ix30102z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z1 = (!\u_audio_dac_bck_div_2_\ & \key~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_audio_dac_bck_div_2_\,
	datad => \key~combout\(0),
	combout => nx30102z1);

-- Location: LCCOMB_X35_Y27_N6
ix32096z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32096z1 = (!\u_audio_dac_bck_div_0_\ & (\key~combout\(0) & ((!\u_audio_dac_bck_div_2_\) # (!\u_audio_dac_bck_div_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_1_\,
	datab => \u_audio_dac_bck_div_2_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \key~combout\(0),
	combout => nx32096z1);

-- Location: LCFF_X35_Y27_N7
\u_audio_dac_modgen_counter_bck_div_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx32096z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_0_\);

-- Location: LCCOMB_X35_Y27_N30
ix30102z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z2 = ((\u_audio_dac_bck_div_1_\ & ((\u_audio_dac_bck_div_2_\) # (\u_audio_dac_bck_div_0_\))) # (!\u_audio_dac_bck_div_1_\ & (\u_audio_dac_bck_div_2_\ & \u_audio_dac_bck_div_0_\))) # (!\key~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_1_\,
	datab => \u_audio_dac_bck_div_2_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \key~combout\(0),
	combout => nx30102z2);

-- Location: LCFF_X36_Y27_N25
\u_audio_dac_modgen_counter_bck_div_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx30102z1,
	ena => nx30102z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_2_\);

-- Location: LCCOMB_X35_Y27_N10
ix31099z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z1 = (!\u_audio_dac_bck_div_1_\ & (\key~combout\(0) & ((!\u_audio_dac_bck_div_2_\) # (!\u_audio_dac_bck_div_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_0_\,
	datab => \u_audio_dac_bck_div_2_\,
	datac => \u_audio_dac_bck_div_1_\,
	datad => \key~combout\(0),
	combout => nx31099z1);

-- Location: LCCOMB_X35_Y27_N8
ix31099z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z2 = (\u_audio_dac_bck_div_0_\) # (((\u_audio_dac_bck_div_1_\ & \u_audio_dac_bck_div_2_\)) # (!\key~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_1_\,
	datab => \u_audio_dac_bck_div_2_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \key~combout\(0),
	combout => nx31099z2);

-- Location: LCFF_X35_Y27_N11
\u_audio_dac_modgen_counter_bck_div_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx31099z1,
	ena => nx31099z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_1_\);

-- Location: LCCOMB_X35_Y27_N4
ix15494z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx15494z1 = aud_bclk_dup0 $ (((\u_audio_dac_bck_div_2_\ & ((\u_audio_dac_bck_div_0_\) # (\u_audio_dac_bck_div_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_0_\,
	datab => \u_audio_dac_bck_div_2_\,
	datac => aud_bclk_dup0,
	datad => \u_audio_dac_bck_div_1_\,
	combout => nx15494z1);

-- Location: LCFF_X35_Y27_N5
u_audio_dac_reg_aud_bck : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx15494z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_bclk_dup0);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_7_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg_triBus1_8_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(8));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_7_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_8_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_9_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_10_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_11_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_12_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_13_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_14_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_15_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_16_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr_triBus2_17_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(17));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0_triBus3_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1_triBus4_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2_triBus5_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_0_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_1_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_2_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_3_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_4_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_5_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3_triBus6_6_\ : cycloneii_io
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
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_0_\ : cycloneii_io
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
	datain => \hex4_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_1_\ : cycloneii_io
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
	datain => \hex4_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_2_\ : cycloneii_io
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
	datain => \hex4_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_3_\ : cycloneii_io
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
	datain => \hex4_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_4_\ : cycloneii_io
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
	datain => \hex4_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_5_\ : cycloneii_io
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
	datain => \hex4_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4_obuf_6_\ : cycloneii_io
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
	datain => \hex4_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_0_\ : cycloneii_io
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
	datain => \hex5_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_1_\ : cycloneii_io
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
	datain => \hex5_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_2_\ : cycloneii_io
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
	datain => \hex5_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_3_\ : cycloneii_io
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
	datain => \hex5_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_4_\ : cycloneii_io
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
	datain => \hex5_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_5_\ : cycloneii_io
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
	datain => \hex5_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5_obuf_6_\ : cycloneii_io
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
	datain => \hex5_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_0_\ : cycloneii_io
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
	datain => \hex6_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_1_\ : cycloneii_io
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
	datain => \hex6_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_2_\ : cycloneii_io
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
	datain => \hex6_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_3_\ : cycloneii_io
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
	datain => \hex6_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_4_\ : cycloneii_io
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
	datain => \hex6_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_5_\ : cycloneii_io
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
	datain => \hex6_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6_obuf_6_\ : cycloneii_io
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
	datain => \hex6_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_0_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_1_\ : cycloneii_io
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
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_2_\ : cycloneii_io
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
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_3_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_4_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_5_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7_obuf_6_\ : cycloneii_io
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
	padio => ww_hex7(6));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_xck_obuf : cycloneii_io
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
	datain => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_xck);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_dacdat_obuf : cycloneii_io
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
	datain => aud_dacdat_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_dacdat);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_daclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_daclrck);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
aud_adclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_adclrck);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
i2c_sclk_obuf : cycloneii_io
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
	datain => \u_i2c_av_config|u0|p_i2c_sclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_i2c_sclk);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_i2c_av_config|u0|ALT_INV_nx51857z1\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => i2c_sdat);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\aud_bclk~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aud_bclk_dup0,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => aud_bclk);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
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
	padio => ww_key(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
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
	padio => ww_key(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
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
	padio => ww_key(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[7]~I\ : cycloneii_io
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
	padio => ww_sw(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[8]~I\ : cycloneii_io
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
	padio => ww_sw(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[9]~I\ : cycloneii_io
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
	padio => ww_sw(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[10]~I\ : cycloneii_io
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
	padio => ww_sw(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[11]~I\ : cycloneii_io
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
	padio => ww_sw(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[12]~I\ : cycloneii_io
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
	padio => ww_sw(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[13]~I\ : cycloneii_io
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
	padio => ww_sw(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[14]~I\ : cycloneii_io
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
	padio => ww_sw(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[15]~I\ : cycloneii_io
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
	padio => ww_sw(15));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.fir_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity fir_top is
  port (
      clock_50  : in STD_LOGIC
    ; clock_27  : in STD_LOGIC
    ; key  : in std_logic_vector (3 downto 0)
    ; sw  : in std_logic_vector (17 downto 0)
    ; ledg  : out std_logic_vector (8 downto 0)
    ; ledr  : out std_logic_vector (17 downto 0)
    ; hex0  : out std_logic_vector (6 downto 0)
    ; hex1  : out std_logic_vector (6 downto 0)
    ; hex2  : out std_logic_vector (6 downto 0)
    ; hex3  : out std_logic_vector (6 downto 0)
    ; hex4  : out std_logic_vector (6 downto 0)
    ; hex5  : out std_logic_vector (6 downto 0)
    ; hex6  : out std_logic_vector (6 downto 0)
    ; hex7  : out std_logic_vector (6 downto 0)
    ; aud_xck  : out STD_LOGIC
    ; aud_bclk  : inout STD_LOGIC
    ; aud_dacdat  : out STD_LOGIC
    ; aud_daclrck  : out STD_LOGIC
    ; aud_adclrck  : out STD_LOGIC
    ; i2c_sdat  : inout STD_LOGIC
    ; i2c_sclk  : out STD_LOGIC
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of fir_top is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.fir_top_chip
    port map (
        clock_50 => clock_50
      , clock_27 => clock_27
      , key(3) => key(3)
      , key(2) => key(2)
      , key(1) => key(1)
      , key(0) => key(0)
      , sw(17) => sw(17)
      , sw(16) => sw(16)
      , sw(15) => sw(15)
      , sw(14) => sw(14)
      , sw(13) => sw(13)
      , sw(12) => sw(12)
      , sw(11) => sw(11)
      , sw(10) => sw(10)
      , sw(9) => sw(9)
      , sw(8) => sw(8)
      , sw(7) => sw(7)
      , sw(6) => sw(6)
      , sw(5) => sw(5)
      , sw(4) => sw(4)
      , sw(3) => sw(3)
      , sw(2) => sw(2)
      , sw(1) => sw(1)
      , sw(0) => sw(0)
      , ledg(8) => ledg(8)
      , ledg(7) => ledg(7)
      , ledg(6) => ledg(6)
      , ledg(5) => ledg(5)
      , ledg(4) => ledg(4)
      , ledg(3) => ledg(3)
      , ledg(2) => ledg(2)
      , ledg(1) => ledg(1)
      , ledg(0) => ledg(0)
      , ledr(17) => ledr(17)
      , ledr(16) => ledr(16)
      , ledr(15) => ledr(15)
      , ledr(14) => ledr(14)
      , ledr(13) => ledr(13)
      , ledr(12) => ledr(12)
      , ledr(11) => ledr(11)
      , ledr(10) => ledr(10)
      , ledr(9) => ledr(9)
      , ledr(8) => ledr(8)
      , ledr(7) => ledr(7)
      , ledr(6) => ledr(6)
      , ledr(5) => ledr(5)
      , ledr(4) => ledr(4)
      , ledr(3) => ledr(3)
      , ledr(2) => ledr(2)
      , ledr(1) => ledr(1)
      , ledr(0) => ledr(0)
      , hex0(6) => hex0(6)
      , hex0(5) => hex0(5)
      , hex0(4) => hex0(4)
      , hex0(3) => hex0(3)
      , hex0(2) => hex0(2)
      , hex0(1) => hex0(1)
      , hex0(0) => hex0(0)
      , hex1(6) => hex1(6)
      , hex1(5) => hex1(5)
      , hex1(4) => hex1(4)
      , hex1(3) => hex1(3)
      , hex1(2) => hex1(2)
      , hex1(1) => hex1(1)
      , hex1(0) => hex1(0)
      , hex2(6) => hex2(6)
      , hex2(5) => hex2(5)
      , hex2(4) => hex2(4)
      , hex2(3) => hex2(3)
      , hex2(2) => hex2(2)
      , hex2(1) => hex2(1)
      , hex2(0) => hex2(0)
      , hex3(6) => hex3(6)
      , hex3(5) => hex3(5)
      , hex3(4) => hex3(4)
      , hex3(3) => hex3(3)
      , hex3(2) => hex3(2)
      , hex3(1) => hex3(1)
      , hex3(0) => hex3(0)
      , hex4(6) => hex4(6)
      , hex4(5) => hex4(5)
      , hex4(4) => hex4(4)
      , hex4(3) => hex4(3)
      , hex4(2) => hex4(2)
      , hex4(1) => hex4(1)
      , hex4(0) => hex4(0)
      , hex5(6) => hex5(6)
      , hex5(5) => hex5(5)
      , hex5(4) => hex5(4)
      , hex5(3) => hex5(3)
      , hex5(2) => hex5(2)
      , hex5(1) => hex5(1)
      , hex5(0) => hex5(0)
      , hex6(6) => hex6(6)
      , hex6(5) => hex6(5)
      , hex6(4) => hex6(4)
      , hex6(3) => hex6(3)
      , hex6(2) => hex6(2)
      , hex6(1) => hex6(1)
      , hex6(0) => hex6(0)
      , hex7(6) => hex7(6)
      , hex7(5) => hex7(5)
      , hex7(4) => hex7(4)
      , hex7(3) => hex7(3)
      , hex7(2) => hex7(2)
      , hex7(1) => hex7(1)
      , hex7(0) => hex7(0)
      , aud_xck => aud_xck
      , aud_bclk => aud_bclk
      , aud_dacdat => aud_dacdat
      , aud_daclrck => aud_daclrck
      , aud_adclrck => aud_adclrck
      , i2c_sdat => i2c_sdat
      , i2c_sclk => i2c_sclk
    );
end architecture;

